Feature: all
	In order to read all content in reddit
	As a guest user
	I want access to r/all
	
	Scenario: All
		Given I am a guest user
		When I click at 'ALL' link
		Then I am on "pickul.com/r/all'
