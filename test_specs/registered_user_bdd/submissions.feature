Feature: Submissions
	In order to validate credibility of the submissions
	As a Registered User
	I want to not be able to submit anything
	
	Background:
		Given I am logged in as 'lovelygentleman'
	
	Scenario: test Submit a new link
		When I click at 'submit a new link' link
		Then I am on 'submit a link' page
	
	Scenario: Filling out new link details
		Given I am on "Submit a new link" page
		And I fill input_id 'title_textbox' with "Our PM said we are in rapid growth"
		And I fill input_id 'Url_textbox' with "beehive.asia"
		And I fill input_id 'subreddit_textbox' with "politic"
		When I click at 'submit' button
		Then I on a 'link submission confirmation' page
		#todo: cross check with our own pickul server
	
	Scenario: test Submit a new text post link
		When I click at 'submit a new text post' link
		Then I am on 'submit a new text post' page
		
	Scenario: Filling out new text post details
		Given I am on a "submit a new text post" page
		And I fill input_id 'title with "Do you girls of Pickul enjoy playing rough during sex"
		And I fill input_id 'choose a subreddit' with 'AskPickul'
		When I click at 'submit' link
		Then I on 'text post submission confirmation' page
		#todo: cross check with our own pickul server
