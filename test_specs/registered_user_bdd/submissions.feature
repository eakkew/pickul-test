Feature: Submissions
	In order to validate credibility of the submissions
	As a Registered User
	I want to not be able to submit anything
	
	Background:
		Given I am logged in as 'lovelygentleman'
	
	Scenario: test Submit a new link
		When I press submit a new link
		Then I should be directed to submit a link page
	
	Scenario: Filling out new link details
		Given I am on "Submit a new link" page
		And I entered title with "Our PM said we are in rapid growth"
		And I entered Url with "beehive.asia"
		And I choosed subreddit to "politic"
		When I press submit
		Then I should be directed to a link submission confirmation
		#todo: cross check with our own pickul server
	
	Scenario: test Submit a new text post link
		When I press submit a new text post
		Then I should be directed to submit a new text post page
		
	Scenario: Filling out new text post details
		Given I am on a "submit a new text post" page
		And I entered title with "Do you girls of Pickul enjoy playing rough during sex"
		And I choosed subreddit to "Ask Pickul"
		When I press submit
		Then I should be directed to a text post submission confirmation
		#todo: cross check with our own pickul server