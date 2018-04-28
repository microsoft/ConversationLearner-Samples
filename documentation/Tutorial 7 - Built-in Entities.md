# Tutorial 7: Built-in entities
This tutorial shows how to add "built-in" entities to your Conversation Learner application.

## Requirements
This tutorial requires that the general tutorial bot is running

	npm run tutorial-general

## Details

- Built-in entities are by default multi-valued. Meaning that the entity accumulates multiple instances of entity values.

## Steps

### Create the application

1. In the Web UI, click New App
2. In Name, enter BuiltInEntities. Then click Create.

### Create an entity

1. Click Entities, then New Entity.
2. Click on EntityType drop-down, and select datetimev2.
	2. Programmable and Negatable options are disabled as the entities are not modifiable.
3. Click Create.

![](images/tutorial7_entities.PNG)

### Create two actions

1. Click Actions, then New Action
2. In Response, type 'The date is $luis-datetimev2'.
3. Click Create.

![](images/tutorial7_actions.PNG)

Then create the second action:

1. Click Actions, then New Action to create a second action.
3. In Response, type 'What's the date?'.
4. In Expected Entities, enter $luis-datetimev2.
4. Click Create

![](images/tutorial7_actions2.PNG)

Now you have two actions.

### Train the bot

1. Click Train Dialogs, then New Teach Session.
2. Type 'hello'.
3. Click Score Actions, and Select 'What's the date?'
2. Enter 'today'. 
	1. Note that today is tagged, and shows up in the second line since it is a pre-built entity and non-editable.
5. Click Score Actions
	1. Note that date now appears in Entity Memory section. 
	2. If you mouse over the date, you will see the additional data provided by LUIS which is usable and can further be manipulated in code. 
6. Select 'The date is @luis-datetimev2'.
7. Click Done Teaching

You have now seen how built-in entities work.
