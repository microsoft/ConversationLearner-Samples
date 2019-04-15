/**
 * Copyright (c) Microsoft Corporation. All rights reserved.  
 * Licensed under the MIT License.
 */
import * as path from 'path'
import * as express from 'express'
import { ConversationLearner, ClientMemoryManager, FileStorage, ReadOnlyClientMemoryManager, uiRouter } from '@conversationlearner/sdk'
import chalk from 'chalk'
import config from '../config'
import * as BB from 'botbuilder'
import getDolRouter from '../dol'

//===================
// Create Bot server
//===================
const server = express()

const isDevelopment = process.env.NODE_ENV === 'development'
if (isDevelopment) {
    console.log(chalk.yellowBright(`Adding /directline routes`))
    server.use(getDolRouter(config.botPort))

    console.log(chalk.greenBright(`Adding /ui routes`))
    server.use(uiRouter)
}

server.listen(config.botPort, () => {
    console.log(`Server listening to port: ${config.botPort}`)
})

const { bfAppId, bfAppPassword, modelId, ...clOptions } = config

//==================
// Create Adapter
//==================
const adapter = new BB.BotFrameworkAdapter({ appId: bfAppId, appPassword: bfAppPassword });

//==================================
// Storage 
//==================================
// Initialize ConversationLearner using file storage.  
// Recommended only for development
// See "storageDemo.ts" for other storage options
let fileStorage = new FileStorage(path.join(__dirname, 'storage'))

//==================================
// Initialize Conversation Learner
//==================================
const sdkRouter = ConversationLearner.Init(clOptions, fileStorage)
if (isDevelopment) {
    console.log(chalk.cyanBright(`Adding /sdk routes`))
    server.use('/sdk', sdkRouter)
}
let cl = new ConversationLearner(modelId);

//=================================
// Add Entity Logic
//=================================
/**
* Processes messages received from the user. Called by the dialog system. 
* @param {string} text Last user input to the Bot
* @param {ClientMemoryManager} memoryManager Allows for viewing and manipulating Bot's memory
* @returns {Promise<void>}
*/
cl.EntityDetectionCallback(async (text: string, memoryManager: ClientMemoryManager): Promise<void> => {
    // No entity processing in this example
})

//=================================
// Sample API Callbacks
//=================================
cl.AddCallback({
    name: "SetSpa",
    logic: async (memoryManager: ClientMemoryManager, value: string) => {
        memoryManager.Set("Spa", value);
    }
})

cl.AddCallback({
    name: "SetChampagne",
    logic: async (memoryManager: ClientMemoryManager, value: string) => {
        memoryManager.Set("Champagne", value);
    }
})

cl.AddCallback({
    name: "SetBed",
    logic: async (memoryManager: ClientMemoryManager, value: string) => {
        memoryManager.Set("Bed", value);
    }
})

cl.AddCallback({
    name: "ShowRoom",
    render: async (logicResult: any, memoryManager: ReadOnlyClientMemoryManager) => {

        let response = [bedType(memoryManager)]

        const spa = memoryManager.Get("Spa", ClientMemoryManager.AS_BOOLEAN)
        if (spa) {
            response.push("We have added a moring Spa package.")
        }

        const champagne = memoryManager.Get("Champagne", ClientMemoryManager.AS_BOOLEAN)
        if (champagne) {
            response.push("Champagne will be brought to your room after dinner.")
        }
        
        return response.join(',')
    }
})

function bedType(memoryManager: ReadOnlyClientMemoryManager): string {
    const bedValue = memoryManager.Get("Bed", ClientMemoryManager.AS_STRING)

    switch (bedValue) {
        case "KING":
            return "You selected a king size bed."
        case "QUEEN":
            return "You selected a queen size bed."
        case "MULTI":
            return "You room with have two twin beds."
        default:
            return "You have not selected a room type."   
    }
}

//=================================
// Handle Incoming Messages
//=================================
server.post('/api/messages', (req, res) => {
    adapter.processActivity(req, res, async context => {
        let result = await cl.recognize(context)

        if (result) {
            return cl.SendResult(result);
        }
    })
})