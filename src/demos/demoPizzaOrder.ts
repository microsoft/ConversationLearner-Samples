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
server.listen(config.botPort, () => {
    console.log(`${server.name} listening to ${server.url}`);
});

//==================
// Create connector
//==================
const { microsoftAppId, microsoftAppPassword, ...blisConfig } = config
const connector = new BotFrameworkAdapter({ appId: microsoftAppId, appPassword: microsoftAppPassword });
server.post('/api/messages', connector.listen() as any);

// Initialize Blis using file storage.  Recommended only for development
// See "storageDemo.ts" for other storage options
let fileStorage = new FileStorage( {path: path.join(__dirname, 'storage')})
Blis.Init(blisConfig, fileStorage);

//=========================================================
// Bots Buisness Logic
//=========================================================
var inStock = ["cheese", "sausage", "mushrooms", "olives", "peppers"];
var isInStock = function(topping: string) {
    return (inStock.indexOf(topping.toLowerCase()) > -1);
}

//=================================
// Add Entity Logic
//=================================
/**
* Processes messages received from the user. Called by the dialog system. 
* @param {string} text Last user input to the Bot
* @param {ClientMemoryManager} memoryManager Allows for viewing and manipulating Bot's memory
* @returns {Promise<void>}
*/
Blis.EntityDetectionCallback(async (text: string, memoryManager: ClientMemoryManager): Promise<void> => {

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

        return "Your order is on its way";
    }
);

Blis.AddAPICallback("UseLastToppings", async (memoryManager : ClientMemoryManager) =>
    {
        // Restore last toppings
        await memoryManager.CopyEntityAsync("LastToppings", "Toppings");

        // Clear last toppings
        await memoryManager.ForgetEntityAsync("LastToppings"); 

        // Don't display anything to the user
        return undefined;
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
