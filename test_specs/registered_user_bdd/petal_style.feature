Feature: petal style
	In order to enable Subreddit Style by default
	As a Registered User
	I want to see the subreddit with custom style
	
	Background:
		Given I am a Registered user
	
	Scenario: Default
		When I enter subreddit for the fist time
		And that subreddit has custom style
		Then I should see customized subreddit
	
	Scenario: Style unchecked
		Given I unchecked 'use subreddit style' checkbox
		When I reopen my browser
		Then I should not see customized subreddit
