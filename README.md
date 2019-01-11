# ConversationLearner-Samples

This repo contains sample code for building task-oriented conversational bots using [Project Conversation Learner](https://labs.cognitive.microsoft.com/en-us/project-conversation-learner), and demonstrates usage of the `@conversationlearner/sdk` npm module.

Project Conversation Learner enables you to build task-oriented conversational interfaces that learn from example interactions, combining code, logical constraints and machine learning. Certain absolute parts of your application such as checking if the user is logged in or making an API request to check store inventory can still be coded; however, other changes in state and action selection can be learned from example dialogs given by the domain expert or developer.

Cognitive Service Labs provides developers with an early look at emerging Cognitive Services technologies. Early adopters who do not need market-ready technology can discover, try and provide feedback on new Cognitive Services technologies before they are generally available. Labs are not Azure services.  Project Conversation Learner’s APIs and schema are subject to change that are not backwards compatible.

This README explains how to get started; full documentation is available [here](https://docs.microsoft.com/en-us/azure/cognitive-services/Labs/Conversation-Learner/overview).

## Invitation required

*An invitation is required to access Project Conversation Learner.*

Project Conversation Learner consists of an SDK you add to your bot, and a cloud service which the SDK accesses for machine learning.  Access to this Project Conversation Leaner cloud service currently requires an invitation. If you haven't been invited already, [request an invitation](https://aka.ms/conversation-learner-request-invite). This cloud API cannot be accessed without an invitation.

## Prerequisites

- Invitation to access the Project Conversation Learner cloud service -- [request an invitation](https://aka.ms/conversation-learner-request-invite).  

- Node 8.5.0 or higher and npm 5.3.0 or higher, from https://nodejs.org/en/
  
- LUIS authoring key:

    1. Log into http://www.luis.ai

    2. Click your name in the upper right, then "settings"

    3. Authoring key is shown on the resulting page

    Your LUIS authoring key serves two roles.  First, it will serve as your Conversation Learner authoring key.  Second, Conversation Learner uses LUIS for entity extraction and LUIS model creation on your behalf)
  
- Google Chrome web browser, from [https://www.google.com/chrome/index.html](https://www.google.com/chrome/index.html)

- git, from [https://git-scm.com/downloads](https://git-scm.com/downloads)

- VSCode [recommended], from [https://code.visualstudio.com/](https://code.visualstudio.com/)

## Quick start 

1. Install and build:

    ```bash
    git clone https://github.com/Microsoft/ConversationLearner-Samples my-bot-01
    cd my-bot-01
    npm install
    npm run build
    ```

    Note: during `npm install`, you can ignore this error if it occurs: `gyp ERR! stack Error: Can't find Python executable`

2. Configure:

   Create a file called `.env` in the directory `my-bot-01`.  The contents of the file should be:

   ```
   NODE_ENV=development
   LUIS_AUTHORING_KEY=<your LUIS authoring key>
   ```

3. Start bot:

    ```
    npm start
    ```

    This runs the generic empty bot in `my-bot-01/src/app.ts`.

3. Run Conversation Learner UI in a *second* command prompt window:

    ```bash
    cd my-bot-01
    npm run ui
    ```

4. Open browser to http://localhost:5050 once the UI component has finished transpiling.

Conversation Learner is now running and ready for you to start creating and teaching models.

## Tutorials, demos, and switching between Bots

The instructions above started the generic empty bot.

Project Conversation Leaner also includes several tutorial and demo bots.  You run each demo bot by:

1. Point your browser to http://localhost:5050/home
    
2. Stop any running bot in the first command window you might have started (with `npm start` or `npm run demo-pizza`).  Switching bots does not require you to stop the UI process or close the web browser.

3. Run one of the available demo bots using its corresponding command in the first command window:

  ```bash
  npm run tutorial-general
  npm run tutorial-entity-detection
  npm run tutorial-session-callbacks
  npm run tutorial-api-calls
  npm run demo-password
  npm run demo-pizza
  npm run demo-storage
  npm run demo-vrapp
  ```

4. Switch back to the Conversation Learner UI by loading http://localhost:5050/home in your browser. 

5. Click "Import tutorials" and import the respective model.

6. Click the imported model as shown in the Conversation Learner UI.

Source files for the demos are found in `my-bot-01/src/demos`

## Create a bot which includes back-end code

1. Point your browser to http://localhost:5050/home to list the models available to Conversation Learner.
    
2. Stop any running bot in the first command window you might have started (with like `npm start` or `npm run demo-pizza`).  Switching bots does not require you to stop the UI process or close the web browser.

3. Add your bot-specific code to `my-bot-01/src/app.ts` using your code editor.

4. Rebuild and re-start the bot:

    ```bash
    npm run build
    npm start
    ```

5. Reload the Conversation Learner UI (http://localhost:5050/home) in your browser. 

6. Create a new Conversation Learner application in the UI and start teaching the Model using Train Dialogs and Log Dialogs.

## VSCode

Project Conversation Learner includes VSCode run configurations for each demo. For example, the run configuration for  "Empty bot" is found in `my-bot-01/src/app.ts`.

## Advanced configuration

User-specific environment variables are saved in an `.env` file you need to create in the project's root. We have provided a sample file named `.env.example` for quick start, though you may need to configure ports to avoid conflicts between other services running on your machine.

```bash
cp .env.example .env
```

The `.env` configuration file lets you run Conversation Learner and your bot locally.

## Publishing your bot

Publishing your Conversation Learner bot is similar to publishing any other bot. You upload your code to a hosted website, set the appropriate configuration values and register your bot with various channels. The steps here detail deploying your bot to Azure and creating a Bot Framework Channel Registration for it:

### Deploy Conversation Learner bot to Azure

Your Conversation Learner bot is a Node.js app, so deploying it to Azure is no different than deploying a Node.js application or Node.js [Bot Framework](https://github.com/microsoft/botbuilder-js) bot. More information on deploying Node.js web applications to Azure can be found [here](https://docs.microsoft.com/en-us/azure/app-service/app-service-web-get-started-nodejs). 

Deploying your bot to Azure can be accomplished in one of two different ways. The ZipDeploy method uses  [KuduEngine](https://github.com/projectkudu/kudu) while the github method employs a local git repository.

#### ZipDeploy using [KuduEngine](https://github.com/projectkudu/kudu)

1. Login to the [Azure portal](https://portal.azure.com)
2. Create a new ["Web App"](https://azure.microsoft.com/en-us/services/app-service/web/) using Azure app services
    1. Give your app/bot a name
    2. Select/Create a resource group for your app
    3. Use "Windows" as Web application's OS
3. Once the step above is successful, you will end up with an empty web application deployed for you under Azure app services. Select the app service and navigate to its dashboard.
4. Set the following Application Settings for your app service
    1. Click "Application Settings" in the navigation pane
    2. Scroll down to the "Application Settings" section
    3. Add these settings:
        
        APP SETTING NAME | VALUE
        --- | --- 
        CONVERSATION_LEARNER_MODEL_ID      | Model Id GUID, obtained from the Conversation Learner UI under the "settings" for the app>
        LUIS_AUTHORING_KEY      		 | LUIS authoring key for this app
        SCM_DO_BUILD_DURING_DEPLOYMENT | true
        
    4. Click "Save" near the top of the page
5. From the app service dashboard's navigation pane select the ``advanced tools`` and navigate to Kudu website for your app service. The url for Kudu tools of your web application is `https://<your_app_name>.scm.azurewebsites.net`
6. Zip local folder of your Conversation Learner bot (Note that zip file should have all the artifacts in its root and not in a subdirectory). You don't need to include the following folders/files in the zip file: 1) Any folder/file starting with ``.``, e.g. _.git, .github_, 2) node_modules folder. (`SCM_DO_BUILD_DURING_DEPLOYMENT` application settings will configure Kudu deployment engine to run `npm install` as part of deployment and install all the necessary node dependencies based on package.json. You can read more about deploy from a zip file [here](https://github.com/projectkudu/kudu/wiki/Deploying-from-a-zip-file).). Also make sure that you have the [engine version](https://github.com/Microsoft/ConversationLearner-Samples/blob/5d3bc6b6d43750b1c9216976b81850304197c912/package.json#L50) configured in your package.json to node.js 8.8 or higher. If not make sure to set the `WEBSITE_NODE_DEFAULT_VERSION` to `8.8` in application settings.
7. Navigate to `https://<your_app_name>.scm.azurewebsites.net/ZipDeploy` and drop the zip file from previous step to the file explorer area in the website
8. After a successful deployment, you should be able to send messages to your deployed bot messaging endpoint: `https://<your_app_name>.azurewebsites.net/api/messages` using [bot framework emulator](https://github.com/Microsoft/BotFramework-Emulator). You can read more about using Bot Framework emulator [here](https://docs.microsoft.com/en-us/azure/bot-service/bot-service-debug-emulator?view=azure-bot-service-3.0).

#### Deploy from local git repository

Follow the steps 1 to 4 above to create a `web application` on Azure and then follow the steps bellow: 

1. Go to `Deployment Center` of your web application and configure deployment with `Local Git` as the source control and `App Service Kudu build server` as the build provider. Once the deployment from `Local Git` is configured successfully, you will have a git repository with the following endpoint for your app service: `https://<your_app_name>.scm.azurewebsites.net/<your_app_name>.git`. Make sure to configure the deployment credentials for your web application, so you can push to it from your local repository in the next steps
2. Add the azure remote to your local git repository: ``git remote add azure https://<your_app_name>.scm.azurewebsites.net/<your_app_name>.git``
3. Push your local repository to azure remote: ``git push azure <your_local_branch>:master`` (If you are using typescript for development, make sure to commit the build artifacts, i.e. *.js files, to your local repository.)
4. After a successful deployment, you should be able to send messages to your deployed bot endpoint: `https://<your_app_name>.azurewebsites.net/api/messages` using [bot framework emulator](https://github.com/Microsoft/BotFramework-Emulator)

### Connect your Conversation Learner bot to a Bot Framework channel

Once your Conversation Learner bot has been successful deployed as an Azure app service, you can connect your bot to a Bot Framework channel by: 

1. Select `Bot Services` from azure portal services and add a new `Bot Service`
2. Select `Bot Channel Registration` from the available `Bot Service` options
3. Fill out the necessary fields for your channel registration, e.g. `bot name`. For the messaging endpoint provide the url from the successful bot deployment you have done by following the steps from previous section. The messaging endpoint will be in the following format: `https://<your_app_name>.azurewebsites.net/api/messages`. Also you need to create a Microsoft App Id and Microsoft App Password for your bot. Preserve the Microsoft app id and password that you are creating for your channel registration.
4. Set the following `Application Settings` for your web application:
    
    APP SETTING NAME | VALUE
    ------|---
    MicrosoftAppId | Application Id GUID from previous step
    MicrosoftAppPassword | Application password from previous step
    
5. You should be able to test your bot using Bot Framework web chat

__Note:__ Ensure that these variables are set when deploying your bot:

Environment variable | Setting
--- | ---
CONVERSATION_LEARNER_MODEL_ID    | Model Id GUID, obtained from the Conversation Learner UI under the "settings" for the app
LUIS_AUTHORING_KEY               | LUIS authoring key for this app. Obtained from https://www.luis.ai
MicrosoftAppId                 | Microsoft Application Id
MicrosoftAppPassword           | Microsoft Application Password

### Connect your Conversation Learner bot to different channels

 You can connect your bot to different channels like Facebook, Teams, Skype etc using an Azure Bot Channel Registration once it has been deployed.  Documentation on that process is available at  https://docs.microsoft.com/en-us/bot-framework/bot-service-quickstart-registration

## Support

- Tag questions on [Stack Overflow](https://stackoverflow.com) with "microsoft cognitive"
- Request a feature on our [User Voice page](https://aka.ms/conversation-learner-uservoice)
- Open an issue on our [github repo](https://github.com/Microsoft/ConversationLearner-Samples)

## Contributing

When submitting PR's please target the 'develop' branch unless it is a hotfix for 'master'

This project has adopted the [Microsoft Open Source Code of Conduct](https://opensource.microsoft.com/codeofconduct/). For more information see the [Code of Conduct FAQ](https://opensource.microsoft.com/codeofconduct/faq/) or contact [opencode@microsoft.com](mailto:opencode@microsoft.com) with any additional questions or comments.

## Related repositories

- [@conversationlearner/sdk](https://github.com/Microsoft/ConversationLearner-SDK)
- [@conversationlearner/ui](https://github.com/Microsoft/ConversationLearner-UI)
- [@conversationlearner/models](https://github.com/Microsoft/ConversationLearner-Models)
- [@conversationlearner/webchat](https://github.com/Microsoft/ConversationLearner-WebChat)

