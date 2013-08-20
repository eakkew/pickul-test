Feature: Sorting
	In order to read sorted contents
	As a Guest User
	I want to read contents in any order
	
	Background:
		Given I am a guest user
		And I enter 'pickul.com'
	
	Scenario: Hot
		When I select sorting content to 'hot'
		Then I see the comments
		
	Scenario: Top
		When I select sorting content to 'top'
		Then I see the comments
		
	Scenario: New
		When I select sorting content to 'new'
		Then I see the comments
		
	Scenario: Controversial
		When I select sorting content to 'controversial'
		Then I see the comments
		
	Scenario: Rising
		When I select sorting content to 'rising'
		Then I see the comments
	
	Scenario: Best
		Given I go to 'pickul.com/r/testroom'
		When I select sorting content to 'best'
		Then I see the comments
