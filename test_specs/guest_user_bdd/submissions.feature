Feature: Submissions
	In order to validate credibility of the submissions
	As a guest user
	I want guest user to not be able to submit anything
	
	Background:
		Given I am a guest user
	
	Scenario: Submit a new link
		When I click 'submit a new link' link
		Then I am on 'login' page
	
	Scenario: Submit a new text post
		When I click 'submit a new text post link' link
		Then I am on 'login' page
