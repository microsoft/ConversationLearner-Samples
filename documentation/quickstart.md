# Quickstart for Conversation Learner

Conversation Learner reduces the complexity of building bots.  It enables a hybrid development work-flow allowing hand-written code and machine learning to reduce the amount of code required to write bots.  Certain absolute parts of your application such as checking if the user is logged in or making an API request to check store inventory can still be coded; however, other changes in state and action selection can be learned from example dialogs given by the domain expert or developer.


## Prerequisites

- Node 8.5.0 or higher and npm 5.3.0 or higher.  Install from [https://nodejs.org/en/](https://nodejs.org/en/)
  
- LUIS authoring key:

  1. Log into [http://www.luis.ai](http://www.luis.ai)

  2. Click on your name in the upper right, then on "settings"

  3. Authoring key is shown on the resulting page

  (Conversation Learner uses LUIS for entity extraction; when you create an application, you'll need a LUIS authoring key)

- [VSCode](https://code.visualstudio.com/) is recommended, but not required.

## Quick start 

1. Install:
  
		git clone https://github.com/Microsoft/ConversationLearner-Samples my-bot-01
		cd my-bot-01
		npm install


    Note: during `npm install`, you can ignore this error if it occurs: `gyp ERR! stack Error: Can't find Python executable`

2. Start bot:


    	npm start


    This runs the generic empty bot in ``my-bot-01/src/app.ts``.

3. Run the web UI:

		[open second command prompt window]
		cd my-bot-01
		npm run ui
	  

4. Open browser to [http://localhost:5050](http://localhost:5050) 

You are now using the Conversation Learner, and can create and teach a model. 

## Tutorials, demos, and switching between bots

The instructions above started the generic empty bot.  To run a tutorial or demo bot instead:

1. If you have the web UI open, return to the list of apps at [http://localhost:5050/home](http://localhost:5050/home).
    
2. If another bot is running (like `npm start` or `npm run demo-pizza`), stop it.  You do not need to stop the UI process, or close the web browser.

3. Build the demos (only needs to be done once):

	  ```
	 npm run build
	  ```

4. Run a demo bot from the command line (step 2 above).  Demos include:

		npm run tutorial-general
		npm run tutorial-entity-detection
		npm run tutorial-session-callbacks
		npm run tutorial-api-calls
		npm run demo-password
		npm run demo-pizza
		npm run demo-storage
		npm run demo-vrapp

5. If you're not already, switch to the web UI in Chrome by loading [http://localhost:5050/home](http://localhost:5050/home). 

6. Click on "Import tutorials" (only needs to be done once).  This will take about a minute and will copy the Conversation Learner models for all the tutorials into your account.

7. Click on the demo model in the web UI that corresponds to the demo you started.

Source files for the demos are in `my-bot-01/src/demos`

## VSCode

In VSCode, there are run configurations for each demo, and for the "Empty bot" in ``my-bot-01/src/app.ts``.  Open the `my-bot-01` folder in VSCode.

## Advanced configuration

There is a template `.env.example` file shows what environment variables you may set to configure the samples.

You can adjust these ports to avoid conflicts between other services running on your machine by adding a `.env` file to root of project:

```bash
cp .env.example .env
```

This uses the standard configuration, which lets you run your bot locally, and start using the Conversation Learner.  (Later on, to deploy your bot to the Bot Framework, some edits to this file will be needed.)

## Notes

There is NO security or encryption currently -- do not load data into your app which is sensitive or from a customer.

## Support

Join the [Conversation Learner team](https://microsoft-my.sharepoint.com/:v:/p/jawillia/ESlfaljCPbpPlDzmkAhCQbkBdUxsN33eBOf2RycKMiB-Xw?e=SVFmYA) (MS internal), or file and issue on the GitHub repo (external)

## Related repositories

- [@conversationlearner/sdk](https://github.com/Microsoft/ConversationLearner-SDK)
- [@conversationlearner/ui](https://github.com/Microsoft/ConversationLearner-UI)
- [@conversationlearner/models](https://github.com/Microsoft/ConversationLearner-Models)
