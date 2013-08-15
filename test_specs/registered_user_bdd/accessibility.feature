Feature: Accessibility
	In order to curate contents for users in category
	As an owner of the room
	I want each subreddit has its accessibility
	
	Background:
		Given I am a Registered User
    
  	Scenario: Login as a user to pickul.com
		When I log in as 'lovelygentleman'
    		Then I see "lovelygentleman" in 'userbar'
    		And I see "logout" in 'userbar'

	Scenario: Non-NSFW subreddit - Navigating Subreddit
		When I enter "pickul.com/r/reddit_test3"
		Then I can see the contents in that subreddit
	
  	# the messaging feature will not able to complete unless the subpickul is created by user
	Scenario: Non-NSFW subreddit - Messaging Moderator
		When I click 'message the moderators' link
		Then I should be directed to message mod page
		
	Scenario: Non-NSFW subreddit - Subscribe subreddit
		Given I go to 'any unsubscribed subreddit page'
		When I click 'subscribe' link
		Then this subreddit will show up on my subscription page
		And the label will change to unsubscribe
		
	Scenario: private subreddit - with out access
		Given I go to "pickul.com/r/pickulstaff"
		When I enter the link of private subreddit
		Then I see "this subreddit is private"
	
	Scenario: private subreddit - with access
		Given I go to "pickul.com/r/pickulstaff"
		When I enter the link of private subreddit
		Then I can see the contents in this subreddit
	
	Scenario: NSFW subreddit - Age 18 and over
		Given I go to "pickul.com/r/gonewild"
		And I am redirected to "age restriction confirmation" page
		When I click 'yes' link
		Then I can see the contents in that subreddit
	
	Scenario: NSFW subreddit - Age under 18
		Given I go to "pickul.com/r/gonewild"
		And I am at "age restriction confirmation"
		When I click 'no' link
		Then I am at 'front page' # need real url
			
	Scenario: NSFW subreddit - Revisit 18 and over
		Given I am 19yo
		When I revisit this subreddit
		Then I can see the content of this subreddit
