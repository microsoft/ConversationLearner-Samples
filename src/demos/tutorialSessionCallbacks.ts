/**
 * Copyright (c) Microsoft Corporation. All rights reserved.  
 * Licensed under the MIT License.
 */
import * as path from 'path'
import * as restify from 'restify'
import * as BB from 'botbuilder'
import { BotFrameworkAdapter } from 'botbuilder'
import { ConversationLearner, ClientMemoryManager, SessionEndState, FileStorage } from '@conversationlearner/sdk'
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
ConversationLearner.Init(clOptions, fileStorage);
let cl = new ConversationLearner(modelId);

//==================================
// Add Start / End Session callbacks
//==================================
/**
* Called at session start.
* Allows bot to set initial entities before conversation begins
* @param {BB.TurnContext} context Allows retrieval of Bot State
* @param {ClientMemoryManager} memoryManager Allows for viewing and manipulating Bot's memory
* @returns {Promise<void>}
*/
cl.OnSessionStartCallback(async (context: BB.TurnContext, memoryManager: ClientMemoryManager): Promise<void> => {

    // Set BotName when session starts
    memoryManager.RememberEntity("BotName", "Botty")
})

/**
* Called when Session ends.
* If not implemented all entity values will be cleared
* If implemented, developer can copy entites from Prev to preserve them for the next session 
* as well as store them in the Bot State
* @param {BB.TurnContext} context Allows retrieval of Bot State
* @param {ClientMemoryManager} memoryManager Allows for viewing and manipulating Bot's memory
* @param {string | undefined} data Value set in End_Session Action in UI
* @returns {Promise<string []| null>} List of Entity values to preserve after session End
*/
cl.OnSessionEndCallback(async (context: BB.TurnContext, memoryManager: ClientMemoryManager, sessionEndState: SessionEndState, data: string | undefined): Promise<string[] | undefined> => {

    // 1) Do something with returned "data" defined in EndSession action
    //    It could, for example, specify things such as: Was the task
    //    was successfully completed?  Is there a need to escale to a human?

    // 2) Extract values from ConversationLearner memoryManager and store in BotState
    //    using context object (see tutorialHybrid for an example)
  
    // 3) Return list of Entities to save for the next time ConversationLearner is started
    //    Persist UserName and UserPhone after session has ended
    return ["UserName", "UserPhone"]
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


