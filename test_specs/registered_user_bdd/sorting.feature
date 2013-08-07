Feature: sorting
	In order to read sorted contents
	As a Registered User
	I want to read contents in any order
	
	Scenario: Hot
		Given I am on front page
		When I select sorting content to hot
		Then I should see the contents sorted by the combination of 'top' and 'new'
		
	Scenario: Top
		Given I am on front page
		When I select sorting content to Top
		Then I should see the contents sorted by highest scoring submissions to Pickul and comments on submissions
		
	Scenario: New
		Given I am on front page
		When I select sorting content to New
		Then I should see the contents sorted by the most recent ones, regardless of their score
		
	Scenario: Controversial
		Given I am on front page
		When I select sorting content to Controversial
		Then I should see the contents sorted by the most controversial scoring submissions and comments
		
	Scenario: Rising
		Given I am on front page
		When I select sorting content to Rising
		Then I should see the contents sorted by the new contents that are getting scorings
	
	Scenario: Best
		Given I am on a discussion page
		When I select sorting content to Best
		And I am on a subreddit page
		Then I should see the comments sorted by the best comments first