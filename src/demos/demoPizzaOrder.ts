/**
 * Copyright (c) Microsoft Corporation. All rights reserved.  
 * Licensed under the MIT License.
 */
import * as path from 'path'
import * as express from 'express'
import { BotFrameworkAdapter } from 'botbuilder'
import { ConversationLearner, ClientMemoryManager, ReadOnlyClientMemoryManager, FileStorage } from '@conversationlearner/sdk'
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
var inStock = ["cheese", "sausage", "mushrooms", "olives", "peppers"];
var isInStock = function (topping: string) {
    return (inStock.indexOf(topping.toLowerCase()) > -1);
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
})

//=================================
// Define API callbacks
//=================================
cl.AddCallback({
    name: "OutOfStock",
    logic: async (memoryManager: ClientMemoryManager) => {
        // Save out of stock item
        let outOfStock = memoryManager.Get("OutOfStock", ClientMemoryManager.AS_STRING)

        // Clear out of stock
        memoryManager.Delete("OutOfStock")

        return outOfStock
    },
    render: async (outofStock: string | null, memoryManager: ReadOnlyClientMemoryManager, ...args: string[]) => {
        return `Sorry, we don't have ${outofStock}`
    }
})

cl.AddCallback({
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

cl.AddCallback({
    name: "UseLastToppings",
    logic: async (memoryManager: ClientMemoryManager) => {
        // Restore last toppings
        memoryManager.Copy("LastToppings", "Toppings");

        // Clear last toppings
        memoryManager.Delete("LastToppings");
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
