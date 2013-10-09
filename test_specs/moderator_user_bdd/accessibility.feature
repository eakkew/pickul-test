Feature: Accessibility
  In order for user to use contents effectively
  As an Mod User
  I want to give accessibility to moderation related pages
  
  Background:
    Given I am an Admin User
  
  Scenerio: Mod Tools
    When I navigate to "http://reddit.local/r/%s"
    Then I can see 'TOOL ของผู้ดูแล' 
  
  Scenerio: edit about
    When I navigate to "http://reddit.local/r/%s/about/edit"
    Then I can see 'ตั้งค่ากลีบพิกุล' text on top bar
  
  Scenerio: mod mail
    When I navigate to 'http://reddit.local/r/%s/about/message/inbox'
    Then I can see 'ข้อความของ %(sites)s' link on top tool bar
    
  Scenerio: about mod
    When I navigate to 'http://reddit.local/r/%s/about/moderators'
    Then I can see 'invite moderator' text

  Scenerio: contributors
    When I navigate to 'http://reddit.local/r/%s/about/contributors'
    Then I can see 'งานที่รอการตรวจสอบ' text

  Scenerio: mod queue
    When I navigate to 'http://reddit.local/r/%s/about/modqueue'
    Then I can see 'งานที่รอการตรวจสอบ' text on top bar

  Scenerio: moderate reports
    When I navigate to 'http://reddit.local/r/%s/about/reports'
    Then I can see 'reports' text on top bar

  Scenerio: moderate spam
    When I navigate to 'http://reddit.local/r/%s/about/spam'
    Then I can see 'spam' text on top bar

  Scenerio: moderate ban
    When I navigate to 'http://reddit.local/r/%s/about/banned'
    Then I can see 'ชาวพิกุลที่ถูกแบน' text on top bar

  Scenerio: moderate flair
    When I navigate to 'http://reddit.local/r/%s/about/flair'
    Then I can see 'ตั้งค่าไอคอน' text on top bar

  Scenerio: mod log
    When I navigate to 'http://reddit.local/r/%s/about/log'
    Then I can see 'ประวัติการดูแล' text on top bar

  Scenerio: moderate unmoderated
    When I navigate to 'http://reddit.local/r/%s/about/unmoderated'
    Then I can see 'ลิงค์ที่ยังไม่ได้ตรวจสอบ' text on top bar