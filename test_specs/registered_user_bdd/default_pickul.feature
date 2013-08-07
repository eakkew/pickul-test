Feature: Default Pickul
	In order to read frontpage without subscription
	As a Registered user
	I want access to all the default subreddit
	
	Background:
		Given I am a Registered user
	
	Scenario: Default subreddit
		Given I have not subscribe to any subreddit
		When I enter Pickul homepage
		Then I can see links from default subreddit
		and I cannot see links from non-default subreddit
		
	Scenario: Default subreddit from link
		Given I have not subscribe to any subreddit
		When I click FRONT link
		Then I can see links from default subreddit
		and I cannot see links from non-default subreddit
		
	Scenario: Subscribe subreddit
		Given I am on a subreddit 'newpickulroom' page
		When I subscribe that subreddit
		Then I can see links from that subreddit when I return to my front page
		
	Scenario: Customize subscriptions
		Given I am on my subscription page
		And I have at lest non-default subreddit subscribe
		When I unsubcribe that subreddit
		Then I cannot see links from that subreddit when I return to my front page