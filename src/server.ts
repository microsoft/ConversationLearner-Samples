/**
 * Copyright (c) Microsoft Corporation. All rights reserved.  
 * Licensed under the MIT License.
 */
import app from './app'
import config from './config'
import startDol from './dol'

const isDevelopment = process.env.NODE_ENV === 'development'
if (isDevelopment) {
    startDol(app, config.botPort)
}
else {
    const listener = app.listen(config.botPort, () => {
        console.log(`Server listening to ${listener.address().port}`)
    })
}

