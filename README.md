# BLIS-SDK-SAMPLE

This repo contains sample code for building conversational bots using Microsoft BLIS (Bot Learning Intelligent Service) and demonstrating how to use the `blis-sdk` package.

BLIS reduces the complexity of building bots.  It enables a hybrid development workflow allowing hand-written code and machine learning to reduce the amount of code required to write bots.  Certain absolute parts of your application such as checking if the user is logged in or making an API request to check store inventory can still be coded; however, other changes in state and action selection can be learned from example dialogs given by the domain expert or developer.

[Example video overview of BLIS](https://microsoft-my.sharepoint.com/:v:/p/jawillia/ESlfaljCPbpPlDzmkAhCQbkBdUxsN33eBOf2RycKMiB-Xw?e=SVFmYA) (MS internal only; more videos coming soon)

## Prerequisites

- Node 8.5.0 or higher and npm 5.3.0 or higher.  Install from https://nodejs.org/en/
  
- LUIS authoring key:

  1. Log into http://www.luis.ai

  2. Click on your name in the upper right, then on "settings"

  3. Authoring key is shown on the resulting page

  (BLIS uses LUIS for entity extraction; when you create a BLIS
  application, you'll need a LUIS authoring key)

- VSCode.  https://code.visualstudio.com/  Recommended, not required.

## Quick start 

1. Install:

    ```bash    
    git clone https://github.com/Microsoft/BLIS-SDK-SAMPLE blis-bot-01
    cd blis-bot-01
    npm install
    ```

    Note: during `npm install`, you can ignore this error if it occurs: `gyp ERR! stack Error: Can't find Python executable`

2. Start bot:

    ```
    npm run demo-pizza
    ```

3. Run BLIS UI:

    ```bash
    [open second command prompt window]
    cd blis-bot-01
    npm run ui
    ```

4. Open browser to http://localhost:5050 

5. Log in using your MSA (such as @outlook.com, @msn.com, @hotmail.com, or @microsoft.com)

6. Click on "Import Demos" -- this will take about a minute and will copy the BLIS apps into your BLIS account.  

7. You should now see a list of demo applications.  Click on "demoPizza" to open the pizza demo.

You're now using BLIS and can teach your bot.  See this [video tour](https://microsoft-my.sharepoint.com/:v:/p/jawillia/ESlfaljCPbpPlDzmkAhCQbkBdUxsN33eBOf2RycKMiB-Xw?e=SVFmYA) for quick overview (MS internal only; more videos coming soon)

## Demos, and switching between bots

The instructions above started the pizza demo bot.  To switch to a different demo bot:

1. In the BLIS web UI, return to the list of apps at http://localhost:5050/home.
    
2. If a bot is running (like `npm run demo-pizza`), stop it.  You do not need to stop the UI process, or close the web browser.

3. Run another demo bot from the command line (step 2 above).  Demos include:

  ```bash
  npm run demo-password
  npm run demo-pizza
  npm run demo-storage
  npm run demo-vrapp
  ```

4. Once you've started a new bot, switch to the BLIS web UI in Chrome, and click on the corresponding BLIS app to start using the bot.

Corresponding source files are in `src/demos`

## Build your own bot

A generic empty BLIS bot is provided in ``blis-bot-01/src/app.ts``.  To run it, first stop the currently running bot that (if any).  To start the empty bot:

```bash
npm start
```

If you make edits to the code in `app.ts`, stop the bot (ctrl-c), and re-start it.

## VSCode

In VSCode, there are run configurations for each demo, and for the "Empty bot" in ``blis-bot-01/src/app.ts``.  Open the `blis-bot-01` folder in VSCode.

## Advanced configuration

There is a template `.env.example` file shows what environment variables you may set to configure the samples.

You can adjust these ports to avoid conflicts between other services running on your machine by adding a `.env` file to root of project:

```bash
cp .env.example .env
```

This uses the standard configuration, which lets you run your bot locally, and start using BLIS.  (Later on, to deploy your bot to the Bot Framework, some edits to this file will be needed.)

## Notes

There is NO security or encryption currently -- do not load data into BLIS which is sensitive or from a customer.

## Support

Join the [BLIS team](https://microsoft-my.sharepoint.com/:v:/p/jawillia/ESlfaljCPbpPlDzmkAhCQbkBdUxsN33eBOf2RycKMiB-Xw?e=SVFmYA) (MS internal), or contact blis-support@service.microsoft.com.

## Related repositories

- [blis-sdk](https://github.com/Microsoft/BLIS-SDK)
- [blis-models](https://github.com/Microsoft/BLIS-MODELS)