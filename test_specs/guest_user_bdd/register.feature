Feature: Create a new Account
	In order to use features in Pickul
	As a Guest User
	I want to become a member
	
	Background:
		Given I am a guest user
	
	Scenario: Register without remember me
		Given I put 'user1' into a username text box
		And I put 'youknowwhenyouseeit' into a password text box
		And I put 'youknowwhenyouseeit' into a verify password text box
		And I do not check remember me box
		And I put captcha word correctly
		When I press create account
		Then I am logged in automatically
		
	Scenario: Register with remember me
		Given I put 'user1' into a username text box
		And I put 'youknowwhenyouseeit' into a password text box
		And I put 'youknowwhenyouseeit' into a verify password text box
		And I check remember me box
		And I put captcha word correctly
		When I press create account
		Then I am logged in automatically