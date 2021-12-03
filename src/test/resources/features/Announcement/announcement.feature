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
    And I click on "Continue" in the page details
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
    And I click on "Continue" in the page details
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
    And I click on "Continue" in the page details
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
    And I click on "Continue" in the page details
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
    And I click on "Continue" in the page details
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

  @184024 @184098 @184183 @184188 @184175 @184179 @184185 @184180 @184182 @184096 @184138 @184090 @184133 @184134 @184131 @sprint-3 @userStory-175346
  Scenario: Verify the "Type" field is read-only in Information section under overview tab
  |Verify that new "Office" field is editable
  |Verify that "Indirect Cost Type" is dropdown field with the following options: Restricted, Unrestricted, Not Allowed
  |Verify that the "Maximum Indirect Cost" is optional field
  |Verify the "Fiscal Year" field has dropdown showing Years, such as 2021, 2022, 2023, 2024
  |Verify do not see that the Justification for Deficit Amount field
  |Verify that a new field for Maximum Indirect Cost
  |Verify that do not see Budget Type
  |Verify that see a new field for Indirect Cost Type in "Financial Details" section under "Financials" tab
  |Verify that do not see "Internal Division/Office" field in "Overview" tab
  |Verify that do not see the Internal Organization field in "Overview" tab
  |Verify that do not see the Leverage Allowed? field under Overview tab
  |Verify that do not see the Program Income Allowed? field under Overview tab
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Announcements" tab
    When I navigate to "Formula" content inside "Announcements" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:FormulaAnnouncements---"
    When I enter value "Automation Runtime Announcement" into field "fieldAnnouncementName__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    And I click on "Continue" in the page details
    When I enter value "No" into field "fieldIsMatchRequired__c"
    When I enter value "No" into field "fieldRiskAssessment_Required__c"
    When I enter value "N/A" into field "fieldSCDE_Allocation_Level__c"
    And I click modal button "Save and Continue"
     #184024
    Then I softly see field "Type" as "Formula"
     #184098
    Then I softly see fields "fieldSCDE_Office__c" is in edit mode
      #184183
    And I navigate to "Financials" sub tab
    Then I softly see "--None--:Restricted:Unrestricted:Not Allowed" inside selectbox field "fieldSCDE_Indirect_Cost_Type__c"
      #184188
    Then I softly do not see asterisk mark on "Maximum Indirect Cost"
      #184175
    Then I see the following options in dropdown field "fieldSCDE_Fiscal_Year__c" :
      | 2021 | 2030 | 2040 |
    And I click on "Save" in the page details
      #184179
    Then I softly do not see "Justification for Deficit Amount" inside page block detail
      #184185
    Then I softly see "Indirect Cost Type" inside page block detail
      #184180
    Then I softly do not see "Budget Type" inside page block detail
      #184182
    Then I softly see field "Indirect Cost Type" inside "Financial Details" section
     #184096
    And I navigate to "Overview" sub tab
    Then I softly do not see "Internal Division/Office" inside page block detail
     #184138
    Then I softly do not see "Are Expense Details Required on Reimbursement?" inside page block detail
     #184090
    Then I softly do not see "Internal Organization" inside page block detail
     #184133
    Then I softly do not see "Leverage Allowed?" inside page block detail
     #184134
    Then I softly do not see "Pre-Application Required?" inside page block detail
     #184131
    Then I softly do not see "Program Income Allowed?" inside page block detail