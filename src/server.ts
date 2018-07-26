/**
 * Copyright (c) Microsoft Corporation. All rights reserved.  
 * Licensed under the MIT License.
 */
import app from './app'
import config from './config'
import getDolRouter from './dol'

const isDevelopment = process.env.NODE_ENV === 'development'
if (isDevelopment) {
    app.use(getDolRouter(config.botPort))
}

app.listen(config.botPort, () => {
    console.log(`Server listening to port: ${config.botPort}`)
})

