Feature: Link Options
	In order to further use links
	As a Registered User
	I want options for links
	
	Background 
		Given I am a Registered user
		And I am on a discussion page
	
	Scenario: Save a link
		When I click at 'save' link
		Then I see 'unsave'
    		And Pickul should remember the link in my "saved" page
		
	Scenario: Share a link
		When I click at 'share' link
		#Then Pickul should pop-up me to enter email or Pickul username # this will happen when u are not logged in
    		Then I see 'cancel' link 
    		And I see '.sharelink' form
		
	Scenario: Report spam someone's comment
		When I click at 'spam' link
    		And I see 'are you sure?'
    		And I click at the 'yes' button
		Then I see 'spammed'
    		# And #todo: cross check with our own pickul server for further instruction
		
	Scenario: Hide a link
		When I click at 'hide' link 'test_hide'
		And I refresh this page
		Then I do not see 'test_hide' link

	#todo: cross check with reddit for its behavior
	Scenario: Hide a link with clean slate
		Given I click at 'hide' link
		And I wait for $int milliseconds
		When I reopen my browser
		Then I do not see 'test_hide' link
