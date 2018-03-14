import * as path from 'path'
import * as restify from 'restify'
import * as BB from 'botbuilder'
import { BotFrameworkAdapter } from 'botbuilder-services'
import { Blis, ClientMemoryManager, models, FileStorage } from 'blis-sdk'
import config from '../config'

//===================
// Create Bot server
//===================
const server = restify.createServer({
    name: 'BOT Server'
});
server.listen(process.env.port || process.env.PORT || config.botPort, () => {
    console.log(`${server.name} listening to ${server.url}`);
});

//==================
// Create connector
//==================
const connector = new BotFrameworkAdapter({ appId: config.microsoftAppId, appPassword: config.microsoftAppPassword });
server.post('/api/messages', connector.listen() as any);

// Initialize Blis using file storage.  Recommended only for development
// See "storageDemo.ts" for other storage options
let fileStorage = new FileStorage( {path: path.join(__dirname, 'storage')})
Blis.Init(config, fileStorage);

//=========================================================
// Bots Buisness Logic
//=========================================================
var greetings = [
    "Hello!", 
    "Greetings!", 
    "Hi there!"
];

//=================================
// Add Entity Logic
//=================================
/**
* Processes messages received from the user. Called by the dialog system. 
* @param {string} text Last user input to the Bot
* @param {PredictedEntity[]} predictedEntities Entities extracted from most recent user utterance
* @param {ClientMemoryManager} memoryManager Allows for viewing and manipulating Bot's memory
* @returns {Promise<void>}
*/
Blis.EntityDetectionCallback(async (text: string, predictedEntities: models.PredictedEntity[], memoryManager: ClientMemoryManager): Promise<void> => {
    // Nop -- no entity processing
})

//=================================
// Define API callbacks
//=================================
Blis.AddAPICallback("RandomGreeting", async (memoryManager : ClientMemoryManager) => {
    var randomGreeting = greetings[Math.floor(Math.random() * greetings.length)];
    return randomGreeting;
});

Blis.AddAPICallback("Multiply", async (memoryManager: ClientMemoryManager, num1string: string, num2string: string) => {

    // convert base and exponent to ints
    var num1int = parseInt(num1string);
    var num2int = parseInt(num2string);

    // compute product
    var result = num1int * num2int;

    // return result as message
    return num1int.toString() + " * " + num2int.toString() + " = " + result.toString();
})

Blis.AddAPICallback("ClearEntities", async (memoryManager: ClientMemoryManager) => {

    // clear base and exponent entities
    await memoryManager.ForgetEntityAsync("number");
    return "Let's do another.";
})



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
