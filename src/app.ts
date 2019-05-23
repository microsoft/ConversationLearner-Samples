/**
 * Copyright (c) Microsoft Corporation. All rights reserved.  
 * Licensed under the MIT License.
 */
import * as path from 'path'
import * as express from 'express'
import { BotFrameworkAdapter } from 'botbuilder'
import { ConversationLearner, ClientMemoryManager, FileStorage, uiRouter } from '@conversationlearner/sdk'
import chalk from 'chalk'
import config from './config'

console.log(`Config:\n`, JSON.stringify(config, null, '  '))

//===================
// Create Bot server
//===================
const server = express()

const { bfAppId, bfAppPassword, modelId, ...clOptions } = config

//==================
// Create Adapter
//==================
const adapter = new BotFrameworkAdapter({ appId: bfAppId, appPassword: bfAppPassword });

//==================================
// Storage 
//==================================
// Initialize ConversationLearner using file storage.  
// Recommended only for development
// See "storageDemo.ts" for other storage options
const fileStorage = new FileStorage(path.join(__dirname, 'storage'))

//==================================
// Initialize Conversation Learner
//==================================
const sdkRouter = ConversationLearner.Init(clOptions, fileStorage)

const includeSdk = ['development', 'test'].includes(process.env.NODE_ENV || '')
if (includeSdk) {
    console.log(chalk.cyanBright(`Adding /sdk routes`))
    server.use('/sdk', sdkRouter)

    // Note: Must be mounted at root to use internal /ui paths
    console.log(chalk.greenBright(`Adding /ui routes`))
    server.use(uiRouter)
}

// Serve default bot summary page. Should be customized by customer.
server.use(express.static(path.join(__dirname, '..', 'site')))

const cl = new ConversationLearner(modelId)

//=================================
// Add Entity Logic
//=================================
/**
* @param {string} text Last user input to the Bot
* @param {ClientMemoryManager} memoryManager Allows for viewing and manipulating Bot's memory
* @returns {Promise<void>}
*/
cl.EntityDetectionCallback(async (text: string, memoryManager: ClientMemoryManager): Promise<void> => {

    memoryManager.Get("name", ClientMemoryManager.AS_STRING)

    /** Add business logic manipulating the entities in memory 

    // GET - Values currently in bot memory
    memoryManager.Get(entityName: string, converter: (memoryValues: MemoryValue[])
    i.e. memoryManager.Get("counters", ClientMemoryManager.AS_NUMBER_LIST)

    // GET - Values in memory before new Entity detection
    memoryManager.GetPrevious(entityName: string, converter: (memoryValues: MemoryValue[])
    i.e. memoryManager.GetPrevious("location", ClientMemoryManager.AS_VALUE)

    // SET
    memoryManager.Set(entityName: string, true)
    i.e. memoryManager.Set("toppings", ["cheese", "peppers"])
   
    // DELETE
    memoryManager.Delete(entityName: string, value?: string): void
    memoryManager.DeleteAll(saveEntityNames: string[]): void

    // COPY
    memoryManager.Copy(entityNameFrom: string, entityNameTo: string): void

    // Info about the current running Session
    memoryManager.SessionInfo(): SessionInfo
    */
})

//=================================
// Define any API callbacks
//=================================
/*
cl.AddCallback<number>({
    name: "Add",
    logic: async (memoryManager, arg1: string, arg2: string) => {
        return [arg1, arg2]
            .map(x => parseInt(x))
            .reduce((sum, a) => sum += a, 0)
    },
    render: async result => `Add result is: ${result}`
})
*/

//=================================
// Handle Incoming Messages
//=================================
server.post('/api/messages', (req, res) => {
    adapter.processActivity(req, res, async context => {
        const result = await cl.recognize(context)

        if (result) {
            return cl.SendResult(result);
        }
    })
})

export default server