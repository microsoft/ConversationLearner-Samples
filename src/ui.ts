import * as dotenv from 'dotenv'
import config from './config'
import { startUiServer } from 'blis-sdk'

startUiServer(config.uiPort)
