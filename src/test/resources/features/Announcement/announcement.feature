@announcement @regression @scdeRegression
Feature: Validate all scenarios related to announcement

  @182258 @182257 @sprint-2 @userStory-178222 @BugId-184193
  Scenario: Verify that the forms are listed in the ascending order of the sequence numbers listed on the form package (Announcements)
  |Verify the 'Sequence Number' column on the Preview Form Package modal window (Announcements)
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Announcements" tab
    And I click on top right button "New" in flex table with id "---tableID:-:Announcements---"
    When I enter value "Automation Runtime Announcement" into field "fieldAnnouncementName__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    And I click modal button "Continue"
    When I enter value "No" into field "fieldIsMatchRequired__c"
    When I enter value "No" into field "fieldRiskAssessment_Required__c"
    When I enter value "N/A" into field "fieldSCDE_Allocation_Level__c"
    And I click modal button "Save and Continue"
    And I click on "Save" in the page details
    #182258
    And I navigate to "Setup" sub tab
    When I click on "Preview" icon for "Application" inside flex table with id "---tableID:-:AnnouncementBusinessForms---"
    Then I softly see content of expected column "Sequence Number" is in "ASC" order of table id "---tableID:-:PreviewPackageForms---"
    #182257
    Then I softly see "Sequence Number" in flex table header "---tableID:-:PreviewPackageForms---"

  @181385 @sprint-2 @userStory-178224
  Scenario: Verify columns in the Preview Form Package modal window for Announcements
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Announcements" tab
    And I click on top right button "New" in flex table with id "---tableID:-:Announcements---"
    When I enter value "Automation Runtime Announcement" into field "fieldAnnouncementName__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    And I click modal button "Continue"
    When I enter value "No" into field "fieldIsMatchRequired__c"
    When I enter value "No" into field "fieldRiskAssessment_Required__c"
    When I enter value "N/A" into field "fieldSCDE_Allocation_Level__c"
    And I click modal button "Save and Continue"
    And I click on "Save" in the page details
    And I navigate to "Setup" sub tab
    When I click on "Preview" icon for "Application" inside flex table with id "---tableID:-:AnnouncementBusinessForms---"
    Then I softly do not see "Form Expiration" in flex table header "---tableID:-:PreviewPackageForms---"
    Then I softly do not see "Is Available?" in flex table header "---tableID:-:PreviewPackageForms---"