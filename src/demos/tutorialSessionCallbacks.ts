/**
 * Copyright (c) Microsoft Corporation. All rights reserved.  
 * Licensed under the MIT License.
 */
import * as path from 'path'
import * as express from 'express'
import * as BB from 'botbuilder'
import { BotFrameworkAdapter } from 'botbuilder'
import { ConversationLearner, ClientMemoryManager, FileStorage, uiRouter } from '@conversationlearner/sdk'
import chalk from 'chalk'
import config from '../config'
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
cl.OnSessionStartCallback(async (context: BB.TurnContext, memoryManager: ClientMemoryManager) => {
    // Set BotName when session starts
    memoryManager.Set("BotName", "Botty")
})

/**
 * Called when Session ends.
 * If not implemented all entity values will be cleared.
 * If implemented, developer return a list of entities to preserve for the next session
 * as well as store them in the Bot State
 * @param {BB.TurnContext} context Allows retrieval of Bot State
 * @param {ClientMemoryManager} memoryManager Allows for viewing and manipulating Bot's memory
 * @param {SessionEndState} sessionEndState Indicates whether END_SESSION was called on the running Session
 * @param {string | undefined} data Value set in End_Session Action in UI
 * @returns {Promise<string[] | undefined>} List of Entity values to preserve after session End
 */
cl.OnSessionEndCallback(async (context, memoryManager, sessionEndState, data) => {
    // 1) Do something with returned "data" defined in EndSession action
    //    It could, for example, specify things such as: Was the task
    //    was successfully completed?  Is there a need to escalate to a human?

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
            return cl.SendResult(result);
        }
    })
})


