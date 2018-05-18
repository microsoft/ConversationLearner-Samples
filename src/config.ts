/**
 * Copyright (c) Microsoft Corporation. All rights reserved.  
 * Licensed under the MIT License.
 */
import * as dotenv from 'dotenv'
import * as convict from 'convict'
import { ICLOptions } from '@conversationlearner/sdk';

const result = dotenv.config()
if (result.error) {
    console.warn(`Error loading .env configuration: ${result.error}`)
}

export const config = convict({
    LUIS_AUTHORING_KEY: {
        format: String,
        default: undefined,
        env: 'LUIS_AUTHORING_KEY'
    },
    LUIS_SUBSCRIPTION_KEY: {
        format: String,
        default: undefined,
        env: 'LUIS_SUBSCRIPTION_KEY'
    },
    APIM_SUBSCRIPTION_KEY: {
        format: String,
        default: undefined,
        env: 'APIM_SUBSCRIPTION_KEY'
    },
    CONVERSATION_LEARNER_SERVICE_URI: {
        format: 'url',
        default: "https://westus.api.cognitive.microsoft.com/conversationlearner/v1.0/",
        env: 'CONVERSATION_LEARNER_SERVICE_URI'
    },
    CONVERSATION_LEARNER_SDK_PORT: {
        format: 'port',
        default: 5000,
        env: 'CONVERSATION_LEARNER_SDK_PORT'
    },
    CONVERSATION_LEARNER_UI_PORT: {
        format: 'port',
        default: 5050,
        env: 'CONVERSATION_LEARNER_UI_PORT',
    },
    DOL_START: {
        format: Boolean,
        default: true,
        env: 'DOL_START'
    },
    DOL_BOT_URL: {
        format: 'url',
        default: 'http://127.0.0.1:3978/api/messages',
        env: 'DOL_BOT_URL'
    },
    DOL_SERVICE_URL: {
        format: 'url',
        default: 'http://127.0.0.1:3000',
        env: 'DOL_SERVICE_URL'
    },
    clAppId: {
        format: String,
        default: undefined,
        env: 'CONVERSATION_LEARNER_APP_ID'
    },
    botPort: {
        // Must be any type because when deployed port will be named pipe path instead of number
        // E.g. \\.\pipe\959e6a63-76dd-4f11-be42-d29ec0fc585d
        format: '*',
        default: 3978,
        env: 'PORT'
    },
    redisServer: {
        format: String,
        default: undefined,
        env: 'CONVERSATION_LEARNER_REDIS_SERVER'
    },
    redisKey: {
        format: String,
        default: undefined,
        env: 'CONVERSATION_LEARNER_REDIS_KEY'
    },
    bfAppId: {
        format: String,
        default: undefined,
        env: 'MICROSOFTAPPID'
    },
    bfAppPassword: {
        format: String,
        default: undefined,
        env: 'MICROSOFTAPPPASSWORD'
    }
})

config.validate({ allowed: 'strict' })

export interface ICLSampleConfig extends ICLOptions {
    clAppId: string | undefined
    botPort: any
    redisServer: string | undefined
    redisKey: string | undefined
    bfAppId: string | undefined
    bfAppPassword: string | undefined
}

const clOptions = config.getProperties() as ICLSampleConfig

export default clOptions



