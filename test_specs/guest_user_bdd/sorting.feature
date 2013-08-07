Feature: Sorting
	In order to read sorted contents
	As a Guest User
	I want to read contents in any order
	
	Background:
		Given I am a guest user
		And I am on front page
	
	Scenario: Hot
		When I select sorting content to hot
		Then I should see the contents sorted by the combination of 'top' and 'new'
		
	Scenario: Top
		When I select sorting content to Top
		Then I should see the contents sorted by highest scoring submissions to Pickul and comments on submissions
		
	Scenario: New
		When I select sorting content to New
		Then I should see the contents sorted by the most recent ones, regardless of their score
		
	Scenario: Controversial
		When I select sorting content to Controversial
		Then I should see the contents sorted by the most controversial scoring submissions and comments
		
	Scenario: Rising
		When I select sorting content to Rising
		Then I should see the contents sorted by the new contents that are getting scorings
	
	Scenario: Best
		Given I navigate to 'pickul.com/r/testroom'
		When I select sorting content to Best
		Then I should see the comments sorted by the best comments first
