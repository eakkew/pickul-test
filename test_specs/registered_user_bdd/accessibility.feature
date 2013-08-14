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
		When I click 'message the moderators'
		Then I should be directed to message mod page
		
	Scenario: Non-NSFW subreddit - Subscribe subreddit
		Given I am on 'an unsubscribed subreddit page'
    And I see 'subscribe'
		When I click a link 'subscribe'
		Then this subreddit will show up on my subscription page
		And the label will change to unsubscribe
		
	Scenario: private subreddit - w/o access
		Given I do not have permission to "pickul.com/r/pickulstaff"
		When I enter the link of private subreddit
		Then I see "this subreddit is private"
	
	Scenario: private subreddit - w/ access
		Given I have permission to "pickul.com/r/pickulstaff"
		When I enter the link of private subreddit
		Then I can see the contents in this subreddit
	
	Scenario: NSFW subreddit - Age 18 and over
		Given I am 19yo
		And I navigate to "pickul.com/r/gonewild"
		And I am redirected to "age restriction confirmation" page
		When I press yes confirming that I am over 18 and over
		Then I can see the contents in that subreddit
	
	Scenario: NSFW subreddit - Age under 18
		Given I am 17yo
		And I navigate to "pickul.com/r/gonewild"
		And I am redirected to "age restriction confirmation" page
		When I press no confirming that I am not over 18
		Then I am redirected to front page
		
	Scenario: NSFW subreddit - Revisit under 18
		Given I am 17yo
		When I revisit this subreddit
		Then I will be redirected to "page restriction confirmation" page
		
	Scenario: NSFW subreddit - Revisit 18 and over
		Given I am 19yo
		When I revisit this subreddit
		Then I can see the content of this subreddit