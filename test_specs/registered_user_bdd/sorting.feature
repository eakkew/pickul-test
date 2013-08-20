Feature: sorting
	In order to read sorted contents
	As a Registered User
	I want to read contents in any order
	
	Scenario: Hot
		Given I am on front page
		When I select sorting content to hot
		Then I see content
		
	Scenario: Top
		Given I am on front page
		When I select sorting content to Top
		Then I see content
		
	Scenario: New
		Given I am on front page
		When I select sorting content to New
		Then I see content
		
	Scenario: Controversial
		Given I am on front page
		When I select sorting content to Controversial
		Then I see content
		
	Scenario: Rising
		Given I am on front page
		When I select sorting content to Rising
		Then I see content
	
	Scenario: Best
		Given I am on a discussion page
		When I select sorting content to Best
		And I am on a subreddit page
		Then I see content
