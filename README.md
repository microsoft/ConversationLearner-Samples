# ConversationLearner-Samples

This repo contains sample code for building conversational bots using Microsoft Conversation Learner and demonstrating how to use the `conversationlearner-sdk` package.

Conversation Learner reduces the complexity of building bots.  It enables a hybrid development workflow allowing hand-written code and machine learning to reduce the amount of code required to write bots.  Certain absolute parts of your application such as checking if the user is logged in or making an API request to check store inventory can still be coded; however, other changes in state and action selection can be learned from example dialogs given by the domain expert or developer.

Resources (all MS internal):
- [Example video overview of Conversation Learner](https://microsoft-my.sharepoint.com/:v:/p/jawillia/ESlfaljCPbpPlDzmkAhCQbkBdUxsN33eBOf2RycKMiB-Xw?e=SVFmYA)
- [Demo of Conversation Learner at TechFest](https://resnet.microsoft.com/video/41008)
- [Slides with introduction to Conversation Learner for developers](https://microsoft-my.sharepoint.com/:p:/p/jawillia/Ed63MfYJyFFCkM3pqaFWCLwBcy9yKkucZLITiWXIMj-keA?e=HQQAdV)
- [Technical paper about ML in Conversation Learner](https://microsoft-my.sharepoint.com/:b:/p/jawillia/EU2jGHJXOA5PsfW84bAFnSYB60KvxLL4Wy_L7VNZSg0hOA?e=xg79Hi)

## Prerequisites

- Node 8.5.0 or higher and npm 5.3.0 or higher.  Install from https://nodejs.org/en/
  
- LUIS authoring key:

  1. Log into http://www.luis.ai

  2. Click on your name in the upper right, then on "settings"

  3. Authoring key is shown on the resulting page

  (Your LUIS authoring key serves 2 roles.  First, it will serve as your Conversation Learner authoring key.  Second, Conversation Learner uses LUIS for entity extraction; the LUIS authoring key is used to create LUIS models on your behalf)

- VSCode.  https://code.visualstudio.com/  Recommended, not required.

## Quick start 

1. Install and build:

    ```bash    
    git clone https://github.com/Microsoft/ConversationLearner-Samples cl-bot-01
    cd cl-bot-01
    npm install
    npm run build
    ```

    Note: during `npm install`, you can ignore this error if it occurs: `gyp ERR! stack Error: Can't find Python executable`

2. Configure:

   Create a file called `.env` in the directory `blis-bot-01`.  The contents of the file should be:

   ```
   LUIS_AUTHORING_KEY=<your LUIS authoring key>
   ```

3. Start bot:

    ```
    npm start
    ```

    This runs the generic empty bot in ``cl-bot-01/src/app.ts``.

3. Run Conversation Learner UI:

    ```bash
    [open second command prompt window]
    cd cl-bot-01
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

5. Click on "Import tutorials" (only needs to be done once).  This will take about a minute and will copy the Conversation Learner models for all the tutorials into your BLIS account.

6. Click on the demo model in the Conversation Learner UI that corresponds to the demo you started.

Source files for the demos are in `cl-bot-01/src/demos`

## Create a bot which includes back-end code



1. If you have the BLIS web UI open, return to the list of apps at http://localhost:5050/home.
    
2. If a bot is running (like `npm run demo-pizza`), stop it.  You do not need to stop the UI process, or close the web browser.

3. If desired, edit code in ``blis-bot-01/src/app.ts``.

4. Rebuild and re-start bot:

    ```bash    
    npm run build
    npm start
    ```

5. If you're not already, switch to the BLIS web UI in Chrome by loading http://localhost:5050/home. 

6. Create a new BLIS application in the UI, and start teaching.

7. To make code changes in ``blis-bot-01/src/app.ts``, repeat the steps above, starting from step 2.

## VSCode

In VSCode, there are run configurations for each demo, and for the "Empty bot" in ``cl-bot-01/src/app.ts``.  Open the `cl-bot-01` folder in VSCode.

## Advanced configuration

There is a template `.env.example` file shows what environment variables you may set to configure the samples.

You can adjust these ports to avoid conflicts between other services running on your machine by adding a `.env` file to root of project:

```bash
cp .env.example .env
```

This uses the standard configuration, which lets you run your bot locally, and start using Conversation Learner.  (Later on, to deploy your bot to the Bot Framework, some edits to this file will be needed.)

## Publishing your bot

Publish your Conversation Learner bot similar to the same way you would publish any other bot.  At a high level, you upload your code to a hosted website, set the appropriate configuration values, and then register the bot with various channels.  Detailed instructions are in this [video showing how to publish your bot using Azure Bot Service.](https://aka.ms/blis-azure-publish)

Once the bot is deployed and running you can connect different channels to it such as Facebook, Teams, Skype etc using an Azure Bot Channel Registration.  For documentation on that process see:  https://docs.microsoft.com/en-us/bot-framework/bot-service-quickstart-registration

Ensure that these variables are set when deploying your bot:

```
CONVERSATION_LEARNER_SERVICE_URI        <Set to https://westus.api.cognitive.microsoft.com/blis/api/v1/>
CONVERSATION_LEARNER_APP_ID             <Application Id GUID, obtained from the BLIS UI under the "settings" for the app>
DOL_START                               false
LUIS_AUTHORING_KEY      		        <LUIS authoring key for this app, obtained from https://www.luis.ai>
MICROSOFT_APP_ID                        <Microsoft Application Id>
MICROSOFT_APP_PASSWORD                  <Microsoft Application Password>
```

> We hope to remove the need to specify CONVERSATION_LEARNER_APP_ID and DOL_START in the future.
## Notes

There is NO security or encryption currently -- do not load data into Conversation Learner which is sensitive or from a customer.

## Support

Join the [Conversation Learner team](https://microsoft-my.sharepoint.com/:v:/p/jawillia/ESlfaljCPbpPlDzmkAhCQbkBdUxsN33eBOf2RycKMiB-Xw?e=SVFmYA) (MS internal), or file an issue on the GitHub repo (external)

## Contributing

This project has adopted the [Microsoft Open Source Code of Conduct](https://opensource.microsoft.com/codeofconduct/). For more information see the [Code of Conduct FAQ](https://opensource.microsoft.com/codeofconduct/faq/) or contact [opencode@microsoft.com](mailto:opencode@microsoft.com) with any additional questions or comments.

## Related repositories

- [conversationlearner-sdk](https://github.com/Microsoft/ConversationLearner-SDK)
- [conversationlearner-models](https://github.com/Microsoft/ConversationLearner-Models)
