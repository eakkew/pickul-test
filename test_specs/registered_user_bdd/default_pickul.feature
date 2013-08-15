Feature: Default Pickul
	In order to read frontpage without subscription
	As a Registered user
	I want access to all the default subreddit
	
	Background:
		Given I log in as 'lovelygentleman'
	
	Scenario: Default subreddit
		Given I have not subscribe to any subreddit
		When I go to 'http://www.pickul.com'
		Then I can only see links from default subreddit
		And I cannot see links from non-default subreddit
		
	Scenario: Default subreddit from link
		Given I have not subscribe to any subreddit
		And I am on "pickul.com/r/news"
		When I click 'FRONT' link
		Then I can only see links from default subreddit
		And I cannot see links from non-default subreddit
		
	Scenario: Subscribe subreddit
		Given I am on กลีบพิืกุล "newpickulroom" 
		When I click 'subscribe' link
		Then I can see links from that subreddit when I return to my front page
		
	Scenario: Customize subscriptions
		Given I am on "my subscription" page
		And I have at least one subreddit subscribed
		When I unsubcribe that subreddit
		Then I cannot see that subreddit on "my subscription" page 
