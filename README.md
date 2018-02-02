# BLIS-SDK-SAMPLE

This repo contains sample code for building conversational bots using Microsoft BLIS (Bot Learning Intelligent Service) and demonstrating how to use the `blis-sdk` package.

BLIS reduces the complexity of building bots.  It enables a hybrid development workflow allowing hand-written code and machine learning to reduce the amount of code required to write bots.  Certain absolute parts of your application such as checking if the user is logged in or making an API request to check store inventory can still be coded; however, other changes in state and action selection can be learned from example dialoges given by the domain expert or developer.

## Getting started

### Prerequisites

- Node 8.x
- Npm 5.x

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

    Add values for all of the empty variables
    <!-- TOOD: Fix this so developers are not immediately blocked without knowing these values -->

    ```
    BLIS_SERVICE_URI=

    BLIS_USER=
    BLIS_SECRET=

    BLIS_FUNCTIONS_URL=
    BLIS_FUNCTIONS_KEY=

    BLIS_REDIS_SERVER=
    BLIS_REDIS_KEY=

    BLIS_LOCALHOST=true
    BLIS_UI_PORT=5050
    BLIS_SDK_PORT=5000

    # Note: the ports used in BLIS_BOT_PORT and DOL_BOT_URL must match
    BLIS_BOT_PORT=3978
    DOL_BOT_URL=http://127.0.0.1:3978/api/messages
    DOL_SERVICE_URL=http://127.0.0.1:3000

    MICROSOFT_APP_ID=
    MICROSOFT_APP_PASSWORD=
    ```

3. Start the adminstration user interface

    This will start a local server hosing a website where you will interact with your bot. Here you manage your bot. Add entities, actions, and train your bot with examples. Then test it's behavior as a real user.

    ```
    npm run ui
    ```

4. Start the BOT

    Since you will likely want to debug your code as you develop the easiest way is to open the folder in VSCode and press **F5** (Start with Debugging) or manually run the "Launch BLIS Demo" launch configuration.

    Otherwise you can simply run:

    ```
    npm start
    ```

## Advanced configuration

In the setup above, the template `.env` file had default ports assigned.

You can adjust these ports to avoid conflicts between other services running on your machine.

## Related repositories

- [blis-sdk](https://github.com/Microsoft/BLIS-SDK)
- [blis-models](https://github.com/Microsoft/BLIS-MODELS)