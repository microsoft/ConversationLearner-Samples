# ConversationLearner-Samples

This repo contains sample code for building task-oriented conversational bots using [Project Conversation Learner](https://labs.cognitive.microsoft.com/en-us/project-conversation-learner), and demonstrating how to use the `@conversationlearner/sdk` npm module.

Project Conversation Learner enables you to build and teach task-oriented conversational interfaces that learn from example interactions, combining code, logical constraints and machine learning.  Certain absolute parts of your application such as checking if the user is logged in or making an API request to check store inventory can still be coded; however, other changes in state and action selection can be learned from example dialogs given by the domain expert or developer.

This README explains how to get started; full documentation is available [here](https://docs.microsoft.com/en-us/azure/cognitive-services/Labs/Conversation-Learner/).

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
   LUIS_AUTHORING_KEY=<your LUIS authoring key>
   ```

3. Start bot:

    ```
    npm start
    ```

    This runs the generic empty bot in `my-bot-01/src/app.ts`.

3. Run Conversation Learner UI:

    ```bash
    [open second command prompt window]
    cd my-bot-01
    npm run ui
    ```

4. Open browser to http://localhost:5050 

You're now using Conversation Learner and can create and teach a Conversation Learner model.  

## Tutorials, demos, and switching between bots

The instructions above started the generic empty bot.  To run a tutorial or demo bot instead:

1. If you have the Conversation Learner web UI open, return to the list of apps at http://localhost:5050/home.
    
2. If another bot is running (like `npm start` or `npm run demo-pizza`), stop it.  You do not need to stop the UI process, or close the web browser.

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

4. If you're not already, switch to the Conversation Learner web UI in Chrome by loading http://localhost:5050/home. 

5. Click on "Import tutorials" (only needs to be done once).  This will take about a minute and will copy the Conversation Learner models for all the tutorials into your Conversation Learner account.

6. Click on the demo model in the Conversation Learner UI that corresponds to the demo you started.

Source files for the demos are in `my-bot-01/src/demos`

## Create a bot which includes back-end code

1. If you have the Conversation Learner web UI open, return to the list of apps at http://localhost:5050/home.
    
2. If a bot is running (like `npm run demo-pizza`), stop it.  You do not need to stop the UI process, or close the web browser.

3. If desired, edit code in `my-bot-01/src/app.ts`.

4. Rebuild and re-start bot:

    ```bash    
    npm run build
    npm start
    ```

5. If you're not already, switch to the Conversation Learner web UI in Chrome by loading http://localhost:5050/home. 

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

## Publishing your bot

Publish your Conversation Learner bot similar to the same way you would publish any other bot.  At a high level, you upload your code to a hosted website, set the appropriate configuration values, and then register the bot with various channels.  The docs include detailed instructions on [deploying to localhost](https://docs.microsoft.com/en-us/azure/cognitive-services/labs/conversation-learner/deploy-to-bf#option-1-deploying-a-conversation-learner-bot-to-run-locally), and [deploying to Azure](https://docs.microsoft.com/en-us/azure/cognitive-services/labs/conversation-learner/deploy-to-bf#option-2-deploy-to-azure).

Ensure that these variables are set when deploying your bot:

Environment variable | Setting
--- | ---
CONVERSATION_LEARNER_SERVICE_URI | https://westus.api.cognitive.microsoft.com/conversationlearner/v1.0/
CONVERSATION_LEARNER_APP_ID      | Application Id GUID, obtained from the Conversation Learner UI under the "settings" for the app
LUIS_AUTHORING_KEY      		     | LUIS authoring key for this app, obtained from https://www.luis.ai
MICROSOFT_APP_ID                 | Microsoft Application Id
MICROSOFT_APP_PASSWORD           | Microsoft Application Password

Once the bot is deployed and running you can connect different channels to it such as Facebook, Teams, Skype etc using an Azure Bot Channel Registration.  For documentation on that process see:  https://docs.microsoft.com/en-us/bot-framework/bot-service-quickstart-registration

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
