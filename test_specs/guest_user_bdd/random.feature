Feature: random
	In order to discover new contents
	As a guest user
	I want access to random subreddit
	
	Scenario: Random
		Given I am a guest user
		When I click at 'RANDOM' link
		Then I am on 'reddit.com/r/$anysubreddit' # error NotFound: Subreddit reddit.com
