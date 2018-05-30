/**
 * Copyright (c) Microsoft Corporation. All rights reserved.  
 * Licensed under the MIT License.
 */
import * as fs from 'fs'
import * as path from 'path'
import * as restify from 'restify'
import * as BB from 'botbuilder'
import { BotFrameworkAdapter } from 'botbuilder'
import { ConversationLearner, ICLOptions, ClientMemoryManager, models, FileStorage } from '@conversationlearner/sdk'
import config from './config'

console.log(`Config: `, JSON.stringify(config, null, '  '))

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
/** 
cl.AddAPICallback("{Name of API}", async (memoryManager: ClientMemoryManager, {arg1}: string, {arg2}: string, ...) => {

    {Your API logic inclusing any service calls}
        
    Returns promise of: 
        (1) undefined -> no message sent to user
        (2) string -> text message sent to user
        (3) BB.Activity -> card sent to user
})
*/ 

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

