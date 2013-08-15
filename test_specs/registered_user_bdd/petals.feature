Feature: Petals
	In order to use subreddit
	As a registered user
	I want access to funtions in Subreddit
	
	Background:
		Given I am a registered user	
	
	Scenario: test link Create
		Given I am on 'Front page' #fix this url
		When I click 'Create a subreddit' link
		Then I am on "create subreddit" # fix this url
	
	Scenario: Filled out Create Subreddit
		Given I am on 'create subreddit' page
		And I fill input_id 'name_textbox' with "testpickul"
		And I fill input_id 'title_textbox' with "welcome to test pickul"
		And I fill input_id 'description_textbox' with "this is a test pickul"
		And I fill input_id 'sidebar_textbox' with "this is a sidebar for test pickul"
		When I click at 'create' button
		Then I can access to that subreddit #fix this step
