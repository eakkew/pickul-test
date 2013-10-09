Feature: Moderation
  In order for user to use contents effectively
  As an Mod User
  I want to give an ability to moderate the room
  
  Background:
    Given I am a mod of %(site)s
  
  Scenerio: Reports
    Given I am on "http://reddit.local/r/%(site)s/about/reports"
    and a ink has been reports by other users
    When I click 'อนุมัติ link' button
    Then I see the link on "http://reddit.local/r/%(site)s"
    
  Scenerio: Link Spam
    Given I am on "http://reddit.local/r/%(site)s/about/spam"
    and a link has been marked as spam
    When I click 'อนุมัติ link' button
    Then I see the link on "http://reddit.local/r/%(site)s"
    
    Scenerio: Comment Spam
      Given I am on "http://reddit.local/r/%(site)s/about/spam"
      and a Comment has been marked as spam
      When I click 'อนุมัติ link' button
      Then I see the comment in that link
      
    # needs revision
    Scenario: Banning user
      Given I am on "http://reddit.local/r/%(site)s/about/banned"
      When I enter "bafomet" in "who to ban" text box
      and I enter "lame user name" in "why the ban" text box
      and I click 'เพิ่ม' button
      Then I see the confirmation message
      
    Scenerio: Unbanning user
      Given I am on "http://reddit.local/r/%(site)s/about/banned"
      and I see 'bafomet' in the banned list
      When I click 'ลบ'
      and I click 'ใช่'
      Then I cannot see 'bafomet' in the banned list