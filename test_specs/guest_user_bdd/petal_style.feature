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
		When I unchecked 'use subreddit style' checkbox
		Then I should not see customized subreddit
		
	Scenario: Style unchecked revisited
		Given I navigate to 'pickul.com/r/styletest'
		And I unchecked 'use subreddit style' checkbox
		When I reopen my browser
		Then I should not see customized subreddit
