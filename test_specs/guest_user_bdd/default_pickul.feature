Feature: Default subreddit
	In order to read contents
	As a guest user
	I want access to all the default subreddit
	
	Background:
		Given I am a guest user
	
	Scenario: Default subreddit
		When I enter Pickul homepage
		Then I can see links from default subreddit
		and I can not see links from non-default subreddit
		
	Scenario: Frontpage
		When I press Front page link
		Then I can see links from default subreddit
		and I can not see links from non-default subreddit