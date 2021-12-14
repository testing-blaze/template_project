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

  @183342 @183339 @183344 @183343 @184116 @184092 @184093 @184094 @sprint-3 @userStory-@179300 @UmangParekh
  Scenario: Verify that when I create a new contact on my announcement, I do not see the Country field on the create new model
  | Verify that when I create a new contact on my announcement, I do not see the Project Role field on the create new modal
  | Verify that I should see an edit button in the actions column so that I can edit in-line when my announcement is in state "Created"
  | Verify that when I edit a contact in-line on my announcement for the Project Role field is optional
  | Verify that when I edit a contact in-line on my announcement for the Project Role this field is a dropdown with option a. State Coordinator
  | Verify that I should see an edit button in the actions column so that I can edit in-line when my announcement is in state "Submitted for Review"
  | Verify that I should see an edit button in the actions column so that I can edit in-line when my announcement is in state "Reviewed"
  | Verify that I should see an edit button in the actions column so that I can edit in-line when my announcement is in state "Under Revision"
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
    #183342
    And I click on top right button "New" in flex table with id "---tableID:-:AnnouncementContactsTable---"
    Then I softly do not see field "Country" inside "Create Contact" section
    #183339
    Then I softly do not see field "Project Role" inside "Create Contact" section
    And I close modal by clicking the top right x button
    And I pause execution for "2" seconds
    #183344
    And I navigate to "Announcements" tab
    And I click on top right button "New" in flex table with id "---tableID:-:Announcements---"
    When I enter value "Automation Runtime Announcement" into field "fieldAnnouncementName__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    And I click on "Continue" in the page details
    When I enter value "No" into field "fieldIsMatchRequired__c"
    When I enter value "No" into field "fieldRiskAssessment_Required__c"
    When I enter value "N/A" into field "fieldSCDE_Allocation_Level__c"
    And I click modal button "Save and Continue"
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementContactsTable---"
    When I click "Associate" after selection of "Automation PM" in the table "---tableID:-:AnnouncementContactsModal---"
    And I click on "Save" in the page details
    Then I softly can see row level action button "Edit" against "Automation PM" in flex table with id "---tableID:-:AnnouncementContactsTable---"
    #183343
    And I click on "Edit" icon for "Automation PM" inside flex table with id "---tableID:-:AnnouncementContactsTable---"
    Then I softly do not see asterisk mark on "Project Role"
    #184116
    Then I softly see "--None--:State Coordinator" inside selectbox field "ProjectRole__c"
    And I click on top right button "Save" in flex table with id "---tableID:-:AnnouncementContactsTable---"
    #184092
    And I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "---tableID:-:PeerReviewers---" by clicking "New" :
      | Name          | Responsibility  | Description | Due Date | Allow Record Editing |
      | Automation PM | Fiscal Reviewer | Test        | 1        | No                   |
    And I click on "Send for Review" icon for "Automation PM" inside flex table with id "---tableID:-:PeerReviewers---"
    And I softly see field "Status" as "Submitted for Review"
    And I navigate to "Overview" sub tab
    Then I softly can see row level action button "Edit" against "Automation PM" in flex table with id "---tableID:-:AnnouncementContactsTable---"
    #184093
    And I navigate to "Responsibilities" sub tab
    And I click on "Enter Review" icon for "Automation PM" inside flex table with id "---tableID:-:PeerReviewers---"
    When I enter value "Passed" into field "fieldRating__c"
    When I enter value "Reviewed" into field "fieldReviewComments__c"
    And I click modal button "Save"
    And I click modal button "Submit Review"
    And I click on "Resend for Review" icon for "Automation PM" inside flex table with id "---tableID:-:PeerReviewers---"
    And I click on "Complete Review" in the page details
    And I softly see field "Status" as "Reviewed"
    And I navigate to "Overview" sub tab
    Then I softly can see row level action button "Edit" against "Automation PM" in flex table with id "---tableID:-:AnnouncementContactsTable---"
    #184094
    And I click on "Edit" in the page details
    When I enter value "Federal" into field "fieldSCDE_Funding_Source__c"
    When I enter value "1" into field "fieldMaxApplicationsAllowed__c"
    When I enter value "School" into field "fieldSCDE_Detailed_Budgeting_Options__c"
    When I enter value "test" into field "fieldAnnouncementDescription__c"
    When I enter value "Library" into field "fieldEligibleApplicantTypes__c"
    When I enter value "200" into field "fieldApplicationDueDate__c"
    And I navigate to "Financials" sub tab
    When I enter value "1000" into field "fieldAwardFloor__c"
    When I enter value "2000" into field "fieldAwardCeiling__c"
    When I enter value "5000" into field "fieldTotalCommittedAmount__c"
    When I enter value "Unrestricted" into field "fieldSCDE_Indirect_Cost_Type__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on "Submit For Approval" in the page details
    When I "Approve" in the approval decision
    And I click on "Publish" in the page details
    And I click on "Unpublish" in the page details
    And I softly see field "Status" as "Under Revision"
    And I navigate to "Overview" sub tab
    Then I softly can see row level action button "Edit" against "Automation PM" in flex table with id "---tableID:-:AnnouncementContactsTable---"

  @184277 @184258 @184279 @184259 @184290 @184307 @184289 @184755 @184757 @184735 @184760 @sprint-3 @userStory-181662 @UmangParekh
  Scenario: Verify that do not see the row-level edit and delete icons in the Invited Applicants section when status is submitted for approval
  | Verify that do not see the section-level actions in the Invited Applicants section (Download in Excel, Upload Excel, Delete Selected, Delete All) when status is submitted for approval
  | Verify that do not see the row-level edit and delete icons in the Invited Applicants section when the status is approved
  | Verify that do not see the section-level actions in the Invited Applicants section (Download in Excel, Upload Excel, Delete Selected, Delete All) when status is approved
  | Verify that do not see the row-level delete icon in the Invited Applicants section under overview tab when status is Published
  | Verify that see the row-level edit icon in the Invited Applicants section under overview tab when status is Published
  | Verify that the section-level actions in the Invited Applicants section under overview tab when status is Published
  | Verify that see the row-level delete icon in the Invited Applicants section under overview tab when status is Under Revision
  | Verify that see the row-level edit icon in the Invited Applicants section under overview tab when status is Under Revision
  | Verify that the section-level actions in the Invited Applicants section under overview tab when status is Under Revision
  | Verify that I can add or edit using Excel in the Invited Applicants section under overview tab when status is Under Revision
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Announcements" tab
    When I navigate to "Formula" content inside "Announcements" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:FormulaAnnouncements---"
    When I enter value "Automation Runtime Announcement" into field "fieldAnnouncementName__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    And I click on "Continue" in the page details
    When I enter value "No" into field "fieldIsMatchRequired__c"
    When I enter value "No" into field "fieldRiskAssessment_Required__c"
    When I enter value "No" into field "fieldIsNegotiationsAllowed__c"
    When I enter value "By Applicant" into field "fieldSCDE_Allocation_Level__c"
    And I click modal button "Save and Continue"
    When I enter value "Federal" into field "fieldSCDE_Funding_Source__c"
    When I enter value "test" into field "fieldAnnouncementDescription__c"
    When I enter value "Library" into field "fieldEligibleApplicantTypes__c"
    When I enter value "200" into field "fieldApplicationDueDate__c"
    And I navigate to "Financials" sub tab
    When I enter value "1000" into field "fieldAwardFloor__c"
    When I enter value "2000" into field "fieldAwardCeiling__c"
    When I enter value "5000" into field "fieldTotalCommittedAmount__c"
    When I enter value "Unrestricted" into field "fieldSCDE_Indirect_Cost_Type__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I navigate to "Overview" sub tab
    And I click on top right button "Download in Excel" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
    And I close modal by clicking the top right x button
    And I click on top right button "Upload Excel" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
    When I switch to iframe with id "SoleSourceAwardOrganizationsiframeContentId"
    When I upload file "AppWithSchoolCode.xlsx" into library
    And I click modal button "Upload File"
    And I pause execution for "3" seconds
