Feature: Accessibility
	In order to curate contents for users in category
	As an owner of the room
	I want each subreddit has its accessibility
	
	Background:
		Given I am a Registered User
    
  	Scenario: Login as a user to pickul.com
		When I log in as 'lovelygentleman'
    		Then I see the link "profile"
    		And I see the link "logout"

	Scenario: Non-NSFW subreddit - Navigating Subpickul
		When I go to "pickul.com/r/reddit_test3"
		Then I see the content
	
  	# the messaging feature will not able to complete unless the subpickul is created by user
	Scenario: Non-NSFW Subpickul - Messaging Moderator
		When I click 'message the moderators' link
		Then I should be directed to message mod page
		
	Scenario: Non-NSFW subpickul - Subscribe subreddit
		Given I go to 'pickul.com/r/not_yet_subscribe_room'
		When I click 'subscribe' link
		Then I see a link to "not_yet_subscribe_room"
		And I see "unsubscribe" in "sub/unsub link"
		
	Scenario: private subpickul - with out access
		Given I do not have access to "pickul.com/r/pickulstaff"
		When I go to "pickul.com/r/pickulstaff"
		Then I see "this subpickul is private"
	
	Scenario: private subpickul - with access
		Given I do have access to "pickul.com/r/pickulstaff"
		When I go to "pickul.com/r/pickulstaff"
		Then I see the content
	
	Scenario: NSFW subpickul - Age 18 and over
		Given I go to "pickul.com/r/gonewild"
		And I on "age restriction confirmation" page
		When I click 'yes' link
		Then I see the content
	
	Scenario: NSFW subpickul - Age under 18
		Given I go to "pickul.com/r/gonewild"
		And I am on "age restriction confirmation"
		When I click 'no' link
		Then I am at 'front page' # need real url
			
	Scenario: NSFW subpickul - Revisit 18 and over
		Given I am 19yo
		When I refresh this page
		Then I see the content
