Feature: Default subreddit
	In order to read contents
	As a guest user
	I want access to all the default subreddit
	
	Background:
		Given I am a guest user
	
	Scenario: Default subreddit
		When I enter Pickul homepage
		Then I can only see links from default subreddit
		
	Scenario: Frontpage
		When I click 'Front' link
		Then I can only see links from default subreddit
