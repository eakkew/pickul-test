Feature: Default subreddit
	In order to read contents
	As a guest user
	I want access to all the default subreddit
	
	Background:
		Given I am a guest user
	
	Scenario: Default subreddit
		When I enter Pickul homepage
		Then I see link to "$default subrpickul room"
		And I do not see link to "$non-default subrpickul room"
		
	Scenario: Frontpage
		When I click 'Front' link
		Then I see link to "$default subrpickul room"
		And I do not see link to "$non-default subrpickul room"
