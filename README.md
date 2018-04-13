# ConversationLearner-Samples

This repo contains sample code for building conversational bots using Microsoft Conversation Learner and demonstrating how to use the `conversationlearner-sdk` package.

Conversation Learner reduces the complexity of building bots.  It enables a hybrid development workflow allowing hand-written code and machine learning to reduce the amount of code required to write bots.  Certain absolute parts of your application such as checking if the user is logged in or making an API request to check store inventory can still be coded; however, other changes in state and action selection can be learned from example dialogs given by the domain expert or developer.

[Example video overview of Conversation Learner](https://microsoft-my.sharepoint.com/:v:/p/jawillia/ESlfaljCPbpPlDzmkAhCQbkBdUxsN33eBOf2RycKMiB-Xw?e=SVFmYA) (MS internal only; more videos coming soon)

## Prerequisites

- Node 8.5.0 or higher and npm 5.3.0 or higher.  Install from https://nodejs.org/en/
  
- LUIS authoring key:

  1. Log into http://www.luis.ai

  2. Click on your name in the upper right, then on "settings"

  3. Authoring key is shown on the resulting page

  (Conversation Learner uses LUIS for entity extraction; when you create a Conversation Learner
  application, you'll need a LUIS authoring key)

- VSCode.  https://code.visualstudio.com/  Recommended, not required.

## Quick start 

1. Install:

    ```bash    
    git clone https://github.com/Microsoft/ConversationLearner-Samples cl-bot-01
    cd cl-bot-01
    npm install
    ```

    Note: during `npm install`, you can ignore this error if it occurs: `gyp ERR! stack Error: Can't find Python executable`

2. Start bot:

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

5. Log in using your MSA (such as @outlook.com, @msn.com, @hotmail.com, or @microsoft.com)

You're now using Conversation Learner, and can create and teach a Conversation Learner model.  See this [video tour](https://microsoft-my.sharepoint.com/:v:/p/jawillia/ESlfaljCPbpPlDzmkAhCQbkBdUxsN33eBOf2RycKMiB-Xw?e=SVFmYA) for quick overview (MS internal only; more videos coming soon)

## Tutorials, demos, and switching between bots

The instructions above started the generic empty bot.  To run a tutorial or demo bot instead:

1. If you have the Conversation Learner web UI open, return to the list of apps at http://localhost:5050/home.
    
2. If another bot is running (like `npm start` or `npm run demo-pizza`), stop it.  You do not need to stop the UI process, or close the web browser.

3. Build the demos (only needs to be done once):

  ```bash
  npm run build
  ```

4. Run a demo bot from the command line (step 2 above).  Demos include:

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

5. If you're not already, switch to the Conversation Learner web UI in Chrome by loading http://localhost:5050/home. 

6. Click on "Import tutorials" (only needs to be done once).  This will take about a minute and will copy the Conversation Learner models for all the tutorials into your Conversation Learner account.

7. Click on the demo model in the Conversation Learner UI that corresponds to the demo you started.

Source files for the demos are in `cl-bot-01/src/demos`

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

Publish your Conversation Learner bot similar to the same way you would publish any other bot.
You simply upload your code to a hosted website, set the appropriate configuration values, and then register the bot with various channels.

Once the bot is deployed and running you can connect different channels to it such as Facebook, Teams, Skype etc using an Azure Bot Channel Registration.  For documenation on that process see:  https://docs.microsoft.com/en-us/bot-framework/bot-service-quickstart-registration

Ensure that these variables are set when deploying your bot:
```
CONVERSATION_LEARNER_SERVICE_URI        <Optional url to desired version of Conversation Learner service>
CONVERSATION_LEARNER_APP_ID             <Application Id GUID>  
CONVERSATION_LEARNER_LOCALHOST          false
MICROSOFT_APP_ID                        <Microsoft Application Id>
MICROSOFT_APP_PASSWORD                  <Microsoft Application Password>
```

> We hope to remove the need to specify CONVERSATION_LEARNER_APP_ID and CONVERSATION_LEARNER_LOCALHOST in the future.


## Notes

There is NO security or encryption currently -- do not load data into Conversation Learner which is sensitive or from a customer.

## Support

Join the [Conversation Learner team](https://microsoft-my.sharepoint.com/:v:/p/jawillia/ESlfaljCPbpPlDzmkAhCQbkBdUxsN33eBOf2RycKMiB-Xw?e=SVFmYA) (MS internal), or file an issue on the GitHub repo (external)

## Related repositories

- [conversationlearner-sdk](https://github.com/Microsoft/ConversationLearner-SDK)
- [conversationlearner-models](https://github.com/Microsoft/ConversationLearner-Models)
