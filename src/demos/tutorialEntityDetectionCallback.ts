/**
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */
import * as path from 'path'
import * as express from 'express'
import { BotFrameworkAdapter } from 'botbuilder'
import { ConversationLearnerFactory, ClientMemoryManager, FileStorage, uiRouter } from '@conversationlearner/sdk'
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
const adapter = new BotFrameworkAdapter({ appId: bfAppId, appPassword: bfAppPassword })

//==================================
// Storage
//==================================
// Initialize ConversationLearner using file storage.
// Recommended only for development
// See "storageDemo.ts" for other storage options
const fileStorage = new FileStorage(path.join(__dirname, 'storage'))

//==================================
// Initialize Conversation Learner
//==================================
const clFactory = new ConversationLearnerFactory(clOptions, fileStorage)
if (isDevelopment) {
    console.log(chalk.cyanBright(`Adding /sdk routes`))
    server.use('/sdk', clFactory.sdkRouter)
}
const cl = clFactory.create(modelId)

//=========================================================
// Bots Business Logic
//=========================================================
const cities = ['new york', 'boston', 'new orleans', 'chicago']
const cityMap: { [key: string]: string } = {}
cityMap['big apple'] = 'new york'
cityMap['windy city'] = 'chicago'

var resolveCity = function (cityFromUser: string) {
    if (cities.indexOf(cityFromUser) > -1) {
        return cityFromUser
    } else if (cityFromUser in cityMap) {
        return cityMap[cityFromUser]
    } else {
        return null
    }
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
    // Clear
    memoryManager.Delete("CityUnknown")

    // Get list of (possibly) ambiguous cities
    var citiesFromUser = memoryManager.Get("City", ClientMemoryManager.AS_STRING_LIST)
    if (citiesFromUser.length > 0) {
        var cityFromUser = citiesFromUser[0]
        const resolvedCity = resolveCity(cityFromUser)
        if (resolvedCity) {
            memoryManager.Set("CityResolved", resolvedCity)
        } else {
            memoryManager.Set("CityUnknown", cityFromUser)
            memoryManager.Delete("CityResolved")
            memoryManager.Delete("City")
        }
    }
}

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
