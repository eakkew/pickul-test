Feature: Link Options
	In order to further use links
	As a Registered User
	I want options for links
	
	Background 
		Given I am a Registered user
		And I am on a discussion page
	
	Scenario: Save a link
		When I click at the 'save' link
		Then I see 'unsave'
    And Pickul should remember the link in my "saved" page
		
	Scenario: Share a link
		When I click at the 'share' link
#		Then Pickul should pop-up me to enter email or Pickul username # this will happen when u are not logged in
    Then I see 'cancel' link 
    And I see '.sharelink' form
		
	Scenario: Report spam someone's comment
		When I click at the 'spam' link
    And I see 'are you sure?'
    And I click at the 'yes' button
		Then I see 'spammed'
    # And #todo: cross check with our own pickul server for further instruction
		
	Scenario: Hide a link
		When I press hide on a link
		And I refresh this page
		Then I will not see the link I just hide

	#todo: cross check with reddit for its behavior
	Scenario: Hide a link with clean slate
		Given I press hide on a link
		And my session expired
		When I reopen my browser
		Then I will not see the link I just hide