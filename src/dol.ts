import * as express from 'express'
import * as directline from 'offline-directline'

export default function getDolRouter(botPort: number): express.Router {
    const dolServiceUrl = `http://127.0.0.1:${botPort}`
    const dolBotUrl = `http://127.0.0.1:${botPort}/api/messages`

    // Don't require conversation initialization. This allows
    // UI to continue conversation even after bot restart
    const conversationInitRequired = false
    // TODO: Direct Line initialize method implicitly starts listening, submit PR to make this manual
    return directline.getRouter(dolServiceUrl, dolBotUrl, conversationInitRequired)
}