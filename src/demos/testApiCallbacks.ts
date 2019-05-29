/**
 * Copyright (c) Microsoft Corporation. All rights reserved.  
 * Licensed under the MIT License.
 */
import * as path from 'path'
import * as express from 'express'
import * as botBuilder from 'botbuilder'
import { ConversationLearner, ClientMemoryManager, FileStorage, ReadOnlyClientMemoryManager, uiRouter } from '@conversationlearner/sdk'
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
const adapter = new botBuilder.BotFrameworkAdapter({ appId: bfAppId, appPassword: bfAppPassword });

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
    let entityError = memoryManager.Get("entityError", ClientMemoryManager.AS_STRING)
    console.log(chalk.redBright(`entityError: ${entityError}`))
    if (entityError === "entityError") {
        throw new Error('An intentional error was invoked in the EntityDetectionCallback function.')
        //(entityError as any).notValid.reference
    }

    // Get list of requested Toppings
    let toppings = memoryManager.Get("Toppings", ClientMemoryManager.AS_STRING_LIST);

    // Check each to see if it is in stock
    for (let topping of toppings) {
        // If not in stock, move from Toppings List to OutOfStock list
        if (!isInStock(topping)) {
            memoryManager.Delete("Toppings", topping);
            memoryManager.Set("OutOfStock", topping);
        }
    }
})

//===================================
// Define Pizza Related API Callbacks
//===================================

cl.AddCallback({
    name: "OutOfStock",
    logic: async (memoryManager: ClientMemoryManager) => {
        let outOfStock = memoryManager.Get("OutOfStock", ClientMemoryManager.AS_STRING)
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

//===========================================================================
// These API Callbacks will cause error messages in Conversation Learner
//===========================================================================

cl.AddCallback({
    name: "Malformed",
    logic: async (memoryManager: ClientMemoryManager) => {
        return "Malformed: Shouldn't return anything without Render function"
    }
})

cl.AddCallback({
    name: "BadCard",
    render: async (logicResult: any, memoryManager: ReadOnlyClientMemoryManager) => {
        return {id: {this: "BadCard"}} as any
    }
})

//===========================================================================
// This API Callbacks will can cause an error message in Conversation Learner
// if either "logicError" or "renderError" has a memory value. Otherwise
// it will complete without failure and render a message.
//===========================================================================

cl.AddCallback({
    name: "ExceptionAPI",
    logic: async (memoryManager: ClientMemoryManager) => {
        let logicError = memoryManager.Get("logicError", ClientMemoryManager.AS_STRING)
        if (logicError) {
            console.log(chalk.redBright(`logicError: ${logicError}`))
            throw new Error(`ExceptionAPI: Logic Error - value: '${logicError}'`)
        }

        let renderError = memoryManager.Get("renderError", ClientMemoryManager.AS_STRING)
        return renderError
    },
    render: async (renderError: any, memoryManager: ReadOnlyClientMemoryManager, ...args: string[]) => {
        if (renderError) {
            console.log(chalk.redBright(`renderError: ${renderError}`))
            throw new Error(`ExceptionAPI: Render Error - value: '${renderError}'`)
        }
        return "ExceptionAPI: Hello with no exception"
    }
})

//=================================================
// These API Callbacks will render without failure.
//=================================================

cl.AddCallback({
    name: "LogicWithNoArgs",
    logic: async (memoryManager: ClientMemoryManager) => {
    }
})

cl.AddCallback({
    name: "LogicWithArgs",
    logic: async (memoryManager: ClientMemoryManager, firstArg: string, secondArg: string) => {
    }
})

cl.AddCallback({
    name: "RenderTheArgs",
    logic: async (memoryManager: ClientMemoryManager, firstArg: string, secondArg: string, thirdArg: string, fourthArg: string, fifthArg: string, sixthArg: string, seventhArg: string) => {
        return `The Logic Args: '${firstArg}', '${secondArg}', '${thirdArg}', '${fourthArg}', '${fifthArg}', '${sixthArg}', '${seventhArg}'`
    },
    render: async (logicResult: string, memoryManager: ReadOnlyClientMemoryManager, firstArg: string, secondArg: string, thirdArg: string, fourthArg: string, fifthArg: string, sixthArg: string, seventhArg: string) => {
        return logicResult + `\nThe Render Args: '${firstArg}', '${secondArg}', '${thirdArg}', '${fourthArg}', '${fifthArg}', '${sixthArg}', '${seventhArg}'`
    }
})

cl.AddCallback({
    name: "TextCard",
    render: async (logicResult: any, memoryManager: ReadOnlyClientMemoryManager, cardTitle: string, cardText: string) => {
        let card = {
            type: "AdaptiveCard",
            version: "1.0",
            body: [
                {
                    type: "Container",
                    items: [
                        {
                            type: "TextBlock",
                            text: cardText,
                            wrap: true
                        }
                    ]
                }]
        }
        const attachment = botBuilder.CardFactory.adaptiveCard(card)
        const message = botBuilder.MessageFactory.attachment(attachment)
        message.text = cardTitle
        return message;
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
