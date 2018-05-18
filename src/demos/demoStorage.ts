/**
 * Copyright (c) Microsoft Corporation. All rights reserved.  
 * Licensed under the MIT License.
 */
import * as path from 'path'
import * as restify from 'restify'
import * as BB from 'botbuilder'
import { BotFrameworkAdapter } from 'botbuilder'
import { ConversationLearner, ClientMemoryManager, RedisStorage, models, FileStorage } from '@conversationlearner/sdk'
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
// STORAGE EXAMPLES
//==================================
// IN-MEMORY STORAGE
// Stores bot state in memory. 
// If the bot is stopped and re-started, the state of in-progress sessions will be lost.
//ConversationLearner.Init(clOptions); 

// FILE STORAGE
// Stores bot state in a local file.  
// With this option, the bot can be stopped and re-started without losing the state of in-progress sessions.
// Requires local disk access.
//let fileStorage = new FileStorage( {path: path.join(__dirname, 'storage')})
//ConversationLearner.Init(clOptions, fileStorage);

// REDIS
// Stores bot state in a redis cache.  
// With this option, the bot can be stopped and re-started without losing the state of in-progress sessions.
// Requires env variables CONVERSATION_LEARNER_REDIS_SERVER and CONVERSATION_LEARNER_REDIS_KEY are set.  You can set these in ../.env.

if (typeof config.redisServer !== 'string' || config.redisServer.length === 0) {
    throw new Error(`When using Redis storage: redisServer value must be non-empty. You passed: ${config.redisServer}`)
}
if (typeof config.redisKey !== 'string' || config.redisKey.length === 0) {
    throw new Error(`When using Redis storage: redisKey value must be non-empty. You passed: ${config.redisKey}`)
}

let redisStorage = new RedisStorage({ server: config.redisServer, key: config.redisKey });

//==================================
// Initialize Conversation Learner
//==================================
ConversationLearner.Init(clOptions, redisStorage);
let cl = new ConversationLearner(clAppId);


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
