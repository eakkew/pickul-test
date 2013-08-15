Feature: random
	In order to discover new contents
	As a Registered user
	I want access to random subreddit
	
	Scenario: Random
		Given I am a Registered user
		When I click at the 'RANDOM' link
		Then I am on "pickul.com/r/$anysubreddit" # error NotFound: Subreddit reddit.com
