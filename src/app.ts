/**
 * Copyright (c) Microsoft Corporation. All rights reserved.  
 * Licensed under the MIT License.
 */
import * as fs from 'fs'
import * as path from 'path'
import * as restify from 'restify'
import * as BB from 'botbuilder'
import { BotFrameworkAdapter } from 'botbuilder'
import { ConversationLearner, ICLOptions, ClientMemoryManager, models, FileStorage } from '@conversationlearner/sdk'
import config from './config'
import { createSearchIssuesCard, Issue, createImagesCard } from './imagesCards'

console.log(`Config: `, JSON.stringify(config, null, '  '))

//===================
// Create Bot server
//===================
const server = restify.createServer({
    name: 'BOT Server'
});

server.listen(config.botPort, () => {
    console.log(`${server.name} listening to ${server.url}`);
});

const { bfAppId, bfAppPassword, clAppId, ...clOptions } = config

//==================
// Create Adapter
//==================
const adapter = new BotFrameworkAdapter({ appId: bfAppId, appPassword: bfAppPassword });

//==================================
// Storage 
//==================================
// Initialize ConversationLearner using file storage.  
// Recommended only for development
// See "storageDemo.ts" for other storage options
let fileStorage = new FileStorage(path.join(__dirname, 'storage'))

//==================================
// Initialize Conversation Learner
//==================================
ConversationLearner.Init(clOptions, fileStorage);
let cl = new ConversationLearner(clAppId);

//=================================
// Add Entity Logic
//=================================
/**
* @param {string} text Last user input to the Bot
* @param {ClientMemoryManager} memoryManager Allows for viewing and manipulating Bot's memory
* @returns {Promise<void>}
*/
cl.EntityDetectionCallback(async (text: string, memoryManager: ClientMemoryManager): Promise<void> => {
 
    /** Add business logic manipulating the entities in memory 

    // Values in bot memory
    memoryManager.EntityValueAsync(entityName: string): Promise<string>
    memoryManager.EntityValueAsPrebuiltAsync(entityName: string): Promise<MemoryValue[]>
    memoryManager.EntityValueAsListAsync(entityName: string): Promise<string[]>
    memoryManager.EntityValueAsObjectAsync<T>(entityName: string): Promise<T | null>
    memoryManager.EntityValueAsBooleanAsync(entityName: string): Promise<boolean | null>
    memoryManager.EntityValueAsNumberAsync(entityName: string): Promise<boolean | null>

    // Values in memory before new Entity detection
    memoryManager.PrevEntityValue(entityName: string): (string | null)
    memoryManager.PrevEntityValueAsPrebuilt(entityName: string): MemoryValue[]
    memoryManager.PrevEntityValueAsList(entityName: string): string[]
    memoryManager.PrevEntityValueAsObject<T>(entityName: string): (T | null)
    memoryManager.PrevValueAsBoolean(entityName: string): boolean | null
    memoryManager.PrevValueAsNumber(entityName: string): boolean | null

    // Memory manipulation methods
    memoryManager.RememberEntityAsync(entityName: string, entityValue: string): Promise<void>
    memoryManager.RememberEntitiesAsync(entityName: string, entityValues: string[]): Promise<void>
    memoryManager.ForgetEntityAsync(entityName: string, value?: string): Promise<void>
    memoryManager.ForgetAllEntitiesAsync(saveEntityNames: string[]): Promise<void> 
    
    memoryManager.CopyEntityAsync(entityNameFrom: string, entityNameTo: string): Promise<void>

    memoryManager.GetFilledEntitiesAsync(): Promise<FilledEntity[]>

    memoryManager.SessionInfo(): SessionInfo
    */
})

//=================================
// Define any API callbacks
//=================================
cl.AddAPICallback("GET /serach/issues", async (memoryManager: ClientMemoryManager, searchIssuesQuery: string) => {
    const response = await fetch(`https://api.github.com/search/issues?q=${searchIssuesQuery}`)
    if (!response.ok) {
        return "Error attempting to search github repositories."
    }

    const json: any = await response.json()
    const issues = (json.items as any[]).map<Issue>(x => ({
        title: x.title,
        avatarUrl: x.user.avatar_url,
        url: x.html_url
    }))
    const form = createSearchIssuesCard(issues)
    const attachment = BB.CardFactory.adaptiveCard(form);
    const message: any = BB.MessageFactory.attachment(attachment);
    message.text = "List of issues";
    return message;
})

