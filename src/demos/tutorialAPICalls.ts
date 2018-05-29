/**
 * Copyright (c) Microsoft Corporation. All rights reserved.  
 * Licensed under the MIT License.
 */
import * as path from 'path'
import * as restify from 'restify'
import * as BB from 'botbuilder'
import { BotFrameworkAdapter } from 'botbuilder'
import { ConversationLearner, ClientMemoryManager, models, FileStorage } from '@conversationlearner/sdk'
import config from '../config'

//===================
// Create Bot server
//===================
const server = restify.createServer({
    name: 'BOT Server'
});

server.listen(config.botPort, () => {
    console.log(`${server.name} listening to ${server.url}`);
});

const { bfAppId, bfAppPassword, clAppId, ...clOptions } = config

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
ConversationLearner.Init(clOptions, fileStorage);
let cl = new ConversationLearner(clAppId);

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