#    And I call API to change the status of Announcement
#    Then I softly see field "Status" as "Closed"
    #184277
    And I click on "Submit For Approval" in the page details
    And I softly see field "Status" as "Submitted for Approval"
    Then I softly cannot see row level action button "Edit" against "1212" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
    Then I softly cannot see row level action button "Remove" against "1212" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
    #184258
    Then I softly cannot see top right button "Download in Excel" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
    Then I softly cannot see top right button "Upload Excel" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
    Then I softly cannot see top right button "Delete Selected" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
    Then I softly cannot see top right button "Delete All" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
    And I pause execution for "2" seconds
    #184279
    When I "Approve" in the approval decision
    And I softly see field "Status" as "Approved"
    Then I softly cannot see row level action button "Edit" against "1212" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
    Then I softly cannot see row level action button "Remove" against "1212" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
    #184259
    Then I softly cannot see top right button "Download in Excel" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
    Then I softly cannot see top right button "Upload Excel" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
    Then I softly cannot see top right button "Delete Selected" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
    Then I softly cannot see top right button "Delete All" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
    And I pause execution for "2" seconds
    #184290
    And I click on "Publish" in the page details
    And I softly see field "Status" as "Published"
    Then I softly cannot see row level action button "Remove" against "1212" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
    #184307
    Then I softly can see row level action button "Edit" against "1212" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
    #184289
    Then I softly can see top right button "Download in Excel" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
    Then I softly can see top right button "Upload Excel" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
    #184755
    And I click on "Unpublish" in the page details
    And I softly see field "Status" as "Under Revision"
    Then I softly can see row level action button "Remove" against "1212" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
    #184757
    Then I softly can see row level action button "Edit" against "1212" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
    #184735
    Then I softly can see top right button "Download in Excel" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
    Then I softly can see top right button "Upload Excel" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
    #184760
    And I click on top right button "Upload Excel" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
    When I switch to iframe with id "SoleSourceAwardOrganizationsiframeContentId"
    When I upload file "AppWithSchoolCode.xlsx" into library
    And I click modal button "Upload File"
    And I pause execution for "3" seconds

  @184152 @184163 @184149 @184122 @184083 @184187 @184119 @184162 @184184 @184127 @184099 @sprint-3 @userStory-175346
  Scenario: Verify that the Allocation Level field  is read-only in "Announcement Specific Settings" section under "Overview" tab
  |Verify that the Detailed Budgeting Option field  is read-only in "Announcement Specific Settings" section under "Overview" tab
  |Verify the Eligible Applicant Types under "Eligibility Details" section
  |Verify the Funding Source field has Dropdown with Federal and State options
  |Verify the Internal Program field is read-only in Information section
  |Verify that a new field for Maximum Indirect Cost is user entered currency field
  |Verify the new field for Funding Source in Information section under Overview tab
  |Verify that the Allocation Level field Help text saying:  Specifies how allocations can be apportioned for formula announcements
  |Verify that the "Indirect Cost Type" field is required to Submit
  |Verify the Funding Source field is required on Submit
  |Verify that there is a new field for Office is required on Submit
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
      #184152
    Then I softly see field "Allocation Level" as "N/A"
      #184163
    Then I softly see field "Detailed Budgeting Option" as ""
      #184149
    Then I softly see "Local Education Agency:Nonprofit Organization:State Agency:Public Institution of Higher Education:Private Institution of Higher Education:Community-based Organization (CBO):For Profit Organization:Faith-based Organization:Library:Native American tribal Government:Native American tribal organization:Public Housing Authority:Other" inside selectbox field "fieldEligibleApplicantTypes__c"
      #184122
    Then I softly see "--None--:Federal:State" inside selectbox field "fieldSCDE_Funding_Source__c"
      #184083
    Then I softly see field "Internal Program" as "Automation Permanent Program"
    #184187
    And I navigate to "Financials" sub tab
    When I enter value "1000" into field "fieldSCDE_Maximum_Indirect_Cost__c"
    And I click on "Save" in the page details
    Then I softly see field "Maximum Indirect Cost Rate" as "1,000.00%"
    #184119
    And I navigate to "Overview" sub tab
    Then I softly see field "Funding Source" inside "Information" section
    #184162
    And I hovering mouse on help text icon inside page block detail "Allocation Level"
    Then I softly see "Specifies how allocations can be apportioned for formula announcements." shown as help text
    And I pause execution for "4" seconds
    #184184
    And I click on "Submit For Approval" in the page details
    Then I softly see the following messages in the page details contains:
      | Overview Tab - Indirect cost rate field is required for submitting for approval. |
    #184127
    Then I softly see the following messages in the page details contains:
      | Overview Tab - Funding source field is required for submitting for approval. |
    #184099
    Then I softly see the following messages in the page details contains:
      | Overview Tab - Office field is required for submitting for approval. |

  @184171 @sprint-3 @userStory-175346
  Scenario: Verify the Budgeting is Required for field has help text saying "Indicates whether the applicant organization is required to complete a budget for the first budget period or for all budget periods"
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
    And I click on "Save" in the page details
    And I navigate to "Financials" sub tab
    And I hovering mouse on help text icon inside page block detail "Budgeting is Required for:"
    Then I softly see "Indicates whether the applicant organization is required to complete a budget for the first budget period or for all budget periods." shown as help text

  @184164 @sprint-3 @userStory-175346
  Scenario: Verify the Detailed Budgeting Option field Help text saying:  Specifies program-related fields for applicants to complete on the budget template
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
    And I click on "Save" in the page details
    And I hovering mouse on help text icon inside page block detail "Detailed Budgeting Option"
    Then I softly see "Specifies program-related fields for applicants to complete on the budget template." shown as help text

  @184317 @sprint-3 @userStory-175346
  Scenario: Verify that the help text that says: "For Federal programs, the Program Number is the Assistance Listing number"
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
    And I click on "Save" in the page details
    And I hovering mouse on help text icon inside page block detail "Federal/NGO Programs"
    Then I softly see "For Federal programs, the Program Number is the Assistance Listing number." shown as help text

  @184081 @sprint-3 @userStory-175346
  Scenario: Verify the "Type" field help text says: Type of funding announcement (Competitive or Formula)
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
    And I click on "Save" in the page details
    And I hovering mouse on help text icon inside page block detail "Type"
    Then I softly see "Funding Announcement Type (Competitive or Formula)" shown as help text

  @184139 @sprint-3 @userStory-175346
  Scenario: Verify the Validation message says, "For 'Competitive' announcement types, 'Negotiations Allowed?' must be set to Yes
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Announcements" tab
    When I navigate to "Competitive" content inside "Announcements" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:CompetitiveAnnouncements---"
    When I enter value "Automation Runtime Announcement" into field "fieldAnnouncementName__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    And I click on "Continue" in the page details
    When I enter value "No" into field "fieldIsMatchRequired__c"
    When I enter value "No" into field "fieldRiskAssessment_Required__c"
    When I enter value "N/A" into field "fieldSCDE_Allocation_Level__c"
    And I click modal button "Save and Continue"
    When I enter value "No" into field "fieldIsNegotiationsAllowed__c"
    And I click on "Save" in the page details
    And I click on "Submit For Approval" in the page details
    Then I softly see the following messages in the page details contains:
      | For 'Competitive' announcement types, 'Negotiations Allowed?' must be set to Yes |

  @184168 @sprint-3 @userStory-175346
  Scenario: Verify the Validation message:  For Formula announcements, the Maximum Applications Allowed must be 1
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Announcements" tab
    When I navigate to "Formula" content inside "Announcements" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:FormulaAnnouncements---"
    When I enter value "Automation Runtime Formula Announcement" into field "fieldAnnouncementName__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    And I pause execution for "3" seconds
    And I click on "Continue" in the page details
    When I enter value "No" into field "fieldIsMatchRequired__c"
    When I enter value "No" into field "fieldRiskAssessment_Required__c"
    When I enter value "No" into field "fieldIsNegotiationsAllowed__c"
    When I enter value "By Applicant and School" into field "fieldSCDE_Allocation_Level__c"
    When I enter value "School" into field "fieldSCDE_Detailed_Budgeting_Options__c"
    And I click modal button "Save and Continue"
    When I enter value "Federal" into field "fieldSCDE_Funding_Source__c"
    When I enter value "test" into field "fieldAnnouncementDescription__c"
    When I enter value "Library" into field "fieldEligibleApplicantTypes__c"
    When I enter value "200" into field "fieldApplicationDueDate__c"
    When I enter value "2" into field "fieldMaxApplicationsAllowed__c"
    And I navigate to "Financials" sub tab
    When I enter value "1000" into field "fieldAwardFloor__c"
    When I enter value "2000" into field "fieldAwardCeiling__c"
    When I enter value "5000" into field "fieldTotalCommittedAmount__c"
    When I enter value "Unrestricted" into field "fieldSCDE_Indirect_Cost_Type__c"
    And I click on "Save" in the page details
    And I click on "Submit For Approval" in the page details
    Then I softly see the following messages in the page details contains:
      | For Formula announcements, the Maximum Applications Allowed must be 1. |

  @184196 @184199 @184198 @184201 @184200 @Sprint-3 @userStory-179307
  Scenario: Verify that do not see the link for "Directed" announcements
  |Verify that the type field help text say:  Type of funding announcement (Competitive or Formula)
  |Verify that the type field shows only Competitive and Formula options
  |Verify that on the Overview tab of the announcement layout the help text say:  Type of funding announcement (Competitive or Formula)
  |Verify that on the Overview tab of the announcement layout the Type field shows the Competitive or Formula options
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Announcements" tab
    #184196
    Then I softly do not see field "Directed" inside "Announcements" section
    When I navigate to "Formula" content inside "Announcements" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:FormulaAnnouncements---"
    When I enter value "Automation Runtime Announcement" into field "AnnouncementName__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
     #184199
    And I hovering mouse on help text icon inside page block detail "Type"
    Then I softly see "Funding Announcement Type (Competitive or Formula)" shown as help text
    And I click on "Continue" in the page details
    #184198
    Then I softly see "--None--:Competitive:Formula" inside selectbox field "fieldAnnouncementType__c"
    #184201
    When I enter value "No" into field "fieldIsMatchRequired__c"
    When I enter value "No" into field "fieldRiskAssessment_Required__c"
    When I enter value "By Applicant" into field "fieldSCDE_Allocation_Level__c"
    And I click modal button "Save and Continue"
    And I hovering mouse on help text icon inside page block detail "Type"
    Then I softly see "Funding Announcement Type (Competitive or Formula)" shown as help text
    #184200
    Then I softly see field "Type" as "Formula"

  @183311 @183291 @183312 @183314 @183395 @183293 @183310 @183296 @183309 @183294 @183313 @sprint-3 @userStory-181656
  Scenario: Verify that There is a field on the announcement create modal in the Announcement Specific Settings section labeled 'Detailed Budgeting Options'
  |Verify that There is a new field on the announcement create modal in the Announcement Specific Settings section labeled "Allocation Level".
  |Verify that 'Detailed Budgeting Options' is a multi-select field and it's options order
  |Verify that If Allocation Level is By Applicant and School, then at least School must be selected for Detailed Budgeting Options.
  | Verify the Validation message:  If 'Allocation Level' is by Applicant and School, then School must be selected for a 'Detailed Budgeting Option'.
  |Verify that "Allocation Level" This is a dropdown field with options: By Applicant By Applicant and School N/A
  |Verify that 'Allocation level' There is Help text saying:  Allocation level specifies how allocations can be apportioned for formula announcements.
  |Verify that If the announcement Type is Competitive then the user must select "Allocation Level" as N/A.
  |Verify the Validation message:  'Competitive' announcement types must have the 'Allocation Level' set as N/A.
  |Verify that The field "Allocation Level" is required to create the announcement.
  |Verify that 'Detailed Budgeting Options' Field is optional.
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Announcements" tab
    When I navigate to "Formula" content inside "Announcements" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:FormulaAnnouncements---"
    When I enter value "Automation Runtime Announcement" into field "fieldAnnouncementName__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    And I click on "Continue" in the page details
      #183311
    Then I softly see "Detailed Budgeting Options" inside page block detail
      #183291
    Then I softly see "Allocation Level" inside page block detail
      #183312
    Then I softly see "Title I Reform Strategy:Title II Reform Strategy:Title IV Focus Areas or Subcategories:Title V Reform Strategy:Data Need is Based on:Evidence Level:Identified Need:Use of Funds:Program Activity Type:School:Course:Location" inside selectbox field "fieldSCDE_Detailed_Budgeting_Options__c"
    #183314 #183395
    When I enter value "No" into field "fieldIsMatchRequired__c"
    When I enter value "No" into field "fieldRiskAssessment_Required__c"
    When I enter value "By Applicant and School" into field "fieldSCDE_Allocation_Level__c"
    And I click modal button "Save and Continue"
    Then I softly see the following messages in the page details contains:
      | If 'Allocation Level' is by Applicant and School, then School must be selected for a 'Detailed Budgeting Option'. |
      #183293
    When I enter value "Competitive" into field "fieldAnnouncementType__c"
    Then I softly see "--None--:N/A" inside selectbox field "fieldSCDE_Allocation_Level__c"
      #183310
    And I hovering mouse on help text icon inside page block detail "Allocation Level"
    Then I softly see "Allocation level specifies how allocations can be apportioned for formula announcements." shown as help text
    #183296 #183309 #183294
    And I clear the value from field "fieldSCDE_Allocation_Level__c"
    And I click modal button "Save and Continue"
    Then I softly see the following messages in the page details contains:
      | Allocation Level is required to save. |
    #183313
    When I enter value "N/A" into field "fieldSCDE_Allocation_Level__c"
    And I click modal button "Save and Continue"
    And I click on "Save" in the page details
    Then I softly see field "Detailed Budgeting Option" as ""

  @183396 @sprint-3 @userStory-181656
  Scenario: Verify that 'Detailed Budgeting Option' is having Help text saying:  Specifies program-related fields for applicants to fill on the budget template.
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Announcements" tab
    When I navigate to "Formula" content inside "Announcements" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:FormulaAnnouncements---"
    When I enter value "Automation Runtime Announcement" into field "fieldAnnouncementName__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    And I click on "Continue" in the page details
    And I hovering mouse on help text icon inside page block detail "Detailed Budgeting Options"
    Then I softly see "Specifies program-related fields for applicants to fill on the budget template." shown as help text

  @183708 @183750 @183752 @183735 @183762 @183713 @183730 @183728 @183729 @183748 @183763 @183726 @183746 @183766 @183768 @183753 @183755 @183725 @183727 @183721 @183767 @183707 @sprint-3 @userStory-181659 @UmangParekh
  Scenario: Verify that all the section-level actions are  present in the Invited Applicants section of Formula Announcement
  | Verify that the Invited Applicants section's default sorting is by Applicant
  | Verify that the table shows Total Allocations across pages
  | Verify that if the excel sheet contains any unwanted information, all the error messages on upload should have row numbers listed
  | Verify that if the excel sheet contains multiple rows of the same organization codes, there is a validation message for allocation level n/a
  | Verify that if the excel sheet contains organization codes that do not exist is the system, there is a validation message
  | Verify that if the excel sheet contains organization codes that do not have only numbers, there is a validation message
  | Verify that if the excel sheet contains school codes that do not exist is the system, there is a validation message
  | Verify that if the excel sheet contains school codes that do not have only numbers, there is a validation message
  | Verify that if the excel sheet does not contain applicant name or school name, has system populates the Applicant based on Org Code, and School based on the School Code in the Invited Applications and Allocations section
  | Verify that if the excel sheet does not contain data there is a validation message
  | Verify that if the excel sheet does not contain organization codes or school code, there is a validation message
  | Verify that if the user deletes a row in the downloaded Excel, and then upload the Excel, the system should not delete the corresponding rows in the Invited Applicants section.
  | Verify that the system shows me an error message if the combination of school and subrecipient organization specified in my Excel is invalid.
  | Verify that When I am uploading allocations by school, I see that the system shows me an error message if I upload allocation for an inactive school
  | Verify that the 'Allocation' is not required for the announcement when I submit the announcement for approval
  | Verify that the 'Allocation' is not required for the announcement when I publish the announcement
  | Verify that user can add rows or update existing rows in Excel, and upload the updated data in the Excel to the Invited Applicants section using the 'Upload Excel' action
  | Verify that user sees an error message if user tries to upload an Excel with more than one row for a given applicant and school code combination if the allocation-level is 'By Applicant and School'.
  | Verify that when user clicks the 'Download in Excel' action button, I see that the downloaded Excel shows all records already entered in the Invited Applicants section when the allocation level is "By Applicant and School".
  | Verify that Error message on upload: "Row x - The school specified in the row does not belong to the applicant organization specified in the same row."
  | Verify that when user clicks the 'Download in Excel' action button, I see that the downloaded Excel shows all records already entered in the Invited Applicants section when the allocation level is "By Applicant"
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Announcements" tab
    When I navigate to "Formula" content inside "Announcements" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:FormulaAnnouncements---"
    When I enter value "Automation Runtime Announcement" into field "fieldAnnouncementName__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    And I click on "Continue" in the page details
    When I enter value "No" into field "fieldIsMatchRequired__c"
    When I enter value "No" into field "fieldRiskAssessment_Required__c"
    When I enter value "No" into field "fieldIsNegotiationsAllowed__c"
    When I enter value "By Applicant" into field "fieldSCDE_Allocation_Level__c"
    And I click modal button "Save and Continue"
    #183708
    Then I softly can see top right button "Download in Excel" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
    Then I softly can see top right button "Upload Excel" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
    Then I softly can see top right button "Delete Selected" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
    Then I softly can see top right button "Delete All" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
    Then I softly cannot see top right button "Add organizations" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
    #183750
    And I click on top right button "Upload Excel" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
    When I switch to iframe with id "SoleSourceAwardOrganizationsiframeContentId"
    When I upload file "SortByApplicant.xlsx" into library
    And I pause execution for "3" seconds
    And I click modal button "Upload File"
    Then I softly see value "REI Systems, Inc." for title "Applicant" inside table "---tableID:-:AnnouncementInvitedApplicants---"
    Then I softly see value "TEXAS BEAR CREEK STORAGE" for title "Applicant" inside table "---tableID:-:AnnouncementInvitedApplicants---"
    #183752
    Then I softly see value "$700.00" for title "Allocation" against the value "Grand Total" inside table "---tableID:-:AnnouncementInvitedApplicants---"
    And I click on "Remove" icon for "1212" inside flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
    And I click on "Remove" icon for "1234" inside flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
    #183735 #183762 #183713 #183730
    And I click on top right button "Download in Excel" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
    And I close modal by clicking the top right x button
    And I click on top right button "Upload Excel" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
    When I switch to iframe with id "SoleSourceAwardOrganizationsiframeContentId"
    When I upload file "UPExcelByApplicant.xlsx" into library
    And I pause execution for "3" seconds
    And I click modal button "Upload File"
    Then I softly see the following messages in the page details contains:
      | Row Number - 4 - Final Allocation - Invalid Amount format: A50
      | Row Number 5 - Org Code : 1212 is entered more than once in the Excel. Please remove the duplicate entries and retry uploading.
      | Row Number 6 - Org Code: 4321 does not exist in the system.
      | Row Number - 7 - Negative value (-100) is not allowed in "Allocation"
      | Row Number 8 - Org Code: 4162AC must be numeric.
    And I wait for "3" seconds
    And I close modal by clicking the top right x button
    #183728 #183729
    And I navigate to "Announcements" tab
    When I navigate to "Formula" content inside "Announcements" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:FormulaAnnouncements---"
    When I enter value "Automation Runtime Announcement" into field "fieldAnnouncementName__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    And I click on "Continue" in the page details
    When I enter value "No" into field "fieldIsMatchRequired__c"
    When I enter value "No" into field "fieldRiskAssessment_Required__c"
    When I enter value "No" into field "fieldIsNegotiationsAllowed__c"
    When I enter value "School" into field "fieldSCDE_Detailed_Budgeting_Options__c"
    When I enter value "By Applicant and School" into field "fieldSCDE_Allocation_Level__c"
    And I click modal button "Save and Continue"
    And I click on top right button "Download in Excel" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
    And I close modal by clicking the top right x button
    And I click on top right button "Upload Excel" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
    When I switch to iframe with id "SoleSourceAwardOrganizationsiframeContentId"
    When I upload file "UPExcelByApplicantAndSchool.xlsx" into library
    And I pause execution for "3" seconds
    And I click modal button "Upload File"
    Then I softly see the following messages in the page details contains:
      | Row Number 2 - School Code: 866 does not exist in the system.
      | Row Number 3 - School Code: 123ABC must be numeric.
    And I wait for "3" seconds
    And I close modal by clicking the top right x button
    #183748
    And I click on top right button "Download in Excel" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
    And I close modal by clicking the top right x button
    And I click on top right button "Upload Excel" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
    When I switch to iframe with id "SoleSourceAwardOrganizationsiframeContentId"
    When I upload file "AppWithSchoolCode.xlsx" into library
    And I pause execution for "3" seconds
    And I click modal button "Upload File"
    Then I softly see value "TEXAS BEAR CREEK STORAGE" for title "Applicant" inside table "---tableID:-:AnnouncementInvitedApplicants---"
    Then I softly see value "Wright Middle" for title "School" inside table "---tableID:-:AnnouncementInvitedApplicants---"
    And I click on "Remove" icon for "1212" inside flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
    #183763
    And I click on top right button "Download in Excel" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
    And I close modal by clicking the top right x button
    And I click on top right button "Upload Excel" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
    When I switch to iframe with id "SoleSourceAwardOrganizationsiframeContentId"
    When I upload file "EmptyFile.xlsx" into library
    And I pause execution for "3" seconds
    And I click modal button "Upload File"
    Then I softly see the following messages in the page details contains:
      | The uploaded Excel file must contain data.
    And I wait for "3" seconds
    And I close modal by clicking the top right x button
    #183726
    And I click on top right button "Download in Excel" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
    And I close modal by clicking the top right x button
    And I click on top right button "Upload Excel" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
    When I switch to iframe with id "SoleSourceAwardOrganizationsiframeContentId"
    When I upload file "OrgCodeOnly.xlsx" into library
    And I pause execution for "3" seconds
    And I click modal button "Upload File"
    Then I softly see the following messages in the page details contains:
      | School Code is required. Verify that all Excel rows contain a value for School Code.
    When I upload file "SchoolCodeOnly.xlsx" into library
    And I pause execution for "3" seconds
    And I click modal button "Upload File"
    Then I softly see the following messages in the page details contains:
      | Org Code is required. Verify that all Excel rows contain a value for Org Code.
    And I wait for "3" seconds
    And I close modal by clicking the top right x button
    #183746
    And I click on top right button "Download in Excel" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
    And I close modal by clicking the top right x button
    And I click on top right button "Upload Excel" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
    When I switch to iframe with id "SoleSourceAwardOrganizationsiframeContentId"
    When I upload file "RowsDeleted.xlsx" into library
    And I pause execution for "3" seconds
    And I click modal button "Upload File"
    Then I softly see value "$0.00" for title "Allocation" inside table "---tableID:-:AnnouncementInvitedApplicants---"
    Then I softly see value "Wright Middle" for title "School" inside table "---tableID:-:AnnouncementInvitedApplicants---"
   #183766
    And I click on top right button "Download in Excel" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
    And I close modal by clicking the top right x button
    And I click on top right button "Upload Excel" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
    When I switch to iframe with id "SoleSourceAwardOrganizationsiframeContentId"
    When I upload file "CombinationOrgAndSchool.xlsx" into library
    And I pause execution for "3" seconds
    And I click modal button "Upload File"
    Then I softly see the following messages in the page details contains:
      | Row Number 2 - School Code: 201006 does not exist in the system.
    And I wait for "3" seconds
    And I close modal by clicking the top right x button
    #183768
    And I click on top right button "Download in Excel" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
    And I close modal by clicking the top right x button
    And I click on top right button "Upload Excel" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
    When I switch to iframe with id "SoleSourceAwardOrganizationsiframeContentId"
    When I upload file "InactiveSchoolCode.xlsx" into library
    And I pause execution for "3" seconds
    And I click modal button "Upload File"
    Then I softly see the following messages in the page details contains:
      | Row Number 2 - The school specified in the row is inactive. |
    And I wait for "3" seconds
    And I close modal by clicking the top right x button
    #183753
    When I enter value "Federal" into field "fieldSCDE_Funding_Source__c"
    When I enter value "test" into field "fieldAnnouncementDescription__c"
    When I enter value "Library" into field "fieldEligibleApplicantTypes__c"
    When I enter value "200" into field "fieldApplicationDueDate__c"
    And I navigate to "Financials" sub tab
    When I enter value "1000" into field "fieldAwardFloor__c"
    When I enter value "2000" into field "fieldAwardCeiling__c"
    When I enter value "5000" into field "fieldTotalCommittedAmount__c"
    When I enter value "Unrestricted" into field "fieldSCDE_Indirect_Cost_Type__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I pause execution for "3" seconds
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementBudgetCategory---"
    When I perform quick search for "Construction" in "---tableID:-:SelectBudgetCategory---" panel
    And I check "Construction" boxes in flex table with id "---tableID:-:SelectBudgetCategory---"
    And I click on top right button "Associate" in flex table with id "---tableID:-:SelectBudgetCategory---"
    And I wait for "3" seconds
    And I navigate to "Overview" sub tab
    And I click on "Submit For Approval" in the page details
    And I softly see field "Status" as "Submitted for Approval"
    Then I softly see value "$0.00" for title "Allocation" inside table "---tableID:-:AnnouncementInvitedApplicants---"
    #183755
    When I "Approve" in the approval decision
    And I click on "Publish" in the page details
    And I softly see field "Status" as "Published"
    Then I softly see value "$0.00" for title "Allocation" inside table "---tableID:-:AnnouncementInvitedApplicants---"
    #183725
    And I click on top right button "Upload Excel" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
    When I switch to iframe with id "SoleSourceAwardOrganizationsiframeContentId"
    When I upload file "UpdateRows.xlsx" into library
    And I pause execution for "3" seconds
    And I click modal button "Upload File"
    Then I softly see value "0201001" for title "School Code" inside table "---tableID:-:AnnouncementInvitedApplicants---"
    Then I softly see value "0201002" for title "School Code" inside table "---tableID:-:AnnouncementInvitedApplicants---"
    #183727
    And I navigate to "Announcements" tab
    When I navigate to "Formula" content inside "Announcements" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:FormulaAnnouncements---"
    When I enter value "Automation Runtime Announcement" into field "fieldAnnouncementName__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    And I click on "Continue" in the page details
    When I enter value "No" into field "fieldIsMatchRequired__c"
    When I enter value "No" into field "fieldRiskAssessment_Required__c"
    When I enter value "No" into field "fieldIsNegotiationsAllowed__c"
    When I enter value "School" into field "fieldSCDE_Detailed_Budgeting_Options__c"
    When I enter value "By Applicant and School" into field "fieldSCDE_Allocation_Level__c"
    And I click modal button "Save and Continue"
    And I click on top right button "Upload Excel" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
    When I switch to iframe with id "SoleSourceAwardOrganizationsiframeContentId"
    When I upload file "DuplicateEntries.xlsx" into library
    And I pause execution for "3" seconds
    And I click modal button "Upload File"
    Then I softly see the following messages in the page details contains:
      | Row Number 3 - Org Code / School Code combination is entered more than once in the Excel. Please remove the duplicate entries and retry uploading.
    And I wait for "3" seconds
    And I close modal by clicking the top right x button
    #183721
    And I click on top right button "Upload Excel" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
    When I switch to iframe with id "SoleSourceAwardOrganizationsiframeContentId"
    When I upload file "AppWithSchoolCode.xlsx" into library
    And I pause execution for "3" seconds
    And I click modal button "Upload File"
    And I click on top right button "Download in Excel" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
    And I close modal by clicking the top right x button
    Then I softly see value "1212" for title "Org Code" inside table "---tableID:-:AnnouncementInvitedApplicants---"
    Then I softly see value "TEXAS BEAR CREEK STORAGE" for title "Applicant" inside table "---tableID:-:AnnouncementInvitedApplicants---"
    Then I softly see value "0160016" for title "School Code" inside table "---tableID:-:AnnouncementInvitedApplicants---"
    Then I softly see value "Wright Middle" for title "School" inside table "---tableID:-:AnnouncementInvitedApplicants---"
    Then I softly see value "$500.00" for title "Allocation" inside table "---tableID:-:AnnouncementInvitedApplicants---"
    Then I softly see value "Jim bob" for title "Program Manager" inside table "---tableID:-:AnnouncementInvitedApplicants---"
    #183767
    And I click on top right button "Download in Excel" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
    And I close modal by clicking the top right x button
    And I click on top right button "Upload Excel" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
    When I switch to iframe with id "SoleSourceAwardOrganizationsiframeContentId"
    When I upload file "SpecifiedCombination.xlsx" into library
    And I pause execution for "3" seconds
    And I click modal button "Upload File"
    Then I softly see the following messages in the page details contains:
      | Row Number 2 - The school specified in the row does not belong to the applicant organization specified in the same row.
    And I wait for "3" seconds
    And I close modal by clicking the top right x button
    #183707
    And I navigate to "Announcements" tab
    When I navigate to "Formula" content inside "Announcements" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:FormulaAnnouncements---"
    When I enter value "Automation Runtime Announcement" into field "fieldAnnouncementName__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    And I click on "Continue" in the page details
    When I enter value "No" into field "fieldIsMatchRequired__c"
    When I enter value "No" into field "fieldRiskAssessment_Required__c"
    When I enter value "No" into field "fieldIsNegotiationsAllowed__c"
    When I enter value "By Applicant" into field "fieldSCDE_Allocation_Level__c"
    And I click modal button "Save and Continue"
    And I click on top right button "Upload Excel" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
    When I switch to iframe with id "SoleSourceAwardOrganizationsiframeContentId"
    When I upload file "AppWithSchoolCode.xlsx" into library
    And I pause execution for "3" seconds
    And I click modal button "Upload File"
    And I click on top right button "Download in Excel" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
    And I close modal by clicking the top right x button
    Then I softly see value "1212" for title "Org Code" inside table "---tableID:-:AnnouncementInvitedApplicants---"
    Then I softly see value "TEXAS BEAR CREEK STORAGE" for title "Applicant" inside table "---tableID:-:AnnouncementInvitedApplicants---"
    Then I softly see value "$500.00" for title "Allocation" inside table "---tableID:-:AnnouncementInvitedApplicants---"
    Then I softly see value "Jim bob" for title "Program Manager" inside table "---tableID:-:AnnouncementInvitedApplicants---"

  @183098 @sprint-3 @userStory-182490
  Scenario: Verify that when I create a new announcement (All Announcements), Internal Program looks up shows only programs for which I am the owner
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Announcements" tab
    And I click on top right button "New" in flex table with id "---tableID:-:Announcements---"
    When I click search icon for look up field "Program ID Lookup (New Window)" with clearing
    When I perform quick search for "PG-SCDE-0105" in "---tableID:-:ProgramModalQuickSearch---" panel
    Then I softly see value "PG-SCDE-0105" for title "EGMS ID" inside table "---tableID:-:Modal---"

  @183100 @sprint-3 @userStory-182490
  Scenario: Verify that when I create a new announcement (Competitive Announcements), Internal Program looks up shows only programs for which I am the owner
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Announcements" tab
    When I navigate to "Competitive" content inside "Announcements" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:CompetitiveAnnouncements---"
    When I click search icon for look up field "Program ID Lookup (New Window)" with clearing
    When I perform quick search for "PG-SCDE-0105" in "---tableID:-:ProgramModalQuickSearch---" panel
    Then I softly see value "PG-SCDE-0105" for title "EGMS ID" inside table "---tableID:-:Modal---"

  @183099 @sprint-3 @userStory-182490
  Scenario: Verify that when I create a new announcement (Formula Announcements), Internal Program looks up shows only programs for which I am the owner
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Announcements" tab
    When I navigate to "Formula" content inside "Announcements" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:FormulaAnnouncements---"
    When I click search icon for look up field "Program ID Lookup (New Window)" with clearing
    When I perform quick search for "PG-SCDE-0105" in "---tableID:-:ProgramModalQuickSearch---" panel
    Then I softly see value "PG-SCDE-0105" for title "EGMS ID" inside table "---tableID:-:Modal---"

  @183588 @183586 @183616 @183619 @183610 @183592 @183634 @183595 @183622 @183653 @183654 @183625 @183585 @183580 @183579 @183578 @183577 @183573 @183575 @183581 @sprint-3 @userStory-182464 @UmangParekh
    Scenario: Verify that if "Allocation Level" is "By Applicant and School" then the 'Invited Applicants and Allocations' table has Org Code (Org code associated to the applicant organization)
    | Verify that if "Allocation Level" is "By Applicant and School" then the Invited Applicants and Allocations table has  Multi-record select box
    | Verify that if "Allocation Level" is "By Applicant and School" then the Invited Applicants and Allocations table has columns Allocation (Currency field allowing two decimals)
    | Verify that if "Allocation Level" is "By Applicant and School" then the Invited Applicants and Allocations table has columns Program Manager  (Text field 255 char limit)
    | Verify that if "Allocation Level" is "By Applicant and School" then the Invited Applicants and Allocations table has columns School (Formula field showing school name associated with School Code)
    | Verify that if "Allocation Level" is "By Applicant and School" then the Invited Applicants and Allocations table has the  Applicant (Name of the organization)
    | Verify that if "Allocation Level" is "By Applicant and School" then the Invited Applicants and Allocations table has the following columns  Actions with Edit and Remove
    | Verify that if "Allocation Level" is "By Applicant and School" then the Invited Applicants and Allocations table has the School Code (7 digit text field)
    | Verify that if "Allocation Level" is "By Applicant and School" then the Invited Applicants and Allocations table has columns Last Updated By i. The Last updated column shows the last updated date and time for each allocation entry
    | Verify that there is no validation preventing the Allocation amount to be below the Subaward Floor amount or above the Subaward Ceiling amount.  Validation is running when Saving the Invited Applicants and Allocations table
    | Verify that there is no validation preventing the Allocation amounts to be higher than the Estimated Total Funding
    | Verify that if "Allocation Level" is "By Applicant and School" then the Invited Applicants and Allocations table has columns Last Updated By ii. I should not see the Last Updated By column in the downloaded Excel
    | Verify that if "Allocation Level" is "By Applicant" then the 'Invited Applicants and Allocations' table has  Actions with Edit and Remove
    | Verify that if "Allocation Level" is "By Applicant" then the 'Invited Applicants and Allocations' table has  Last Updated By  i. The Last updated column shows the last updated date and time for each allocation entry
    | Verify that if "Allocation Level" is "By Applicant" then the 'Invited Applicants and Allocations' table has  Program Manager  (Text field 255 char limit)
    | Verify that if "Allocation Level" is "By Applicant" then the 'Invited Applicants and Allocations' table has Allocation (Currency field allowing two decimals)
    | Verify that if "Allocation Level" is "By Applicant" then the 'Invited Applicants and Allocations' table has Applicant (Name of the organization)
    | Verify that if "Allocation Level" is "By Applicant" then the 'Invited Applicants and Allocations' table has Multi-record select box
    | Verify that if "Allocation Level" is "By Applicant" then the 'Invited Applicants and Allocations' table has Org Code (Org code associated to the applicant organization)
    | Verify that if "Allocation Level" is "By Applicant" then the 'Invited Applicants and Allocations' table has  Last Updated By  ii.  I should not see the Last Updated By column in the downloaded Excel
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Announcements" tab
    When I navigate to "Formula" content inside "Announcements" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:FormulaAnnouncements---"
    When I enter value "Automation Runtime Announcement" into field "fieldAnnouncementName__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    And I click on "Continue" in the page details
    When I enter value "No" into field "fieldIsMatchRequired__c"
    When I enter value "No" into field "fieldRiskAssessment_Required__c"
    When I enter value "No" into field "fieldIsNegotiationsAllowed__c"
    When I enter value "School" into field "fieldSCDE_Detailed_Budgeting_Options__c"
    When I enter value "By Applicant and School" into field "fieldSCDE_Allocation_Level__c"
    And I click modal button "Save and Continue"
    #183588
    And I click on top right button "Upload Excel" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
    When I switch to iframe with id "SoleSourceAwardOrganizationsiframeContentId"
    When I upload file "AppWithSchoolCode.xlsx" into library
    And I pause execution for "3" seconds
    And I click modal button "Upload File"
    And I pause execution for "3" seconds
    Then I softly see "Org Code" in flex table header "---tableID:-:AnnouncementInvitedApplicants---"
    Then I softly see value "1212" for title "Org Code" inside table "---tableID:-:AnnouncementInvitedApplicants---"
    #183586
    Then I see "Total Records:1" inside flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
    #183616
    Then I softly see "Allocation" in flex table header "---tableID:-:AnnouncementInvitedApplicants---"
    Then I softly see value "$500.00" for title "Allocation" inside table "---tableID:-:AnnouncementInvitedApplicants---"
    #183619
    Then I softly see "Program Manager" in flex table header "---tableID:-:AnnouncementInvitedApplicants---"
    Then I softly see value "Jim bob" for title "Program Manager" inside table "---tableID:-:AnnouncementInvitedApplicants---"
    #183610
    Then I softly see "School" in flex table header "---tableID:-:AnnouncementInvitedApplicants---"
    Then I softly see value "Wright Middle" for title "School" inside table "---tableID:-:AnnouncementInvitedApplicants---"
    #183592
    Then I softly see "Applicant" in flex table header "---tableID:-:AnnouncementInvitedApplicants---"
    Then I softly see value "TEXAS BEAR CREEK STORAGE" for title "Applicant" inside table "---tableID:-:AnnouncementInvitedApplicants---"
    #183634
    Then I softly can see row level action button "Edit" against "1212" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
    Then I softly can see row level action button "Remove" against "1212" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
    #183595
    Then I softly see "School Code" in flex table header "---tableID:-:AnnouncementInvitedApplicants---"
    Then I softly see value "0160016" for title "School Code" inside table "---tableID:-:AnnouncementInvitedApplicants---"
    #183622
    Then I softly see "Last Updated By" in flex table header "---tableID:-:AnnouncementInvitedApplicants---"
    Then I softly see value "Automation PM" for title "Last Updated By" inside table "---tableID:-:AnnouncementInvitedApplicants---"
    Then I softly see "Last Updated" in flex table header "---tableID:-:AnnouncementInvitedApplicants---"
    #183653
    And I click on top right button "Upload Excel" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
    When I switch to iframe with id "SoleSourceAwardOrganizationsiframeContentId"
    When I upload file "SortByApplicant.xlsx" into library
    And I pause execution for "3" seconds
    And I click modal button "Upload File"
    And I pause execution for "3" seconds
    And I navigate to "Financials" sub tab
    When I enter value "32000" into field "fieldAwardFloor__c"
    When I enter value "30000" into field "fieldAwardCeiling__c"
    And I click on "Save" in the page details
    Then I softly see the following messages in the page details contains:
    | Award Ceiling value should be greater than Award Floor |
    #183654
    And I click on "Edit" in the page details
    When I enter value "400" into field "fieldTotalCommittedAmount__c"
    And I click on "Save" in the page details
    Then I softly see field "Estimated Total Funding" as "400"
    #183625
    And I navigate to "Overview" sub tab
    And I click on top right button "Download in Excel" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
    And I close modal by clicking the top right x button
    Then I softly cannot see "Last Updated By" in downloaded xls or csv file "govgrants"
    #183585
    And I navigate to "Announcements" tab
    When I navigate to "Formula" content inside "Announcements" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:FormulaAnnouncements---"
    When I enter value "Automation Runtime Announcement" into field "fieldAnnouncementName__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    And I click on "Continue" in the page details
    When I enter value "No" into field "fieldIsMatchRequired__c"
    When I enter value "No" into field "fieldRiskAssessment_Required__c"
    When I enter value "No" into field "fieldIsNegotiationsAllowed__c"
    When I enter value "By Applicant" into field "fieldSCDE_Allocation_Level__c"
    And I click modal button "Save and Continue"
    And I click on top right button "Upload Excel" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
    When I switch to iframe with id "SoleSourceAwardOrganizationsiframeContentId"
    When I upload file "AppWithSchoolCode.xlsx" into library
    And I pause execution for "3" seconds
    And I click modal button "Upload File"
    And I pause execution for "3" seconds
    Then I softly can see row level action button "Edit" against "1212" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
    Then I softly can see row level action button "Remove" against "1212" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
    #183580
    Then I softly see "Last Updated By" in flex table header "---tableID:-:AnnouncementInvitedApplicants---"
    Then I softly see value "Automation PM" for title "Last Updated By" inside table "---tableID:-:AnnouncementInvitedApplicants---"
    Then I softly see "Last Updated" in flex table header "---tableID:-:AnnouncementInvitedApplicants---"
    #183579
    Then I softly see "Program Manager" in flex table header "---tableID:-:AnnouncementInvitedApplicants---"
    Then I softly see value "Jim bob" for title "Program Manager" inside table "---tableID:-:AnnouncementInvitedApplicants---"
    #183578
    Then I softly see "Allocation" in flex table header "---tableID:-:AnnouncementInvitedApplicants---"
    Then I softly see value "$500.00" for title "Allocation" inside table "---tableID:-:AnnouncementInvitedApplicants---"
    #183577
    Then I softly see "Applicant" in flex table header "---tableID:-:AnnouncementInvitedApplicants---"
    Then I softly see value "TEXAS BEAR CREEK STORAGE" for title "Applicant" inside table "---tableID:-:AnnouncementInvitedApplicants---"
    #183573
    Then I see "Total Records:1" inside flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
    #183575
    Then I softly see "Org Code" in flex table header "---tableID:-:AnnouncementInvitedApplicants---"
    Then I softly see value "1212" for title "Org Code" inside table "---tableID:-:AnnouncementInvitedApplicants---"
    #183581
    And I click on top right button "Download in Excel" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
    And I close modal by clicking the top right x button
    Then I softly cannot see "Last Updated By" in downloaded xls or csv file "govgrants"









