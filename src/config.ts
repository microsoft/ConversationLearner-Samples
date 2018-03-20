import * as dotenv from 'dotenv'
import * as convict from 'convict'
import { IBlisOptions } from 'blis-sdk';

const result = dotenv.config()
if (result.error) {
    console.warn(`Error loading .env configuration: ${result.error}`)
}

export const config = convict({
    luisAuthoringKey: {
        format: String,
        default: undefined,
        env: 'LUIS_AUTHORING_KEY'
    },
    luisSubscriptionKey: {
        format: String,
        default: undefined,
        env: 'LUIS_SUBSCRIPTION_KEY'
    },
    serviceUri: {
        format: 'url',
        default: "http://blis-service-prod.azurewebsites.net/api/v1/",
        env: 'BLIS_SERVICE_URI'
    },
    appId: {
        format: String,
        default: undefined,
        env: 'BLIS_APP_ID'
    },
    botPort: {
        // Must be any type because when deployed port will be named pipe path instead of number
        // E.g. \\.\pipe\959e6a63-76dd-4f11-be42-d29ec0fc585d
        format: '*',
        default: 3978,
        env: 'PORT'
    },
    uiPort: {
        format: 'port',
        default: 5050,
        env: 'BLIS_UI_PORT',
    },
    sdkPort: {
        format: 'port',
        default: 5000,
        env: 'BLIS_SDK_PORT'
    },
    dolBotUrl: {
        format: 'url',
        default: 'http://127.0.0.1:3978/api/messages',
        env: 'DOL_BOT_URL'
    },
    dolServiceUrl: {
        format: 'url',
        default: 'http://127.0.0.1:3000',
        env: 'DOL_SERVICE_URL'
    },
    redisServer: {
        format: String,
        default: undefined,
        env: 'BLIS_REDIS_SERVER'
    },
    redisKey: {
        format: String,
        default: undefined,
        env: 'BLIS_REDIS_KEY'
    },
    functionUrl: {
        format: 'url',
        default: undefined,
        env: 'BLIS_FUNCTIONS_URL'
    },
    microsoftAppId: {
        format: String,
        default: undefined,
        env: 'MICROSOFT_APP_ID'
    },
    microsoftAppPassword: {
        format: String,
        default: undefined,
        env: 'MICROSOFT_APP_PASSWORD'
    },
    localhost: {
        format: Boolean,
        default: true,
        env: 'BLIS_LOCALHOST'
    },
})

config.validate({ allowed: 'strict' })

export interface IBlisSampleConfig extends IBlisOptions {
    botPort: string
    redisServer: string | undefined
    redisKey: string | undefined
    functionUrl: string
    microsoftAppId: string | undefined
    microsoftAppPassword: string | undefined
}

const blisConfig = config.getProperties() as IBlisSampleConfig

export default blisConfig



