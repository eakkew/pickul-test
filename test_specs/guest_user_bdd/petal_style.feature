Feature: Petal Style
	In order to enable Subreddit Style by default
	As a Guest User
	I want to see the subreddit with custom style
	
	Background:
		Given I am a guest user
	
	Scenario: Default
		When I enter subreddit for the fist time
		Then I should see customized subreddit
	
	Scenario: Style unchecked
		Given I navigate to 'pickul.com/r/styletest'
		When I unchecked the 'use subreddit style'
		Then I should not see customized subreddit
		
<<<<<<< HEAD
	#TODO: cross check with reddit
	Scenerio: Style unchecked revisited
=======
	Scenario: Style unchecked revisited
>>>>>>> 2ed04a9abe8c482a8a70e9c71bd5a9dcd31256a5
		Given I navigate to 'pickul.com/r/styletest'
		And I unchecked the 'use subreddit style'
		When I reopen my browser
		Then I should not see customized subreddit