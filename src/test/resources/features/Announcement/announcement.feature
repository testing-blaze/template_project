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

  @183112 @183108 @183124 @183127 @183114 @183121 @183117 @sprint-3 @userStory-182461
  Scenario: Verify that in the Create Announcement modal, Budget Type is set to Construction on the back-end and the field is hidden (Competitive Announcements)
  |Verify that in the Create Announcement modal, Program ID is relabeled to be Internal Program (from the Competitive Announcements list)
  |Verify that in the Create Announcement modal, Advance Payment Allowed? field is set to No and is hidden (Competitive Announcements)
  |Verify that in the Create Announcement modal, Are Expense Details Required on Reimbursement? field is set to Yes and is hidden (Competitive Announcements)
  |Verify that in the Create Announcement modal, Leverage Allowed is set to No and is hidden (Competitive Announcements)
  |Verify that in the Create Announcement modal, Pre-Application Required? field is set to No and is hidden (Competitive Announcements)
  |Verify that in the Create Announcement modal, Program Income field is set to No and is hidden (Competitive Announcements)
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Announcements" tab
    When I navigate to "Competitive" content inside "Announcements" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:CompetitiveAnnouncements---"
    #183112
    Then I softly do not see "Budget Type" inside page block detail
    #183108
    Then I softly do not see "Program ID" inside page block detail
    Then I softly see "Internal Program" inside page block detail
    #183124
    When I enter value "Automation Runtime Announcement" into field "fieldAnnouncementName__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    And I click modal button "Continue"
    Then I softly do not see "Advance Payment Allowed?" inside page block detail
    #183127
    Then I softly do not see "Are Expense Details Required on Reimbursement?" inside page block detail
    #183114
    Then I softly do not see "Leverage Allowed" inside page block detail
    #183121
    Then I softly do not see "Pre-Application Required?" inside page block detail
    #183117
    Then I softly do not see "Program Income" inside page block detail

  @183110 @183106 @183125 @183128 @183115 @183122 @183118 @sprint-3 @userStory-182461
  Scenario: Verify that in the Create Announcement modal, Budget Type is set to Construction on the back-end and the field is hidden (Formula Announcements)
  |Verify that in the Create Announcement modal, Program ID is relabeled to be Internal Program (from the Formula Announcements list)
  |Verify that in the Create Announcement modal, Advance Payment Allowed? field is set to No and is hidden (Formula Announcements)
  |Verify that in the Create Announcement modal, Are Expense Details Required on Reimbursement? field is set to Yes and is hidden (Formula Announcements)
  |Verify that in the Create Announcement modal, Leverage Allowed is set to No and is hidden (Formula Announcements)
  |Verify that in the Create Announcement modal, Pre-Application Required? field is set to No and is hidden (Formula Announcements)
  |Verify that in the Create Announcement modal, Program Income field is set to No and is hidden (Formula Announcements)
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Announcements" tab
    When I navigate to "Formula" content inside "Announcements" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:FormulaAnnouncements---"
    #183110
    Then I softly do not see "Budget Type" inside page block detail
    #183106
    Then I softly do not see "Program ID" inside page block detail
    Then I softly see "Internal Program" inside page block detail
    #183125
    When I enter value "Automation Runtime Announcement" into field "fieldAnnouncementName__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    And I click modal button "Continue"
    Then I softly do not see "Advance Payment Allowed?" inside page block detail
    #183128
    Then I softly do not see "Are Expense Details Required on Reimbursement?" inside page block detail
    #183115
    Then I softly do not see "Leverage Allowed" inside page block detail
    #183122
    Then I softly do not see "Pre-Application Required?" inside page block detail
    #183118
    Then I softly do not see "Program Income" inside page block detail

  @183109 @183105 @183123 @183126 @183113 @183119 @183116 @183134 @183132 @sprint-3 @userStory-182461
  Scenario: Verify that in the Create Announcement modal, Budget Type is set to Construction on the back-end and the field is hidden (Landing Page)
  |Verify that in the Create Announcement modal, Program ID is relabeled to be Internal Program (Landing Page)
  |Verify that in the Create Announcement modal, Advance Payment Allowed? field is set to No and is hidden (Landing Page)
  |Verify that in the Create Announcement modal, Are Expense Details Required on Reimbursement? field is set to Yes and is hidden (Landing Page)
  |Verify that in the Create Announcement modal, Leverage Allowed is set to No and is hidden (Landing Page)
  |Verify that in the Create Announcement modal, Pre-Application Required? field is set to No and is hidden (Landing Page)
  |Verify that in the Create Announcement modal, Program Income field is set to No and is hidden (Landing Page)
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Announcements" tab
    And I click on top right button "New" in flex table with id "---tableID:-:Announcements---"
    #183109
    Then I softly do not see "Budget Type" inside page block detail
    #183105
    Then I softly do not see "Program ID" inside page block detail
    Then I softly see "Internal Program" inside page block detail
    #183123
    When I enter value "Automation Runtime Announcement" into field "fieldAnnouncementName__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    And I click modal button "Continue"
    Then I softly do not see "Advance Payment Allowed?" inside page block detail
    #183126
    Then I softly do not see "Are Expense Details Required on Reimbursement?" inside page block detail
    #183113
    Then I softly do not see "Leverage Allowed" inside page block detail
    #183119
    Then I softly do not see "Pre-Application Required?" inside page block detail
    #183116
    Then I softly do not see "Program Income" inside page block detail
    #183134
    And I hovering mouse on help text icon inside page block detail "Negotiations Allowed?"
    Then I see "For 'Competitive' announcement types, Negotiations must be allowed." shown as help text
    #183132
    When I enter value "No" into field "fieldIsMatchRequired__c"
    When I enter value "No" into field "fieldRiskAssessment_Required__c"
    When I enter value "N/A" into field "fieldSCDE_Allocation_Level__c"
    And I click modal button "Save and Continue"
    And I click on "Save" in the page details
    Then I softly see field "Negotiations Allowed?" as "Yes"