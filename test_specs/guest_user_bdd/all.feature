Feature: all
	In order to read all content in reddit
	As a guest user
	I want access to r/all
	
	Scenario: All
		Given I am a guest user
		When I press 'ALL' link
		Then I should be directed to /r/all subreddit