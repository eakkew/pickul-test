Feature: Accessibility
	In order for users to use contents effectively
	As a Guest User
	I want to give accessibility to each room
	
	Background:
		Given I am a guest user
	
	Scenario: Non-NSFW subreddit
		When I enter the link of subreddit
		Then I can see the contents in that subreddit
		
	Scenario: NSFW subreddit - Age under 18
		When I press no confirming that I am not over 18
		Then I am redirected to front page
		
	Scenario: NSFW subreddit - Age 18 and over
		When I press yes confirming that I am 18 and over
		Then I can see the content in NSFW subreddit
	
	Scenario: private subreddit
		Given I am a guest user
		When I navigate to 'pickul.com/r/nsfwtest'
		Then I will be prompt with 'this subreddit is private' page