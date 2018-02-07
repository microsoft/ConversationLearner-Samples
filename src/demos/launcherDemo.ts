import * as fs from 'fs'
import * as path from 'path'
import * as dotenv from 'dotenv'
import * as restify from 'restify'
import * as BB from 'botbuilder'
import { BotFrameworkAdapter } from 'botbuilder-services'
import { Blis, IBlisOptions, ClientMemoryManager, models } from 'blis-sdk'

const result = dotenv.config()
if (result.error) {
    console.warn(`Error loading .env configuration: ${result.error}`)
}

//===================
// Create Bot server
//===================
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

var apps = ["skype", "outlook", "amazon video", "amazon music"];
var resolveApps = function(appName) {
    return (apps.filter(n=>n.indexOf(appName) > -1));
}

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
Blis.EntityDetectionCallback(async (text: string, predictedEntities: models.PredictedEntity[], memoryManager: ClientMemoryManager): Promise<void> => {

    // Clear disambigApps
    await memoryManager.ForgetEntityAsync("DisambigAppNames");
    await memoryManager.ForgetEntityAsync("UnknownAppName");
            
    // Get list of (possibly) ambiguous apps
    var appName = await memoryManager.EntityValueAsListAsync("AppName");
    if (appName.length > 0) {
        var resolvedAppNames = resolveApps(appName);
        if (resolvedAppNames.length == 0) {
            await memoryManager.RememberEntityAsync("UnknownAppName", appName[0]);
            await memoryManager.ForgetEntityAsync("AppName");
        } else if (resolvedAppNames.length > 1) {
            await memoryManager.RememberEntitiesAsync("DisambigAppNames", resolvedAppNames);
            await memoryManager.ForgetEntityAsync("AppName");
        }
    }
})

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
