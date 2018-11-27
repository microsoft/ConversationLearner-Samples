/**
 * Copyright (c) Microsoft Corporation. All rights reserved.  
 * Licensed under the MIT License.
 */
import * as path from 'path'
import * as express from 'express'
import { ConversationLearner, ClientMemoryManager, FileStorage, ReadOnlyClientMemoryManager } from '@conversationlearner/sdk'
import chalk from 'chalk'
import config from '../config'
import * as request from 'request'
import * as requestpromise from 'request-promise'
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

//=========================================================
// Bots Buisness Logic
//=========================================================
var greetings = [
    "Hello!",
    "Greetings!",
    "Hi there!"
];

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
// API callbacks are divided into two parts:
// 1) A 'logic' callback in which Entity values can be set and external APIs can be called
// 2) A 'render' callback which generates Bot output, and can only read Entity values
//
// API callback can contain a 'logic' callback, a 'render' callback or both
// When displaying an existing Dialog, in the CL editor, only the 'render' callback will
// be called using saved values from the 'logic' callback.
// When editing an existing Dialog, the 'logic' callback will be invoked

// Example that has only a 'render' callback that takes two arguments and displays text to user
cl.AddCallback({
    name: "Multiply",
    render: async (logicResult: any, memoryManager: ReadOnlyClientMemoryManager, num1string: string, num2string: string) => {
        // Convert input to integers
        var num1int = parseInt(num1string);
        var num2int = parseInt(num2string);

        // Compute product
        var product = num1int * num2int;

        // Display result
        return `${num1string} * ${num2string} = ${product}`
    }
})

// Example that has only a 'render' callback that displays a card to the user
cl.AddCallback({
    name: "RandomGreeting",
    render: async (logicResult: any, memoryManager: ReadOnlyClientMemoryManager, ...args: string[]) => {
        var randomGreeting = greetings[Math.floor(Math.random() * greetings.length)];

        const message = BB.MessageFactory.attachment(BB.CardFactory.thumbnailCard(randomGreeting, "Here's a neat photo", ["https://picsum.photos/100/?random"]))
        return message
    }
})

// Example that only has 'logic' callback
cl.AddCallback({
    name: "ClearEntities",
    logic: async (memoryManager: ClientMemoryManager) => {
        // Clear "number" entity
        memoryManager.Delete("number");
    }
})

//=================================
// Making external API calls
//=================================
// CL expects the 'logic' callbacks to await any asynchronous results

// CORRECT way to do a request
cl.AddCallback({
    name: "RandomMessage-Await-CORRECT",
    logic: async (memoryManager: ClientMemoryManager) => {
        var options = { method: 'GET', uri: 'https://jsonplaceholder.typicode.com/posts/1', json: true }

        // CORRECT
        // RememberEntity called before APICallback has returned
        let response = await requestpromise(options)
        return response.body
    },
    render: async (logicResult: any, memoryManager: ReadOnlyClientMemoryManager, ...args: string[]) => {
        return logicResult
    }
})

// !!WRONG!! way to do an request.
cl.AddCallback({
    name: "RandomMessage-Callback-WRONG",
    logic: async (memoryManager: ClientMemoryManager) => {
        var options = { method: 'GET', uri: 'https://jsonplaceholder.typicode.com/posts/1', json: true }

        // !!WRONG!!
        // RememberEntity call will happen after the APICallback has returned
        request(options, (error: any, response: any, body: any) => {
            memoryManager.Set("RandomMessage", response.body);   // BAD
        })
    },
    render: async (logicResult: any, memoryManager: ReadOnlyClientMemoryManager, ...args: string[]) => {
        return logicResult
    }
})

//=================================
// Data Passing Logic -> Result
//=================================
// Data can be passed from the 'logic' callback to the 'render' callback in one of two ways

// 1) Passing Data in Entity
// If you want to preserve the data for later, you can store it in an entity in the 'logic'
// callback, and then refer to that Entity value in the 'render' callback
cl.AddCallback({
    name: "ResultAsEntity",
    logic: async (memoryManager: ClientMemoryManager) => {
        var options = { method: 'GET', uri: 'https://jsonplaceholder.typicode.com/posts/1', json: true }
        let response = await requestpromise(options)
        memoryManager.Set("RandomMessage", response.body);
    },
    render: async (logicResult: any, memoryManager: ReadOnlyClientMemoryManager, ...args: string[]) => {
        let value = memoryManager.Get("RandomMessage", ClientMemoryManager.AS_STRING)
        return value || ""
    }
})

// 2) Passing Data in "logicResult"
// If the data is only temporary and being used just for rendering, you can pass if from the
// 'logic' callback to the render callback directly by using the "logicResult" parameter
cl.AddCallback({
    name: "ResultAsLogicResult",
    logic: async (memoryManager: ClientMemoryManager) => {
        var options = { method: 'GET', uri: 'https://jsonplaceholder.typicode.com/posts/1', json: true }
        let response = await requestpromise(options)
        return response.body
    },
    render: async (logicResult: any, memoryManager: ReadOnlyClientMemoryManager, ...args: string[]) => {
        return logicResult
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
