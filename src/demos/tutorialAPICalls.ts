/**
 * Copyright (c) Microsoft Corporation. All rights reserved.  
 * Licensed under the MIT License.
 */
import * as path from 'path'
import * as express from 'express'
import { BotFrameworkAdapter } from 'botbuilder'
import { ConversationLearner, ClientMemoryManager, FileStorage, ReadOnlyClientMemoryManager } from '@conversationlearner/sdk'
import chalk from 'chalk'
import config from '../config'
import * as request from 'request'
import * as requestpromise from 'request-promise'
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
const adapter = new BotFrameworkAdapter({ appId: bfAppId, appPassword: bfAppPassword });

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
    // Nop -- no entity processing
})

//=================================
// Define API callbacks
//=================================
cl.AddRenderCallback("RandomGreeting", async (memoryManager: ReadOnlyClientMemoryManager) => {
    var randomGreeting = greetings[Math.floor(Math.random() * greetings.length)];
    return randomGreeting;
});

cl.AddAPICallback("Multiply", async (memoryManager: ClientMemoryManager, num1string: string, num2string: string) => {

    // convert base and exponent to ints
    var num1int = parseInt(num1string);
    var num2int = parseInt(num2string);

    // compute product
    var result = num1int * num2int;
    memoryManager.RememberEntity("multiplyResult", result)
})

cl.AddRenderCallback("Multiply", async (memoryManager: ReadOnlyClientMemoryManager, num1string: string, num2string: string, multiplyResult: string) => {
    return `${num1string} * ${num2string} = ${multiplyResult}`
})


cl.AddAPICallback("ClearEntities", async (memoryManager: ClientMemoryManager) => {
    // clear base and exponent entities
    memoryManager.ForgetEntity("number");
})
cl.AddRenderCallback("ClearEntities", async () => {
    return "Let's do another."
})

// WRONG way to do an request.
cl.AddAPICallback("RandomMessage-Callback", async (memoryManager : ClientMemoryManager) => {
    var options = { method: 'GET', uri: 'https://jsonplaceholder.typicode.com/posts/1', json: true }

    // WRONG
    // RememberEntity call will happen after the APICallback has returned
    request(options, (error:any, response:any, body:any) => {
        memoryManager.RememberEntity("RandomMessage", response.body);   // BAD
    })
});

// CORRECT way to do a request
cl.AddAPICallback("RandomMessage-Await", async (memoryManager : ClientMemoryManager) => {
    var options = { method: 'GET', uri: 'https://jsonplaceholder.typicode.com/posts/1', json: true }

    // CORRECT
    // RememberEntity called before APICallback has returned
    let response = await requestpromise(options)
    memoryManager.RememberEntity("RandomMessage", response.body);
});

//=================================
// Handle Incoming Messages
//=================================

server.post('/api/messages', (req, res) => {
    adapter.processActivity(req, res, async context => {
        let result = await cl.recognize(context)
        
        if (result) {
            cl.SendResult(result);
        }
    })
})
