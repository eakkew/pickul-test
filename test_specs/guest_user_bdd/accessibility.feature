Feature: Accessibility
	In order for users to use contents effectively
	As a Guest User
	I want to give accessibility to each room
	
	Background:
		Given I am a guest user

	Scenario: NSFW subreddit - Age 18 and over
		Given I am 19yo
		And I navigate to "http://reddit.local/r/reddit_nsfw"
		And I am on "age restriction confirmation" page
		When I click at 'yes' button
		Then I can see the contents
	
	Scenario: NSFW subreddit - Age under 18
		Given I am 17yo
		And I go to "http://reddit.local/r/reddit_nsfw"
		And I am on "age restriction confirmation" page
		When I click at 'no' button
		Then I am on "front" page
	
	Scenario: private subreddit
		Given I am a guest user
		When I navigate to 'http://reddit.local/r/reddit_private'
		Then I see 'this subreddit is private' in 'the page' 
		# what is found from "http://reddit.local/r/reddit_private/" is a message "this subreddit is private" and another message from moderator
