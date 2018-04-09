# Tutorial 6: Multi-value entities
This tutorial shows the "multi-value" property of entities.

##Requirements
This tutorial requires that the general tutorial bot is running

	npm run tutorial-general

## Steps

### Create the application

1. In the Web UI, click New App
2. In Name, enter MultiValueEntities. Then click Create.

### Create an entity

1. Click Entities, then New Entity.
2. In Entity Name, enter Toppings.
3. Check Multi-valued.
	1. Allows you to accumulate one or more values in the entity.
2. Check Negatable.
3. Click Create.

![](images/tutorial6_entities.PNG)

### Create two actions

1. Click Actions, then New Action
2. In Response, type 'What toppings do you want?'.
3. In Blocking Entities, enter Toppings.
3. Click Create

Then create the second action.

1. Click Actions, then New Action to create a second action.
3. In Response, type 'Here are your toppings: $Toppings'.
4. Click Create

Now you have two actions.

![](images/tutorial6_actions.PNG)

### Train the bot

1. Click Train Dialogs, then New Teach Session.
2. Type 'hello'.
3. Click Score Actions, and Select 'What toppings do you want?'
2. Enter 'mushrooms and cheese'. 
	1. You can label zero, one or more than one of the entities.
3. Click 'mushrooms', and select Toppings.
4. Click 'cheese', and select Toppings.
5. Click Score Actions
	1. Note that the two values are now present in the Toppings entity. 
6. Select 'Here are your toppings: $Toppings'.

We can add more to this:

7. Enter 'add peppers'.
	1. Click on 'peppers' under Entity Detection, and select Toppings.
3. Click Score Actions.
	1. Note that peppers now shows up as an additional value in Toppings.
6. Select 'Here are your toppings: $Toppings'.

Let's remove a topping and add one:

2. Type 'remove peppers and add sausage'.
1. Click on 'peppers' and click on the red x to remove it.
2. Click on 'peppers' and select '-Toppings'.
3. Click Score Actions.
	1. Note that 'peppers' has been deleted and 'sausage' has been added.
6. Select 'Here are your toppings: $Toppings'.


Now let's try removing everything:

6. Enter 'remove mushrooms, remove cheese, and remove sausage'.
7. Click on each of the three, and select '-Toppings'.
7. Click Score Actions.
	1. Note that all toppings are cleared.
2. Select 'What toppings do you want?'
3. Click Done Teaching


![](images/tutorial6_dialogs.PNG)

You have now seen how multi-value entities work and how you can add and remove items you are accumulating.
