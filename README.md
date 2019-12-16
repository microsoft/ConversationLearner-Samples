---
topic: sample
languages:
  - typescript
products:
  - azure-cognitive-services
  - azure-language-understanding
---

# ConversationLearner-Samples

This repo contains sample code for building task-oriented conversational bots using [Project Conversation Learner](https://labs.cognitive.microsoft.com/en-us/project-conversation-learner), and demonstrating how to use the `@conversationlearner/sdk` npm module.

Project Conversation Learner enables you to build and teach task-oriented conversational interfaces that learn from example interactions, combining code, logical constraints and machine learning.  Certain absolute parts of your application such as checking if the user is logged in or making an API request to check store inventory can still be coded; however, other changes in state and action selection can be learned from example dialogs given by the domain expert or developer.

Cognitive Service Labs provides developers with an early look at emerging Cognitive Services technologies. Early adopters who do not need market-ready technology can discover, try and provide feedback on new Cognitive Services technologies before they are generally available. Labs are not Azure services.  Project Conversation Learner’s APIs and schema are subject to change that are not backwards compatible.

This README explains how to get started; full documentation is available [here](https://docs.microsoft.com/en-us/azure/cognitive-services/Labs/Conversation-Learner/overview).

## Invitation required

*An invitation is required to access Project Conversation Learner.*

Project Conversation Learner consists of an SDK you add to your bot, and a cloud service which the SDK accesses for machine learning.  At present, access to the Project Conversation Leaner cloud service requires an invitation.  If you haven't been invited already, [request an invitation](https://aka.ms/conversation-learner-request-invite).  If you have not received an invitation, you will be unable to access the cloud API.

## Prerequisites

- An invitation to access the Project Conversation Learner cloud service -- [request an invitation](https://aka.ms/conversation-learner-request-invite).  

- Node 8.5.0 or higher and npm 5.3.0 or higher.  Install from https://nodejs.org/en/
  
- LUIS authoring key:

  1. Log into http://www.luis.ai

  2. Click on your name in the upper right, then on "settings"

  3. Authoring key is shown on the resulting page

  (Your LUIS authoring key serves 2 roles.  First, it will serve as your Conversation Learner authoring key.  Second, Conversation Learner uses LUIS for entity extraction; the LUIS authoring key is used to create LUIS models on your behalf)
  
- Google Chrome web browser. Install from [https://www.google.com/chrome/index.html](https://www.google.com/chrome/index.html).

- git. Install from [https://git-scm.com/downloads](https://git-scm.com/downloads).

- VSCode. Install from [https://code.visualstudio.com/](https://code.visualstudio.com/). Note this is recommended, not required.

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

3. Open browser to http://localhost:3978

You're now using Conversation Learner and can create and teach a Conversation Learner model.  

## Tutorials, demos, and switching between bots

The instructions above started the generic empty bot.  To run a tutorial or demo bot instead:

1. If you have the Conversation Learner web UI open, return to the list of models at http://localhost:3978/ui/home.
    
2. If another bot is running (like `npm start` or `npm run demo-pizza`), stop it.  You do not need close the web browser.

3. Run a demo bot from the command line (step 2 above).  Demos include:

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

4. If you're not already, switch to the Conversation Learner web UI in Chrome by loading http://localhost:3978/ui/home. 

5. Click on "Import tutorials" (only needs to be done once).  This will take about a minute and will copy the Conversation Learner models for all the tutorials into your Conversation Learner account.

6. Click on the demo model in the Conversation Learner UI that corresponds to the demo you started.

Source files for the demos are in `my-bot-01/src/demos`

## Create a bot which includes back-end code

1. If you have the Conversation Learner web UI open, return to the list of models at http://localhost:3978/ui/home.
    
2. If a bot is running (like `npm run demo-pizza`), stop it.  You do not need to close the web browser.

3. If desired, edit code in `my-bot-01/src/app.ts`.

4. Rebuild and re-start bot:

    ```bash
    npm run build
    npm start
    ```

5. If you're not already, switch to the Conversation Learner web UI in Chrome by loading http://localhost:3978/ui/home. 

6. Create a new Conversation Learner application in the UI, and start teaching.

7. To make code changes in `my-bot-01/src/app.ts`, repeat the steps above, starting from step 2.

## VSCode

In VSCode, there are run configurations for each demo, and for the "Empty bot" in `my-bot-01/src/app.ts`.  Open the `my-bot-01` folder in VSCode.

## Advanced configuration

There is a template `.env.example` file shows what environment variables you may set to configure the samples.

You can adjust these ports to avoid conflicts between other services running on your machine by adding a `.env` file to root of project:

```bash
cp .env.example .env
```

This uses the standard configuration, which lets you run your bot locally, and start using Conversation Learner.  (Later on, to deploy your bot to the Bot Framework, some edits to this file will be needed.)

## Upgrading

The easiest way to try the latest [samples](https://github.com/Microsoft/ConversationLearner-Samples) is to simply go through the setup process from the [README](https://github.com/Microsoft/ConversationLearner-Samples/blob/master/README.md#quick-start) again and re-clone the repo. This will be a fresh start and avoid the need to deal with merge conflicts.

However, if you have have changes to your bot that you would like to preserve such as implemented EntityDetection, API, or Session callbacks you can follow these instructions.

The intention here is to update the `master` branch to the latest on the remote. There are many ways to do this with `git` but this is likely the easiest and most flexible.

1. If you have uncommitted changes, commit them, otherwise skip this step.
    ```
    git add .
    git commit -m "commit message"
    ```

2. Create a new branch pointing to the current branch which has your changes
    ```
    git checkout -b my-changes
    ```

3. Update the tracking branch
    ```
    git fetch origin master
    ```

4. Set local `master` to the tracking `master`
    ```
    git branch master origin/master -f
    ```

> At this point `master` branch is updated and you can switch over to it and test it as is without your changes if you like. Meanwhile you're changes are still preserved for you to review and merge in later. You can stop here if you like.

5. Merge `master` into current branch which has your changes
    ```
    git merge master
    ```

6. Resolve the merge conflicts if any

    > You likely want to preserve your callbacks or any custom dependencies you added, but mostly accept the remote changes as is.

7. Install the new dependencies

    ```
    npm install
    ```
8. Done!

**Now your branch is updated with all the latest features and still has your changes. You should be able to run `npm start` to see your bot working!**

## Publishing your bot

Publish your Conversation Learner bot similar to the way you would publish any other bot. At a high level, you upload your code to a hosted website, set the appropriate configuration values, and then register the bot with various channels. Below we cover steps for deploying your bot to Azure and create a Bot Framework Channel Registration for it.

### Deploy Conversation Learner bot to Azure

Your Conversation Learner bot is a Node.js app and deploying it to Azure is not different than deploying a Node.js application or Node.js [Bot Framework](https://github.com/microsoft/botbuilder-js) bot. You can read more about deploying a Node.js web application to Azure [here](https://docs.microsoft.com/en-us/azure/app-service/app-service-web-get-started-nodejs). 

Below we cover step-by-step instructions to deploy your bot to Azure in two different ways: 1) ZipDeploy using [KuduEngine](https://github.com/projectkudu/kudu) 2) Deploy from local git repository

#### ZipDeploy using [KuduEngine](https://github.com/projectkudu/kudu)

1. Login to the [Azure portal](https://portal.azure.com)
2. Create a new ["Web App"](https://azure.microsoft.com/en-us/services/app-service/web/) using Azure app services
    1. Give your app/bot a name
    2. Select/Create a resource group for your app
    3. Use "Windows" as Web application's OS
3. Once the step above is successful, you will end up with an empty web application deployed for you under Azure app services. Select the app service and navigate to its dashboard.
4. Set the following Application Settings for your app service
    1. Click on "Application Settings" in the navigation pane
    2. Scroll down to the "Application Settings" section
    3. Add these settings:
        
        APP SETTING NAME | VALUE
        --- | --- 
        CONVERSATION_LEARNER_MODEL_ID      | Model Id GUID, obtained from the Conversation Learner UI under the "settings" for the app>
        LUIS_AUTHORING_KEY      		 | LUIS authoring key for this app
        SCM_DO_BUILD_DURING_DEPLOYMENT | true
        
    4. Click on "Save" near the top of the page
5. From the app service dashboard's navigation pane select the ``advanced tools`` and navigate to Kudu website for your app service. The url for Kudu tools of your web application is `https://<your_app_name>.scm.azurewebsites.net`
6. Zip local folder of your Conversation Learner bot (Note that zip file should have all the artifacts in its root and not in a subdirectory). You don't need to include the following folders/files in the zip file: 1) Any folder/file starting with ``.``, e.g. _.git, .github_, 2) node_modules folder. (`SCM_DO_BUILD_DURING_DEPLOYMENT` application settings will configure Kudu deployment engine to run `npm install` as part of deployment and install all the necessary node dependencies based on package.json. You can read more about deploy from a zip file [here](https://github.com/projectkudu/kudu/wiki/Deploying-from-a-zip-file).). Also make sure that you have the [engine version](https://github.com/Microsoft/ConversationLearner-Samples/blob/5d3bc6b6d43750b1c9216976b81850304197c912/package.json#L50) configured in your package.json to node.js 8.8 or higher. If not make sure to set the `WEBSITE_NODE_DEFAULT_VERSION` to `8.8` in application settings.
7. Navigate to `https://<your_app_name>.scm.azurewebsites.net/ZipDeploy` and drop the zip file from previous step to the file explorer area in the website
8. After a successful deployment, you should be able to send messages to your deployed bot messaging endpoint: `https://<your_app_name>.azurewebsites.net/api/messages` using [bot framework emulator](https://github.com/Microsoft/BotFramework-Emulator). You can read more about using Bot Framework emulator [here](https://docs.microsoft.com/en-us/azure/bot-service/bot-service-debug-emulator?view=azure-bot-service-3.0).

#### Deploy from local git repository

Follow the steps 1 to 4 above to create a `web application` on Azure and then follow the steps bellow: 

1. Go to `Deployment Center` of your web application and configure deployment with `Local Git` as the source control and `App Service Kudu build server` as the build provider. Once the deployment from `Local Git` is configured successfully, you will have a git repository with the following endpoint for your app service: `https://<your_app_name>.scm.azurewebsites.net/<your_app_name>.git`. Make sure to configure the deployment credentials for your web application, so you can push to it from your local repository in the next steps
2. add the azure remote to your local git repository: ``git remote add azure https://<your_app_name>.scm.azurewebsites.net/<your_app_name>.git``
3. Push your local repository to azure remote: ``git push azure <your_local_branch>:master`` (If you are using typescript for development, make sure to commit the build artifacts, i.e. *.js files, to your local repository.)
4. After a successful deployment, you should be able to send messages to your deployed bot endpoint: `https://<your_app_name>.azurewebsites.net/api/messages` using [bot framework emulator](https://github.com/Microsoft/BotFramework-Emulator)

### Connect your Conversation Learner bot to a Bot Framework channel

After successful deployment of your Conversation Learner bot as an Azure app service, you can follow these steps to connect it to a Bot Framework channel: 

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

Once the bot is deployed and running you can connect different channels to it such as Facebook, Teams, Skype etc using an Azure Bot Channel Registration.  For documentation on that process see:  https://docs.microsoft.com/en-us/bot-framework/bot-service-quickstart-registration

## Deploy Conversation Learner Sample container to Azure
You can now deploy Conversation Learner Samples to Azure as a docker container to start trying out the UI without having to setup a local development environment.

[![Deploy to Azure](http://azuredeploy.net/deploybutton.png)](https://azuredeploy.net/)

## Support

- Tag questions on [Stack Overflow](https://stackoverflow.com) with "microsoft cognitive"
- Request a feature on our [User Voice page](https://aka.ms/conversation-learner-uservoice)
- Open an issue on our [github repo](https://github.com/Microsoft/ConversationLearner-Samples)

## Contributing

When submitting PR's please target the 'develop' branch unless it is a hotfix for 'master'

This project has adopted the [Microsoft Open Source Code of Conduct](https://opensource.microsoft.com/codeofconduct/). For more information see the [Code of Conduct FAQ](https://opensource.microsoft.com/codeofconduct/faq/) or contact [opencode@microsoft.com](mailto:opencode@microsoft.com) with any additional questions or comments.

## Related repositories

- [Conversation Learner Monorepo](https://github.com/microsoft/conversationlearner)