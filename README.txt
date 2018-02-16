This ZIP file assumes:
- you've downloaded a ZIP file with the BLIS SDK and demo apps
- this ZIP file contiains a .env file

PRE-REQUISITES:

- Node v8.5.0 or higher, with NPM v5.3.0 or higher.
  Install from: https://nodejs.org/dist/v8.9.0/node-v8.9.0-x64.msi 

- A LUIS programmatic key:
  Log into www.luis.ai
  Click on your name in the upper right, then on "settings"
  Programmatic key is shown on the resulting page
  (BLIS uses LUIS for entity extraction; when you create a BLIS
  application, you'll need a LUIS programmatic key)

INSTALLATION:

- Unzip this ZIP file to a dir (i'll call it "BLIS")
> cd BLIS
> npm install

RUN:

Start a command window
> cd BLIS
> npm start

Start a second command window
> cd BLIS
> npm run ui

Open a web browser to:
http://localhost:5050

Log in using your @microsoft.com account

DEMOS:

Once logged in, click on "Import Demos"; wait a minute while the demos load into your BLIS account.

Each of the demos has its own bot code.  To run the bot code:
- If there is a bot running, stop it 
  (ie, if there is a command window where you ran "npm start", press ctrl-c in that window)
- Open VSCode
  - open the BLIS folder 
  - Click on the "debug" tray item on the left
  - Choose the demo you want to run from the drop-down, and click on the green play button

If you don't have VSCode, you can also run the demo directly from the command line:
> cd BLIS
> node lib\demos\demoPizzaOrder.js

(If you run the demos from the command line, and you change the demo typescript code in 
 src\demos\..., you'll need to re-compile the typescript into js.  The VSCode launch
 config automatically re-compiles the typescript into js.)

NOTES:

There is NO security or encryption currently -- do not load data into BLIS which is sensitive or from a customer.
