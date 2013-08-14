Feature: Petals
	In order to use subreddit
	As a registered user
	I want access to funtions in Subreddit
	
	Background:
		Given I am a registered user	
	
	Scenario: test link Create
		Given I am on 'Front page' #fix this url
		When I click at the 'Create a subreddit' button
		Then I am on "create subreddit" # fix this url
	
	Scenario: Filled out Create Subreddit
		Given I am in create subreddit page
		And I fill 'name' with "testpickul"
		And I fill 'title' with "welcome to test pickul"
		And I fill 'description' with "this is a test pickul"
		And I fill 'sidebar' with "this is a sidebar for test pickul"
		When I click at the 'create' button
		Then I can access to that subreddit #fix this step