# Tutorial 2: Wait and non-wait actions

This tutorial shows the difference between wait actions and non-wait actions in the Conversation Learner.

## Requirements
This tutorial requires that the general tutorial bot is running

	npm run tutorial-general

## Details

- Wait action: After the system takes a "wait" action, it will stop taking actions and wait for user input.
- Non-wait action: After the system takes a "non-wait" action, it will immediately choose another action (without waiting for user input).

## Steps

### Create the first Wait action

1. In the Web UI, click New App
2. In Name, enter WaitNonWait. Then click Create.
3. Click Actions, then New Action.
4. In Response, enter 'Which animal do you want?'.
	1. This is a Wait action, so leave the Wait for Response box checked.
2. click Done.


### Create a Non-Wait action

1. Click New Action
2. In Response, type 'Cows say moo'.
3. Un-check the Wait for Response check-box.
4. Click Create

### Create a second Non-Wait action

1. Click New Action
2. In Response, type 'Ducks say quack'.
3. Un-check the Wait for Response check-box.
4. Click Create

![](images/tutorial2_actions.PNG)

### Train the bot

1. Click Train Dialogs, then New Teach Session.
2. Type 'hello'
3. Click Score Actions, and Select 'Which animal do you want?'.
4. Enter 'cow'
5. Click Score Actions, and Select 'Cows say moo'.
	1. Note that the bot will not wait for input, and will take the next action.
2. Select 'Which animal do you want?'.
3. Enter 'duck'
5. Click Score Actions, and Select 'Ducks say quack'.

![](images/tutorial2_dialogs.PNG)

Note the sequence of the bot responses with regards to wait and non-wait actions.
