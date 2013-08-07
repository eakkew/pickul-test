Feature: Petals
	In order to use subreddit
	As a registered user
	I want access to funtions in Subreddit
	
	Background:
		Given I am a registered user	
	
	Scenario: Create
		Given I am on a Front page
		When I press Create a subreddit
		Then I should be directed to create subreddit page
	
	Scenario: Filled out Create Subreddit
		Given I am in create subreddit page
		And I fill name with "testpickul"
		And I fill title with "welcome to test pickul"
		And I fill description with "this is a test pickul"
		And I fill sidebar with "this is a sidebar for test pickul"
		When I hit create
		Then I can access to that subreddit