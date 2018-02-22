import * as path from 'path'
import * as restify from 'restify'
import * as BB from 'botbuilder'
import { FileStorage } from 'botbuilder-node'
import { BotFrameworkAdapter } from 'botbuilder-services'
import { Blis, ClientMemoryManager, RedisStorage, models } from 'blis-sdk'
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
const connector = new BotFrameworkAdapter({ appId: config.microsoftAppId, appPassword: config.microsoftAppPassword });
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
let redisStorage = new RedisStorage({ server: config.redisServer, key: config.redisKey });
Blis.Init(config, redisStorage);

//=================================
// Add Entity Logic
//=================================
/**
* @param {string} text Last user input to the Bot
* @param {PredictedEntity[]} predictedEntities Entities extracted from most recent user utterance
* @param {ClientMemoryManager} memoryManager Allows for viewing and manipulating Bot's memory
* @returns {Promise<void>}
*/
Blis.EntityDetectionCallback(async (text: string, predictedEntities: models.PredictedEntity[], memoryManager: ClientMemoryManager): Promise<void> => {
 
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
