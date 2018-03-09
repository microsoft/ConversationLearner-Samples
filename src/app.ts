import * as fs from 'fs'
import * as path from 'path'
import * as restify from 'restify'
import * as BB from 'botbuilder'
import { BotFrameworkAdapter } from 'botbuilder-services'
import { Blis, IBlisOptions, ClientMemoryManager, models, FileStorage } from 'blis-sdk'
import config from './config'

//===================
// Create Bot server
//===================
const server = restify.createServer({
    name: 'BOT Server'
});

server.listen(process.env.port || process.env.PORT || config.botPort, () => {
    console.log(`${server.name} listening to ${server.url}`);
});

const { microsoftAppId, microsoftAppPassword, ...blisConfig } = config
//==================
// Create connector
//==================
const connector = new BotFrameworkAdapter({ appId: microsoftAppId, appPassword: microsoftAppPassword });
server.post('/api/messages', connector.listen() as any);

//==================================
// STORAGE 
//==================================
// Initialize Blis using file storage.  Recommended only for development
// See "storageDemo.ts" for other storage options
let fileStorage = new FileStorage( {path: path.join(__dirname, 'storage')})
Blis.Init(blisConfig, fileStorage);

//=================================
// Add Entity Logic
//=================================
/**
* @param {string} text Last user input to the Bot
* @param {PredictedEntity[]} predictedEntities Entities extracted from most recent user utterance
* @param {ClientMemoryManager} memoryManager Allows for viewing and manipulating Bot's memory
* @returns {Promise<void>}
*/
Blis.EntityDetectionCallback(async (text: string, predictedEntities: models.PredictedEntity[], memoryManager: ClientMemoryManager): Promise<void> => {
 
    /** Add business logic manipulating the entities in memory 
      
    memoryManager.RememberEntityAsync(entityName: string, entityValue: string): Promise<void>;
    memoryManager.RememberEntitiesAsync(entityName: string, entityValues: string[]): Promise<void>;
    memoryManager.ForgetEntityAsync(entityName: string, value?: string): Promise<void>;
    memoryManager.CopyEntityAsync(entityNameFrom: string, entityNameTo: string): Promise<void>;
    memoryManager.EntityValueAsync(entityName: string): Promise<string>;
    memoryManager.EntityValueAsPrebuiltAsync(entityName: string): Promise<MemoryValue[]>;
    memoryManager.EntityValueAsListAsync(entityName: string): Promise<string[]>;
    memoryManager.GetFilledEntitiesAsync(): Promise<FilledEntity[]>;

    */
})

//=================================
// Define any API callbacks
//=================================
/** 
Blis.AddAPICallback("{Name of API}", async (memoryManager: ClientMemoryManager, {arg1}: string, {arg2}: string, ...) => {

    {Your API logic inclusing any service calls}
        
    Returns promise of: 
        (1) undefined -> no message sent to user
        (2) string -> text message sent to user
        (3) BB.Activity -> card sent to user
})
*/ 

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
