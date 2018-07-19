/**
 * Copyright (c) Microsoft Corporation. All rights reserved.  
 * Licensed under the MIT License.
 */
import * as path from 'path'
import * as express from 'express'
import { BotFrameworkAdapter } from 'botbuilder'
import { ConversationLearner, ClientMemoryManager, FileStorage } from '@conversationlearner/sdk'
import config from '../config'
import startDol from '../dol'

//===================
// Create Bot server
//===================
const server = express()

const isDevelopment = process.env.NODE_ENV === 'development'
if (isDevelopment) {
    startDol(server, config.botPort)
}
else {
    const listener = server.listen(config.botPort, () => {
        console.log(`Server listening to ${listener.address().port}`)
    })
}

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
    server.use('/sdk', sdkRouter)
}
let cl = new ConversationLearner(modelId);

//=========================================================
// Bots Buisness Logic
//=========================================================
let cities = ['new york', 'boston', 'new orleans', 'chicago'];
let cityMap:{ [index:string] : string } = {};
cityMap['big apple'] = 'new york';
cityMap['windy city'] = 'chicago';

var resolveCity = function(cityFromUser: string) {
    if (cities.indexOf(cityFromUser) > -1) {
        return cityFromUser;
    } else if (cityFromUser in cityMap) {
        return cityMap[cityFromUser];
    } else {
        return null;
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
cl.EntityDetectionCallback(async (text: string, memoryManager: ClientMemoryManager): Promise<void> => {
    // Clear
    memoryManager.ForgetEntity("CityUnknown");
            
    // Get list of (possibly) ambiguous cities
    var citiesFromUser = memoryManager.EntityValueAsList("City");
    if (citiesFromUser.length > 0) {
        var cityFromUser = citiesFromUser[0]
        const resolvedCity = resolveCity(cityFromUser)
        if (resolvedCity) {
            memoryManager.RememberEntity("CityResolved", resolvedCity);
        } else {
            memoryManager.RememberEntity("CityUnknown", cityFromUser);
            memoryManager.ForgetEntity("CityResolved");
            memoryManager.ForgetEntity("City");
        }
    }
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
