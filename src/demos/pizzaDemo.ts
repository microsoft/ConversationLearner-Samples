import * as fs from 'fs'
import * as path from 'path'
import * as dotenv from 'dotenv'
import * as restify from 'restify'
import * as BB from 'botbuilder'
import * as Models from 'blis-models'
import { BotFrameworkAdapter } from 'botbuilder-services'
import { Blis, IBlisOptions, ClientMemoryManager } from 'blis-sdk'
import { PredictedEntity } from 'blis-models'

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

//=========================================================
// Bots Buisness Logic
//=========================================================
var inStock = ["cheese", "sausage", "mushrooms", "olives", "peppers"];
var isInStock = function(topping) {
    return (inStock.indexOf(topping.toLowerCase()) > -1);
}

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
Blis.EntityDetectionCallback(async (text: string, predictedEntities: PredictedEntity[], memoryManager: ClientMemoryManager): Promise<void> => {

    // Clear OutOfStock List
    await memoryManager.ForgetEntityAsync("OutOfStock");
            
    // Get list of requested Toppings
    let toppings = await memoryManager.EntityValueAsListAsync("Toppings");

    // Check each to see if it is in stock
    for (let topping of toppings) {

        // If not in stock, move from Toppings List of OutOfStock list
        if (!isInStock(topping)) {
            await memoryManager.ForgetEntityAsync("Toppings", topping);
            await memoryManager.RememberEntityAsync("OutOfStock", topping);        
        }
    }
})

//=================================
// Define API callbacks
//=================================
Blis.AddAPICallback("FinalizeOrder", async (memoryManager : ClientMemoryManager) => 
    {
        // Save toppings
        await memoryManager.CopyEntityAsync("Toppings", "LastToppings");

        // Clear toppings
        await memoryManager.ForgetEntityAsync("Toppings");

        return "Your order is on it's way";
    }
);

Blis.AddAPICallback("UseLastToppings", async (memoryManager : ClientMemoryManager) =>
    {
        // Restore last toppings
        await memoryManager.CopyEntityAsync("LastToppings", "Toppings");

        // Clear last toppings
        await memoryManager.ForgetEntityAsync("LastToppings"); 

        // Don't display anything to the user
        return null;
    });

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