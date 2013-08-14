Feature: Comments
	In order to communicate and provides discussion
	As a Registered User
	I want to comment on links and text post
	
	Scenario: comments
		Given I log in as 'lovelygentleman'
		And I go to 'http://reddit.local/r/reddit_test3/comments/2/httpgooglecomq207659570625/'
		And I fill 'form#form-t6_262y textarea[name="text"]' with "hello world"
		When I click at the 'save' button
		Then I see "hello world" in 'div.nestedlisting'