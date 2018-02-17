# BLIS-SDK-SAMPLE

This repo contains sample code for building conversational bots using Microsoft BLIS (Bot Learning Intelligent Service) and demonstrating how to use the `blis-sdk` package.

BLIS reduces the complexity of building bots.  It enables a hybrid development workflow allowing hand-written code and machine learning to reduce the amount of code required to write bots.  Certain absolute parts of your application such as checking if the user is logged in or making an API request to check store inventory can still be coded; however, other changes in state and action selection can be learned from example dialoges given by the domain expert or developer.

## Getting started

### Prerequisites

- Node 8.5.0 or higher and npm 5.3.0 or higher.  Install from https://nodejs.org/en/
  
- LUIS programmatic key:

  1. Log into http://www.luis.ai

  2. Click on your name in the upper right, then on "settings"

  3. Programmatic key is shown on the resulting page

  (BLIS uses LUIS for entity extraction; when you create a BLIS
  application, you'll need a LUIS programmatic key)

- VSCode.  https://code.visualstudio.com/  Recommended, not required.

### Installation and first run

1. Clone the repository and change directory

    ```
    git clone https://github.com/Microsoft/BLIS-SDK-SAMPLE blis-bot-01
    cd blis-bot-01
    ```

2. Install dependencies

    ```
    npm i
    ```

3. Add the `.env` file to root of project

    ```
    cp .env.example .env
    ```

    This uses the standard configuration, which lets you run your bot locally, and start using BLIS.  (Later on, to deploy your bot to the Bot Framework, some edits to this file will be needed.)

3. Start the admin UI

    This will start a local server hosing a website where you will teach and administer your bot.

    ```
    npm run ui
    ```

4. Try out the password reset bot:

    This repo includes a few demo BLIS bots.  The source of the bots are in `src/demos`.
    
    You can run the demos in VSCode (or another IDE), or from the command line.  Running in an IDE is preferred because it will let you step through the code, which helps show how BLIS works.
    
    To run the demos from VSCode, open the `blis-bot-01` folder in VSCode, and run one of the "demo" launch configurations.  A good place to start is the `demoPasswordReset` bot.

    To run demos from the command line, run:

    ```
    node lib/demos/demoPasswordReset.js
    ```

    Then open Google Chrome to http://localhost:5050.  Log in using your MSA (such as @outlook.com, @msn.com, @hotmail.com, or @microsoft.com)

    The first time you start BLIS, you'll need to import the demo apps into your BLIS account.  Click on "Import Demos" -- this will take about a minute and will copy the BLIS apps into your BLIS account.  

    You should now see a list of demo applications.  Click on "demoPasswordReset" to get started.

5. Switch to a different demo:

    In the BLIS web UI, return to the list of apps at http://localhost:5050/home.
    
    If a bot is running (like `demoPasswordReset`), stop it.  You do not need to stop the admin UI process, or close the web browser.

    Run another demo bot in VSCode or from the command line, such as `demoVRLauncher`, following the instructions in step 4.  

    In the BLIS web UI, click on the corresponding BLIS app to start using the bot.

6. Build your own bot

    A generic empty BLIS bot is provided in ``blis-bot-01/src/app.ts``.  To run it, first stop the currently running bot that (if any).  To start the empty bot from VSCode, open the `blis-bot-01` folder in VSCode and run the "Empty Bot" launch configuration.  

    To run this bot from the command line,

    ```
    npm start
    ```

    If you make edits to the code in `app.ts`, you'll need to re-compile TypeScript to JavaScript, then re-start your bot.  In VSCode, you can just "Restart Debugging" with `ctrl-shift-F5`. From the command-line, you'll need to stop the bot `ctrl-c`, then re-run `npm start` (which will re-compile TypeScript to JavaScript).

## Advanced configuration

In the setup above, the template `.env` file had default ports assigned.

You can adjust these ports to avoid conflicts between other services running on your machine.

## Notes

There is NO security or encryption currently -- do not load data into BLIS which is sensitive or from a customer.

## Support

Contact blis-support@service.microsoft.com for support.

## Related repositories

- [blis-sdk](https://github.com/Microsoft/BLIS-SDK)
- [blis-models](https://github.com/Microsoft/BLIS-MODELS)