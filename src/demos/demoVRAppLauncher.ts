import * as fs from 'fs'
import * as path from 'path'
import * as dotenv from 'dotenv'
import * as restify from 'restify'
import * as BB from 'botbuilder'
import { BotFrameworkAdapter } from 'botbuilder-services'
import { Blis, IBlisOptions, ClientMemoryManager, models } from 'blis-sdk'
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

// Initialize Blis using in-memory storage.  See "storageDemo.ts" for other storage options
Blis.Init(config);

//=========================================================
// Bots Buisness Logic
//=========================================================
var apps = ["skype", "outlook", "amazon video", "amazon music"];
var resolveApps = function(appName: string) {
    return apps.filter(n => n.includes(appName));
}

//=================================
// Add Entity Logic
//=================================
/**
* Processes messages received from the user. Called by the dialog system. 
* @param {string} text Last user input to the Bot
* @param {PredictedEntity[]} predictedEntities Entities extracted from most recent user utterance
* @param {ClientMemoryManager} memoryManager Allows for viewing and manipulating Bot's memory
* @returns {Promise<void>}
*/
Blis.EntityDetectionCallback(async (text: string, predictedEntities: models.PredictedEntity[], memoryManager: ClientMemoryManager): Promise<void> => {

    // Clear disambigApps
    await memoryManager.ForgetEntityAsync("DisambigAppNames");
    await memoryManager.ForgetEntityAsync("UnknownAppName");
            
    // Get list of (possibly) ambiguous apps
    var appNames = await memoryManager.EntityValueAsListAsync("AppName");
    if (appNames.length > 0) {
        const resolvedAppNames = appNames
            .map(appName => resolveApps(appName))
            .reduce((a, b) => a.concat(b))
            
        if (resolvedAppNames.length == 0) {
            await memoryManager.RememberEntityAsync("UnknownAppName", appNames[0]);
            await memoryManager.ForgetEntityAsync("AppName");
        } else if (resolvedAppNames.length > 1) {
            await memoryManager.RememberEntitiesAsync("DisambigAppNames", resolvedAppNames);
            await memoryManager.ForgetEntityAsync("AppName");
        }
    }
})

Blis.AddAPICallback("LaunchApp", async (memoryManager: ClientMemoryManager, AppName: string, PlacementLocation: string) => {
        // TODO: Add API call to invoke app/location

        // Clear entities.
        
        await memoryManager.ForgetEntityAsync("AppName");
        await memoryManager.ForgetEntityAsync("PlacementLocation");

        return "Ok, starting " + AppName + " on the " + PlacementLocation + ".";
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
