/**
 * Copyright (c) Microsoft Corporation. All rights reserved.  
 * Licensed under the MIT License.
 */
import * as path from 'path'
import * as express from 'express'
import { ConversationLearner, ClientMemoryManager, FileStorage, ReadOnlyClientMemoryManager } from '@conversationlearner/sdk'
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
// cl.EntityDetectionCallback(async (text: string, memoryManager: ClientMemoryManager): Promise<void> => {
//     // No entity processing in this example
// })

cl.EntityDetectionCallback(async (text: string, memoryManager: ClientMemoryManager): Promise<void> => {
    let entityCallbackError = memoryManager.Get("entityError")
    if (entityCallbackError) {
        (entityCallbackError as any).notValid.reference
    }
})

//===========================================
// Making external API calls for ExceptionAPI
//===========================================
// CL expects the 'logic' callbacks to await any asynchronous results

cl.AddCallback({
    name: "ExceptionAPI",
    logic: async (memoryManager: ClientMemoryManager) => {
        let logicError = memoryManager.Get("logicError", ClientMemoryManager.AS_STRING)
        if (logicError) {
            // let propertyList = ''
            // for (let property in logicError) propertyList += `${(propertyList.length == 0 ? '' : ', ')}${property}: ${logicError[property]}`
            // console.log(propertyList)

            throw new Error(`A Logic Error has occurred because Entity logicError contains '${logicError}'`)
            //(logicError as any).notValid.logicError
        }

        let renderError = memoryManager.Get("renderError", ClientMemoryManager.AS_STRING)
        return renderError
    },
    render: async (renderError: any, memoryManager: ReadOnlyClientMemoryManager, ...args: string[]) => {
        if (renderError) {
            throw new Error(`A Render Error has occurred because Entity renderError contains '${renderError}'`)
            //(renderError as any).notValid.renderError
        }
        return "Hello with no exception"
    }
})

//=================================
// Making external API calls
//=================================
// CL expects the 'logic' callbacks to await any asynchronous results


cl.AddCallback({
    name: "Malformed",
    logic: async (memoryManager: ClientMemoryManager) => {
        return "Shouldn't return anything without Render function"
    }
})

cl.AddCallback({
    name: "LogicWithNoArgs",
    logic: async (memoryManager: ClientMemoryManager) => {
    }
})

// CORRECT way to do a request
cl.AddCallback({
    name: "LogicWithArgs",
    logic: async (memoryManager: ClientMemoryManager, blah: string, ho: string) => {
    }
})

cl.AddCallback({
    name: "BadCard",
    render: async (logicResult: any, memoryManager: ReadOnlyClientMemoryManager) => {
        return {id: {this: "asdf"}} as any
    }
})

cl.AddCallback({
    name: "GoodCard",
    render: async (logicResult: any, memoryManager: ReadOnlyClientMemoryManager) => {
        let card = {
            type: "AdaptiveCard",
            version: "1.0",
            body: [
                {
                    type: "Container",
                    items: [
                        {
                            type: "TextBlock",
                            text: "This is good",
                            wrap: true
                        }
                    ]
                }]
        }
        const attachment = BB.CardFactory.adaptiveCard(card)
        const message = BB.MessageFactory.attachment(attachment)
        message.text = "Oh so good"
        return message;
    }
})


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
