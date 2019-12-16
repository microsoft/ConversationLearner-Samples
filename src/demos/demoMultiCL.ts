/**
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */
import * as path from 'path'
import * as express from 'express'
import { BotFrameworkAdapter, ConversationState, AutoSaveStateMiddleware } from 'botbuilder'
import { ConversationLearner, ClientMemoryManager, ReadOnlyClientMemoryManager, FileStorage, uiRouter } from '@conversationlearner/sdk'
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
    server.use(uiRouter as any)
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
// Initialize ConversationLearner using file storage.  Recommended only for development
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

//=================================
// Add Pizza functions
//=================================
var inStock = ["cheese", "sausage", "mushrooms", "olives", "peppers"];
var isInStock = function (topping: string) {
    return (inStock.indexOf(topping.toLowerCase()) > -1);
}

let clPizza = new ConversationLearner("2d9884f4-75a3-4f63-8b1e-d885ac02663e");
clPizza.EntityDetectionCallback = async (text: string, memoryManager: ClientMemoryManager): Promise<void> => {

    // Clear OutOfStock List
    memoryManager.Delete("OutOfStock");

    // Get list of requested Toppings
    let toppings = memoryManager.Get("Toppings", ClientMemoryManager.AS_STRING_LIST);

    // Check each to see if it is in stock
    for (let topping of toppings) {

        // If not in stock, move from Toppings List of OutOfStock list
        if (!isInStock(topping)) {
            memoryManager.Delete("Toppings", topping);
            memoryManager.Set("OutOfStock", topping);
        }
    }
}

clPizza.AddCallback({
    name: "FinalizeOrder",
    logic: async (memoryManager: ClientMemoryManager) => {
        // Save toppings
        memoryManager.Copy("Toppings", "LastToppings")

        // Clear toppings
        memoryManager.Delete("Toppings")
    },
    render: async (logicResult: any, memoryManager: ReadOnlyClientMemoryManager, ...args: string[]) => {
        return "Your order is on its way"
    }
})

clPizza.AddCallback({
    name: "UseLastToppings",
    logic: async (memoryManager: ClientMemoryManager) => {
        // Restore last toppings
        memoryManager.Copy("LastToppings", "Toppings");

        // Clear last toppings
        memoryManager.Delete("LastToppings");
    }
})

//=================================
// Add VR functions
//=================================
var apps = ["skype", "outlook", "amazon video", "amazon music"];
var resolveApps = function (appName: string) {
    return apps.filter(n => n.includes(appName));
}

let clVr = new ConversationLearner("997dc1e2-c0c0-4812-9429-446e31cfdf99");
clVr.EntityDetectionCallback = async (text: string, memoryManager: ClientMemoryManager): Promise<void> => {

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

clVr.AddCallback({
    name: "LaunchApp",
    logic: async (memoryManager: ClientMemoryManager, AppName: string, PlacementLocation: string) => {
        // Clear entities.
        memoryManager.Delete("AppName")
        memoryManager.Delete("PlacementLocation")

        return `Ok, starting ${AppName} on the ${PlacementLocation}.`
    }
})

// Define conversation state shape
interface BotState {
    mode: string;
}

// Add conversation state middleware
const conversationState = new ConversationState(fileStorage)
const botStateAccessor = conversationState.createProperty<BotState>('botState')
adapter.use(new AutoSaveStateMiddleware(conversationState))

//=================================
// Handle Incoming Messages
//=================================
server.post('/api/messages', (req, res) => {
    adapter.processActivity(req, res, async context => {

        // When running in training UI, ConversationLearner must always have control
        if (await clPizza.InTrainingUI(context)) {
            let result = await clPizza.recognize(context)
            if (result) {
                return clPizza.SendResult(result);
            }
            return;
        } else if (await clVr.InTrainingUI(context)) {
            let result = await clVr.recognize(context)
            if (result) {
                return clVr.SendResult(result);
            }
            return;
        }

        // Get state for this turn
        await conversationState.load(context)
        const state = await botStateAccessor.get(context, <BotState>{ mode: "" })

        if (!state) return;

        if (context.activity.type === 'message') {
            if (context.activity.text.toLowerCase() == 'pizza') {
                state.mode = "pizza";
                await botStateAccessor.set(context, state)
                return context.sendActivity('Ok, how can I help you with pizza?')
            }
            else if (context.activity.text.toLowerCase() == 'vr') {
                state.mode = "vr";
                await botStateAccessor.set(context, state)
                return context.sendActivity('Ok, how can I help you with VR?')
            }


            if (state.mode === 'pizza') {
                let result = await clPizza.recognize(context)
                if (result) {
                    return clPizza.SendResult(result);
                }
            }
            else if (state.mode === 'vr') {
                let result = await clVr.recognize(context)
                if (result) {
                    return clVr.SendResult(result);
                }
            }
            else {
                return context.sendActivity('Pizza or VR?')
            }
        }
    })
})
