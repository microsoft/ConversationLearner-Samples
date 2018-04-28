# Tutorial 4: "Expected entity" property of actions

This tutorial demonstrates the "expected entity" field of actions.

## Requirements
This tutorial requires that the general tutorial bot is running

	npm run tutorial-general

## Details
Use the "expected entity" field of an action to communicate to the system that you expect the user's response to an action will be to state an entity.

Concretely, if the "expected entity" field of an action is set to $entity, then on the next user utterance, the system will:

- First, as usual, call LUIS model
- If LUIS model doesn't find any entities, THEN assign the whole user utterance to $entity.
- Call EntityDetectionCallback and proceed as usual.

## Steps

### Create the application

1. In the Web UI, click New App
2. In Name, enter ExpectedEntities. Then click Create.

### Create an entity

1. Click Entities, then New Entity.
2. In Entity Name, enter name.
3. Click Create

Note the entity type as being custom. This means that the entity can be trained. There are also pre-built entities meaning that their behavior cannot be adjusted.

![](images/tutorial4_entities.PNG)

### Create two actions

1. Click Actions, then New Action
2. In Response, type 'What's your name?'.
3. In Expected Entities, enter $name. Click Save.
	1. This means that if this question is asked, and the user response does not have any entities detected, the bot should assume the whole of the user's response is this entity.
2. Click Actions, then New Action to create a second action.
3. In Response, type 'Hello $name'.
	1. Note that the entity is automatically added as a blocking entity. 
4. Click Save

Now you have two actions.

![](images/tutorial4_actions.PNG)

### Train the bot

1. Click Train Dialogs, then New Teach Session.
2. Type 'hello'.
3. Click Score Actions, and Select 'What's your name?'
	1. Note that the response where the name entity is required cannot be selected because the entity is not defined in bot's memory.
2. Enter 'david'. 
	3. Note that the name is highlighted as an entity. This is because of the heuristic we set up above to select the response as the entity.
5. Click Score Actions
	1. Note name value is now in the bot's memory.
	2. 'Hello $name' is now available as a response. 
6. Select 'Hello $name'.
7. Click Done Teaching.

Let's try another training example where the heuristic does not do the right thing, and how we can change the training example.

1. Click New Teach Session.
2. Enter 'my name is david'.
	1. Note that it does identify david as the name entity because it has seen this word before.
2. Click Score Actions
3. Select 'Hello $name'.
4. Enter 'my name is susan'.
	1. Note that it identifies susan as the name since it has seen this pattern already.
2. Click Score Actions.
2. Select 'Hello susan'.
3. Click Done Teaching.

Let's try a new pattern with a new name.

1. Type in 'call me jose'.
	1. Note that it does not recognize the name as an entity.
2. Click on jose, and select name.
3. Click Score Actions.
4. Select hello $name.
5. Click Done Teaching.

Let's try another one.

1. Click New Teach Session.
2. Enter 'hello'.
3. In response to 'what's your name', enter 'I am called frank'.
	1. Note that the entire phrase is highlighted. This is because the statistical model did not find a name, so the heuristic fired and selected the entire answer as the name entity.
2. To correct it, click on the highlighted phrase, then click on the red x. 
3. Click to select frank, then click on name.
2. Click Score Actions
3. Select 'Hello $name'.
4. Click Done Teaching.

![](images/tutorial4_dialogs.PNG)

You have now seen how the expected entity property of actions works.
