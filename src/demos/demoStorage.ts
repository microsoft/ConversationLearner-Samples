/**
 * Copyright (c) Microsoft Corporation. All rights reserved.  
 * Licensed under the MIT License.
 */
import * as express from 'express'
import { BotFrameworkAdapter } from 'botbuilder'
import { ConversationLearner, RedisStorage, uiRouter } from '@conversationlearner/sdk'
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
const sdkRouter = ConversationLearner.Init(clOptions, redisStorage)
if (isDevelopment) {
    console.log(chalk.cyanBright(`Adding /sdk routes`))
    server.use('/sdk', sdkRouter)
}
let cl = new ConversationLearner(modelId);


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
