Feature: Create a new Account
	In order to use features in Pickul
	As a Guest User
	I want to become a member
	
	Background:
		Given I am a guest user
	
	Scenario: Register without remember me
		Given I fill input_id 'username' with 'user1'
		And I fill input_id 'password_text_box' with 'youknowwhenyouseeit'
		And I fill input_id 'verify_password_text_box' with 'youknowwhenyouseeit'
		And I uncheck remember me box
		And I fill input_id 'captcha_text_box' with '$captcha_word'
		When I click 'create account' link
		Then I am logged in automatically
		
	Scenario: Register with remember me
		Given I fill input_id 'username' with 'user1'
		And I fill input_id 'password_text_box' with 'youknowwhenyouseeit'
		And I fill input_id 'verify_password_text_box' with 'youknowwhenyouseeit'
		And I check remember me box
		And I fill input_id 'captcha_text_box' with '$captcha_word'
		When I click 'create account' link
		Then I am logged in automatically
