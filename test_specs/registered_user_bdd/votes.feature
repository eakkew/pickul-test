Feature: Votes
	In order to help curate Pickuls content
	As a Registered User
	I want to vote on contents
	
	Background:
		Given I am a registered user
	
	Scenario: upvote a link
		When I click at 'upvote' button
		Then The button glowed orange as it says that I voted up this post
	
	Scenario: downvote a link
		When I click at 'downvote' button
		Then The button glowed orange as it says that I voted up this post
	
	Scenario: upvote a comment
		Given I am in a post comment section
		When I click at 'upvote' button
		Then The button glowed orange as it says that I voted up this comment
	
	Scenario: downvote a comment
		Given I am in a post comment section
		When I click at 'downvote' button
		Then The button glowed orange as it says that I voted up this comment
