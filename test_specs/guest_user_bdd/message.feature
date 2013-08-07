Feature: Message
	In order to enble private communications
	As a guest user
	I should be logged in first
	
	Scenario: Messaging Moderator
		Given I am a guest user
		When I click 'message the moderators'
		Then I am directed to login page
	
	Scenario: Messaging Users
		Given I am a guest user
		When I click 'message the moderators'
		Then I am directed to login page