Feature: Accessibility
	In order to curate contents for users in category
	As an owner of the room
	I want each subreddit has its accessibility
	
	Background:
		Given I am a Registered User

	Scenario: Non-NSFW subreddit - Navigating Subreddit
		When I enter "pickul.com/r/regularroom"
		Then I can see the contents in that subreddit
		
	Scenario: Non-NSFW subreddit - Messaging Moderator
		When I click 'message the moderators'
		Then I should be directed to message mod page
		
	Scenario: Non-NSFW subreddit - Subscribe subreddit
		Given I am on an unsubscribed subreddit page
		When I pressed subscribe
		Then I can see links from that subreddit when I return to front page
		
	Scenario: private subreddit - w/o access
		Given I do not have permission to "pickul.com/r/testprivate"
		When I enter the link of private subreddit
		Then I will be prompt with "this subreddit is private" page
	
	Scenario: private subreddit - w/ access
		Given I have permission to "pickul.com/r/testprivate"
		When I enter the link of private subreddit
		Then I can see the contents in this subreddit
	
	Scenario: NSFW subreddit - First Visit
		Given this is my first visit
		When I entered this NSFW subreddit
		Then I will be directed to age restriction confirmation page
	
	Scenario: NSFW subreddit - Age 18 and over
		Given I am 18yo
		When I press yes confirming that I am over 18 and over
		Then I can see the contents in that subreddit
	
	Scenario: NSFW subreddit - Age under 18
		Given I am 17yo
		When I press no confirming that I am not over 18
		Then I am redirected to front page
		
	Scenario: NSFW subreddit - Revisit under 18
		Given I am 17yo
		When I revisit this subreddit
		Then I will be directed to age restriction confirmation page
		
	Scenario: NSFW subreddit - Revisit 18 and over
		Given I am 19yo
		When I revisit this subreddit
		Then I can see the content of this subreddit