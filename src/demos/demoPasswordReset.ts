/**
 * Copyright (c) Microsoft Corporation. All rights reserved.  
 * Licensed under the MIT License.
 */
import * as path from 'path'
import * as express from 'express'
import { BotFrameworkAdapter } from 'botbuilder'
import { ConversationLearner, FileStorage } from '@conversationlearner/sdk'
import config from '../config'

//===================
// Create Bot server
//===================
const server = express()
const listener = server.listen(config.botPort, () => {
    console.log(`BOT server listening to ${listener.address().port}`)
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
ConversationLearner.Init(clOptions, fileStorage);
let cl = new ConversationLearner(modelId);

//=================================
// Add Entity Logic
//=================================
//
// ConversationLearner.EntityDetectionCallback is not needed in this demo, so can be left undefined
// See other demos, or app.ts in the src directory, for an example of ConversationLearner.EntityDetectionCallback
//

//=================================
// Define any API callbacks
//=================================
//
// No API calls are used in this demo, so there are no calls to ConversationLearner.AddAPICallback
// See other demos, or app.ts in the src directory, for an example of ConversationLearner.AddAPICallback
//

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
