Feature: Comments
	In order to communicate and provides discussion
	As a Registered User
	I want to comment on links and text post
	
	Scenario: comments
		Given I am a registered user
		And I am in a discussion section
		And I typed my discussion with "hello world"
		When clicked submit
		Then I should see that my comment is in the comment section of the post