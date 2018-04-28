# Tutorial 12: API Calls
This tutorial shows how to add API calls to your application. API calls are functions that you define and write in your bot, and which Conversation Learner can call.

## Requirements
This tutorial requires that the "tutorialAPICalls.ts" bot is running.

	npm run tutorial-api-calls

## Details

- API calls can read and manipulate entities.
- API calls have access to the memory manager object.
- They can also take arguments. 


### Open the demo

In the App list of the web UI, click on Tutorial-12-APICalls. 

### Entities

We have defined one entity in the application called number.

![](images/tutorial12_entities.PNG)


### API Calls
The code for the API calls is defined in the this file: C:\<installedpath\>\src\demos\tutorialAPICalls.ts.

![](images/tutorial12_apicalls.PNG)

- The first API Callback is RandomGreeting. It returns a random greeting defined in the greeting variable.
- The Multiply API callback: It will multiply two numbers provided by the user. It then returns the result of the multiplication of the two numbers. This shows that API callbacks can take inputs. Note that memory manager is the first argument. 
- The ClearEntities callback: clears the number entity to let the user enter the next number. It shows you can manipulate the entities.

### Actions

We have created four actions. 

![](images/tutorial12_actions.PNG)

- In addition to 'What number do you want to multiply by 12?' which is a communicative action, there are three different API calls that illustrate the typical API call patterns.

- RandomGreeting:is a non-wait action. To set this up, in the Create Action Dialog, we selected the Action Type of API_LOCAL, then selected RandomGreeting. 


![](images/tutorial12_setupapicall.PNG)

The refresh button next to the API is used if we were to stop the bot, and make any changes to the APIs. Clicking on refresh would pick up the latest changes.

- Multiply: let's go over how we created this. After selecting API_Local and API, we entered an entity ($number) for the first input value (num1string), and a value (12) for the second input value (num2string). This provides a level of indirection between the bot and the API calls so the same callback can be mapped to a few actions in the system and they differ on how the actions are assigned.

![](images/tutorial12_actionmultiply.PNG)

### Train Dialog

Let's walk through a teaching dialog.

1. Click Train Dialogs, then New Teach Session.
1. Enter 'hi'.
2. Click Score Action.
3. Click to Select RandomGreeting. This will execute the Random Greeting API call.
3. Click to Select 'What number to do you want to muptilply by 12?'
4. Enter '8'. Then click Score Actions.
4. Select 'Multiply $number 12'. Note the result of the multiplication.
5. Select 'Clear Entities'.
	1. Note that the number entity's value has been cleared.
3. Click to Select 'What number to do you want to muptilply by 12?'
4. Click Done Testing.

![](images/tutorial12_dialog.PNG)

You have now seen how to register API callbacks, their common patterns, and how to define arguments and associate values and entities in them.
