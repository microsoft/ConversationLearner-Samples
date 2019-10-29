/**
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License.
 */
import * as path from 'path'
import * as express from 'express'
import * as BB from 'botbuilder'
import * as CL from '@conversationlearner/sdk'
import { ConversationLearner, FileStorage, uiRouter } from '@conversationlearner/sdk'
import chalk from 'chalk'
import config from './config'

console.log(`Config:\n`, JSON.stringify(config, null, '  '))

//===================
// Create Bot server
//===================
const server = express()

const { bfAppId, bfAppPassword, modelId, ...clOptions } = config

//==================
// Create Adapter
//==================
const adapter = new BB.BotFrameworkAdapter({ appId: bfAppId, appPassword: bfAppPassword });

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
const sdkRouter = ConversationLearner.Init(clOptions, fileStorage)

const includeSdk = ['development', 'test'].includes(process.env.NODE_ENV || '')
if (includeSdk) {
    console.log(chalk.cyanBright(`Adding /sdk routes`))
    server.use('/sdk', sdkRouter)

    // Note: Must be mounted at root to use internal /ui paths
    console.log(chalk.greenBright(`Adding /ui routes`))
    server.use(uiRouter)
}

// Serve default bot summary page. Should be customized by customer.
server.use(express.static(path.join(__dirname, '..', 'site')))

const generalHelpModelId = '36bf07d6-2f19-4698-a40b-2f971f90a8b6'
const generalHelpModel = new ConversationLearner(generalHelpModelId)
const windowsHelpModelId = 'cc163aad-f89e-4989-916a-4ae71a9b02b6'
const windowsHelpModel = new ConversationLearner(windowsHelpModelId)
const officeHelpModelId = '65235b1c-825f-41e1-9f53-3bf177aba333'
const officeHelpModel = new ConversationLearner(officeHelpModelId)

const models = [
    generalHelpModel,
    windowsHelpModel,
    officeHelpModel
]
const defaultModel = generalHelpModel

const conversationIdActiveModelIdMap: Record<string, string> = {}

const generalHelpCallbacks: CL.ICallbackInput<any>[] = [
    {
        name: 'switchToWindowsCallback',
        logic: async () => {
            // TODO: Get conversationId
            const conversationId = 'asdfasdf'
            conversationIdActiveModelIdMap[conversationId] = windowsHelpModelId
        },
    },
    {
        name: 'switchToOfficeCallback',
        logic: async () => {
            // TODO: Get conversationId
            const conversationId = 'asdfasdf'
            conversationIdActiveModelIdMap[conversationId] = officeHelpModelId
        },
    },
]

generalHelpCallbacks.forEach(c => generalHelpModel.AddCallback(c))

const changeModelCallback = (conversationIdActiveModelIdMap: Record<string, string>) => async (context: BB.TurnContext, modelId: string) => {
    const conversationReference = BB.TurnContext.getConversationReference(context.activity)
    const conversationId = conversationReference.conversation
        ? conversationReference.conversation.id
        : ''

    const model = models.find(m => m.clRunner.configModelId === modelId)
    if (model) {
        // Set active model for conversation
        conversationIdActiveModelIdMap[conversationId] = modelId

        // Forward input to model
        model.clRunner.SetAdapter(context.adapter, conversationReference)
        const result = await (model.clRunner as any).ProcessInput(context)
        if (result) {
            return model.SendResult(result)
        }
    }
}

const changeModel = changeModelCallback(conversationIdActiveModelIdMap)

generalHelpModel.OnSessionEndCallback(async (context: BB.TurnContext, mm, sessionEndState: CL.SessionEndState, data: string | undefined) => {
    if (sessionEndState == CL.SessionEndState.COMPLETED) {
        if (data === 'changeModelToWindows') {
            await changeModel(context, windowsHelpModelId)
        }
        else if (data === 'changeModelToOffice') {
            await changeModel(context, officeHelpModelId)
        }
    }
})

server.post('/api/messages', (req, res) => {
    adapter.processActivity(req, res, async context => {
        const conversationReference = BB.TurnContext.getConversationReference(context.activity)
        const conversationId = conversationReference.conversation
            ? conversationReference.conversation.id
            : ''

        const activeModelId = conversationIdActiveModelIdMap[conversationId]
        const activeModel = models.find(m => m.clRunner.configModelId === activeModelId) || defaultModel
        const result = await activeModel.recognize(context)
        if (result) {
            return activeModel.SendResult(result);
        }
    })
})

export default server