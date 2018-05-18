/**
 * Copyright (c) Microsoft Corporation. All rights reserved.  
 * Licensed under the MIT License.
 */
import * as path from 'path'
import * as restify from 'restify'
import * as BB from 'botbuilder'
import { BotFrameworkAdapter, ConversationState } from 'botbuilder'
import { ConversationLearner, ClientMemoryManager, models, FileStorage } from '@conversationlearner/sdk'
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
// Initialize ConversationLearner using file storage.  Recommended only for development
// See "storageDemo.ts" for other storage options
let fileStorage = new FileStorage(path.join(__dirname, 'storage'))

//==================================
// Initialize Conversation Learner
//==================================
ConversationLearner.Init(clOptions, fileStorage);

//=================================
// Add Pizza functions
//=================================
var inStock = ["cheese", "sausage", "mushrooms", "olives", "peppers"];
var isInStock = function(topping: string) {
    return (inStock.indexOf(topping.toLowerCase()) > -1);
}

let clPizza = new ConversationLearner("096fdb9f-f25d-4b3a-be33-ec26130de9c2");
clPizza.EntityDetectionCallback(async (text: string, memoryManager: ClientMemoryManager): Promise<void> => {

    // Clear OutOfStock List
    await memoryManager.ForgetEntityAsync("OutOfStock");
            
    // Get list of requested Toppings
    let toppings = await memoryManager.EntityValueAsListAsync("Toppings");

    // Check each to see if it is in stock
    for (let topping of toppings) {

        // If not in stock, move from Toppings List of OutOfStock list
        if (!isInStock(topping)) {
            await memoryManager.ForgetEntityAsync("Toppings", topping);
            await memoryManager.RememberEntityAsync("OutOfStock", topping);        
        }
    }
})

clPizza.AddAPICallback("FinalizeOrder", async (memoryManager : ClientMemoryManager) => 
    {
        // Save toppings
        await memoryManager.CopyEntityAsync("Toppings", "LastToppings");

        // Clear toppings
        await memoryManager.ForgetEntityAsync("Toppings");

        return "Your order is on its way";
    }
);

clPizza.AddAPICallback("UseLastToppings", async (memoryManager : ClientMemoryManager) =>
    {
        // Restore last toppings
        await memoryManager.CopyEntityAsync("LastToppings", "Toppings");

        // Clear last toppings
        await memoryManager.ForgetEntityAsync("LastToppings"); 
    });

//=================================
// Add VR functions
//=================================
var apps = ["skype", "outlook", "amazon video", "amazon music"];
var resolveApps = function(appName: string) {
    return apps.filter(n => n.includes(appName));
}

let clVr = new ConversationLearner("398a9d3d-f6c3-4c64-8904-9f135a42d0fd");
clVr.EntityDetectionCallback(async (text: string, memoryManager: ClientMemoryManager): Promise<void> => {

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

clVr.AddAPICallback("LaunchApp", async (memoryManager: ClientMemoryManager, AppName: string, PlacementLocation: string) => {
        // TODO: Add API call to invoke app/location

        // Clear entities.
        
        await memoryManager.ForgetEntityAsync("AppName");
        await memoryManager.ForgetEntityAsync("PlacementLocation");

        return "Ok, starting " + AppName + " on the " + PlacementLocation + ".";
})

// Define conversation state shape
interface BotState {
    mode: string;
}

// Add conversation state middleware
const conversationState = new ConversationState<BotState>(fileStorage);
adapter.use(conversationState);

//=================================
// Handle Incoming Messages
//=================================
server.post('/api/messages', (req, res) => {
    adapter.processActivity(req, res, async context => {

        // When running in training UI, ConversationLearner must always have control
        if (clPizza.inTrainingUI(context.activity)) {
            let result = await clPizza.recognize(context)
            if (result) {
                return clPizza.SendResult(result);
            }
            return;
        }

        // Get state for this turn 
        const state = conversationState.get(context);

        if (!state) return;

        if (context.activity.type === 'message') {
            if (context.activity.text.toLowerCase() == 'pizza') {
                state.mode = "pizza";
                return context.sendActivity('Ok, how can I help you with pizza?')
            }
            else if (context.activity.text.toLowerCase() == 'vr') {
                state.mode = "vr";
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
