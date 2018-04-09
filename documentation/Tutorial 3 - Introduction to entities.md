# Tutorial 3: Introduction to entities

This tutorial introduces entities, and shows how to use the "Blocking entities" and "Required entities" fields in actions.

## Requirements

This tutorial requires that the general tutorial bot is running

	npm run tutorial-general

## Details

- Custom entities: they can be trained
- Pre-built entities: their behavior cannot be adjusted
- Blocking entities: if they are present in memory, will diqualify the action
- Required entities: are required to enable an action

## Steps

### Create the application

1. In the Web UI, click New App
2. In Name, enter IntroToEntities. Then click Create.

### Create entity

1. Click Entities, then New Entity.
2. In Entity Name, enter city.
3. Click Create

Note the entity type as being custom. This means that the entity can be trained. There are also pre-built entities meaning that their behavior cannot be adjusted.


### Create two actions

1. Click Actions, then New Action
2. In Response, type 'I don't know what city you want'.
3. In Blocking Entities, enter $city. Click Save.
	1. This means that if this entity is defined in bot's memory, then this action will *not* be available.
2. Click Actions, then New Action to create a second action.
3. In Response, type 'The weather in the $city is probably sunny'.
4. In Required Entities, note that city entity has been added automatically since it was referred to.
5. Click Save

Now you have two actions.

![](images/tutorial3_actions.PNG)

### Train the bot

1. Click Train Dialogs, then New Teach Session.
2. Type 'hello'.
3. Click Score Actions, and Select 'I don't know what city you want?'
	1. Note that the response where the city entity is required cannot be selected because the city entity is not defined in bot's memory.
2. Select 'I don't know what city you want'.
4. Enter 'seattle'. Highlight seattle, then click city.
5. Click Score Actions
	1. Note city value is now in the bot's memory.
	2. 'Weather in $city is probably sunny' is now available as a response. 
6. Select 'Weather in $city is probably sunny'.

Let's say user enters 'repeat that'. 
1. Type that and enter. Note that city entity and its value is in memory and available.
2. Select 'Weather in $city is probably sunny'.

![](images/tutorial3_entities.PNG)

You have now created and used blocking and required entities.
