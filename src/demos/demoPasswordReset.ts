import * as fs from 'fs'
import * as path from 'path'
import * as dotenv from 'dotenv'
import * as restify from 'restify'
import * as BB from 'botbuilder'
import { BotFrameworkAdapter } from 'botbuilder-services'
import { Blis, IBlisOptions, ClientMemoryManager, models } from 'blis-sdk'
import config from '../config'

//===================
// Create Bot server
//===================
const server = restify.createServer({
    name: 'BOT Server'
});
server.listen(config.botPort, () => {
    console.log(`${server.name} listening to ${server.url}`);
});

//==================
// Create connector
//==================
const connector = new BotFrameworkAdapter({ appId: config.microsoftAppId, appPassword: config.microsoftAppPassword });
server.post('/api/messages', connector.listen() as any);

// Initialize Blis using in-memory storage.  See "storageDemo.ts" for other storage options
Blis.Init(config);

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
