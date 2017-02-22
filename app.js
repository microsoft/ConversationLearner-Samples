var restify = require('restify');
var builder = require('botbuilder');
var blisdk = require('blisdk');

//=========================================================
// Bot Setup
//=========================================================

// Setup Restify Server
var server = restify.createServer();
server.listen(process.env.port || process.env.PORT || 3978, function () {
   console.log('%s listening to  %s', server.name, server.url); 
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

        var blisOptions = {   
            serviceUri: config.BLIS_SERVICE_URI, 
            user: config.BLIS_USER,  
            secret: config.BLIS_SECRET, 
            appId: config.BLIS_APP_ID, 
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

var blisOptions = LocalConfig();

if (!blisOptions)
{
    blisOptions = 
    {   
        serviceUri: process.env.BLIS_SERVICE_URI, 
        user: process.env.BLIS_USER,  
        secret: process.env.BLIS_SECRET, 
        appId: process.env.BLIS_APP_ID, 
    }
}

var recognizer = new blisdk.BlisRecognizer(blisOptions);

recognizer.InitDebug(bot);
	
var blisDialog = new blisdk.BlisDialog({ 
	recognizers: [recognizer]});

bot.dialog('/', blisDialog);


