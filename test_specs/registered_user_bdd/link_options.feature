Feature: Link Options
	In order to further use links
	As a Registered User
	I want options for links
	
	Background 
		Given I am a Registered user
		And I am on a discussion page
	
	Scenario: Save a link
		When I press save on a link
		Then Pickul should remember the link in my "saved" page
		
	Scenario: Share a link
		When I press share on a link
		Then Pickul should pop-up me to enter email or Pickul username
		
	Scenario: Report a link
		When I press report on a link
		Then Pickul should prompt me again if I am sure
		And #todo: cross check with our own pickul server for further instruction
		
	Scenario: Hide a link
		When I press hide on a link
		And when I reload the page
		Then I will not see the link I just hide

	#todo: cross check with reddit for its behavior
	Scenario: Hide a link with clean slate
		When I press hide on a link
		And my session expired
		And I revisit the subreddit of that link
		Then I will not see the link I just hide