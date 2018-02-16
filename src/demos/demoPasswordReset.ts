import * as fs from 'fs'
import * as path from 'path'
import * as dotenv from 'dotenv'
import * as restify from 'restify'
import * as BB from 'botbuilder'
import { BotFrameworkAdapter } from 'botbuilder-services'
import { Blis, IBlisOptions, ClientMemoryManager, models } from 'blis-sdk'

const result = dotenv.config()
if (result.error) {
    console.warn(`Error loading .env configuration: ${result.error}`)
}

//===================
// Create Bot server
//===================
const server = restify.createServer({
    name: 'BOT Server'
});
server.listen(process.env.PORT || 3978, () => {
    console.log(`${server.name} listening to ${server.url}`);
});

//==================
// Create connector
//==================
const connector = new BotFrameworkAdapter({ appId: process.env.MICROSOFT_APP_ID, appPassword: process.env.MICROSOFT_APP_PASSWORD });
server.post('/api/messages', connector.listen() as any);

//====================
// Initialize BLIS
//====================
const useDebug = process.env.BLIS_DEBUG && process.env.BLIS_DEBUG.toLowerCase() === 'true'
const serviceUri = useDebug ? process.env.BLIS_DEBUG_URI : process.env.BLIS_SERVICE_URI
const blisOptions: IBlisOptions = {
    serviceUri,
    appId: process.env.BLIS_APP_ID,
    azureFunctionsUrl: process.env.BLIS_FUNCTIONS_URL,
    localhost: process.env.BLIS_LOCALHOST ? process.env.BLIS_LOCALHOST.toLowerCase() === 'true' : true,
    user: process.env.BLIS_USER,
    secret: process.env.BLIS_SECRET
}

// Initialize Blis using in-memory storage.  See "storageDemo.ts" for other storage options
Blis.Init(blisOptions);

//=================================
// Add Entity Logic
//=================================
//
// Blis.EntityDetectionCallback is not needed in this demo, so can be left undefined
// See other demos, or app.ts in the src directory, for an example of Blis.EntityDetectionCallback
//

//=================================
// Define any API callbacks
//=================================
//
// No API calls are used in this demo, so there are no calls to Blis.AddAPICallback
// See other demos, or app.ts in the src directory, for an example of Blis.AddAPICallback
//

//=================================
// Initialize bot
//=================================
const bot = new BB.Bot(connector)
    .use(Blis.recognizer)
    .useTemplateRenderer(Blis.templateRenderer)
    .onReceive(context => {
        if (context.request.type === "message" && context.topIntent) {
            context.replyWith(context.topIntent.name, context.topIntent);
        }
    })
