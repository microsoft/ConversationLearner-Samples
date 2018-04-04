import * as path from 'path'
import * as restify from 'restify'
import * as BB from 'botbuilder'
import { BotFrameworkAdapter } from 'botbuilder-services'
import { Blis, ClientMemoryManager, RedisStorage, models, FileStorage } from 'blis-sdk'
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

//==================
// Create connector
//==================
const { microsoftAppId, microsoftAppPassword, ...blisConfig } = config
const connector = new BotFrameworkAdapter({ appId: microsoftAppId, appPassword: microsoftAppPassword });
server.post('/api/messages', connector.listen() as any);

//==================================
// STORAGE EXAMPLES
//==================================
// IN-MEMORY STORAGE
// Stores bot state in memory. 
// If the bot is stopped and re-started, the state of in-progress sessions will be lost.
//Blis.Init(blisOptions); 

// FILE STORAGE
// Stores bot state in a local file.  
// With this option, the bot can be stopped and re-started without losing the state of in-progress sessions.
// Requires local disk access.
//let fileStorage = new FileStorage( {path: path.join(__dirname, 'storage')})
//Blis.Init(config, fileStorage);

// REDIS
// Stores bot state in a redis cache.  
// With this option, the bot can be stopped and re-started without losing the state of in-progress sessions.
// Requires env variables BLIS_REDIS_SERVER and BLIS_REDIS_KEY are set.  You can set these in ../.env.

if (typeof config.redisServer !== 'string' || config.redisServer.length === 0) {
    throw new Error(`When using Redis storage: redisServer value must be non-empty. You passed: ${config.redisServer}`)
}
if (typeof config.redisKey !== 'string' || config.redisKey.length === 0) {
    throw new Error(`When using Redis storage: redisKey value must be non-empty. You passed: ${config.redisKey}`)
}

let redisStorage = new RedisStorage({ server: config.redisServer, key: config.redisKey });
Blis.Init(blisConfig, redisStorage);

//=================================
// Add Entity Logic
//=================================
/**
* @param {string} text Last user input to the Bot
* @param {PredictedEntity[]} predictedEntities Entities extracted from most recent user utterance
* @param {ClientMemoryManager} memoryManager Allows for viewing and manipulating Bot's memory
* @returns {Promise<void>}
*/
Blis.EntityDetectionCallback(async (text: string, memoryManager: ClientMemoryManager): Promise<void> => {
 
})

//=================================n
// Define any API callbacks
//=================================
/** 
Blis.AddAPICallback("{Name of API}", async (memoryManager: ClientMemoryManager, {arg1}: string, {arg2}: string, ...) =>
    Promise<Partial<BB.Activity> | string | undefined> {

    {Your API logic inclusing any service calls}
        
    Returns promise of: 
        (1) undefined -> no message sent to user
        (2) string -> text message sent to user
        (3) BB.Activity -> card sent to user
})
*/ 

//=================================
// Initialize bot
//=================================
const bot = new BB.Bot(connector)
    .use(Blis.recognizer)
    .useTemplateRenderer(Blis.templateRenderer)
    .onReceive(context => {
        if (context.request.type === "message" && context.topIntent) {
            context.replyWith(context.topIntent.name, context.topIntent);
        }
    })
