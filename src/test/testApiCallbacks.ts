/**
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */
import * as path from 'path'
import * as express from 'express'
import * as botBuilder from 'botbuilder'
import { ConversationLearnerFactory, ClientMemoryManager, FileStorage, ReadOnlyClientMemoryManager, uiRouter } from '@conversationlearner/sdk'
import chalk from 'chalk'
import config from '../config'
import getDolRouter from '../dol'

const server = express()

const { bfAppId, bfAppPassword, modelId, ...clOptions } = config
const adapter = new botBuilder.BotFrameworkAdapter({ appId: bfAppId, appPassword: bfAppPassword })
const fileStorage = new FileStorage(path.join(__dirname, 'storage'))
const clFactory = new ConversationLearnerFactory(clOptions, fileStorage)
const isDevelopment = process.env.NODE_ENV === 'development'
if (isDevelopment) {
    console.log(chalk.yellowBright(`Adding /directline routes`))
    server.use(getDolRouter(config.botPort))

    console.log(chalk.cyanBright(`Adding /sdk routes`))
    server.use('/sdk', clFactory.sdkRouter)

    console.log(chalk.greenBright(`Adding /ui routes`))
    server.use(uiRouter as any)
}

// Serve default bot summary page. Should be customized by customer.
server.use(express.static(path.join(__dirname, '..', '..', 'site')))

server.listen(config.botPort, () => {
    console.log(`Server listening at: http://localhost:${config.botPort}`)
})

const cl = clFactory.create(modelId)

//=========================================================
// Bots Business Logic
//=========================================================
const inStock = ["cheese", "sausage", "mushrooms", "olives", "peppers"]
const isInStock = function (topping: string) {
    return (inStock.indexOf(topping.toLowerCase()) > -1)
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
cl.EntityDetectionCallback = async (text, memoryManager) => {
    let entityError = memoryManager.Get("entityError", ClientMemoryManager.AS_STRING)
    console.log(chalk.redBright(`entityError: ${entityError}`))
    if (entityError === "entityError") {
        throw new Error('An intentional error was invoked in the EntityDetectionCallback function.')
        //(entityError as any).notValid.reference
    }

    // Get list of requested Toppings
    let toppings = memoryManager.Get("Toppings", ClientMemoryManager.AS_STRING_LIST)

    // Check each to see if it is in stock
    for (let topping of toppings) {
        // If not in stock, move from Toppings List to OutOfStock list
        if (!isInStock(topping)) {
            memoryManager.Delete("Toppings", topping)
            memoryManager.Set("OutOfStock", topping)
        }
    }
}

//===================================
// Define Pizza Related API Callbacks
//===================================
cl.AddCallback<number>({
    name: "Add",
    logic: async (memoryManager, arg1: string, arg2: string) => {
        return [arg1, arg2]
            .map(x => parseInt(x))
            .reduce((sum, a) => sum += a, 0)
    },
    render: async result => `Add result is: ${result}`
})

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
        memoryManager.Copy("LastToppings", "Toppings")

        // Clear last toppings
        memoryManager.Delete("LastToppings")
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
        return { id: { this: "BadCard" } } as any
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

// Examples for listOfEntitiesToClear:
//  "1stEntity, 2ndEntity and lastEntity"
//  "only1Entity"
cl.AddCallback({
    name: "ClearMemory",
    logic: async (memoryManager: ClientMemoryManager, listOfEntitiesToClear: string) => {
        const arrayOfEntitiesToClear = listOfEntitiesToClear.split(', ').join(',').split(' and ').join(',').split(',')
        console.log(chalk.cyan(`listOfEntitiesToClear: ${listOfEntitiesToClear}`))
        console.log(chalk.cyan(`arrayOfEntitiesToClear: '${arrayOfEntitiesToClear.join(', ')}'`))

        arrayOfEntitiesToClear.forEach(entityToClear => { memoryManager.Delete(entityToClear) })
        return `Cleared the memory of these: '${arrayOfEntitiesToClear.join(', ')}'`
    },
    render: async (logicResult: string, memoryManager: ReadOnlyClientMemoryManager) => {
        return logicResult
    }
})

// Examples for listOfEntitiesToSet:
//  "1stEntity: value of one, 2ndEntity: two and lastEntity: this is the value of the last Entity"
//  "only1Entity: value of this single Entity"
cl.AddCallback({
    name: "SetMemory",
    logic: async (memoryManager: ClientMemoryManager, listOfEntitiesToSet: string) => {
        function set(memory: string) {
            let memoryValuePair = memory.split(':', 2)
            memoryManager.Set(memoryValuePair[0], memoryValuePair[1].trim())
        }

        const arrayOfEntitiesToSet = listOfEntitiesToSet.split(', ').join(',').split(' and ').join(',').split(',')
        console.log(chalk.cyan(`listOfEntitiesToSet: ${listOfEntitiesToSet}`))
        console.log(chalk.cyan(`arrayOfEntitiesToSet: '${arrayOfEntitiesToSet.join(', ')}'`))

        arrayOfEntitiesToSet.forEach(entityToSet => { set(entityToSet) })
        return `Set these memory values: '${arrayOfEntitiesToSet.join(', ')}'`
    },
    render: async (logicResult: string, memoryManager: ReadOnlyClientMemoryManager) => {
        return logicResult
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
        return message
    }
})

cl.AddCallback({
    name: "PhotoCard",
    render: async (logicResult: any, memoryManager: ReadOnlyClientMemoryManager, ...args: string[]) => {
        const message = botBuilder.MessageFactory.attachment(botBuilder.CardFactory.thumbnailCard('Photo Card', "Here is a photo for you to enjoy", ["https://picsum.photos/380/220"]))
        return message
    }
})


//===================================================================================================
// Most of the time this should be commented out, we leave it here so that it can be used to create
// a model that depends on it and then remove it by commenting it out in order to test error handling
// in the UI.
//===================================================================================================

// var greetings = [
//     "Hello!",
//     "Greetings!",
//     "Hi there!"
// ];

// cl.AddCallback({
//     name: "RandomGreeting",
//     render: async (logicResult: any, memoryManager: ReadOnlyClientMemoryManager, ...args: string[]) => {
//         var randomGreeting = greetings[Math.floor(Math.random() * greetings.length)];

//         const message = botBuilder.MessageFactory.attachment(botBuilder.CardFactory.thumbnailCard(randomGreeting, "Here's a neat photo", ["https://picsum.photos/100/?random"]))
//         return message
//     }
// })

// cl.AddCallback({
//     name: "RandomGreetingToo",
//     render: async (logicResult: any, memoryManager: ReadOnlyClientMemoryManager, ...args: string[]) => {
//         var randomGreeting = greetings[Math.floor(Math.random() * greetings.length)];

//         const message = botBuilder.MessageFactory.attachment(botBuilder.CardFactory.thumbnailCard(randomGreeting, "Here's a neat photo", ["https://picsum.photos/100/?random"]))
//         return message
//     }
// })

//=================================
// Handle Incoming Messages
//=================================

server.post('/api/messages', (req, res) => {
    adapter.processActivity(req, res, async context => {
        let result = await cl.recognize(context)

        if (result) {
            return cl.SendResult(result)
        }
    })
})
