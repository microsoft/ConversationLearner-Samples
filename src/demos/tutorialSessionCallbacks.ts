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

//==================================
// Add Start / End Session callbacks
//==================================
/**
* Called at session start.
* Allows bot to set initial entities before conversation begins
* @param {ClientMemoryManager} memoryManager Allows for viewing and manipulating Bot's memory
* @returns {Promise<void>}
*/
ConversationLearner.OnSessionStartCallback(async (memoryManager: ClientMemoryManager): Promise<void> => {

    // Set BotName when session starts
    await memoryManager.RememberEntityAsync("BotName", "Botty")
})

/**
* Called at session ends.
* If not implemented all entity values will be cleared
* If implemented, developer responsible for clearing entities
* @param {ClientMemoryManager} memoryManager Allows for viewing and manipulating Bot's memory
* @returns {Promise<void>}
*/
ConversationLearner.OnSessionEndCallback(async (memoryManager: ClientMemoryManager): Promise<void> => {

    // Clear all entities but name and phone number
    await memoryManager.ClearAllEntitiesAsync(["UserName", "UserPhone"]);
})

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
