Feature: r/all
	In order to read all content in reddit
	As a Registered user
	I want access to r/all
	
	Scenario: All
		Given I log in as 'lovelygentleman'
		When I click 'ALL' link
		Then I am on 'http://pickul.com/r/all'
