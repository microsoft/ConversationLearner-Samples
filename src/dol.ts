import * as express from 'express'
import * as directline from 'offline-directline'
export default function startDol (server: express.Express, botPort: number) {
    const dolServiceUrl = `http://127.0.0.1:${botPort}`
    const dolBotUrl = `http://127.0.0.1:${botPort}/api/messages`

    console.log(`Starting DOL (Direct Offline)`)
    console.log(`- Bot Url: ${dolBotUrl}`)

    // Don't require conversation initialization. This allows
    // UI to continue conversation even after bot restart
    const conversationInitRequired = false
    // TODO: Direct Line initialize method implicitly starts listening, submit PR to make this manual
    directline.initializeRoutes(server, dolServiceUrl, dolBotUrl, conversationInitRequired, botPort)
}