/**
 * Copyright (c) Microsoft Corporation. All rights reserved.  
 * Licensed under the MIT License.
 */
import * as path from 'path'
import * as restify from 'restify'
import * as BB from 'botbuilder'
import { BotFrameworkAdapter } from 'botbuilder'
import { ConversationLearner, ClientMemoryManager, models, FileStorage } from 'conversationlearner-sdk'
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
let cl = new ConversationLearner(clAppId);

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
* @param {ClientMemoryManager} memoryManager Allows for viewing and manipulating Bot's memory
* @returns {Promise<void>}
*/
cl.EntityDetectionCallback(async (text: string, memoryManager: ClientMemoryManager): Promise<void> => {

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

cl.AddAPICallback("LaunchApp", async (memoryManager: ClientMemoryManager, AppName: string, PlacementLocation: string) => {
        // TODO: Add API call to invoke app/location

        // Clear entities.
        
        await memoryManager.ForgetEntityAsync("AppName");
        await memoryManager.ForgetEntityAsync("PlacementLocation");

        return "Ok, starting " + AppName + " on the " + PlacementLocation + ".";
})

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
