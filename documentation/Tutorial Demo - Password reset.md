# Tutorial Demo: Password reset
This demo illustrates a simple technical support bot which can help with password resets. 

It shows how Conversation Learner can learn non-trivial dialog flows, multi-turn sequences, including an out-of-domain class. This demonstration does not use any code or entities.

## Requirements
This tutorial requires that the password reset bot is running

	npm run demo-password

### Open the demo

In the App list of the web UI, click on Tutorial Demo Password Reset. 

### Actions

We have created set of actions where the user is looking for help with their password including solutions.

![](images/tutorial_pw_reset_actions.PNG)

### Training Dialogs
There are a number of training dialogs. There are also demonstration of of out of domain classes for example where the user is looking for driving directions and the bot responds with 'I can't help with that.'

![](images/tutorial_pw_reset_entities.PNG)

As an example, let's try a teaching session.

1. Click Train Dialogs, then New Teach Session.
1. Enter 'I lost my password'.
2. Click Score Action.
3. Click to Select 'Is that for your local account or Microsoft account?'
4. Enter 'Local acccount'.
5. Click Score Actions.
3. Click to Select 'Which version of Windows do you have?'
4. Enter 'Windows 8'.
5. click Score Actions.
6. Select 'SOLUTION: how to reset password on Windows 8.'
4. Click Done Teaching.

Let's try how the bot can learn an out-of-domain class.

1. Click Train Dialogs, then New Teach Session.
1. Enter 'web search'.
	1. This is an example of out-of-domain class. 
2. Click Score Action.
3. Click to Select 'Sorry, I can't help with that.'
	1. Note that the score for this option is currently low. But after a little more teaching, the score can get higher and to 80% or 90%.
4. Click Done Teaching.

You have now seen how to create a simple technical support demo, and how it can learn to provide solutions, and also handle out of sample queries.
