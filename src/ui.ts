import * as dotenv from 'dotenv'
import config from './config'
import { startUiServer } from 'conversationlearner-sdk'

startUiServer(config.uiPort)
