Feature: Submissions
	In order to validate credibility of the submissions
	As a programmer
	I want guest user to not be able to submit anything
	
	Background:
		Given I am a guest user
	
	Scenario: Submit a new link
		When I press submit a new link
		Then I should be directed to login page
	
	Scenario: Submit a new text post
		When I press submit a new text post link
		Then I should be directed to login page