cl.AddAPICallback("GET /search/repositories", async (memoryManager: ClientMemoryManager, searchQuery: string) => {
    const response = await fetch(`https://api.github.com/search/repositories?q=${searchQuery}`)
    if (!response.ok) {
        return "Error attempting to search github repositories."
    }

    const json: any = await response.json()

    return `
Results: ${json.total_count}
Top 10 Repositories:
${(json.items as any[]).map<string>(r => r.full_name).join('\n')}
`
})

cl.AddAPICallback('Verify Repository', async (memoryManager: ClientMemoryManager) => {
    const repositoryUrl = await memoryManager.EntityValueAsync("repositoryUrl")
    let repositoryStub = await memoryManager.EntityValueAsync("repositorystub")
    console.log(`repositoryUrl: `, repositoryUrl)
    console.log(`repositoryStub: `, repositoryUrl)
    if (repositoryUrl && repositoryUrl.startsWith("https://github.com/")) {
        repositoryStub = repositoryUrl.substr("https://github.com/".length)
        console.log(`Getting repository stub from repository url: ${repositoryUrl}, stub: ${repositoryStub}`)
    }

    if (!repositoryStub || repositoryStub.length === 0) {
        return "Error: repository stub was not defined"
    }

    const response = await fetch(`https://api.github.com/repos/${repositoryStub}`)
    if (!response.ok) {
        return "Error attempting to search github repositories."
    }

    const json: any = await response.json()
    memoryManager.RememberEntityAsync('repository', json.url)

    return `Reposority verified`
})

cl.AddAPICallback("Get repository details", async (memoryManager: ClientMemoryManager) => {
    const repositoryApiUrl = await memoryManager.EntityValueAsync("repository")
    if (!repositoryApiUrl) {
        return "Error: repositoryUrl entity was not defined"
    }

    const response = await fetch(repositoryApiUrl)
    if (!response.ok) {
        return "Error attempting to fetch github contributors."
    }

    const json: any = await response.json()

    return `${json.name}

    Stars: ${json.stargazers_count},
    Watch: ${json.watchers_count},
    Language: ${json.language},
    Forks: ${json.forks_count}`
})

cl.AddAPICallback("Get /repos/{repo}/contributors", async (memoryManager: ClientMemoryManager, title: string, repositoryApiUrl: string) => {
    const response = await fetch(`${repositoryApiUrl}/contributors`)
    if (!response.ok) {
        return "Error attempting to fetch github contributors."
    }

    const contributors: any[] = await response.json()

    const avatarUrls = contributors.map(c => c.avatar_url)

    const form = createImagesCard(title, avatarUrls)
    const attachment = BB.CardFactory.adaptiveCard(form);
    const message: any = BB.MessageFactory.attachment(attachment);
    message.text = "Fall back text";
    return message;
})

cl.AddAPICallback("Get /repos/{repo}/languages", async (memoryManager: ClientMemoryManager, title: string, repositoryApiUrl: string) => {
    const response = await fetch(`${repositoryApiUrl}/languages`)
    if (!response.ok) {
        return `Error attempting to ${repositoryApiUrl}/languages`
    }

    const json: any = await response.json()

    return `Languages:

${Object.keys(json).map(key => `${key}: ${json[key]}`).join('\n')}`
})

cl.AddAPICallback("Start over", async (memoryManager: ClientMemoryManager) => {
    await memoryManager.ForgetAllEntitiesAsync([])
})

//=================================
// Handle Incoming Messages
//=================================
server.post('/api/messages', (req, res) => {
    adapter.processActivity(req, res, async context => {
        let result = await cl.recognize(context)
        
        if (result) {
            cl.SendResult(result);
        }
    })
})

