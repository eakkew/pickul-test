Feature: Subpickul
  In order for user to freely modify subpickul
  As an Mod User
  I want to give an ability to moderate the room
  
  Background:
    Given I am a mod of %(site)s
  
  #we will assume 
  Scenerio: edit title
    Given I am on "http://reddit.local/r/%(site)s/about/edit"
    When I enter "%(site) is the title %(timestamp)"
    and click 'ตัวเลือกการบันทึก' button
    Then I see title name is "%(site) is the title %(timestamp)" on "http://reddit.local/r/%(site)s"
    
  Scenerio: invite mod
    Given I am on "http://reddit.local/r/Bofanclub/about/moderators/"
    When I enter "bafomet" to invite modeators text box
    and I click 'เชิญ' button
    and I refresh the page
    Then I see 'bafomet' on 'คำเชิญชวญที่กำลังรอคำตอบรับ' list
    
  Scenerio: invite contributor
    Given I am on "http://reddit.local/r/Bofanclub/about/contributors/"
    When I enter "bafomet" to invite contributor text box
    and I click 'เชิญ' button
    and I refresh the page
    Then I see 'bafomet' on 'อนุมัติผู้สร้างกระทู้สำหรับ %(site) แล้ว' list