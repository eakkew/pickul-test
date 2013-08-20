Feature: Subpickul style
	In order to enable Subpickul Style by default
	As a Registered User
	I want to see the Subpickul with custom style
	
	Background:
		Given I am a Registered user
	
	Scenario: Default
		Given I am a first time user
		When I go to "pickul.com/r/styletest"
		And that Subpickul has custom style
		Then I see the custom css in 'styletest' subpickul
	
	Scenario: Style unchecked
		Given I unchecked 'use subreddit style' checkbox
		When I reopen my browser
		Then I see the custom css in 'styletest' subpickul
