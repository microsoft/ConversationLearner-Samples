# Tutorial 5: Negatable entities

This tutorial demonstrates the "negatable" property of entities.

## Requirements
This tutorial requires that the general tutorial bot is running

	npm run tutorial-general

## Details
Mark an action as "negatable" if the user can "clear" an entity value, as in "No, I do not want $entity" or "no, not $entity". For example, "add peppers and remove mushrooms".

Concretely, if the "negatable" property of an entity is set:

- When labeling entity mentions, allow you to label both normal (positive) instances of an entity, and a "negative" instances of the entity
- LUIS learns two entity models: one for positive instances, and a second for negative instances
- The effect of a negative instance of an entity is to clear that value from the entity variable (if it exists)

## Steps

### Create the application

1. In the Web UI, click New App
2. In Name, enter NegatableEntity. Then click Create.

### Create an entity

1. Click Entities, then New Entity.
2. In Entity Name, enter name.
3. Check Negatable.
	1. Means user can provide a value for the entity or say something is not the value of the entity. In the latter case, this will result in deleting a matching value of the entity.
3. Click Create.

![](images/tutorial5_entities.PNG)

### Create two actions

1. Click Actions, then New Action
2. In Response, type 'I don't know your name'.
3. In Blocking Entities, enter name.
3. Click Create

Then create the second action.

1. Click Actions, then New Action to create a second action.
3. In Response, type 'I know your name. It is $name'.
4. Click Create

Now you have two actions.

![](images/tutorial5_actions.PNG)

### Train the bot

1. Click Train Dialogs, then New Teach Session.
2. Type 'hello'.
3. Click Score Actions, and Select 'I don't know your name'
	1. Note that is is getting a 100% score because it is the only valid action.
2. Enter 'my name is david'. 
	3. Note that the name is highlighted as an entity with plus and minus signs. Plus means that we are providing that value. Minus means we are telling the system that something is not the value.
5. Click Score Actions
	1. Note name value is now in the bot's memory.
	2. 'I know your name. It is $name' is the only available response. 
6. Select 'I know your name. It is $name'.

Let's try clearing the negatable entity:

7. Enter 'my name is not david'.
	1. Note the 'not' is selected as name based on the previous pattern. That is incorrect.
2. Click on 'not', then the red x. 
3. Click on 'david'.
	1. This is now a negative entity communicating that this is not the value of the name entity.
2. Select '-name'.
3. Click Score Actions.
	1. Note the value has been cleared from memory.

Let's try one more.

2. Select 'I don't know your name' which is the only action.
3. Enter 'john' as the name. The select 'john' and click on name.
4. Click Score Actions.
5. Select 'I know your name. It is $name'.

Now try replacing the entered name.

6. Enter 'my name is susan'.
7. Select 'I know your name. It is $name'.
7. Click Score Actions.
8. Note that susan has overwritten john in the entity values.
9. Enter 'my name is not susan'.
	1. Note that the system has labeled this as a negative instance.
2. Click Score Actions.
3. Select 'I don't know your name' which is the only action.
7. Click Done Teaching.

![](images/tutorial5_dialogs.PNG)

You have now seen how the expected entity property of actions works.
