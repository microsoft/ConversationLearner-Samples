/**
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */
import * as path from 'path'
import * as express from 'express'
import { BotFrameworkAdapter } from 'botbuilder'
import { ConversationLearner, ClientMemoryManager, FileStorage, uiRouter } from '@conversationlearner/sdk'
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
// Storage
//==================================
// Initialize ConversationLearner using file storage.
// Recommended only for development
// See "storageDemo.ts" for other storage options
let fileStorage = new FileStorage(path.join(__dirname, 'storage'))

//==================================
// Initialize Conversation Learner
//==================================
const sdkRouter = ConversationLearner.Init(clOptions, fileStorage)
if (isDevelopment) {
    console.log(chalk.cyanBright(`Adding /sdk routes`))
    server.use('/sdk', sdkRouter)
}
let cl = new ConversationLearner(modelId);

//=========================================================
// Bots Buisness Logic
//=========================================================
var apps = ["skype", "outlook", "amazon video", "amazon music"];
var resolveApps = function (appName: string) {
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
cl.EntityDetectionCallback = async (text: string, memoryManager: ClientMemoryManager): Promise<void> => {

    // Clear disambigApps
    memoryManager.Delete("DisambigAppNames");
    memoryManager.Delete("UnknownAppName");

    // Get list of (possibly) ambiguous apps
    var appNames = memoryManager.Get("AppName", ClientMemoryManager.AS_STRING_LIST);
    if (appNames.length > 0) {
        const resolvedAppNames = appNames
            .map(appName => resolveApps(appName))
            .reduce((a, b) => a.concat(b))

        if (resolvedAppNames.length == 0) {
            memoryManager.Set("UnknownAppName", appNames[0]);
            memoryManager.Delete("AppName");
        } else if (resolvedAppNames.length > 1) {
            memoryManager.Set("DisambigAppNames", resolvedAppNames);
            memoryManager.Delete("AppName");
        }
    }
}

cl.AddCallback({
    name: "LaunchApp",
    logic: async (memoryManager: ClientMemoryManager, AppName: string, PlacementLocation: string) => {
        // Simulate API call to launch the app.

        memoryManager.Delete("AppName")
        memoryManager.Delete("PlacementLocation")

        return `Ok, starting ${AppName} on the ${PlacementLocation}.`
    }
})

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
