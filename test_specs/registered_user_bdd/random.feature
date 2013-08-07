Feature: /random
	In order to discover new contents
	As a Registered user
	I want access to random subreddit
	
	Scenario: Random
		Given I am a Registered user
		When I press 'RANDOM' link
		Then I should be directed to a random subreddit