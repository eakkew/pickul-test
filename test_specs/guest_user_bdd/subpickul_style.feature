Feature: Petal Style
	In order to enable subpickul Style by default
	As a Guest User
	I want to see the subpickul with custom style
	
	Background:
		Given I am a guest user
	
	Scenario: Default
		Given I am a first time user
		When I go to 'pickul.com/r/styletest'
		Then I see the custom css in 'styletest' subpickul
	
	Scenario: Style unchecked
		Given I go to 'pickul.com/r/styletest'
		When I unchecked 'use subpickul style' checkbox
		Then I do not see the custom css in 'styletest' subpickul
		
	Scenario: Style unchecked revisited
		Given I navigate to 'pickul.com/r/styletest'
		And I unchecked 'use subpickul style' checkbox
		When I reopen my browser
		Then I do notsee the custom css in 'styletest' subpickul
