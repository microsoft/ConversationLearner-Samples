import * as dotenv from 'dotenv'
import { startUiServer } from 'blis-sdk'

const result = dotenv.config()
if (result.error) {
    console.warn(`Error loading .env configuration: ${result.error}`)
}

startUiServer()
