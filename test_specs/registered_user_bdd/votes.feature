Feature: Votes
	In order to help curate Pickuls content
	As a Registered User
	I want to vote on contents
	
	Background:
		Given I am a registered user
	
	Scenario: upvote a link
		When I click at 'upvote' button
		Then I see '$css_style_name' with '$value' on '$upvotebutton'

	
	Scenario: downvote a link
		When I click at 'downvote' button
		Then I see '$css_style_name' with '$value' on '$downvotebutton'
	
	Scenario: upvote a comment
		Given I am in a post comment section
		When I click at 'upvote' button
		Then I see '$css_style_name' with '$value' on '$upvotebutton'
	
	Scenario: downvote a comment
		Given I am in a post comment section
		When I click at 'downvote' button
		Then I see '$css_style_name' with '$value' on '$downvotebutton'
