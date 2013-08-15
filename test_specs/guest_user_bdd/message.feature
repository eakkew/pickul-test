Feature: Message
	In order to enble private communications
	As a guest user
	I should be logged in first
	
	Scenario: Messaging Moderator
		Given I am a guest user
		When I click 'message the moderators' link
		Then I am on 'login' page
	
	Scenario: Messaging Users
		Given I am a guest user
    		And I click 'lovelygentleman' link # I click a username link
		When I click 'send message'
		Then I am on 'login' page
