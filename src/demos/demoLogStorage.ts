/**
 * Copyright (c) Microsoft Corporation. All rights reserved.  
 * Licensed under the MIT License.
 */
import * as path from 'path'
import * as express from 'express'
import { BotFrameworkAdapter } from 'botbuilder'
import { ConversationLearner, ClientMemoryManager, FileStorage, uiRouter, CosmosLogStorage } from '@conversationlearner/sdk'
import chalk from 'chalk'
import config from '../config'
import getDolRouter from '../dol'

console.log(`Config:\n`, JSON.stringify(config, null, '  '))

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

const { bfAppId, bfAppPassword, modelId, cosmosServer, cosmosKey, ...clOptions } = config

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
const fileStorage = new FileStorage(path.join(__dirname, 'storage'))

//=========================================================
// Initialize Conversation Learner with Custom Log Storage
// (If stored on CL server, amount of storage is limited)
//==========================================================
async function main() {

    // Use custom log storage
    const logStorage = cosmosServer ? await CosmosLogStorage.Get({ endpoint: cosmosServer, key: cosmosKey }) : undefined

    const sdkRouter = ConversationLearner.Init(clOptions, fileStorage, logStorage)
    if (isDevelopment) {
        console.log(chalk.cyanBright(`Adding /sdk routes`))
        server.use('/sdk', sdkRouter)
    }

    const cl = new ConversationLearner(modelId)

    cl.EntityDetectionCallback = (async (text: string, memoryManager: ClientMemoryManager): Promise<void> => {

    memoryManager.Get("name", ClientMemoryManager.AS_STRING)
    })
        
    //=================================
    // Handle Incoming Messages
    //=================================
    server.post('/api/messages', (req, res) => {
        adapter.processActivity(req, res, async context => {
            const result = await cl.recognize(context)

            if (result) {
                return cl.SendResult(result);
            }
        })
    })
}

main()

export default server