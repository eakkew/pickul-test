Feature: Default Pickul
	In order to read frontpage without subscription
	As a Registered user
	I want access to all the default subreddit
	
	Background:
		Given I log in as 'lovelygentleman'
	
	Scenario: Default subreddit
		Given I have not subscribe to any subreddit
		When I go to 'http://www.pickul.com'
		Then I see "$default subreddit" link
		And I do not see "$non-default subreddit" link
		
	Scenario: Default subreddit from link
		Given I have not subscribe to any subreddit
		And I am on "pickul.com/r/news"
		When I click 'FRONT' link
		Then I see "$default subreddit" link
		And I do not see "$non-default subreddit" link
		
	Scenario: Subscribe subreddit
		Given I am on กลีบพิืกุล "newpickulroom" 
		When I click 'subscribe' link
		And I go to "pickul.com"
		Then I see "$newpickulroom" link
		
	Scenario: Customize subscriptions
		Given I am on "my subscription" page
		And I have at least one subreddit subscribed
		Then I see "$default subreddit" link
		And I do not see "$non-default subreddit" link
