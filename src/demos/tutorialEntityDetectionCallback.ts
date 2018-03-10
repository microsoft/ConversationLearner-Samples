import * as path from 'path'
import * as restify from 'restify'
import * as BB from 'botbuilder'
import { FileStorage } from 'botbuilder-node'
import { BotFrameworkAdapter } from 'botbuilder-services'
import { Blis, ClientMemoryManager, models } from 'blis-sdk'
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
let cities = ['new york', 'boston', 'new orleans'];
let cityMap:{ [index:string] : string } = {};
cityMap['big apple'] = 'new york';
cityMap['windy city'] = 'chicago';

var resolveCity = function(cityFromUser: string) {
    if (cities.indexOf(cityFromUser) > -1) {
        return cityFromUser;
    } else if (cityFromUser in cityMap) {
        return cityMap[cityFromUser];
    } else {
        return null;
    }
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
Blis.EntityDetectionCallback(async (text: string, predictedEntities: models.PredictedEntity[], memoryManager: ClientMemoryManager): Promise<void> => {

    // Clear disambigApps
    await memoryManager.ForgetEntityAsync("CityUnknown");
            
    // Get list of (possibly) ambiguous apps
    var citiesFromUser = await memoryManager.EntityValueAsListAsync("City");
    if (citiesFromUser.length > 0) {
        var cityFromUser = citiesFromUser[0]
        const resolvedCity = resolveCity(cityFromUser)
        if (resolvedCity) {
            await memoryManager.RememberEntityAsync("CityResolved", resolvedCity);
        } else {
            await memoryManager.RememberEntityAsync("CityUnknown", cityFromUser);
            await memoryManager.ForgetEntityAsync("CityResolved");
            await memoryManager.ForgetEntityAsync("City");
        }
    }
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
