Feature: Accessibility
  In order for user to use contents effectively
  As an Admin User
  I want to give accessibility to each room
  
  Background:
    Given I am an Admin User
  
  Scenerio: Admin mode
    Given I am on "http://reddit.local"
    When I logged-in as admin
    Then I can see 'เปิดระบบ admin' link top page
  
  Scenerio: Awards
    Given I am an admin
    When I navigate to "http://reddit.local/admin/awards"
    Then I can see 'new award' button
  
  Scenerio: private subreddit
    Given admin mode is turned on
    When I navigate to 'http://reddit.local/r/reddit_private'
    Then I land on 'http://reddit.local/r/reddit_private'