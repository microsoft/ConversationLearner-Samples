import * as path from 'path'
import * as restify from 'restify'
import * as BB from 'botbuilder'
import { BotFrameworkAdapter } from 'botbuilder-services'
import { ConversationLearner, ClientMemoryManager, models, FileStorage } from 'conversationlearner-sdk'
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
const { microsoftAppId, microsoftAppPassword, ...clOptions } = config
const connector = new BotFrameworkAdapter({ appId: microsoftAppId, appPassword: microsoftAppPassword });
server.post('/api/messages', connector.listen() as any);

// Initialize ConversationLearner using file storage.  Recommended only for development
// See "storageDemo.ts" for other storage options
let fileStorage = new FileStorage( {path: path.join(__dirname, 'storage')})
ConversationLearner.Init(clOptions, fileStorage);

//=================================
// Add Entity Logic
//=================================
//
// ConversationLearner.EntityDetectionCallback is not needed in this demo, so can be left undefined
// See other demos, or app.ts in the src directory, for an example of ConversationLearner.EntityDetectionCallback
//

//=================================
// Define any API callbacks
//=================================
//
// No API calls are used in this demo, so there are no calls to ConversationLearner.AddAPICallback
// See other demos, or app.ts in the src directory, for an example of ConversationLearner.AddAPICallback
//

//=================================
// Initialize bot
//=================================
const bot = new BB.Bot(connector)
    .use(ConversationLearner.recognizer)
    .useTemplateRenderer(ConversationLearner.templateRenderer)
    .onReceive(context => {
        if (context.request.type === "message" && context.topIntent) {
            context.replyWith(context.topIntent.name, context.topIntent);
        }
    })
