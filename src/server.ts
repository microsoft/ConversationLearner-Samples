/**
 * Copyright (c) Microsoft Corporation. All rights reserved.  
 * Licensed under the MIT License.
 */
import app from './app'
import config from './config'

app.listen(config.botPort, () => {
    console.log(`${app.name} listening to ${app.url}`);
});

