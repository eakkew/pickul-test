Feature: Votes
	In order to help curate Pickul's content
	As a Registered User
	I want to vote on contents
	
	Background:
		Given I am a registered user
	
	Scenario: upvote a link
		When I clicked upvote button in front of the content
		Then The button glowed orange as it says that I voted up this post
	
	Scenario: downvote a link
		When I clicked downvote button in front of the content
		Then The button glowed orange as it says that I voted up this post
	
	Scenario: upvote a comment
		Given I am in a post comment section
		When I clicked upvote button in front of the comment
		Then The button glowed orange as it says that I voted up this comment
	
	Scenario: downvote a comment
		Given I am in a post comment section
		When I clicked downvote button in front of the comment
		Then The button glowed orange as it says that I voted up this comment