@application @regression @scdeRegression
Feature: Validate all scenarios related to application

  @182263 @182264 @sprint-2 @userStory-178222
  Scenario: Verify that there is a 'Sequence Number' column on the Forms section under Files tab (Applications)
  |Verify the forms are listed in the ascending order of the sequence numbers listed on the form package (Applications)
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
    When I enter value "By Applicant and School" into field "fieldSCDE_Allocation_Level__c"
    When I enter value "School" into field "fieldSCDE_Detailed_Budgeting_Options__c"
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
    When I enter value "2022" into field "fieldSCDE_Fiscal_Year__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Overview" sub tab
    And I click on top right button "Upload Excel" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
    When I switch to iframe with id "SoleSourceAwardOrganizationsiframeContentId"
    When I upload file "AppWithSchoolCode.xlsx" into library
    And I click modal button "Upload File"
    And I pause execution for "2" seconds
    And I click on "Submit For Approval" in the page details
    And I softly see field "Status" as "Submitted for Approval"
    When I "Approve" in the approval decision
    And I click on "Publish" in the page details
    And I softly see field "Status" as "Published"
    And I logout
    Given I am on "SUBPORTAL" portal
    When I login as "SPI" user
    And I navigate to "Opportunities" tab
    When I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:PublishedOpportunities---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:PublishedOpportunities---"
    When I click on "Qualify" in the page details
    And I softly see field "Status" as "Qualified"
    And I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    And I click on "Save" in the page details
    #182263
    And I navigate to "Forms and Files" sub tab
    Then I softly see "Sequence Number" in flex table header "---tableID:-:ApplicationForms---"
    #182264
    Then I softly see content of expected column "Sequence Number" is in "ASC" order of table id "---tableID:-:ApplicationForms---"

  @182203 @182200 @182152 @sprint-2 @userStory-178223
  Scenario: Verify that the forms are listed in the ascending order by default
  |Verify that the forms are listed in the ascending order of the sequence numbers listed on the form package.
  |Verify that there is a 'Sequence Number' column (as the first column) on the Forms section of the Forms
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
    When I enter value "By Applicant and School" into field "fieldSCDE_Allocation_Level__c"
    When I enter value "School" into field "fieldSCDE_Detailed_Budgeting_Options__c"
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
    When I enter value "2022" into field "fieldSCDE_Fiscal_Year__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Overview" sub tab
    And I click on top right button "Upload Excel" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
    When I switch to iframe with id "SoleSourceAwardOrganizationsiframeContentId"
    When I upload file "AppWithSchoolCode.xlsx" into library
    And I click modal button "Upload File"
    And I pause execution for "2" seconds
    And I click on "Submit For Approval" in the page details
    And I softly see field "Status" as "Submitted for Approval"
    When I "Approve" in the approval decision
    And I click on "Publish" in the page details
    And I softly see field "Status" as "Published"
    And I logout
    Given I am on "SUBPORTAL" portal
    When I login as "SPI" user
    And I navigate to "Opportunities" tab
    When I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:PublishedOpportunities---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:PublishedOpportunities---"
    When I click on "Qualify" in the page details
    And I softly see field "Status" as "Qualified"
    And I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    And I click on "Save" in the page details
    And I navigate to "Forms and Files" sub tab
      #182152
    Then I see only the following ordered headers in table with id "---tableID:-:ApplicationForms---" :
      | Sequence Number | Form Name | Mandatory? | Is Form Validated? | Last Modified By | Last Modified Date | Actions |
      #182203 #182200
    Then I softly see content of expected column "Sequence Number" is in "ASC" order of table id "---tableID:-:ApplicationForms---"

  @181730 @181729 @181731 @181726 @181725 @181749 @sprint-2 @userStory-179997
  Scenario: Verify that 'Allocation Amount' field is non editable field
  |Verify that 'Allocation Amount' field is read only field
  |Verify that 'Allocation Amount' field auto-populates with the allocation amount for the program from the related 'Formula' announcement (from Invited Applicants section - Allocation Amount column)
  |Verify that  Allocation Amount field in  'Allocation Amount and Indirect Costs'  section
  |Verify that 'Allocation Amount and Indirect Costs'  above the Budget Periods section in Application's budget tab
  |Verify that the allocation amount updates in application while application Status Created
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
    When I enter value "By Applicant and School" into field "fieldSCDE_Allocation_Level__c"
    When I enter value "School" into field "fieldSCDE_Detailed_Budgeting_Options__c"
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
    When I enter value "2022" into field "fieldSCDE_Fiscal_Year__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Overview" sub tab
    And I click on top right button "Upload Excel" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
    When I switch to iframe with id "SoleSourceAwardOrganizationsiframeContentId"
    When I upload file "AppWithSchoolCode.xlsx" into library
    And I click modal button "Upload File"
    And I pause execution for "2" seconds
    And I click on "Submit For Approval" in the page details
    And I softly see field "Status" as "Submitted for Approval"
    When I "Approve" in the approval decision
    And I click on "Publish" in the page details
    And I softly see field "Status" as "Published"
    And I logout
    Given I am on "SUBPORTAL" portal
    When I login as "SPI" user
    And I navigate to "Opportunities" tab
    When I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:PublishedOpportunities---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:PublishedOpportunities---"
    When I click on "Qualify" in the page details
    And I softly see field "Status" as "Qualified"
    And I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
      #181730 #181729
    And I navigate to "Budget" sub tab
    Then I softly see that "fieldSCDE_Allocation_Amount__c" rendered in view mode only
    And I click on "Save" in the page details
      #181731
    Then I softly see field "Allocation Amount" as "$500"
     #181726
    Then I softly see field "Allocation Amount" inside "Allocation, Admin, and Indirect Costs" section
     #181725
    Then I see only the following ordered page blocks :
      | Allocation, Admin, and Indirect Costs | Allocations By School | Budget Periods | Budget Narrative |
    #181749
    And I logout
    Given I am on "INTERNAL" portal
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Announcements" tab
    When I navigate to "Formula" content inside "Announcements" subheader on left panel
    When I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:FormulaAnnouncements---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:FormulaAnnouncements---"
    And I click on top right button "Upload Excel" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
    When I switch to iframe with id "SoleSourceAwardOrganizationsiframeContentId"
    When I upload file "UpdatedAllocationAmount.xlsx" into library
    And I click modal button "Upload File"
    And I pause execution for "2" seconds
    And I logout
    Given I am on "SUBPORTAL" portal
    When I login as "SPI" user
    And I navigate to "Applications" tab
    When I navigate to "Applications" content inside "Applications" subheader on left panel
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:ApplicationTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:ApplicationTableId---"
    And I navigate to "Budget" sub tab
    Then I softly see field "Allocation Amount" as "$1,000"

  @181750 @sprint-2 @userStory-179997
  Scenario: Verify that the allocation amount updates in application while application Status 'Submitted'
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Announcements" tab
    When I navigate to "Formula" content inside "Announcements" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:FormulaAnnouncements---"
    When I enter value "Automation Runtime Announcement" into field "fieldAnnouncementName__c"
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
    And I navigate to "Financials" sub tab
    When I enter value "1000" into field "fieldAwardFloor__c"
    When I enter value "2000" into field "fieldAwardCeiling__c"
    When I enter value "5000" into field "fieldTotalCommittedAmount__c"
    When I enter value "Unrestricted" into field "fieldSCDE_Indirect_Cost_Type__c"
    When I enter value "2022" into field "fieldSCDE_Fiscal_Year__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Overview" sub tab
    And I click on top right button "Upload Excel" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
    When I switch to iframe with id "SoleSourceAwardOrganizationsiframeContentId"
    When I upload file "AppWithSchoolCode.xlsx" into library
    And I click modal button "Upload File"
    And I pause execution for "2" seconds
    And I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Application" inside flex table with id "---tableID:-:AnnouncementBusinessForms---"
    When I enter value "VD_TestPackage" into field "fieldPackageConfig__c"
    And I click modal button "Save"
    And I click on "Submit For Approval" in the page details
    And I softly see field "Status" as "Submitted for Approval"
    When I "Approve" in the approval decision
    And I click on "Publish" in the page details
    And I softly see field "Status" as "Published"
    And I logout
    Given I am on "SUBPORTAL" portal
    When I login as "SPI" user
    And I navigate to "Opportunities" tab
    When I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:PublishedOpportunities---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:PublishedOpportunities---"
    When I click on "Qualify" in the page details
    And I softly see field "Status" as "Qualified"
    And I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    When I enter value "project abstract" into field "fieldProjectAbstract__c"
    When I enter value "checked" into field "fieldAcknowledgment4__c"
    And I navigate to "Budget" sub tab
    When I enter value "justification" into field "fieldJustification__c"
    And I click on "Save" in the page details
    And I expand nested table containing column value "BP01"
    And I edit the following rows inline in flex table with id "---tableID:-:ApplicationBudgetPeriod---" by clicking "Edit" :
      | Category Name             | Budget |
      | 110 - General Instruction | 1000   |
    And I navigate to "Overview" sub tab
    When I click on "Edit" icon for "State Coordinator" inside flex table with id "---tableID:-:ApplicationContacts---"
    When I enter value "checked" into field "IsKeyContact__c"
    And I click on top right button "Save" in flex table with id "---tableID:-:ApplicationContacts---"
    And I navigate to "Forms and Files" sub tab
    When I click on "Edit" icon for "No" inside flex table with id "---tableID:-:ApplicationForms---"
    When I enter the following values into flex table with id "---tableID:-:StakeholderParticipants---" by clicking "Add" :
      | Participant’s Name | School Name | Role    | Stakeholder Representation |
      | Automation         | Dixie High  | Teacher | School within District     |
    And I click on "Save" in the page details
    And I click on "Validate" in the page details
    And I click on "Submit Application" in the page details
    And I softly see field "Status" as "Submitted to Grantor"
    And I logout
    Given I am on "INTERNAL" portal
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Announcements" tab
    When I navigate to "Formula" content inside "Announcements" subheader on left panel
    When I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:FormulaAnnouncements---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:FormulaAnnouncements---"
    And I click on top right button "Upload Excel" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
    When I switch to iframe with id "SoleSourceAwardOrganizationsiframeContentId"
    When I upload file "UpdatedAllocationAmount.xlsx" into library
    And I click modal button "Upload File"
    And I pause execution for "2" seconds
    And I logout
    Given I am on "SUBPORTAL" portal
    When I login as "SPI" user
    And I navigate to "Applications" tab
    When I navigate to "Applications" content inside "Applications" subheader on left panel
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:ApplicationTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:ApplicationTableId---"
    And I navigate to "Budget" sub tab
    Then I softly see field "Allocation Amount" as "$1,000"

  @181761 @sprint-2 @userStory-179997
  Scenario: Verify that the allocation amount updates in application while application Status 'Review Initiated'
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Announcements" tab
    When I navigate to "Formula" content inside "Announcements" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:FormulaAnnouncements---"
    When I enter value "Automation Runtime Announcement" into field "fieldAnnouncementName__c"
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
    And I navigate to "Financials" sub tab
    When I enter value "1000" into field "fieldAwardFloor__c"
    When I enter value "2000" into field "fieldAwardCeiling__c"
    When I enter value "5000" into field "fieldTotalCommittedAmount__c"
    When I enter value "Unrestricted" into field "fieldSCDE_Indirect_Cost_Type__c"
    When I enter value "2022" into field "fieldSCDE_Fiscal_Year__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Overview" sub tab
    And I click on top right button "Upload Excel" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
    When I switch to iframe with id "SoleSourceAwardOrganizationsiframeContentId"
    When I upload file "AppWithSchoolCode.xlsx" into library
    And I click modal button "Upload File"
    And I pause execution for "2" seconds
    And I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Application" inside flex table with id "---tableID:-:AnnouncementBusinessForms---"
    When I enter value "VD_TestPackage" into field "fieldPackageConfig__c"
    And I click modal button "Save"
    And I click on "Submit For Approval" in the page details
    And I softly see field "Status" as "Submitted for Approval"
    When I "Approve" in the approval decision
    And I click on "Publish" in the page details
    And I softly see field "Status" as "Published"
    And I logout
    Given I am on "SUBPORTAL" portal
    When I login as "SPI" user
    And I navigate to "Opportunities" tab
    When I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:PublishedOpportunities---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:PublishedOpportunities---"
    When I click on "Qualify" in the page details
    And I softly see field "Status" as "Qualified"
    And I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    When I enter value "project abstract" into field "fieldProjectAbstract__c"
    When I enter value "checked" into field "fieldAcknowledgment4__c"
    And I navigate to "Budget" sub tab
    When I enter value "justification" into field "fieldJustification__c"
    And I click on "Save" in the page details
    And I expand nested table containing column value "BP01"
    And I edit the following rows inline in flex table with id "---tableID:-:ApplicationBudgetPeriod---" by clicking "Edit" :
      | Category Name             | Budget |
      | 110 - General Instruction | 1000   |
    And I navigate to "Overview" sub tab
    When I click on "Edit" icon for "State Coordinator" inside flex table with id "---tableID:-:ApplicationContacts---"
    When I enter value "checked" into field "IsKeyContact__c"
    And I click on top right button "Save" in flex table with id "---tableID:-:ApplicationContacts---"
    And I navigate to "Forms and Files" sub tab
    When I click on "Edit" icon for "No" inside flex table with id "---tableID:-:ApplicationForms---"
    When I enter the following values into flex table with id "---tableID:-:StakeholderParticipants---" by clicking "Add" :
      | Participant’s Name | School Name | Role    | Stakeholder Representation |
      | Automation         | Dixie High  | Teacher | School within District     |
    And I click on "Save" in the page details
    And I click on "Validate" in the page details
    And I click on "Submit Application" in the page details
    And I softly see field "Status" as "Submitted to Grantor"
    And I save the field containing "EGMS ID" as "APPID"
    When I re-login to "As a Grantor" app as "PM" user on "INTERNAL" portal
    And I navigate to "Applications" tab
    When I navigate to "Reviews" content inside "Application Reviews" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:ApplicationReviews---" panel
    And I click on "Initiate Review Process" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:ApplicationReviews---"
    And I navigate to "Applications" tab
    When I navigate to "Applications" content inside "Applications" subheader on left panel
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:ApplicationTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:ApplicationTableId---"
    And I softly see field "Status" as "Review Initiated"
    And I navigate to "Announcements" tab
    When I navigate to "Formula" content inside "Announcements" subheader on left panel
    When I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:FormulaAnnouncements---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:FormulaAnnouncements---"
    And I click on top right button "Upload Excel" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
    When I switch to iframe with id "SoleSourceAwardOrganizationsiframeContentId"
    When I upload file "UpdatedAllocationAmount.xlsx" into library
    And I click modal button "Upload File"
    And I pause execution for "2" seconds
    And I logout
    Given I am on "SUBPORTAL" portal
    When I login as "SPI" user
    And I navigate to "Applications" tab
    When I navigate to "Applications" content inside "Applications" subheader on left panel
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:ApplicationTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:ApplicationTableId---"
    And I navigate to "Budget" sub tab
    Then I softly see field "Allocation Amount" as "$1,000"

  @181764 @sprint-2 @userStory-179997 @wip
  Scenario: Verify that the allocation amount should not updated in application while application Status 'Reviewed'
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Announcements" tab
    When I navigate to "Formula" content inside "Announcements" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:FormulaAnnouncements---"
    When I enter value "Automation Runtime Announcement" into field "fieldAnnouncementName__c"
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
    And I navigate to "Financials" sub tab
    When I enter value "1000" into field "fieldAwardFloor__c"
    When I enter value "2000" into field "fieldAwardCeiling__c"
    When I enter value "5000" into field "fieldTotalCommittedAmount__c"
    When I enter value "Unrestricted" into field "fieldSCDE_Indirect_Cost_Type__c"
    When I enter value "2022" into field "fieldSCDE_Fiscal_Year__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Overview" sub tab
    And I click on top right button "Upload Excel" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
    When I switch to iframe with id "SoleSourceAwardOrganizationsiframeContentId"
    When I upload file "AppWithSchoolCode.xlsx" into library
    And I click modal button "Upload File"
    And I pause execution for "2" seconds
    And I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Application" inside flex table with id "---tableID:-:AnnouncementBusinessForms---"
    When I enter value "VD_TestPackage" into field "fieldPackageConfig__c"
    And I click modal button "Save"
    And I click on "Submit For Approval" in the page details
    And I softly see field "Status" as "Submitted for Approval"
    When I "Approve" in the approval decision
    And I click on "Publish" in the page details
    And I softly see field "Status" as "Published"
    And I logout
    Given I am on "SUBPORTAL" portal
    When I login as "SPI" user
    And I navigate to "Opportunities" tab
    When I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:PublishedOpportunities---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:PublishedOpportunities---"
    When I click on "Qualify" in the page details
    And I softly see field "Status" as "Qualified"
    And I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    When I enter value "project abstract" into field "fieldProjectAbstract__c"
    When I enter value "checked" into field "fieldAcknowledgment4__c"
    And I navigate to "Budget" sub tab
    When I enter value "justification" into field "fieldJustification__c"
    And I click on "Save" in the page details
    And I expand nested table containing column value "BP01"
    And I edit the following rows inline in flex table with id "---tableID:-:ApplicationBudgetPeriod---" by clicking "Edit" :
      | Category Name             | Budget |
      | 110 - General Instruction | 1000   |
    And I navigate to "Overview" sub tab
    When I click on "Edit" icon for "State Coordinator" inside flex table with id "---tableID:-:ApplicationContacts---"
    When I enter value "checked" into field "IsKeyContact__c"
    And I click on top right button "Save" in flex table with id "---tableID:-:ApplicationContacts---"
    And I navigate to "Forms and Files" sub tab
    When I click on "Edit" icon for "No" inside flex table with id "---tableID:-:ApplicationForms---"
    When I enter the following values into flex table with id "---tableID:-:StakeholderParticipants---" by clicking "Add" :
      | Participant’s Name | School Name | Role    | Stakeholder Representation |
      | Automation         | Dixie High  | Teacher | School within District     |
    And I click on "Save" in the page details
    And I click on "Validate" in the page details
    And I click on "Submit Application" in the page details
    And I softly see field "Status" as "Submitted to Grantor"
    And I save the field containing "EGMS ID" as "APPID"
    When I re-login to "As a Grantor" app as "PM" user on "INTERNAL" portal
    And I navigate to "Applications" tab
    When I navigate to "Reviews" content inside "Application Reviews" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:ApplicationReviews---" panel
    And I click on "Initiate Review Process" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:ApplicationReviews---"
    And I navigate to "Related Log" sub tab
    #Pre-screen Review
    And I click on "View" icon for "Pre-Screen Review" inside flex table with id "---tableID:-:AnnouncementReviewStep---"
    And I click on "Edit" icon for "Pre-Screen" inside flex table with id "---tableID:-:ReviewForms---"
    And I enter value "1" into field "MinimumNumberOfReviewers__c"
    And I enter value "5" into field "DueInDays__c"
    And I enter value "Checked" into field "Required__c"
    And I click on top right button "Save" in flex table with id "---tableID:-:ReviewForms---"
    When I enter the following values into flex table with id "---tableID:-:Reviewer---" by clicking "Add" :
      | Reviewer      |
      | Automation PM |
    And I click on "Assign" icon for "Automation PM" inside flex table with id "---tableID:-:Reviewer---"
    And I check "{SavedValue:APPID}" boxes in flex table with id "---tableID:-:AssignApplicationToUser---"
    And I click on top right button "Assign" in flex table with id "---tableID:-:AssignApplicationToUser---"
    And I pause execution for "5" seconds
    And I refresh the page
    When I check "all" boxes in flex table with id "---tableID:-:Reviews---"
    When I click on top right button "Send for Review" in flex table with id "---tableID:-:Reviews---"
    When I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    And I perform quick search for "{SavedValue:APPID}" in "---tableID:-:ApplicationPendingTask---" panel
    And I click on "Start" icon for "{SavedValue:APPID}" inside flex table with id "---tableID:-:ApplicationPendingTask---"
    When I complete filling in the Review form with recommendation "Recommended"
    And I click on "Save" in the page details
    And I wait for "6" seconds
    When I click on "Submit" in the page details without processing
    When I click alert button "OK"
    And I wait for "5" seconds
    And I navigate to "Applications" tab
    When I navigate to "Reviews" content inside "Application Reviews" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:ApplicationReviews---" panel
    And I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:ApplicationReviews---"
    And I navigate to "Related Log" sub tab
    And I click on "View" icon for "Pre-Screen Review" inside flex table with id "---tableID:-:AnnouncementReviewStep---"
    And I check "{SavedValue:APPID}" boxes in flex table with id "---tableID:-:ReviewApplication---"
    When I click on top right button "Promote to Next Step" in flex table with id "---Application:-:ApplicationPromoteTONextStep---"
    And I click on "Next Review Step" in the page details
    When I edit the following rows inline in flex table with id "---tableID:-:ReviewForms---" by clicking "Edit" :
      | Form Name         | Due in Days |
      | Program Review    | 5           |
      | Fiscal Review     | 5           |
      | Compliance Review | 5           |
    When I enter the following values into flex table with id "---tableID:-:ApplicationReviewer---" by clicking "Add" :
      | Reviewer      |
      | Automation PM |
    And I click on "Assign" icon for "Automation PM" inside flex table with id "---tableID:-:Reviewer---"
    And I check "All" boxes in flex table with id "---tableID:-:AssignAppToUsergrid---"
    And I click on top right button "Assign" in flex table with id "---tableID:-:AssignAppToUsergrid---"
    And I pause execution for "5" seconds
    And I refresh the page
    When I check "all" boxes in flex table with id "---tableID:-:Reviews---"
    When I click on top right button "Send for Review" in flex table with id "---tableID:-:Reviews---"
    And I pause execution for "5" seconds
    #Fiscal Review
    And I navigate to "Applications" tab
    When I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    And I perform quick search for "{SavedValue:APPID}" in "---tableID:-:ApplicationPendingTask---" panel
    And I click on "Start" icon for "{SavedValue:APPID}" inside flex table with id "---tableID:-:ApplicationPendingTask---"
    When I complete filling in the Review form with recommendation "Recommended"
    And I click on "Save" in the page details
    And I wait for "6" seconds
    When I click on "Submit" in the page details without processing
    When I click alert button "OK"
    And I wait for "5" seconds
    #Program Review
    And I navigate to "Applications" tab
    When I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    And I perform quick search for "{SavedValue:APPID}" in "---tableID:-:ApplicationPendingTask---" panel
    And I click on "Start" icon for "{SavedValue:APPID}" inside flex table with id "---tableID:-:ApplicationPendingTask---"
    When I complete filling in the Review form with recommendation "Recommended"
    And I click on "Save" in the page details
    And I wait for "6" seconds
    When I click on "Submit" in the page details without processing
    When I click alert button "OK"
    And I wait for "5" seconds
    #Compliance Review
    And I navigate to "Applications" tab
    When I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    And I perform quick search for "{SavedValue:APPID}" in "---tableID:-:ApplicationPendingTask---" panel
    And I click on "Start" icon for "{SavedValue:APPID}" inside flex table with id "---tableID:-:ApplicationPendingTask---"
    When I complete filling in the Review form with recommendation "Recommended"
    And I click on "Save" in the page details
    And I wait for "6" seconds
    When I click on "Submit" in the page details without processing
    When I click alert button "OK"
    And I wait for "5" seconds
    And I navigate to "Applications" tab
    When I navigate to "Reviews" content inside "Application Reviews" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:ApplicationReviews---" panel
    And I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:ApplicationReviews---"
    And I navigate to "Related Log" sub tab
    And I click on "View" icon for "SME Review" inside flex table with id "---tableID:-:AnnouncementReviewStep---"
    And I check "{SavedValue:APPID}" boxes in flex table with id "---tableID:-:ReviewApplication---"
    When I click on top right button "Promote to Next Step" in flex table with id "---tableID:-:ReviewApplication---"
    And I click on "Next Review Step" in the page details
    #Management Review
    When I edit the following rows inline in flex table with id "---tableID:-:ReviewForms---" by clicking "Edit" :
      | Form Name         | Due in Days |
      | Management Review | 5           |
    When I enter the following values into flex table with id "---tableID:-:Reviewer---" by clicking "Add" :
      | Reviewer      |
      | Automation PM |
    And I click on "Assign" icon for "Automation PM" inside flex table with id "---tableID:-:Reviewer---"
    And I check "All" boxes in flex table with id "---tableID:-:AssignApplicationToUser---"
    And I click on top right button "Assign" in flex table with id "---tableID:-:AssignApplicationToUser---"
    And I refresh the page
    And I pause execution for "5" seconds
    When I check "all" boxes in flex table with id "---tableID:-:Reviews---"
    When I click on top right button "Send for Review" in flex table with id "---tableID:-:Reviews---"
    And I pause execution for "3" seconds
    And I navigate to "Applications" tab
    When I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    And I perform quick search for "{SavedValue:APPID}" in "---tableID:-:ApplicationPendingTask---" panel
    And I click on "Start" icon for "{SavedValue:APPID}" inside flex table with id "---tableID:-:ApplicationPendingTask---"
    When I complete filling in the Review form with recommendation "Recommended"
    And I click on "Save" in the page details
    And I wait for "6" seconds
    When I click on "Submit" in the page details without processing
    When I click alert button "OK"
    And I wait for "5" seconds
    #Promote To FDM
    And I navigate to "Applications" tab
    When I navigate to "Reviews" content inside "Application Reviews" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:ApplicationReviews---" panel
    And I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:ApplicationReviews---"
    And I navigate to "Related Log" sub tab
    And I click on "View" icon for "Management Review" inside flex table with id "---tableID:-:AnnouncementReviewStep------"
    And I check "{SavedValue:APPID}" boxes in flex table with id "---tableID:-:ReviewApplication---"
    When I click on top right button "Promote to FDM" in flex table with id "---tableID:-:ReviewApplication---"
    When I navigate to "Funding Decision Memos (FDM)" content inside "Application Reviews" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:FDMtableId---" panel
    And I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:FDMtableId---"
    And I click on "Edit" in the page details
    And I enter value "SA" into field "fieldGrantCode__c"
    And I enter value "Justification Automation" into field "fieldJustification__c"
    And I click on "Save" in the page details
    When I edit the following rows inline in flex table with id "---tableID:-:fdmRecommnedApplication---" by clicking "Edit" :
      | Application Title                            | Recommended Budget | Recommend for Funding | Comments           |
      | {SavedValue:Automation Runtime Announcement} | 2000               | Yes                   | Automation Comment |
    And I pause execution for "3" seconds
    And I click on "Submit for Approval" in the page details
    When I "Approve" in the approval decision
    And I navigate to "Applications" tab
    When I navigate to "Applications" content inside "Applications" subheader on left panel
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:ApplicationTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:ApplicationTableId---"
    And I softly see field "Status" as "Reviewed"
    And I navigate to "Announcements" tab
    When I navigate to "Formula" content inside "Announcements" subheader on left panel
    When I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:FormulaAnnouncements---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:FormulaAnnouncements---"
    And I click on top right button "Upload Excel" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
    When I switch to iframe with id "SoleSourceAwardOrganizationsiframeContentId"
    When I upload file "UpdatedAllocationAmount.xlsx" into library
    And I click modal button "Upload File"
    And I pause execution for "2" seconds
    And I logout
    Given I am on "SUBPORTAL" portal
    When I login as "SPI" user
    And I navigate to "Applications" tab
    When I navigate to "Applications" content inside "Applications" subheader on left panel
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:ApplicationTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:ApplicationTableId---"
    And I navigate to "Budget" sub tab
    Then I softly see field "Allocation Amount" as "$1,000"

  @183467 @183470 @183472 @183465 @sprint-3 @userStory-181779 @UmangParekh
  Scenario: Verify that all Forms section is re-labeled to be "Forms" for External view
  | Verify that sequence of the sections in "Forms and Files" tab for External view
  | Verify that the columns on the Forms table tab for External view
  | Verify that the Files tab is relabeled to be "Forms and Files" for External view
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Announcements" tab
    When I navigate to "Formula" content inside "Announcements" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:FormulaAnnouncements---"
    When I enter value "Automation Runtime Announcement" into field "fieldAnnouncementName__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    And I pause execution for "3" seconds
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
    When I enter value "2022" into field "fieldSCDE_Fiscal_Year__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementBudgetCategory---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I wait for "3" seconds
    And I navigate to "Overview" sub tab
    And I click on top right button "Upload Excel" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
    When I switch to iframe with id "SoleSourceAwardOrganizationsiframeContentId"
    When I upload file "AppWithSchoolCode.xlsx" into library
    And I click modal button "Upload File"
    And I pause execution for "2" seconds
    And I click on "Submit For Approval" in the page details
    And I softly see field "Status" as "Submitted for Approval"
    When I "Approve" in the approval decision
    And I click on "Publish" in the page details
    And I softly see field "Status" as "Published"
    And I logout
    Given I am on "SUBPORTAL" portal
    When I login as "SPI" user
    And I navigate to "Opportunities" tab
    When I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:PublishedOpportunities---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:PublishedOpportunities---"
    When I click on "Qualify" in the page details
    And I softly see field "Status" as "Qualified"
    And I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    #183467
    And I navigate to "Forms and Files" sub tab
    Then I softly see "Forms" Panel Header
    #183470
    Then I see only the following ordered page blocks :
      | Forms | Supporting Documents Checklist | Application Files | Notes |
    #183472
    Then I see only the following ordered headers in table with id "---tableID:-:ApplicationForms---" :
      | Sequence Number | Form Name | Mandatory? | Is Form Validated? | Last Modified By | Last Modified Date | Actions |
    #183465
    Then I softly can see "Forms and Files" sub tab at view detail page

  @183483 @183484 @183486 @183481 @sprint-3 @userStory-182031 @UmangParekh
  Scenario: Verify that all Forms section is re-labeled to be "Forms" for Internal view
  | Verify that sequence of the sections in "Forms and Files" tab for Internal view
  | Verify that the columns on the Forms table tab for Internal view
  | Verify that the Files tab is relabeled to be "Forms and Files" for Internal view
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Announcements" tab
    When I navigate to "Formula" content inside "Announcements" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:FormulaAnnouncements---"
    When I enter value "Automation Runtime Announcement" into field "fieldAnnouncementName__c"
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
    And I navigate to "Financials" sub tab
    When I enter value "1000" into field "fieldAwardFloor__c"
    When I enter value "2000" into field "fieldAwardCeiling__c"
    When I enter value "5000" into field "fieldTotalCommittedAmount__c"
    When I enter value "Unrestricted" into field "fieldSCDE_Indirect_Cost_Type__c"
    When I enter value "2022" into field "fieldSCDE_Fiscal_Year__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Overview" sub tab
    And I click on top right button "Upload Excel" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
    When I switch to iframe with id "SoleSourceAwardOrganizationsiframeContentId"
    When I upload file "AppWithSchoolCode.xlsx" into library
    And I click modal button "Upload File"
    And I pause execution for "2" seconds
    And I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Application" inside flex table with id "---tableID:-:AnnouncementBusinessForms---"
    When I enter value "VD_TestPackage" into field "fieldPackageConfig__c"
    And I click modal button "Save"
    And I click on "Submit For Approval" in the page details
    And I softly see field "Status" as "Submitted for Approval"
    When I "Approve" in the approval decision
    And I click on "Publish" in the page details
    And I softly see field "Status" as "Published"
    And I logout
    Given I am on "SUBPORTAL" portal
    When I login as "SPI" user
    And I navigate to "Opportunities" tab
    When I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:PublishedOpportunities---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:PublishedOpportunities---"
    When I click on "Qualify" in the page details
    And I softly see field "Status" as "Qualified"
    And I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    When I enter value "project abstract" into field "fieldProjectAbstract__c"
    When I enter value "checked" into field "fieldAcknowledgment4__c"
    And I navigate to "Budget" sub tab
    When I enter value "justification" into field "fieldJustification__c"
    And I click on "Save" in the page details
    And I expand nested table containing column value "BP01"
    And I edit the following rows inline in flex table with id "---tableID:-:ApplicationBudgetPeriod---" by clicking "Edit" :
      | Category Name             | Budget |
      | 110 - General Instruction | 1000   |
    And I navigate to "Overview" sub tab
    When I click on "Edit" icon for "State Coordinator" inside flex table with id "---tableID:-:ApplicationContacts---"
    When I enter value "checked" into field "IsKeyContact__c"
    And I click on top right button "Save" in flex table with id "---tableID:-:ApplicationContacts---"
    And I navigate to "Forms and Files" sub tab
    When I click on "Edit" icon for "No" inside flex table with id "---tableID:-:ApplicationForms---"
    When I enter the following values into flex table with id "---tableID:-:StakeholderParticipants---" by clicking "Add" :
      | Participant’s Name | School Name | Role    | Stakeholder Representation |
      | Automation         | Dixie High  | Teacher | School within District     |
    And I click on "Save" in the page details
    And I click on "Validate" in the page details
    And I click on "Submit Application" in the page details
    And I softly see field "Status" as "Submitted to Grantor"
    And I logout
    Given I am on "INTERNAL" portal
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Announcements" tab
    When I navigate to "Formula" content inside "Announcements" subheader on left panel
    When I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:FormulaAnnouncements---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:FormulaAnnouncements---"
    #183483
    And I navigate to "Forms and Files" sub tab
    Then I softly see "Forms" Panel Header
    #183484
    Then I see only the following ordered page blocks :
      | Forms | Supporting Documents Checklist | Application Files | Notes |
    #183486
    Then I see only the following ordered headers in table with id "---tableID:-:ApplicationForms---" :
      | Sequence Number | Form Name | Mandatory? | Is Form Validated? | Last Modified By | Last Modified Date | Actions |
    #183481
    Then I softly can see "Forms and Files" sub tab at view detail page

  @184011 @183996 @184009 @183987 @183983 @183991 @sprint-3 @userStory-182275
  Scenario: Verify that the "Allocations By School" table on the Budget Tab updates when allocations for schools are updated on the Announcement.
  |Verify "Allocations By School" section shows the data from the related announcement's invited applicants and allocation section for the organization.
  |Verify that the application's Allocations by School table is also is updated if Invited Applicants and Allocations section is updated to add or remove a school.
  |Verify "Allocations By School" section appears on the application when Allocation Level is 'By Applicant and School' on the formula announcement.
  |Verify "Allocations By School" section on the application's Budget tab
  |Verify "Allocations By School" section has a table columns: i.  School Code ii. School iii. Allocation iv. Program Manager
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
    When I enter value "By Applicant and School" into field "fieldSCDE_Allocation_Level__c"
    When I enter value "School" into field "fieldSCDE_Detailed_Budgeting_Options__c"
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
    When I enter value "2022" into field "fieldSCDE_Fiscal_Year__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Overview" sub tab
    And I click on top right button "Upload Excel" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
    When I switch to iframe with id "SoleSourceAwardOrganizationsiframeContentId"
    When I upload file "AppWithSchoolCode.xlsx" into library
    And I click modal button "Upload File"
    And I pause execution for "2" seconds
    And I click on "Submit For Approval" in the page details
    And I softly see field "Status" as "Submitted for Approval"
    When I "Approve" in the approval decision
    And I click on "Publish" in the page details
    And I softly see field "Status" as "Published"
    And I logout
    Given I am on "SUBPORTAL" portal
    When I login as "SPI" user
    And I navigate to "Opportunities" tab
    When I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:PublishedOpportunities---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:PublishedOpportunities---"
    When I click on "Qualify" in the page details
    And I softly see field "Status" as "Qualified"
    And I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    And I click on "Save" in the page details
    And I logout
    Given I am on "INTERNAL" portal
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Announcements" tab
    When I navigate to "Formula" content inside "Announcements" subheader on left panel
    When I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:FormulaAnnouncements---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:FormulaAnnouncements---"
    And I click on top right button "Upload Excel" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
    When I switch to iframe with id "SoleSourceAwardOrganizationsiframeContentId"
    When I upload file "UpdatedAllocationAmount.xlsx" into library
    And I click modal button "Upload File"
    And I pause execution for "2" seconds
    And I logout
    Given I am on "SUBPORTAL" portal
    When I login as "SPI" user
    And I navigate to "Applications" tab
    When I navigate to "Applications" content inside "Applications" subheader on left panel
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:ApplicationTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:ApplicationTableId---"
    And I navigate to "Budget" sub tab
      #184011 #183996 #184009
    Then I softly see value "0160003" for title "School Code" inside table "---tableID:-:AllocationsBySchool---"
    Then I softly see value "0160016" for title "School Code" inside table "---tableID:-:AllocationsBySchool---"
    Then I softly see value "Dixie High" for title "School" inside table "---tableID:-:AllocationsBySchool---"
    Then I softly see value "Wright Middle" for title "School" inside table "---tableID:-:AllocationsBySchool---"
    Then I softly see value "$500.00" for title "Allocation" inside table "---tableID:-:AllocationsBySchool---"
    Then I softly see value "Jim bob" for title "Program Manager" inside table "---tableID:-:AllocationsBySchool---"
      #183987 #183983
    Then I softly see "Allocations By School" page block displayed
      #183991
    Then I see only the following ordered headers in table with id "---tableID:-:AllocationsBySchool---" :
      | School Code | School | Allocation | Program Manager |

  @185303 @185304 @185631 @185628 @185602 @185630 @185627 @185612 @185607 @185575 @185305 @sprint-4 @userStory-184591 @UmangParekh
  Scenario: Verify that after save revisions tab changes in the application, I see a 'Cancel Revision' button on the application
  | Verify that If I cancel the revision, I see a warning message (in a pop-up) with an option to continue or not continue
  | Verify that If user click YES in the pop-up then in the Revisions tab user see 'Explanation of Revisions Needed' section shows data that user saved before canceled
  | Verify that If user click YES in the pop-up then in the Revisions tab, user see Application Section for Revisions Shows data that I saved before I canceled
  | Verify that If user click YES in the pop-up then user see Applicant Name as read-only in the Revisions tab
  | Verify that If user click YES in the pop-up then user see In the 'Available Forms for Revisions' section, user see all forms associated with the application. I see that the 'Allow Edits' column is checked if I checked it for a given form before I canceled
  | Verify that If user click YES in the pop-up then user see Revised Due Date (that was saved before user canceled) in Revision tab as read only
  | Verify that If user click YES in the pop-up then user see Revised Submitted Date is blank in the Revisions tab
  | Verify that If user click YES in the pop-up then user see Revision Created Date as read-only in the Revisions tab
  | Verify that If user click YES in the pop-up then user see Revision Request Status " Canceled" as read-only in the Revisions tab
  | Verify that after cancelation, I see that the Decision Status for the application in the review step is reset to 'Pending'. The application status remains 'Review Initiated'
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Announcements" tab
    When I navigate to "Formula" content inside "Announcements" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:FormulaAnnouncements---"
    When I enter value "Automation Runtime Announcement" into field "fieldAnnouncementName__c"
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
    And I navigate to "Financials" sub tab
    When I enter value "1000" into field "fieldAwardFloor__c"
    When I enter value "2000" into field "fieldAwardCeiling__c"
    When I enter value "5000" into field "fieldTotalCommittedAmount__c"
    When I enter value "Unrestricted" into field "fieldSCDE_Indirect_Cost_Type__c"
    When I enter value "2022" into field "fieldSCDE_Fiscal_Year__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Overview" sub tab
    And I click on top right button "Upload Excel" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
    When I switch to iframe with id "SoleSourceAwardOrganizationsiframeContentId"
    When I upload file "AppWithSchoolCode.xlsx" into library
    And I click modal button "Upload File"
    And I pause execution for "2" seconds
    And I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Application" inside flex table with id "---tableID:-:AnnouncementBusinessForms---"
    When I enter value "VD_TestPackage" into field "fieldPackageConfig__c"
    And I click modal button "Save"
    And I click on "Submit For Approval" in the page details
    And I softly see field "Status" as "Submitted for Approval"
    When I "Approve" in the approval decision
    And I click on "Publish" in the page details
    And I softly see field "Status" as "Published"
    And I logout
    Given I am on "SUBPORTAL" portal
    When I login as "SPI" user
    And I navigate to "Opportunities" tab
    When I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:PublishedOpportunities---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:PublishedOpportunities---"
    When I click on "Qualify" in the page details
    And I softly see field "Status" as "Qualified"
    And I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    When I enter value "project abstract" into field "fieldProjectAbstract__c"
    When I enter value "checked" into field "fieldAcknowledgment4__c"
    And I navigate to "Budget" sub tab
    When I enter value "justification" into field "fieldJustification__c"
    And I click on "Save" in the page details
    And I expand nested table containing column value "BP01"
    And I edit the following rows inline in flex table with id "---tableID:-:ApplicationBudgetPeriod---" by clicking "Edit" :
      | Category Name             | Budget |
      | 110 - General Instruction | 1000   |
    And I navigate to "Overview" sub tab
    When I click on "Edit" icon for "State Coordinator" inside flex table with id "---tableID:-:ApplicationContacts---"
    When I enter value "checked" into field "IsKeyContact__c"
    And I click on top right button "Save" in flex table with id "---tableID:-:ApplicationContacts---"
    And I navigate to "Forms and Files" sub tab
    When I click on "Edit" icon for "No" inside flex table with id "---tableID:-:ApplicationForms---"
    When I enter the following values into flex table with id "---tableID:-:StakeholderParticipants---" by clicking "Add" :
      | Participant’s Name | School Name | Role    | Stakeholder Representation |
      | Automation         | Dixie High  | Teacher | School within District     |
    And I click on "Save" in the page details
    And I click on "Validate" in the page details
    And I click on "Submit Application" in the page details
    And I softly see field "Status" as "Submitted to Grantor"
    And I save the field containing "EGMS ID" as "APPID"
    When I re-login to "As a Grantor" app as "PM" user on "INTERNAL" portal
    And I navigate to "Applications" tab
    When I navigate to "Reviews" content inside "Application Reviews" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:ApplicationReviews---" panel
    And I click on "Initiate Review Process" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:ApplicationReviews---"
    And I navigate to "Applications" tab
    When I navigate to "Applications" content inside "Applications" subheader on left panel
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:ApplicationTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:ApplicationTableId---"
    And I softly see field "Status" as "Review Initiated"
    When I navigate to "Reviews" content inside "Application Reviews" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:ApplicationReviews---" panel
    And I navigate to "Related Log" sub tab
    And I click on "View" icon for "Pre-Screen Review" inside flex table with id "---tableID:-:AnnouncementReviewStep---"
    And I click on "Edit" icon for "Pre-Screen" inside flex table with id "---tableID:-:ReviewForms---"
    And I enter value "1" into field "MinimumNumberOfReviewers__c"
    And I enter value "5" into field "DueInDays__c"
    And I enter value "Checked" into field "Required__c"
    And I click on top right button "Save" in flex table with id "---tableID:-:ReviewForms---"
    When I enter the following values into flex table with id "---tableID:-:Reviewer---" by clicking "Add" :
      | Reviewer      |
      | Automation PM |
    And I click on "Assign" icon for "Automation PM" inside flex table with id "---tableID:-:Reviewer---"
    And I check "{SavedValue:APPID}" boxes in flex table with id "---tableID:-:AssignApplicationToUser---"
    And I click on top right button "Assign" in flex table with id "---tableID:-:AssignApplicationToUser---"
    And I pause execution for "5" seconds
    And I refresh the page
    And I click on "Request Revision" icon for "Automation PM" inside flex table with id "---tableID:-:Reviewer---"
    And I navigate to "Revisions" sub tab
    When I enter value "200" into field "NegotiationDueDate__c"
    When I enter value "Overview" into field "fieldApplicationSectionsForRevision__c"
    When I enter value "Test" into field "fieldExplanationOfRevisionsNeeded__c"
    And I click on top right button "Save" in flex table with id "---tableID:-:ApplicationRevisions---"
    #185303
    Then I softly can see top right button "Cancel Revision" in flex table with id "---tableID:-:ApplicationRevisions---"
    #185304
    And I click on top right button "Cancel Revision" in flex table with id "---tableID:-:ApplicationRevisions---"
    Then I softly see the following messages in the page details contains:
      | The revisions will no longer be editable. Are you sure you are ready to cancel the revisions? |
    #185631
    When I navigate to "Applications" content inside "Applications" subheader on left panel
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:ApplicationTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:ApplicationTableId---"
    And I navigate to "Revisions" sub tab
    Then I softly see field "Details" inside "Explanation of Revisions Needed" section
    #185628
    Then I softly see field "Application Section for Revisions" inside "Request Revision Details" section
    #185602
    Then I softly see that "Applicant Name" rendered in view mode only
    #185630
    Then I softly see value "Title II, Part A - Private Schools" for title "Form Name" inside table "---tableID:-:ApplicationFormsRevision---"
    Then I softly see value "Title II, Part A - Stakeholder Participants" for title "Form Name" inside table "---tableID:-:ApplicationFormsRevision---"
    Then I softly see value "checked" for title "Allow Edits?" inside table "---tableID:-:ApplicationFormsRevision---"
    #185627
    Then I softly see that "Due Date" rendered in view mode only
    #185612
    Then I softly see field "Revised Submitted Date" inside "Request Revision Details" section
    #185607
    Then I softly see that "Revision Created Date" rendered in view mode only
    #185575
    Then I softly see field "Revision Request Status" as "Canceled"
    Then I softly see that "Revision Request Status" rendered in view mode only
   #185305
    When I navigate to "Reviews" content inside "Application Reviews" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:ApplicationReviews---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:ApplicationReviews---"
    And I navigate to "Related Log" sub tab
    And I click on "View" icon for "Pre-Screen Review" inside flex table with id "---tableID:-:AnnouncementReviewSteps---"
    And I softly see field "Status" as "In Progress"
    Then I softly see value "Pending" for title "Decision Status" inside table "---tableID:-:AnnouncementPreScreenReview---"

  @185293 @185521 @185523 @185535 @185321 @185538 @185319 @185286 @185282 @185285 @185323 @185237 @185324 @185537 @185299 @185289 @185287 @sprint-4 @userStory-184581 @UmangParekh
  Scenario: Verify that 'Explanation of Revisions Needed' is text field accept up to 4,000 chars
  | Verify that after save changes in revisions tab, user not see the request revision action (dollar icon) in the review step for the application
  | Verify that after saved changes in revisions tab, the 'Decision Status' for the application for the review step is updated from "Pending" to "Revision In-Progress"
  | Verify that after saved revisions tab changes in the application,  Revision Request Status (status  = Created) shown as read only
  | Verify that after saving my changes, I can Edit and save data in the fields in only the Revisions tab
  | Verify that Applicant Name is read only after save revisions tab changes in the application
  | Verify that in Revision tab, after saving my changes, I see 4 options (Edit, Send to Subrecipients, Cancel Revision, Back to Current Review Step) on the application header
  | Verify that Application Section for Revisions filed is Multi-picklist in the 'Revisions' tab
  | Verify that in the 'Revisions' tab, date field accept only a future date
  | Verify that in the 'Revisions' tab, date field accept only a future date(Negative Scenario)
  | Verify that internal user can request revision on an application in pre-screen review step, if the review step decision status is 'Pending' and Application Status is 'Review Initiated'
  | Verify that internal user can request revision on an application in the Management review step, if the review step decision status is 'Pending' and Application Status is 'Review Initiated'
  | Verify that internal user can request revision on an application in the SME review step, if the review step decision status is 'Pending' and Application Status is 'Review Initiated'
  | Verify that Revision Created Date after save revisions tab changes in the application
  | Verify that Revision initiated Application cannot promote to the next review step
  | Verify that the 'Available Forms for Revisions' section, I can select one or more forms on which I wish to allow edit in the 'Allow Edits' column
  | Verify that the 'Available Forms for Revisions' section, I see all forms associated with the application
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Announcements" tab
    When I navigate to "Formula" content inside "Announcements" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:FormulaAnnouncements---"
    When I enter value "Automation Runtime Announcement" into field "fieldAnnouncementName__c"
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
    And I navigate to "Financials" sub tab
    When I enter value "1000" into field "fieldAwardFloor__c"
    When I enter value "2000" into field "fieldAwardCeiling__c"
    When I enter value "5000" into field "fieldTotalCommittedAmount__c"
    When I enter value "Unrestricted" into field "fieldSCDE_Indirect_Cost_Type__c"
    When I enter value "2022" into field "fieldSCDE_Fiscal_Year__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Overview" sub tab
    And I click on top right button "Upload Excel" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
    When I switch to iframe with id "SoleSourceAwardOrganizationsiframeContentId"
    When I upload file "AppWithSchoolCode.xlsx" into library
    And I click modal button "Upload File"
    And I pause execution for "2" seconds
    And I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Application" inside flex table with id "---tableID:-:AnnouncementBusinessForms---"
    When I enter value "VD_TestPackage" into field "fieldPackageConfig__c"
    And I click modal button "Save"
    And I click on "Submit For Approval" in the page details
    And I softly see field "Status" as "Submitted for Approval"
    When I "Approve" in the approval decision
    And I click on "Publish" in the page details
    And I softly see field "Status" as "Published"
    And I logout
    Given I am on "SUBPORTAL" portal
    When I login as "SPI" user
    And I navigate to "Opportunities" tab
    When I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:PublishedOpportunities---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:PublishedOpportunities---"
    When I click on "Qualify" in the page details
    And I softly see field "Status" as "Qualified"
    And I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    When I enter value "project abstract" into field "fieldProjectAbstract__c"
    When I enter value "checked" into field "fieldAcknowledgment4__c"
    And I navigate to "Budget" sub tab
    When I enter value "justification" into field "fieldJustification__c"
    And I click on "Save" in the page details
    And I expand nested table containing column value "BP01"
    And I edit the following rows inline in flex table with id "---tableID:-:ApplicationBudgetPeriod---" by clicking "Edit" :
      | Category Name             | Budget |
      | 110 - General Instruction | 1000   |
    And I navigate to "Overview" sub tab
    When I click on "Edit" icon for "State Coordinator" inside flex table with id "---tableID:-:ApplicationContacts---"
    When I enter value "checked" into field "IsKeyContact__c"
    And I click on top right button "Save" in flex table with id "---tableID:-:ApplicationContacts---"
    And I navigate to "Forms and Files" sub tab
    When I click on "Edit" icon for "No" inside flex table with id "---tableID:-:ApplicationForms---"
    When I enter the following values into flex table with id "---tableID:-:StakeholderParticipants---" by clicking "Add" :
      | Participant’s Name | School Name | Role    | Stakeholder Representation |
      | Automation         | Dixie High  | Teacher | School within District     |
    And I click on "Save" in the page details
    And I click on "Validate" in the page details
    And I click on "Submit Application" in the page details
    And I softly see field "Status" as "Submitted to Grantor"
    And I save the field containing "EGMS ID" as "APPID"
    When I re-login to "As a Grantor" app as "PM" user on "INTERNAL" portal
    And I navigate to "Applications" tab
    When I navigate to "Reviews" content inside "Application Reviews" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:ApplicationReviews---" panel
    And I click on "Initiate Review Process" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:ApplicationReviews---"
    And I navigate to "Applications" tab
    When I navigate to "Applications" content inside "Applications" subheader on left panel
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:ApplicationTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:ApplicationTableId---"
    And I softly see field "Status" as "Review Initiated"
    When I navigate to "Reviews" content inside "Application Reviews" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:ApplicationReviews---" panel
    And I navigate to "Related Log" sub tab
    And I click on "View" icon for "Pre-Screen Review" inside flex table with id "---tableID:-:AnnouncementReviewStep---"
    And I click on "Edit" icon for "Pre-Screen" inside flex table with id "---tableID:-:ReviewForms---"
    And I enter value "1" into field "MinimumNumberOfReviewers__c"
    And I enter value "5" into field "DueInDays__c"
    And I enter value "Checked" into field "Required__c"
    And I click on top right button "Save" in flex table with id "---tableID:-:ReviewForms---"
    When I enter the following values into flex table with id "---tableID:-:Reviewer---" by clicking "Add" :
      | Reviewer      |
      | Automation PM |
    And I click on "Assign" icon for "Automation PM" inside flex table with id "---tableID:-:Reviewer---"
    And I check "{SavedValue:APPID}" boxes in flex table with id "---tableID:-:AssignApplicationToUser---"
    And I click on top right button "Assign" in flex table with id "---tableID:-:AssignApplicationToUser---"
    And I pause execution for "5" seconds
    And I refresh the page
    And I click on "Request Revision" icon for "Automation PM" inside flex table with id "---tableID:-:Reviewer---"
    And I navigate to "Revisions" sub tab
    When I enter value "200" into field "NegotiationDueDate__c"
    When I enter value "Overview" into field "fieldApplicationSectionsForRevision__c"
    #185293
    When I enter value "Test" into field "fieldExplanationOfRevisionsNeeded__c"
    And I click on top right button "Save" in flex table with id "---tableID:-:ApplicationRevisions---"
    And I softly see field "Status" as "Review Initiated"
    #185521
    When I navigate to "Reviews" content inside "Application Reviews" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:ApplicationReviews---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:ApplicationReviews---"
    And I navigate to "Related Log" sub tab
    And I click on "View" icon for "Pre-Screen Review" inside flex table with id "---tableID:-:AnnouncementReviewSteps---"
    Then I softly cannot see row level action button "Request Revision" against "TEXAS BEAR CREEK STORAGE" in flex table with id "---tableID:-:ApplicationRevisions---"
    #185523
    Then I softly see value "Revision In-Progress" for title "Decision Status" inside table "---tableID:-:AnnouncementPreScreenReview---"
    #185535
    When I navigate to "Applications" content inside "Applications" subheader on left panel
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:ApplicationTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:ApplicationTableId---"
    And I navigate to "Revisions" sub tab
    Then I softly see field "Revision Request Status" as "Created"
    Then I softly see that "Revision Request Status" rendered in view mode only
    #185321
    And I click on top right button "Edit" in flex table with id "---tableID:-:AnnouncementPreScreenReview---"
    Then I softly see fields "fieldNegotiationDueDate__c" is in edit mode
    Then I softly see fields "fieldApplicationSectionsForRevision__c" is in edit mode
    Then I softly see fields "ExplanationOfRevisionsNeeded__c" is in edit mode
    #185538
    And I click on top right button "Save" in flex table with id "---tableID:-:AnnouncementPreScreenReview---"
    Then I softly see that "Applicant Name" rendered in view mode only
    #185319
    Then I softly can see top right button "Edit" in flex table with id "---tableID:-:AnnouncementPreScreenReview---"
    Then I softly can see top right button " Send to Subrecipients" in flex table with id "---tableID:-:AnnouncementPreScreenReview---"
    Then I softly can see top right button "Cancel Revision" in flex table with id "---tableID:-:AnnouncementPreScreenReview---"
    Then I softly can see top right button "Back to Current Review Step" in flex table with id "---tableID:-:AnnouncementPreScreenReview---"
    #185286
    And I click on top right button "Edit" in flex table with id "---tableID:-:AnnouncementPreScreenReview---"
    Then I softly see "Budget:Performance:Forms and Files : Forms:Forms and Files: Supporting Document Checklist :Forms and Files: Application Files:Forms and Files: Notes" inside selectbox field "fieldApplicationSectionsForRevision__c"
    #185282 #185285
    When I enter value "12/02/2021" into field "NegotiationDueDate__c"
    And I click on top right button "Save" in flex table with id "---tableID:-:AnnouncementPreScreenReview---"
    Then I softly see the text containing :
      | Revisions Tab - 'Due Date' must be in future. |
    #185323
    When I navigate to "Reviews" content inside "Application Reviews" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:ApplicationReviews---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:ApplicationReviews---"
    And I navigate to "Related Log" sub tab
    And I click on "View" icon for "Pre-Screen Review" inside flex table with id "---tableID:-:AnnouncementReviewSteps---"
    Then I softly see value "Pending" for title "Decision Status" inside table "---tableID:-:AnnouncementPreScreenReview---"
    Then I softly see value "Review Initiated" for title "Application Status" inside table "---tableID:-:AnnouncementPreScreenReview---"
    Then I softly can see row level action button "Request Revision" against "TEXAS BEAR CREEK STORAGE" in flex table with id "---tableID:-:AnnouncementPreScreenReview---"
    #185237
    And I navigate to "Applications" tab
    When I navigate to "Reviews" content inside "Application Reviews" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:ApplicationReviews---" panel
    And I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:ApplicationReviews---"
    And I navigate to "Related Log" sub tab
    And I click on "View" icon for "SME Review" inside flex table with id "---tableID:-:AnnouncementReviewStep---"
    And I check "{SavedValue:APPID}" boxes in flex table with id "---tableID:-:ReviewApplication---"
    When I click on top right button "Promote to Next Step" in flex table with id "---tableID:-:ReviewApplication---"
    And I click on "Next Review Step" in the page details
    When I edit the following rows inline in flex table with id "---tableID:-:ReviewForms---" by clicking "Edit" :
      | Form Name         | Due in Days |
      | Management Review | 5           |
    When I enter the following values into flex table with id "---tableID:-:Reviewer---" by clicking "Add" :
      | Reviewer      |
      | Automation PM |
    And I click on "Assign" icon for "Automation PM" inside flex table with id "---tableID:-:Reviewer---"
    And I check "All" boxes in flex table with id "---tableID:-:AssignApplicationToUser---"
    And I click on top right button "Assign" in flex table with id "---tableID:-:AssignApplicationToUser---"
    And I refresh the page
    And I pause execution for "5" seconds
    When I check "all" boxes in flex table with id "---tableID:-:Reviews---"
    When I click on top right button "Send for Review" in flex table with id "---tableID:-:Reviews---"
    And I pause execution for "3" seconds
    And I navigate to "Applications" tab
    When I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    And I perform quick search for "{SavedValue:APPID}" in "---tableID:-:ApplicationPendingTask---" panel
    And I click on "Start" icon for "{SavedValue:APPID}" inside flex table with id "---tableID:-:ApplicationPendingTask---"
    When I complete filling in the Review form with recommendation "Recommended"
    And I click on "Save" in the page details
    And I wait for "6" seconds
    When I click on "Submit" in the page details without processing
    When I click alert button "OK"
    And I wait for "5" seconds
    When I navigate to "Reviews" content inside "Application Reviews" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:ApplicationReviews---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:ApplicationReviews---"
    And I navigate to "Related Log" sub tab
    And I click on "View" icon for "Management Review" inside flex table with id "---tableID:-:AnnouncementReviewSteps---"
    Then I softly see value "Pending" for title "Decision Status" inside table "---tableID:-:ApplicationManagementReview---"
    Then I softly see value "Review Initiated" for title "Application Status" inside table "---tableID:-:ApplicationManagementReview---"
    Then I softly can see row level action button "Request Revision" against "TEXAS BEAR CREEK STORAGE" in flex table with id "---tableID:-:ApplicationManagementReview---"
    #185324
    #Fiscal Review
    And I navigate to "Applications" tab
    When I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    And I perform quick search for "{SavedValue:APPID}" in "---tableID:-:ApplicationPendingTask---" panel
    And I click on "Start" icon for "{SavedValue:APPID}" inside flex table with id "---tableID:-:ApplicationPendingTask---"
    When I complete filling in the Review form with recommendation "Recommended"
    And I click on "Save" in the page details
    And I wait for "6" seconds
    When I click on "Submit" in the page details without processing
    When I click alert button "OK"
    And I wait for "5" seconds
    #Program Review
    And I navigate to "Applications" tab
    When I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    And I perform quick search for "{SavedValue:APPID}" in "---tableID:-:ApplicationPendingTask---" panel
    And I click on "Start" icon for "{SavedValue:APPID}" inside flex table with id "---tableID:-:ApplicationPendingTask---"
    When I complete filling in the Review form with recommendation "Recommended"
    And I click on "Save" in the page details
    And I wait for "6" seconds
    When I click on "Submit" in the page details without processing
    When I click alert button "OK"
    And I wait for "5" seconds
    #Compliance Review
    And I navigate to "Applications" tab
    When I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    And I perform quick search for "{SavedValue:APPID}" in "---tableID:-:ApplicationPendingTask---" panel
    And I click on "Start" icon for "{SavedValue:APPID}" inside flex table with id "---tableID:-:ApplicationPendingTask---"
    When I complete filling in the Review form with recommendation "Recommended"
    And I click on "Save" in the page details
    And I wait for "6" seconds
    When I click on "Submit" in the page details without processing
    When I click alert button "OK"
    And I wait for "5" seconds
    When I navigate to "Reviews" content inside "Application Reviews" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:ApplicationReviews---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:ApplicationReviews---"
    And I navigate to "Related Log" sub tab
    And I click on "View" icon for "SME Review" inside flex table with id "---tableID:-:AnnouncementReviewSteps---"
    Then I softly see value "Pending" for title "Decision Status" inside table "---tableID:-:ApplicationSmeReview---"
    Then I softly see value "Review Initiated" for title "Application Status" inside table "---tableID:-:ApplicationSmeReview---"
    Then I softly can see row level action button "Request Revision" against "TEXAS BEAR CREEK STORAGE" in flex table with id "---tableID:-:ApplicationSmeReview---"
    #185537
    When I navigate to "Applications" content inside "Applications" subheader on left panel
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:ApplicationTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:ApplicationTableId---"
    And I navigate to "Revisions" sub tab
    Then I softly see that "Revision Created Date" rendered in view mode only
    #185299
    When I navigate to "Reviews" content inside "Application Reviews" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:ApplicationReviews---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:ApplicationReviews---"
    And I navigate to "Related Log" sub tab
    And I click on top right button "Promote to next step" in flex table with id "---tableID:-:AnnouncementReviewSteps---"
    Then I softly see the following messages in the page details contains:
      | One or more applications selected for promotion are not eligible for promotion because the application is already promoted or a revision is in progress. |
    #185289
    When I navigate to "Applications" content inside "Applications" subheader on left panel
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:ApplicationTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:ApplicationTableId---"
    And I navigate to "Revisions" sub tab
    Then I softly see value "checked" for title "Allow Edits?" inside table "---tableID:-:ApplicationFormsRevision---"
    #185287
    Then I softly see value "Title II, Part A - Private Schools" for title "Form Name" inside table "---tableID:-:ApplicationFormsRevision---"
    Then I softly see value "Title II, Part A - Stakeholder Participants" for title "Form Name" inside table "---tableID:-:ApplicationFormsRevision---"

  @186363 @186156 @186232 @186233 @186249 @186251 @186247 @186239 @186244 @186240 @186236 @186237 @187634 @sprint-4 @userStory-184588 @UmangParekh
  Scenario: Verify that after application sending to the sub-recipient, user see that the Decision Status for the application in the review step is set to 'Revision In-Progress' and application status is set to 'Revision Initiated'
  | Verify that after user saved the revision changes on an application, user can see 'Send to Subrecipient' button on the application
  | Verify that If I try to send the application to the sub-recipient after selecting 'Files and Forms: Forms' as one of the options but without checking the 'Allow Edits' box for any form, then I get the error message
  | Verify that If I try to send the application to the sub-recipient without selecting 'Files and Forms: Forms' as one of the options after checking the 'Allow Edits' box for at least one form, then I get the error message
  | Verify that when user send the application for revision then in the 'Available Forms for Revisions' section, I see all forms associated with the application.  I see that the 'Allow Edits' column is checked if I checked it for a given form
  | Verify that when user send the application for revision then in the Revisions tab user see 'Explanation of Revisions Needed' section shows data that user saved before 'Send to Subrecipient'
  | Verify that when user send the application for revision then in the Revisions tab, user see Application Section for Revisions Shows data that I saved before I Send to Subrecipient
  | Verify that when user send the application for revision then user see Applicant Name as read-only in the Revisions tab
  | Verify that when user send the application for revision then user see Revised Due Date (that was saved before user Send to Subrecipient) in Revision tab as read only
  | Verify that when user send the application for revision then user see Revised Submitted Date is blank in the Revisions tab
  | Verify that when user send the application for revision then user see Revision Created Date as read-only in the Revisions tab
  | Verify that when user send the application for revision then user see Revision Request Status (status  = Sent to Subrecipient) as read-only in the Revisions tab
  | Verify that review status is 'Sent to Review',  set the review status to 'Review Incomplete' when user send the application to subrecipient by clicking the Send to Subrecipient button
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Announcements" tab
    When I navigate to "Formula" content inside "Announcements" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:FormulaAnnouncements---"
    When I enter value "Automation Runtime Announcement" into field "fieldAnnouncementName__c"
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
    And I navigate to "Financials" sub tab
    When I enter value "1000" into field "fieldAwardFloor__c"
    When I enter value "2000" into field "fieldAwardCeiling__c"
    When I enter value "5000" into field "fieldTotalCommittedAmount__c"
    When I enter value "Unrestricted" into field "fieldSCDE_Indirect_Cost_Type__c"
    When I enter value "2022" into field "fieldSCDE_Fiscal_Year__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Overview" sub tab
    And I click on top right button "Upload Excel" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
    When I switch to iframe with id "SoleSourceAwardOrganizationsiframeContentId"
    When I upload file "AppWithSchoolCode.xlsx" into library
    And I click modal button "Upload File"
    And I pause execution for "2" seconds
    And I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Application" inside flex table with id "---tableID:-:AnnouncementBusinessForms---"
    When I enter value "VD_TestPackage" into field "fieldPackageConfig__c"
    And I click modal button "Save"
    And I click on "Submit For Approval" in the page details
    And I softly see field "Status" as "Submitted for Approval"
    When I "Approve" in the approval decision
    And I click on "Publish" in the page details
    And I softly see field "Status" as "Published"
    And I logout
    Given I am on "SUBPORTAL" portal
    When I login as "SPI" user
    And I navigate to "Opportunities" tab
    When I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:PublishedOpportunities---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:PublishedOpportunities---"
    When I click on "Qualify" in the page details
    And I softly see field "Status" as "Qualified"
    And I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    When I enter value "project abstract" into field "fieldProjectAbstract__c"
    When I enter value "checked" into field "fieldAcknowledgment4__c"
    And I navigate to "Budget" sub tab
    When I enter value "justification" into field "fieldJustification__c"
    And I click on "Save" in the page details
    And I expand nested table containing column value "BP01"
    And I edit the following rows inline in flex table with id "---tableID:-:ApplicationBudgetPeriod---" by clicking "Edit" :
      | Category Name             | Budget |
      | 110 - General Instruction | 1000   |
    And I navigate to "Overview" sub tab
    When I click on "Edit" icon for "State Coordinator" inside flex table with id "---tableID:-:ApplicationContacts---"
    When I enter value "checked" into field "IsKeyContact__c"
    And I click on top right button "Save" in flex table with id "---tableID:-:ApplicationContacts---"
    And I navigate to "Forms and Files" sub tab
    When I click on "Edit" icon for "No" inside flex table with id "---tableID:-:ApplicationForms---"
    When I enter the following values into flex table with id "---tableID:-:StakeholderParticipants---" by clicking "Add" :
      | Participant’s Name | School Name | Role    | Stakeholder Representation |
      | Automation         | Dixie High  | Teacher | School within District     |
    And I click on "Save" in the page details
    And I click on "Validate" in the page details
    And I click on "Submit Application" in the page details
    And I softly see field "Status" as "Submitted to Grantor"
    And I save the field containing "EGMS ID" as "APPID"
    When I re-login to "As a Grantor" app as "PM" user on "INTERNAL" portal
    And I navigate to "Applications" tab
    When I navigate to "Reviews" content inside "Application Reviews" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:ApplicationReviews---" panel
    And I click on "Initiate Review Process" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:ApplicationReviews---"
    And I navigate to "Applications" tab
    When I navigate to "Applications" content inside "Applications" subheader on left panel
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:ApplicationTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:ApplicationTableId---"
    And I softly see field "Status" as "Review Initiated"
    When I navigate to "Reviews" content inside "Application Reviews" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:ApplicationReviews---" panel
    And I navigate to "Related Log" sub tab
    And I click on "View" icon for "Pre-Screen Review" inside flex table with id "---tableID:-:AnnouncementReviewStep---"
    And I click on "Edit" icon for "Pre-Screen" inside flex table with id "---tableID:-:ReviewForms---"
    And I enter value "1" into field "MinimumNumberOfReviewers__c"
    And I enter value "5" into field "DueInDays__c"
    And I enter value "Checked" into field "Required__c"
    And I click on top right button "Save" in flex table with id "---tableID:-:ReviewForms---"
    When I enter the following values into flex table with id "---tableID:-:Reviewer---" by clicking "Add" :
      | Reviewer      |
      | Automation PM |
    And I click on "Assign" icon for "Automation PM" inside flex table with id "---tableID:-:Reviewer---"
    And I check "{SavedValue:APPID}" boxes in flex table with id "---tableID:-:AssignApplicationToUser---"
    And I click on top right button "Assign" in flex table with id "---tableID:-:AssignApplicationToUser---"
    And I pause execution for "5" seconds
    And I refresh the page
    And I click on "Request Revision" icon for "Automation PM" inside flex table with id "---tableID:-:Reviewer---"
    And I navigate to "Revisions" sub tab
    When I enter value "200" into field "NegotiationDueDate__c"
    When I enter value "Overview" into field "fieldApplicationSectionsForRevision__c"
    When I enter value "Test" into field "fieldExplanationOfRevisionsNeeded__c"
    And I click on top right button "Save" in flex table with id "---tableID:-:ApplicationRevisions---"
    And I click on top right button "Cancel Revision" in flex table with id "---tableID:-:ApplicationRevisions---"
    #186363
    When I navigate to "Reviews" content inside "Application Reviews" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:ApplicationReviews---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:ApplicationReviews---"
    And I navigate to "Related Log" sub tab
    And I click on "View" icon for "Pre-Screen Review" inside flex table with id "---tableID:-:AnnouncementReviewSteps---"
    Then I softly see value "Revision In-Progress" for title "Decision Status" inside table "---tableID:-:AnnouncementPreScreenReview---"
    Then I softly see value "Revision Initiated" for title "Application Status" inside table "---tableID:-:AnnouncementPreScreenReview---"
    #186156
    When I click on "View" icon for "TEXAS BEAR CREEK STORAGE" inside flex table with id "---tableID:-:ApplicationFormsRevision---"
    Then I softly can see top right button "Send to Subrecipient" in page detail
    #186232 #186233
    And I click on top right button "Send to Subrecipient" in flex table with id "---tableID:-:AnnouncementPreScreenReview---"
    Then I softly see the text :
      | Revisions Tab- Select at least one form to allow edits on, because the Form section is added for revision. |
    #186249
    And I click on "Edit" icon for "Title II, Part A - Stakeholder Participants" inside flex table with id "---tableID:-:AvailableFormsforRevision---"
    When I enter value "checked" into field "AllowEdit__c"
    And I click on top right button "Save" in flex table with id "---tableID:-:AvailableFormsforRevision---"
    And I click on top right button "Send to Subrecipient" in flex table with id "---tableID:-:AnnouncementPreScreenReview---"
    Then I softly see value "checked" for title "Allow Edits?" inside table "---tableID:-:ApplicationFormsRevision---"
    #186251
    Then I softly see field "Explanation of Revisions Needed" as "Test"
    #186247
    Then I softly see field "Application Section for Revisions" as "Overview"
    #186239
    Then I softly see that "Applicant Name" rendered in view mode only
    #186244
    Then I softly see that "Due Date" rendered in view mode only
    #186240
    Then I softly see field "Revised Submitted Date" inside "Request Revision Details" section
    #186236
    Then I softly see that "Revision Created Date" rendered in view mode only
    #186237
    Then I softly see field "Revision Request Status" as "Sent to Subrecipient"
    Then I softly see that "Revision Request Status" rendered in view mode only
    #187634
    And I click on top right button "Back to Current Review Step" in flex table with id "---tableID:-:AnnouncementPreScreenReview---"
    Then I softly see value "Review Incomplete" for title "Status" inside table "---tableID:-:AnnouncementPreScreenReview---"

  @185233 @185232 @185236 @sprint-4 @userStory-180192
  Scenario: Verify the Message: "Overview tab: The SAM Expiration Date is in the past. You must immediately update your SAM.gov registration to be eligible to receive a grant award for this application from SCDE, when announcement has a funding source is "Federal"
  |Verify the validation message:  "Overview tab:  The SAM Expiration Date is in the past.  You must have an updated SAM.gov registration in order to submit the application" when announcement has a funding source is "Federal"
  |Verify the Message:  "Overview tab:  The SAM Expiration Date is in the past.  You must immediately update your SAM.gov registration to be eligible to receive a grant award for this application from SCDE.", when announcement has a funding source is "State"
    Given I am on "SUBPORTAL" portal
    When I login as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{StaticRecords:AutomationPermanentApplicationWithPassedSamExpirationDate}" in "---tableID:-:ApplicationId---" panel
    When I click on "View" icon for "{StaticRecords:AutomationPermanentApplicationWithPassedSamExpirationDate}" inside flex table with id "---tableID:-:ApplicationId---"
      #185233
    Then I softly see the following messages in the page details contains:
      | Overview tab:  The SAM Expiration Date is in the past. You must immediately update your SAM.gov registration to be eligible to receive a grant award for this application from SCDE. |
      #185232 #185236
    And I click on "Submit Application" in the page details
    Then I softly see the following messages in the page details contains:
      | Overview tab: The SAM Expiration Date is in the past. You must have an updated SAM.gov registration in order to submit the application. |

  @187897 @187896 @188031 @188032 @187887 @188030 @188028 @187874 @187884 @188071 @188083 @187859 @187865 @187860 @187857 @187866 @187864 @187899 @188114 @187900 @188109 @187846 @187845 @sprint-4 @userStory-185306
  Scenario: Verify that I can click on 'Request Revisions' button to request revision again on the application
  | Verify that the 'Request Revisions' button available on the application
  | Verify that 'Available Forms for Revisions' section is in edit mode
  | Verify that that Explanation of Revisions Needed' section is in edit mode
  | Verify that "Applicant Response" is Read-only field
  | Verify that the Application Section for Revisions is in edit mode
  | Verify that the Due date is in edit mode
  | Verify that all forms associated with the application
  | Verify that Explanation of Revisions Needed is Read-only and its Shows data that the SCDE announcement owner saved
  | Verify that I can again send the application back to the sub-recipient
  | Verify that I can cancel the revision
  | Verify that that the Revision Request Status (status  = Submitted to Grantor) is Read-only field when application is in Revision Submitted state
  | Verify that the "Application Sections for Revisions" is Read-only field when application is in Revision Submitted state
  | Verify that the Applicant Name is Read-only field when application is in Revision Submitted state
  | Verify that the Due Date is Read-only field when Application is in Revision Submitted state
  | Verify that the Revised Submitted Date is Read-only field when application is in Revision Submitted state
  | Verify that the Revision Created Date is Read-only field when application is in Revision Submitted state
  | Verify that I can click on 'Complete Revisions' button to mark the ongoing revision process as complete
  | Verify that I click on 'Complete Revisions' button to mark the revisions as complete
  | Verify that the 'Complete Revisions' button available on the application
  | Verify that I see that the status as  'Review Initiated'
  | Verify that the Due Date should populate as 7 days from the task creation date
  | Verify that the Task Subject: Review <<Application Title>> for <<Subrecipient Org Name>>
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Announcements" tab
    When I navigate to "Formula" content inside "Announcements" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:FormulaAnnouncements---"
    When I enter value "Automation Runtime Announcement" into field "fieldAnnouncementName__c"
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
    And I navigate to "Financials" sub tab
    When I enter value "1000" into field "fieldAwardFloor__c"
    When I enter value "2000" into field "fieldAwardCeiling__c"
    When I enter value "5000" into field "fieldTotalCommittedAmount__c"
    When I enter value "Unrestricted" into field "fieldSCDE_Indirect_Cost_Type__c"
    When I enter value "2022" into field "fieldSCDE_Fiscal_Year__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Overview" sub tab
    And I click on top right button "Upload Excel" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
    When I switch to iframe with id "SoleSourceAwardOrganizationsiframeContentId"
    When I upload file "AppWithSchoolCode.xlsx" into library
    And I click modal button "Upload File"
    And I pause execution for "2" seconds
    And I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Application" inside flex table with id "---tableID:-:AnnouncementBusinessForms---"
    When I enter value "VD_TestPackage" into field "fieldPackageConfig__c"
    And I click modal button "Save"
    And I click on "Submit For Approval" in the page details
    And I softly see field "Status" as "Submitted for Approval"
    When I "Approve" in the approval decision
    And I click on "Publish" in the page details
    And I softly see field "Status" as "Published"
    And I logout
    Given I am on "SUBPORTAL" portal
    When I login as "SPI" user
    And I navigate to "Opportunities" tab
    When I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:PublishedOpportunities---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:PublishedOpportunities---"
    When I click on "Qualify" in the page details
    And I softly see field "Status" as "Qualified"
    And I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    When I enter value "project abstract" into field "fieldProjectAbstract__c"
    When I enter value "checked" into field "fieldAcknowledgment4__c"
    And I navigate to "Budget" sub tab
    When I enter value "justification" into field "fieldJustification__c"
    And I click on "Save" in the page details
    And I expand nested table containing column value "BP01"
    And I edit the following rows inline in flex table with id "---tableID:-:ApplicationBudgetPeriod---" by clicking "Edit" :
      | Category Name             | Budget |
      | 110 - General Instruction | 1000   |
    And I navigate to "Overview" sub tab
    When I click on "Edit" icon for "State Coordinator" inside flex table with id "---tableID:-:ApplicationContacts---"
    When I enter value "checked" into field "IsKeyContact__c"
    And I click on top right button "Save" in flex table with id "---tableID:-:ApplicationContacts---"
    And I navigate to "Forms and Files" sub tab
    When I click on "Edit" icon for "No" inside flex table with id "---tableID:-:ApplicationForms---"
    When I enter the following values into flex table with id "---tableID:-:StakeholderParticipants---" by clicking "Add" :
      | Participant’s Name | School Name | Role    | Stakeholder Representation |
      | Automation         | Dixie High  | Teacher | School within District     |
    And I click on "Save" in the page details
    And I click on "Validate" in the page details
    And I click on "Submit Application" in the page details
    And I softly see field "Status" as "Submitted to Grantor"
    And I save the field containing "EGMS ID" as "APPID"
    When I re-login to "As a Grantor" app as "PM" user on "INTERNAL" portal
    And I navigate to "Applications" tab
    When I navigate to "Reviews" content inside "Application Reviews" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:ApplicationReviews---" panel
    And I click on "Initiate Review Process" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:ApplicationReviews---"
    And I navigate to "Applications" tab
    When I navigate to "Applications" content inside "Applications" subheader on left panel
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:ApplicationTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:ApplicationTableId---"
    And I softly see field "Status" as "Review Initiated"
    When I navigate to "Reviews" content inside "Application Reviews" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:ApplicationReviews---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:ApplicationReviews---"
    And I navigate to "Related Log" sub tab
    And I click on "View" icon for "Pre-Screen Review" inside flex table with id "---tableID:-:AnnouncementReviewStep---"
    And I click on "Edit" icon for "Pre-Screen" inside flex table with id "---tableID:-:ReviewForms---"
    And I enter value "1" into field "MinimumNumberOfReviewers__c"
    And I enter value "5" into field "DueInDays__c"
    And I enter value "Checked" into field "Required__c"
    And I click on top right button "Save" in flex table with id "---tableID:-:ReviewForms---"
    When I enter the following values into flex table with id "---tableID:-:Reviewer---" by clicking "Add" :
      | Reviewer      |
      | Automation PM |
    And I click on "Assign" icon for "Automation PM" inside flex table with id "---tableID:-:Reviewer---"
    And I check "{SavedValue:APPID}" boxes in flex table with id "---tableID:-:AssignApplicationToUser---"
    And I click on top right button "Assign" in flex table with id "---tableID:-:AssignApplicationToUser---"
    And I pause execution for "2" seconds
    And I refresh the page
    #187897 #187896
    Then I softly can see row level action button "Request Revisions" against "Automation PM" in flex table with id "---tableID:-:Reviewer---"
    #188031
    And I click on "Request Revision" icon for "Automation PM" inside flex table with id "---tableID:-:Reviewer---"
    And I navigate to "Revisions" sub tab
    When I enter value "200" into field "NegotiationDueDate__c"
    When I enter value "Overview" into field "fieldApplicationSectionsForRevision__c"
    When I enter value "Test" into field "fieldExplanationOfRevisionsNeeded__c"
    And I click on top right button "Save" in flex table with id "---tableID:-:ApplicationRevisions---"
    Then I softly can see top right button "Edit" in flex table with id "---tableID:-:ApplicationRevisions---"
    Then I softly can see row level action button "Edit" against "Title II, Part A - Stakeholder Participants" in flex table with id "---tableID:-:AvailableFormsforRevision---"
    #188032
    And I click on top right button "Edit" in flex table with id "---tableID:-:ApplicationRevisions---"
    Then I softly see fields "fieldExplanationOfRevisionsNeeded__c" is in edit mode
    #187887
    And I click on top right button "Save" in flex table with id "---tableID:-:ApplicationRevisions---"
    Then I softly see that "Applicant Response" rendered in view mode only
    #188030
    And I click on top right button "Edit" in flex table with id "---tableID:-:ApplicationRevisions---"
    Then I softly see fields "fieldApplicationSectionsForRevision__c" is in edit mode
    #188028
    Then I softly see fields "NegotiationDueDate__c" is in edit mode
    #187874
    Then I softly see value "Title II, Part A - Stakeholder Participants" for title "Form Name" inside table "---tableID:-:AvailableFormsforRevision---"
	#187884
    And I click on top right button "Save" in flex table with id "---tableID:-:ApplicationRevisions---"
    And I softly see field "Explanation of Revisions Needed" as "Test"
    Then I softly see that "Explanation of Revisions Needed" rendered in view mode only
    #188071
    And I click on top right button "Edit" in flex table with id "---tableID:-:ApplicationRevisions---"
    When I enter value "250" into field "NegotiationDueDate__c"
    When I enter value "Automation Testing" into field "fieldExplanationOfRevisionsNeeded__c"
    And I click on top right button "Save" in flex table with id "---tableID:-:ApplicationRevisions---"
    Then I softly can see top right button "Send To Subrecipient" in flex table with id "---tableID:-:ApplicationRevisions---"
    #188083
    Then I softly can see top right button "Cancel Revision" in flex table with id "---tableID:-:ApplicationRevisions---"
    #187859
    And I click on top right button "Send To Subrecipient" in flex table with id "---tableID:-:ApplicationRevisions---"
    And I softly see field "Revision Request Status" as "Submitted to Grantor"
    Then I softly see that "Revision Request Status" rendered in view mode only
    #187865
    Then I softly see that "Application Section for Revisions" rendered in view mode only
    #187860
    Then I softly see that "Applicant Name" rendered in view mode only
     #187857
    Then I softly see that "Due Date" rendered in view mode only
    #187866
    Then I softly see that "Revised Submitted Date" rendered in view mode only
    #187864
    Then I softly see that "Revision Created Date" rendered in view mode only
   #187899 #188114 #187900
    When I navigate to "Applications" content inside "Applications" subheader on left panel
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:ApplicationTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:ApplicationTableId---"
    And I pause execution for "2" seconds
    Then I softly can see top right button "Complete Revisions" in flex table with id "---tableID:-:ApplicationRevisions---"
    #188109
    And I click on top right button "Complete Revisions" in flex table with id "---tableID:-:ApplicationRevisions---"
    And I softly see field "Status" as "Review Initiated"
    #187846
    When I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    Then I softly see value "12/30/2021" for title "Due Date" inside table "---tableID:-:ApplicationPendingTask---"
    #187845
    Then I softly see value "Review Automation Runtime Announcement for SPI Automation" for title "Subject" inside table "---tableID:-:ApplicationPendingTask---"

  @185269 @185278 @185277 @sprint-4 @userStory-179376
  Scenario: Verify that the Application's Budget tab has a section labeled 'Allocation, Admin, and Indirect Costs'
  | Verify that The system shows the organization's rate for the same Fiscal Year and rate type as selected on the announcement.
  |Verify that 'indirect cost rate'  field is pre-populated for the Unrestricted Indirect Cost Rate Type selected on the announcement.
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
    When I enter value "By Applicant and School" into field "fieldSCDE_Allocation_Level__c"
    When I enter value "School" into field "fieldSCDE_Detailed_Budgeting_Options__c"
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
    When I enter value "2022" into field "fieldSCDE_Fiscal_Year__c"
    When I enter value "10" into field "fieldSCDE_Maximum_Indirect_Cost__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Overview" sub tab
    And I click on top right button "Upload Excel" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
    When I switch to iframe with id "SoleSourceAwardOrganizationsiframeContentId"
    When I upload file "AppWithSchoolCode.xlsx" into library
    And I click modal button "Upload File"
    And I pause execution for "2" seconds
    And I click on "Submit For Approval" in the page details
    And I softly see field "Status" as "Submitted for Approval"
    When I "Approve" in the approval decision
    And I click on "Publish" in the page details
    And I softly see field "Status" as "Published"
    And I logout
    Given I am on "SUBPORTAL" portal
    When I login as "SPI" user
    And I navigate to "Opportunities" tab
    When I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:PublishedOpportunities---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:PublishedOpportunities---"
    When I click on "Qualify" in the page details
    And I softly see field "Status" as "Qualified"
    And I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    And I click on "Save" in the page details
      #185269
    And I navigate to "Budget" sub tab
    Then I softly see "Allocation, Admin, and Indirect Costs" page block displayed
      #185278 #185277
    Then I softly see field "Indirect Cost Rate" as "10.00%"

  @185276 @185461 @185466 @185464 @185437 @sprint-4 @userStory-179376
  Scenario: Verify that 'indirect cost rate'  field is pre-populated for the Restricted Indirect Cost Rate Type selected on the announcement.
  |Verify that The field 'Indirect Cost Taken' in section 'Allocation, Admin, and Indirect Costs'
  |Verify that The field 'Indirect Cost Taken' in section 'Allocation, Admin, and Indirect Costs' is optional.
  |Verify that The field 'Indirect Cost Taken' in section 'Allocation, Admin, and Indirect Costs'  is a user entered currency field - up to 2 decimals.
  | Verify that If my organization profile does not have a rate for the same fiscal year and indirect cost rate type as the announcement, the system shows the previous fiscal year's rate for my organization of the same indirect cost rate type.
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
    When I enter value "By Applicant and School" into field "fieldSCDE_Allocation_Level__c"
    When I enter value "School" into field "fieldSCDE_Detailed_Budgeting_Options__c"
    And I click modal button "Save and Continue"
    When I enter value "Federal" into field "fieldSCDE_Funding_Source__c"
    When I enter value "test" into field "fieldAnnouncementDescription__c"
    When I enter value "Library" into field "fieldEligibleApplicantTypes__c"
    When I enter value "200" into field "fieldApplicationDueDate__c"
    And I navigate to "Financials" sub tab
    When I enter value "1000" into field "fieldAwardFloor__c"
    When I enter value "2000" into field "fieldAwardCeiling__c"
    When I enter value "5000" into field "fieldTotalCommittedAmount__c"
    When I enter value "Restricted" into field "fieldSCDE_Indirect_Cost_Type__c"
    When I enter value "2022" into field "fieldSCDE_Fiscal_Year__c"
    When I enter value "10" into field "fieldSCDE_Maximum_Indirect_Cost__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Overview" sub tab
    And I click on top right button "Upload Excel" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
    When I switch to iframe with id "SoleSourceAwardOrganizationsiframeContentId"
    When I upload file "AppWithSchoolCode.xlsx" into library
    And I click modal button "Upload File"
    And I pause execution for "2" seconds
    And I click on "Submit For Approval" in the page details
    And I softly see field "Status" as "Submitted for Approval"
    When I "Approve" in the approval decision
    And I click on "Publish" in the page details
    And I softly see field "Status" as "Published"
    And I logout
    Given I am on "SUBPORTAL" portal
    When I login as "SPI" user
    And I navigate to "Opportunities" tab
    When I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:PublishedOpportunities---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:PublishedOpportunities---"
    When I click on "Qualify" in the page details
    And I softly see field "Status" as "Qualified"
    And I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    And I click on "Save" in the page details
    #185276
    And I navigate to "Budget" sub tab
    Then I softly see field "Indirect Cost Rate" as "10.00%"
    #185461
    Then I softly see "Indirect Cost Taken" inside page block detail
    #185466
    And I click on "Edit" in the page details
    Then I softly do not see asterisk mark on "Indirect Cost Taken"
    #185464
    When I enter value "0" into field "fieldSCDE_IndirectCostTaken__c"
    And I click on "Save" in the page details
    Then I softly see field "Indirect Cost Taken" as "$0.00"
    #185437
    Then I softly see field "Max Indirect Cost Allowed" as "$65.22"

  @185446 @185456 @185457 @185440 @sprint-4 @userStory-179376
  Scenario: Verify that If the Maximum Indirect Cost Rate field on the announcement is blank, then the system shows the organization's rate for the same Fiscal Year and rate type as selected on the announcement.
  |Verify that The field 'Max Indirect Cost Allowed' in section 'Allocation, Admin, and Indirect Costs'  is read only and computed as follows: (Allocation Amount * Indirect Cost Rate) / (1 + Indirect Cost Rate)
  |Verify that The field 'Max Indirect Cost Allowed' in section 'Allocation, Admin, and Indirect Costs' Show the computed value with up to 2 decimals.
  |Verify that the field shows the lower rate between that found in 2b and the Maximum Indirect Cost Rate field on the announcement.
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
    When I enter value "By Applicant and School" into field "fieldSCDE_Allocation_Level__c"
    When I enter value "School" into field "fieldSCDE_Detailed_Budgeting_Options__c"
    And I click modal button "Save and Continue"
    When I enter value "Federal" into field "fieldSCDE_Funding_Source__c"
    When I enter value "test" into field "fieldAnnouncementDescription__c"
    When I enter value "Library" into field "fieldEligibleApplicantTypes__c"
    When I enter value "200" into field "fieldApplicationDueDate__c"
    And I navigate to "Financials" sub tab
    When I enter value "1000" into field "fieldAwardFloor__c"
    When I enter value "2000" into field "fieldAwardCeiling__c"
    When I enter value "5000" into field "fieldTotalCommittedAmount__c"
    When I enter value "Restricted" into field "fieldSCDE_Indirect_Cost_Type__c"
    When I enter value "2022" into field "fieldSCDE_Fiscal_Year__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Overview" sub tab
    And I click on top right button "Upload Excel" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
    When I switch to iframe with id "SoleSourceAwardOrganizationsiframeContentId"
    When I upload file "AppWithSchoolCode.xlsx" into library
    And I click modal button "Upload File"
    And I pause execution for "2" seconds
    And I click on "Submit For Approval" in the page details
    And I softly see field "Status" as "Submitted for Approval"
    When I "Approve" in the approval decision
    And I click on "Publish" in the page details
    And I softly see field "Status" as "Published"
    And I logout
    Given I am on "SUBPORTAL" portal
    When I login as "SPI" user
    And I navigate to "Opportunities" tab
    When I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:PublishedOpportunities---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:PublishedOpportunities---"
    When I click on "Qualify" in the page details
    And I softly see field "Status" as "Qualified"
    And I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    And I click on "Save" in the page details
    #185446
    And I navigate to "Budget" sub tab
    Then I softly see field "Indirect Cost Rate" as "15.00%"
    Then I softly see field "Max Indirect Cost Allowed" as "$65.22"
    #185456 #185457 #185440
    And I click on "Edit" in the page details
    Then I softly see field "Max Indirect Cost Allowed" as "$65.22"

  @185443 @sprint-4 @userStory-179376
  Scenario: Verify that If the organization does not have an indirect cost rate of the type on the announcement for any year, and if the Maximum Indirect Cost Rate is not filled, then the rate is blank on the application.
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
    When I enter value "Restricted" into field "fieldSCDE_Indirect_Cost_Type__c"
    When I enter value "2022" into field "fieldSCDE_Fiscal_Year__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Overview" sub tab
    And I click on top right button "Upload Excel" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
    When I switch to iframe with id "SoleSourceAwardOrganizationsiframeContentId"
    When I upload file "ByApplicant.xlsx" into library
    And I click modal button "Upload File"
    And I pause execution for "2" seconds
    And I click on "Submit For Approval" in the page details
    And I softly see field "Status" as "Submitted for Approval"
    When I "Approve" in the approval decision
    And I click on "Publish" in the page details
    And I softly see field "Status" as "Published"
    And I logout
    Given I am on "SUBPORTAL" portal
    When I login as "SPA1" user
    And I navigate to "Opportunities" tab
    When I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:PublishedOpportunities---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:PublishedOpportunities---"
    When I click on "Qualify" in the page details
    And I softly see field "Status" as "Qualified"
    And I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    And I click on "Save" in the page details
    And I navigate to "Budget" sub tab
    Then I softly see field "Max Indirect Cost Allowed" as "$0.00"

  @185442 @sprint-4 @userStory-179376
  Scenario: Verify that If the organization does not have an indirect cost rate of the type on the announcement for any year, then the application should show the Maximum Indirect Cost Rate from the announcement.
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
    When I enter value "Restricted" into field "fieldSCDE_Indirect_Cost_Type__c"
    When I enter value "2022" into field "fieldSCDE_Fiscal_Year__c"
    When I enter value "10" into field "fieldSCDE_Maximum_Indirect_Cost__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Overview" sub tab
    And I click on top right button "Upload Excel" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
    When I switch to iframe with id "SoleSourceAwardOrganizationsiframeContentId"
    When I upload file "ByApplicant.xlsx" into library
    And I click modal button "Upload File"
    And I pause execution for "2" seconds
    And I click on "Submit For Approval" in the page details
    And I softly see field "Status" as "Submitted for Approval"
    When I "Approve" in the approval decision
    And I click on "Publish" in the page details
    And I softly see field "Status" as "Published"
    And I logout
    Given I am on "SUBPORTAL" portal
    When I login as "SPA1" user
    And I navigate to "Opportunities" tab
    When I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:PublishedOpportunities---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:PublishedOpportunities---"
    When I click on "Qualify" in the page details
    And I softly see field "Status" as "Qualified"
    And I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    And I navigate to "Budget" sub tab
    Then I softly see field "Max Indirect Cost Allowed" as "$45.45"

  @185439 @185273 @185449 @185487 @sprint-4 @userStory-179376
  Scenario: Verify that the rate on the application is blank if the 'Indirect Cost Rate Type' for the announcement is set at 'Not Allowed'.
  |Verify that there is a field for 'Indirect Cost Rate' that pre-populates as read-only in 'Allocation, Admin, and Indirect Costs' section
  |Verify that There is a field for 'Max Indirect Cost Allowed'
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
    When I enter value "Not Allowed" into field "fieldSCDE_Indirect_Cost_Type__c"
    When I enter value "2022" into field "fieldSCDE_Fiscal_Year__c"
    When I enter value "10" into field "fieldSCDE_Maximum_Indirect_Cost__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Overview" sub tab
    And I click on top right button "Upload Excel" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
    When I switch to iframe with id "SoleSourceAwardOrganizationsiframeContentId"
    When I upload file "ByApplicant.xlsx" into library
    And I click modal button "Upload File"
    And I pause execution for "2" seconds
    And I click on "Submit For Approval" in the page details
    And I softly see field "Status" as "Submitted for Approval"
    When I "Approve" in the approval decision
    And I click on "Publish" in the page details
    And I softly see field "Status" as "Published"
    And I logout
    Given I am on "SUBPORTAL" portal
    When I login as "SPA1" user
    And I navigate to "Opportunities" tab
    When I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:PublishedOpportunities---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:PublishedOpportunities---"
    When I click on "Qualify" in the page details
    And I softly see field "Status" as "Qualified"
    And I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    And I navigate to "Budget" sub tab
        #185439 #185273
    Then I softly see field "Max Indirect Cost Allowed" as "$0.00"
    Then I softly see field "Indirect Cost Rate" as ""
        #185449
    Then I softly see "Max Indirect Cost Allowed" inside page block detail
        #185487
    And I navigate to "Overview" sub tab
    When I enter value "12345" into field "fieldZip4__c"
    And I navigate to "Budget" sub tab
    When I enter value "50" into field "fieldSCDE_IndirectCostTaken__c"
    And I click on "Save" in the page details
    Then I softly see the following messages in the page details contains:
      | Budget Tab - Indirect Cost Taken amount cannot be greater than the Max Indirect Cost Allowed. |