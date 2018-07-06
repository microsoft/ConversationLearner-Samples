/**
 * Copyright (c) Microsoft Corporation. All rights reserved.  
 * Licensed under the MIT License.
 */
import * as path from 'path'
import * as express from 'express'
import { BotFrameworkAdapter } from 'botbuilder'
import { ConversationLearner, ClientMemoryManager, FileStorage } from '@conversationlearner/sdk'
import config from '../config'
import * as request from 'request'
import * as requestpromise from 'request-promise'
import startDol from '../dol'

//===================
// Create Bot server
//===================
const server = express()

const isDevelopment = process.env.NODE_ENV === 'development'
if (isDevelopment) {
    startDol(server, config.botPort)
}
else {
    const listener = server.listen(config.botPort, () => {
        console.log(`Server listening to ${listener.address().port}`)
    })
}

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
cl.AddAPICallback("RandomGreeting", async (memoryManager : ClientMemoryManager) => {
    var randomGreeting = greetings[Math.floor(Math.random() * greetings.length)];
    return randomGreeting;
});

cl.AddAPICallback("Multiply", async (memoryManager: ClientMemoryManager, num1string: string, num2string: string) => {

    // convert base and exponent to ints
    var num1int = parseInt(num1string);
    var num2int = parseInt(num2string);

    // compute product
    var result = num1int * num2int;

    // return result as message
    return num1int.toString() + " * " + num2int.toString() + " = " + result.toString();
})

cl.AddAPICallback("ClearEntities", async (memoryManager: ClientMemoryManager) => {

    // clear base and exponent entities
    memoryManager.ForgetEntity("number");
    return "Let's do another.";
})

// WRONG way to do an request.  
cl.AddAPICallback("RandomMessage-Callback", async (memoryManager : ClientMemoryManager) =>
{
    var options = { method: 'GET', uri: 'https://jsonplaceholder.typicode.com/posts/1', json: true }

    // WRONG
    // RememberEntity call will happen after the APICallback has returned
    request(options, (error:any, response:any, body:any) => {
            memoryManager.RememberEntity("RandomMessage", response.body);   // BAD
        } 
    )

});

// CORRECT way to do a request
cl.AddAPICallback("RandomMessage-Await", async (memoryManager : ClientMemoryManager) =>
{

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
