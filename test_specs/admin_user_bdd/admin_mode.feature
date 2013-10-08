Feature: Admin mode
  In order for user to administrate stuff
  As an Admin User
  I want to gain access to admin mode
  
  Background:
    Given I am an Admin User
  
  Scenerio: Turn on Admin mode 
    Given I clicked on 'เปิดระบบ admin'
    When I logged-in as admin
    Then I am redirected to password confirmation page
  
  Scenerio: Admin Mode
    Given I clicked on 'เปิดระบบ admin'
    and I am on a password confirmation page
    When enter my password
    Then am redirected to "front" page
    and I see 'ปิดระบบ admin' button
    
  Scenerio: Mod tools
    Given admin mode is turned on
    When I navigate to "http://reddit.local/r/reddit_nsfw"
    Then I see mod tool bar on the side bar
    and I see 'แบนห้องพิกุลนี้' button
    
  Scenerio: Mod Ban
    Given admin mode is turned on
    and I create a new subpickul '%s'
    and I navigate to "http://reddit.local/r/%s"
    When I click 'แบนห้องพิกุลนี้' button
    Then I see 'แบนแล้ว'
    
  Scenerio: Mod Unban
    Given admin mode is turned on
    and I clicked 'แบนห้องพิกุลนี้'
    When I am on "http://reddit.local/r/%s"
    and I refresh
    Then I see 'รับรองกลีบพิกุลนี้' button
    