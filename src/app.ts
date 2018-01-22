import * as fs from 'fs'
import * as path from 'path'
import * as dotenv from 'dotenv'
import * as restify from 'restify'
import * as BB from 'botbuilder-core'
import * as Models from 'blis-models'
import { BotFrameworkAdapter } from 'botbuilder-services'
import { Blis, IBlisOptions, ClientMemoryManager } from 'blis-sdk'
import { PredictedEntity } from 'blis-models'

const result = dotenv.config()
if (result.error) {
    console.warn(`Error loading .env configuration: ${result.error}`)
}

// Demos
const inStockDemo = require('./demos/inStock');
const businessHoursDemo = require('./demos/businessHours');

// Create server
const server = restify.createServer({
    name: 'BOT Server'
});
server.listen(process.env.PORT || 3978, () => {
    console.log(`${server.name} listening to ${server.url}`);
});

// Create connector
const connector = new BotFrameworkAdapter({ appId: process.env.MICROSOFT_APP_ID, appPassword: process.env.MICROSOFT_APP_PASSWORD });
server.post('/api/messages', connector.listen() as any);

const useDebug = process.env.BLIS_DEBUG.toLowerCase() === 'true'
const serviceUri = useDebug ? process.env.BLIS_DEBUG_URI : process.env.BLIS_SERVICE_URI
const blisOptions: IBlisOptions = {
    serviceUri,
    appId: process.env.BLIS_APP_ID,
    azureFunctionsUrl: process.env.BLIS_FUNCTIONS_URL,
    redisServer: process.env.BLIS_REDIS_SERVER,
    redisKey: process.env.BLIS_REDIS_KEY,
    localhost: process.env.BLIS_LOCALHOST.toLowerCase() === 'true',
    user: process.env.BLIS_USER,
    secret: process.env.BLIS_SECRET
}

//=========================================================
// Bots Dialogs
//=========================================================
Blis.Init(blisOptions);

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
        case "InStock":
            await inStockDemo.EntityDetectionCallback(text, predictedEntities, memoryManager);
            break;
        case "OpenClosed":
            await businessHoursDemo.EntityDetectionCallback(text, predictedEntities, memoryManager);
            break;
    }
}
)

// Example of a BLIS API callback
Blis.AddAPICallback("SampleMultiply", async (memoryManager: ClientMemoryManager, number1: string, number2: string) => {
    try {
        var num1 = parseInt(number1);
        var num2 = parseInt(number2);

        return `${num1 * num2}`;
    }
    catch (err) {
        return "Invalid number";
    }
}
)

// Initialize bot
const bot = new BB.Bot(connector)
    .use(Blis.recognizer)
    .use(Blis.templateManager)
    .onReceive(context => {
        if (context.request.type === "message" && context.topIntent) {
            context.replyWith(context.topIntent.name, context.topIntent);
        }
    })
