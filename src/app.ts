import * as BB from 'botbuilder-core';
import * as Models from 'blis-models'
import { BotFrameworkAdapter } from 'botbuilder-services';
import { Blis, IBlisOptions, ClientMemoryManager } from 'blis-sdk';
import * as restify from 'restify';
import { PredictedEntity } from 'blis-models';

// Demos
const inStockDemo = require('./demos/inStock');
const businessHoursDemo = require('./demos/businessHours');

// Create server
let server = restify.createServer();
server.listen(process.env.port || 3978, () => {
    console.log(`${server.name} listening to ${server.url}`);
});

// Create connector
const connector = new BotFrameworkAdapter({ appId: process.env.MICROSOFT_APP_ID, appPassword: process.env.MICROSOFT_APP_PASSWORD });
server.post('/api/messages', connector.listen() as any);

//=======================================================
// Local debug setup
//=======================================================
var fs = require('fs');
var path = require('path');

function BlisOptions() : IBlisOptions {

    var filePath = path.join(__dirname, '..', 'blisconfig.json');
    if (fs.existsSync(filePath))
    {
        var data = fs.readFileSync(filePath, {encoding: 'utf-8'});
        var config = JSON.parse(data);

        var serviceUrl =config.BLIS_DEBUG ? config.BLIS_DEBUG_URI : config.BLIS_SERVICE_URI;
        return {   
            serviceUri: serviceUrl,  
            appId: config.BLIS_APP_ID,
            azureFunctionsUrl : config.BLIS_FUNCTIONS_URL,
            redisServer: config.BLIS_REDIS_SERVER,
            redisKey: config.BLIS_REDIS_KEY,
            localhost: true,
            user: "temp", //LARSTODO
            secret: "blah" //LARSTODO
        } 
    }
    else {
        return {   
            serviceUri: process.env.BLIS_SERVICE_URI, 
            appId: process.env.BLIS_APP_ID, 
            azureFunctionsUrl : process.env.BLIS_FUNCTIONS_URL,
            redisServer: process.env.BLIS_REDIS_SERVER,
            redisKey: process.env.BLIS_REDIS_KEY,
            localhost: false,
            user: "temp", //LARSTODO
            secret: "blah" //LARSTODO
        } 
    }
}

//=========================================================
// Bots Dialogs
//=========================================================
Blis.Init(BlisOptions());

/**
* Processes messages received from the user. Called by the dialog system. 
* @param {string} text Input Text To BLIS
* @param {PredictedEntity[]} predictedEntities Entities extracted by LUIS model
* @param {ClientMemoryManager} memoryManager memory manager
* @returns {Promise<void>}
*/
Blis.EntityDetectionCallback(async (text: string, predictedEntities: PredictedEntity[], memoryManager: ClientMemoryManager) : Promise<void> =>
    { 
        let appName = await memoryManager.AppNameAsync();
        switch (appName)
        { 
            case "InStock":
                await inStockDemo.EntityDetectionCallback(text, predictedEntities, memoryManager);
                break;
            case "OpenClosed":
                await businessHoursDemo.EntityDetectionCallback(text, predictedEntities, memoryManager);
                break;
        }
    }
)

// Example of a BLIS API callback
Blis.AddAPICallback("SampleMultiply", async (memoryManager : ClientMemoryManager, number1: string, number2: string) =>
    {
        try {
            var num1 = parseInt(number1);
            var num2 = parseInt(number2);

            return `${num1 * num2}`;
        }
        catch (err)
        {
            return "Invalid number";
        }
    }
)

// Initialize bot
const bot = new BB.Bot(connector)
   .use(Blis.recognizer)
   .use(Blis.templateManager)
    .onReceive(context => {
        if (context.request.type === "message" && context.topIntent) {
            context.replyWith(context.topIntent.name, context.topIntent);
        }
    })
