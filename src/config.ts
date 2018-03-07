import * as dotenv from 'dotenv'
import * as convict from 'convict'
import { IBlisOptions } from 'blis-sdk';

const result = dotenv.config()
if (result.error) {
    console.warn(`Error loading .env configuration: ${result.error}`)
}

export const config = convict({
    serviceUri: {
        format: String,
        default: "http://blis-service-prod.azurewebsites.net/api/v1/",
        env: 'BLIS_SERVICE_URI'
    },
    appId: {
        format: String,
        default: "13e80404-de3f-42ba-9be4-8bf04c760f22",
        env: 'BLIS_APP_ID'
    },
    botPort: {
        format: 'port',
        default: 3978,
        env: 'BLIS_BOT_PORT'
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
        format: String,
        default: 'http://127.0.0.1:3978/api/messages',
        env: 'DOL_BOT_URL'
    },
    dolServiceUrl: {
        format: String,
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
        format: String,
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
        default: false,
        env: 'BLIS_LOCALHOST'
    },
})

config.validate({ allowed: 'strict' })

export interface IBlisSampleConfig extends IBlisOptions {
    botPort: number
    redisServer: string
    redisKey: string
    functionUrl: string
    microsoftAppId: string
    microsoftAppPassword: string
}

const blisConfig = config.getProperties() as IBlisSampleConfig

console.log(`Configuration loaded: `, JSON.stringify(blisConfig, null, ' '))

export default blisConfig



