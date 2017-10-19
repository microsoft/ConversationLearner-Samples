var restify = require('restify');
var builder = require('botbuilder');
var blisdk = require('blisdk');

const inStockDemo = require('./demos/inStock');
const businessHoursDemo = require('./demos/businessHours');
const picturesDemo = require('./demos/pictures');

//=========================================================
// Bot Setup
//=========================================================

// Setup Restify Server
var server = restify.createServer();
server.listen(process.env.port || process.env.PORT || 3978, function () {
   console.log('%s listening to %s ', server.name, server.url); 
});

// Create chat bot
var connector = new builder.ChatConnector({
    appId: process.env.MICROSOFT_APP_ID,
    appPassword: process.env.MICROSOFT_APP_PASSWORD
});
var bot = new builder.UniversalBot(connector, {
	persistConversationData: true
});
server.post('/api/messages', connector.listen());

//=======================================================
// Local debug setup
//=======================================================
var fs = require('fs');
var path = require('path');

var LocalConfig = function(config) {
    try 
    {
        var filePath = path.join(__dirname, 'blisconfig.json');
        var data = fs.readFileSync(filePath, {encoding: 'utf-8'});

        var config = JSON.parse(data);

        var serviceUrl =config.BLIS_DEBUG ? config.BLIS_DEBUG_URI : config.BLIS_SERVICE_URI;
        var blisOptions = {   
            serviceUri: serviceUrl, 
            user: config.BLIS_USER,  
            secret: config.BLIS_SECRET,  
            azureFunctionsUrl : config.BLIS_FUNCTIONS_URL,
            redisServer: config.BLIS_REDIS_SERVER,
            redisKey: config.BLIS_REDIS_KEY,
            luisCallback: LuisCallback,
            blisCallback: BlisCallback,
            apiCallbacks: APICallbacks,
            connector: connector
        }
        return blisOptions;
    }
    catch (Err)
    {
        return null;
    }
}

//=========================================================
// Bots Dialogs
//=========================================================

/**
* Allows developer to alter the output text from BLIS before it is sent to the end user 
* @param {string} text Output from BLIS
* @param {ClientMemoryManager} memoryManager memory manager
* @returns {string | builder.Message} 
*/
var BlisCallback = async function(text, memoryManager)
{
    // Call default callback to get bot output
    let defaultOutput = await blisDialog.DefaultBlisCallback(text, memoryManager);

    let appName = await memoryManager.AppName();
    switch (appName)
    { 
        case "Pictures":
            return picturesDemo.BlisCallback(defaultOutput, memoryManager);
    }
    return defaultOutput;
}

/**
* Processes messages received from the user. Called by the dialog system. 
* @param {string} text Input Text To BLIS
* @param {PredictedEntity[]} predictedEntities Entities extracted by LUIS model
* @param {ClientMemoryManager} memoryManager memory manager
* @returns {Promise<ScoreInput>}
*/
var LuisCallback = async function(text, predictedEntities, memoryManager) 
{
    // Call default callback to update Memory with LUIS predictions
    let defaultInput = await blisDialog.DefaultLuisCallback(text, predictedEntities, memoryManager);
        
    let appName = await memoryManager.AppName();
    switch (appName)
    { 
        case "InStock":
            return await inStockDemo.LuisCallback(defaultInput, memoryManager);
        case "OpenClosed":
            return await businessHoursDemo.LuisCallback(defaultInput, memoryManager);
    }
    return defaultInput;
}



// Example of a bliss API callback
var sampleMultiply = function(memoryManager, argArray) {
    try {
        var num1 = parseInt(argArray[0]);
        var num2 = parseInt(argArray[1]);

        return `${num1 * num2}`;
    }
    catch (err)
    {
        return "Invalid number";
    }
}

// Example of a prompt
var samplePrompt = function(memoryManager, argArray) {
    
    var text = argArray[0];
    var button1 = argArray[1];
    var button2 = argArray[2];

    var buttons = [
        builder.CardAction.imBack(null, button1, button1),
        builder.CardAction.imBack(null, button2, button2)
    ];
    var card = new builder.HeroCard()
        .text(text)
        .buttons(buttons);
    return new builder.Message().addAttachment(card);
}

var APICallbacks = {'SampleMultiply' : sampleMultiply,
                    'SamplePrompt' : samplePrompt,
                    'FinalizeOrder' : inStockDemo.FinalizeOrder,
                    'UseLastToppings' : inStockDemo.UseLastToppings };

var blisOptions = LocalConfig();

if (!blisOptions)
{
    blisOptions = 
    {   
        serviceUri: process.env.BLIS_SERVICE_URI, 
        user: process.env.BLIS_USER,  
        secret: process.env.BLIS_SECRET, 
        appId: process.env.BLIS_APP_ID, 
        azureFunctionsUrl : process.env.BLIS_FUNCTIONS_URL,
        redisServer: process.env.BLIS_REDIS_SERVER,
        redisKey: process.env.BLIS_REDIS_KEY,
        luisCallback: LuisCallback,
        blisCallback : BlisCallback,
        apiCallbacks : APICallbacks
    }
}


var blisDialog = new blisdk.BlisDialog.Init(bot, blisOptions);

bot.dialog('/', blisDialog);


