/**
 * Copyright (c) Microsoft Corporation. All rights reserved.  
 * Licensed under the MIT License.
 */
import * as path from 'path'
import * as express from 'express'
import { BotFrameworkAdapter } from 'botbuilder'
import { ConversationLearner, ClientMemoryManager, FileStorage } from '@conversationlearner/sdk'
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
}

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
 
    /** Add business logic manipulating the entities in memory 

    // Values in bot memory
    memoryManager.EntityValue(entityName: string): (string | null)
    memoryManager.EntityValueAsPrebuilt(entityName: string): MemoryValue[]
    memoryManager.EntityValueAsList(entityName: string): string[]
    memoryManager.EntityValueAsObject<T>(entityName: string): (T | null)
    memoryManager.EntityValueAsBoolean(entityName: string): (boolean | null)
    memoryManager.EntityValueAsNumber(entityName: string): (number | null)
    memoryManager.GetFilledEntities(): FilledEntity[]

    // Values in memory before new Entity detection
    memoryManager.PrevEntityValue(entityName: string): (string | null)
    memoryManager.PrevEntityValueAsPrebuilt(entityName: string): MemoryValue[]
    memoryManager.PrevEntityValueAsList(entityName: string): string[]
    memoryManager.PrevEntityValueAsObject<T>(entityName: string): (T | null)
    memoryManager.PrevValueAsBoolean(entityName: string): (boolean | null)
    memoryManager.PrevValueAsNumber(entityName: string): (number | null)

    // Memory manipulation methods
    memoryManager.RememberEntity(entityName: string, entityValue: string): void
    memoryManager.RememberEntities(entityName: string, entityValues: string[]): void
    memoryManager.ForgetEntity(entityName: string, value?: string): void
    memoryManager.ForgetAllEntities(saveEntityNames: string[]): void
    memoryManager.CopyEntity(entityNameFrom: string, entityNameTo: string): void

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
            cl.SendResult(result);
        }
    })
})

export default server

