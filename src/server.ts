/**
 * Copyright (c) Microsoft Corporation. All rights reserved.  
 * Licensed under the MIT License.
 */
import app from './app'
import config from './config'
import getDolRouter from './dol'
import chalk from 'chalk'

const isDevelopment = process.env.NODE_ENV === 'development'
if (isDevelopment) {
    console.log(chalk.yellowBright(`Adding /directline routes`))
    app.use(getDolRouter(config.botPort))
}

app.listen(config.botPort, () => {
    console.log(`Server listening at: http://localhost:${config.botPort}`)
})

