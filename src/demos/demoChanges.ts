/**
 * Copyright (c) Microsoft Corporation. All rights reserved.  
 * Licensed under the MIT License.
 */
import * as path from 'path'
import * as express from 'express'
import { ChangeType, ConversationLearner, ClientMemoryManager, FileStorage, uiRouter } from '@conversationlearner/sdk'
import chalk from 'chalk'
import config from '../config'
import * as BB from 'botbuilder'
import getDolRouter from '../dol'

const server = express()

const isDevelopment = process.env.NODE_ENV === 'development'
if (isDevelopment) {
    console.log(chalk.yellowBright(`Adding /directline routes`))
    server.use(getDolRouter(config.botPort))

    console.log(chalk.greenBright(`Adding /ui routes`))
    server.use(uiRouter)
}

const { bfAppId, bfAppPassword, modelId, ...clOptions } = config
const adapter = new BB.BotFrameworkAdapter({ appId: bfAppId, appPassword: bfAppPassword });
const fileStorage = new FileStorage(path.join(__dirname, 'storage'))
const sdkRouter = ConversationLearner.Init(clOptions, fileStorage)
if (isDevelopment) {
    console.log(chalk.cyanBright(`Adding /sdk routes`))
    server.use('/sdk', sdkRouter)
}
let cl = new ConversationLearner(modelId);

const specialNames = [
    'Bob',
    'Mike',
    'Frank',
    'Joe',
]

cl.EntityDetectionCallback(async (text: string, memoryManager: ClientMemoryManager): Promise<void> => {
    const changes = memoryManager.changes()

    // If you only care about a subset of the changes you can filter them by the changeType
    const added = changes.filter(c => c.changeType === ChangeType.ADDED)
    // const removed = changes.filter(c => c.changeType === ChangeType.REMOVED)
    // const changed = changes.filter(c => c.changeType === ChangeType.CHANGED)

    // Example: If I want to run specific code whenever the 'name' entity is detected / added
    added
        .filter(c => c.name === 'name')
        .forEach(c => {
            let value = ''

            // Is MultiValue
            if (Array.isArray(c.current)) {
                value = c.current
                    .map(mv => mv.userText)
                    .join(', ')
            }
            else {
                value = c.current.userText as string
            }

            const isSpecialName = specialNames.map(n => n.toLowerCase()).includes(value.toLowerCase())
            memoryManager.Set('isSpecialName', isSpecialName)
            console.log(`Name entity was added! ${c.name}: ${value}`)
        })
})

cl.AddCallback<number>({
    name: "PrintChanges",
    async logic(memoryManager) {
        const n = Math.floor(Math.random() * 100)

        // This will show up as added for the initial set and then changed in future sets.
        // This change is observable immediately in the render() callback
        memoryManager.Set('myRandomEntity', n)

        return n
    },
    async render(logicResult, memory) {
        const changes = memory.changes()
        const added = changes.filter(c => c.changeType === ChangeType.ADDED).map(c => c.name)
        const removed = changes.filter(c => c.changeType === ChangeType.REMOVED).map(c => c.name)
        const changed = changes.filter(c => c.changeType === ChangeType.CHANGED).map(c => c.name)
        
        return `Changes:
        
    Added: ${added.join(', ')}
    Removed: ${removed.join(', ')}
    Changed: ${changed.join(', ')}`
    }
})

server.post('/api/messages', (req, res) => {
    adapter.processActivity(req, res, async context => {
        let result = await cl.recognize(context)

        if (result) {
            return cl.SendResult(result);
        }
    })
})

server.listen(config.botPort, () => {
    console.log(`Server listening at: http://localhost:${config.botPort}`)
})