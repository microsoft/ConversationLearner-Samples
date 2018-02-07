import * as fs from 'fs'
import * as path from 'path'
import * as dotenv from 'dotenv'
import * as restify from 'restify'
import * as BB from 'botbuilder'
import * as Models from 'blis-models'
import { BotFrameworkAdapter } from 'botbuilder-services'
import { Blis, IBlisOptions, ClientMemoryManager } from 'blis-sdk'
import { PredictedEntity } from 'blis-models'

const result = dotenv.config()
if (result.error) {
    console.warn(`Error loading .env configuration: ${result.error}`)
}

//===================
// Load Demos
//===================
const pizzaDemo = require('./pizzaDemo');
const launcherDemo = require('./launcherDemo');

//===================
// Create Bot server
//===================r
const server = restify.createServer({
    name: 'BOT Server'
});
server.listen(process.env.PORT || 3978, () => {
    console.log(`${server.name} listening to ${server.url}`);
});

//==================
// Create connector
//==================
const connector = new BotFrameworkAdapter({ appId: process.env.MICROSOFT_APP_ID, appPassword: process.env.MICROSOFT_APP_PASSWORD });
server.post('/api/messages', connector.listen() as any);

//====================
// Initialize BLIS
//====================
const useDebug = process.env.BLIS_DEBUG && process.env.BLIS_DEBUG.toLowerCase() === 'true'
const serviceUri = useDebug ? process.env.BLIS_DEBUG_URI : process.env.BLIS_SERVICE_URI
const blisOptions: IBlisOptions = {
    serviceUri,
    appId: process.env.BLIS_APP_ID,
    azureFunctionsUrl: process.env.BLIS_FUNCTIONS_URL,
    redisServer: process.env.BLIS_REDIS_SERVER,
    redisKey: process.env.BLIS_REDIS_KEY,
    localhost: process.env.BLIS_LOCALHOST ? process.env.BLIS_LOCALHOST.toLowerCase() === 'true' : true,
    user: process.env.BLIS_USER,
    secret: process.env.BLIS_SECRET
}

//=========================================================
// Bots Dialogs
//=========================================================
Blis.Init(blisOptions);

//=================================
// Add Entity Logic
//=================================
/**
* Processes messages received from the user. Called by the dialog system. 
* @param {string} text Input Text To BLIS
* @param {PredictedEntity[]} predictedEntities Entities extracted by LUIS model
* @param {ClientMemoryManager} memoryManager memory manager
* @returns {Promise<void>}
*/
Blis.EntityDetectionCallback(async (text: string, predictedEntities: PredictedEntity[], memoryManager: ClientMemoryManager): Promise<void> => {
    let appName = await memoryManager.AppNameAsync();
    switch (appName) {
        case "PizzaDemo":
            await pizzaDemo.EntityDetectionCallback(text, predictedEntities, memoryManager);
            break;
        case "LauncherDemo":
            await launcherDemo.EntityDetectionCallback(text, predictedEntities, memoryManager);
            break;
    }
}
)
//=================================
// Initialize bot
//=================================
const bot = new BB.Bot(connector)
    .use(Blis.recognizer)
    .use(Blis.templateManager)
    .onReceive(context => {
        if (context.request.type === "message" && context.topIntent) {
            context.replyWith(context.topIntent.name, context.topIntent);
        }
    })
