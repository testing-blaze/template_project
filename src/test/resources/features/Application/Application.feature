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
    Then I softly see field "Allocation Amount" as "$2000"
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
    When I click on "Add" icon for "110 - General Instruction" inside flex table with id "---tableID:-:ApplicationBudgetPeriod---"
    When I enter value "100 - Salaries" into field "fieldMST_Budget_Category__c"
    When I enter value "1" into field "fieldQuantity__c"
    When I enter value "2000" into field "fieldUnitPrice__c"
    When I enter value "Schoolwide" into field "fieldSCDE_BudgetFor__c"
    When I enter value "Wright Middle" into field "fieldSchool__c"
    When I enter value "test" into field "fieldNarrative__c"
    And I click modal button "Save"
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
    When I click on "Add" icon for "110 - General Instruction" inside flex table with id "---tableID:-:ApplicationBudgetPeriod---"
    When I enter value "100 - Salaries" into field "fieldMST_Budget_Category__c"
    When I enter value "1" into field "fieldQuantity__c"
    When I enter value "2000" into field "fieldUnitPrice__c"
    When I enter value "Schoolwide" into field "fieldSCDE_BudgetFor__c"
    When I enter value "Wright Middle" into field "fieldSchool__c"
    When I enter value "test" into field "fieldNarrative__c"
    And I click modal button "Save"
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
    When I click on "Add" icon for "110 - General Instruction" inside flex table with id "---tableID:-:ApplicationBudgetPeriod---"
    When I enter value "100 - Salaries" into field "fieldMST_Budget_Category__c"
    When I enter value "1" into field "fieldQuantity__c"
    When I enter value "2000" into field "fieldUnitPrice__c"
    When I enter value "Schoolwide" into field "fieldSCDE_BudgetFor__c"
    When I enter value "Wright Middle" into field "fieldSchool__c"
    When I enter value "test" into field "fieldNarrative__c"
    And I click modal button "Save"
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
    When I click on top right button "Promote to Next Step" in flex table with id "---tableID:-:ReviewApplication---"
    And I click on "Next Review Step" in the page details
    When I edit the following rows inline in flex table with id "---tableID:-:ReviewForms---" by clicking "Edit" :
      | Form Name         | Due in Days |
      | Program Review    | 5           |
      | Fiscal Review     | 5           |
      | Compliance Review | 5           |
    When I enter the following values into flex table with id "---tableID:-:Reviewer---" by clicking "Add" :
      | Reviewer      |
      | Automation PM |
    And I click on "Assign" icon for "Automation PM" inside flex table with id "---tableID:-:Reviewer---"
    And I check "Select All" boxes in flex table with id "---tableID:-:AssignApplicationToUser---"
    And I click on top right button "Assign" in flex table with id "---tableID:-:AssignApplicationToUser---"
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
    And I check "Select All" boxes in flex table with id "---tableID:-:AssignApplicationToUser---"
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
    When I click on "Add" icon for "110 - General Instruction" inside flex table with id "---tableID:-:ApplicationBudgetPeriod---"
    When I enter value "100 - Salaries" into field "fieldMST_Budget_Category__c"
    When I enter value "1" into field "fieldQuantity__c"
    When I enter value "2000" into field "fieldUnitPrice__c"
    When I enter value "Schoolwide" into field "fieldSCDE_BudgetFor__c"
    When I enter value "Wright Middle" into field "fieldSchool__c"
    When I enter value "test" into field "fieldNarrative__c"
    And I click modal button "Save"
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
    When I click on "Add" icon for "110 - General Instruction" inside flex table with id "---tableID:-:ApplicationBudgetPeriod---"
    When I enter value "100 - Salaries" into field "fieldMST_Budget_Category__c"
    When I enter value "1" into field "fieldQuantity__c"
    When I enter value "2000" into field "fieldUnitPrice__c"
    When I enter value "Schoolwide" into field "fieldSCDE_BudgetFor__c"
    When I enter value "Wright Middle" into field "fieldSchool__c"
    When I enter value "test" into field "fieldNarrative__c"
    And I click modal button "Save"
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
    When I click on "Add" icon for "110 - General Instruction" inside flex table with id "---tableID:-:ApplicationBudgetPeriod---"
    When I enter value "100 - Salaries" into field "fieldMST_Budget_Category__c"
    When I enter value "1" into field "fieldQuantity__c"
    When I enter value "2000" into field "fieldUnitPrice__c"
    When I enter value "Schoolwide" into field "fieldSCDE_BudgetFor__c"
    When I enter value "Wright Middle" into field "fieldSchool__c"
    When I enter value "test" into field "fieldNarrative__c"
    And I click modal button "Save"
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
    And I check "Select All" boxes in flex table with id "---tableID:-:AssignApplicationToUser---"
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

  @186370 @186363 @186156 @186232 @186233 @186249 @186613 @186251 @186247 @186239 @186244 @186240 @186236 @186237 @186373 @186615 @186372 @187634 @sprint-4 @userStory-184588 @UmangParekh
  Scenario: Verify that after user saved the revision changes on an application, user can see 'Cancel Revision' button on the application
  | Verify that after application sending to the sub-recipient, user see that the Decision Status for the application in the review step is set to 'Revision In-Progress' and application status is set to 'Revision Initiated'
  | Verify that after user saved the revision changes on an application, user can see 'Send to Subrecipient' button on the application
  | Verify that If I try to send the application to the sub-recipient after selecting 'Files and Forms: Forms' as one of the options but without checking the 'Allow Edits' box for any form, then I get the error message
  | Verify that If I try to send the application to the sub-recipient without selecting 'Files and Forms: Forms' as one of the options after checking the 'Allow Edits' box for at least one form, then I get the error message
  | Verify that when user send the application for revision then in the 'Available Forms for Revisions' section, I see all forms associated with the application.  I see that the 'Allow Edits' column is checked if I checked it for a given form
  | Verify that when user send the application for revision then user see Revised Submitted Date as read-only in the Revisions tab
  | Verify that when user send the application for revision then in the Revisions tab user see 'Explanation of Revisions Needed' section shows data that user saved before 'Send to Subrecipient'
  | Verify that when user send the application for revision then in the Revisions tab, user see Application Section for Revisions Shows data that I saved before I Send to Subrecipient
  | Verify that when user send the application for revision then user see Applicant Name as read-only in the Revisions tab
  | Verify that when user send the application for revision then user see Revised Due Date (that was saved before user Send to Subrecipient) in Revision tab as read only
  | Verify that when user send the application for revision then user see Revised Submitted Date is blank in the Revisions tab
  | Verify that when user send the application for revision then user see Revision Created Date as read-only in the Revisions tab
  | Verify that when user send the application for revision then user see Revision Request Status (status  = Sent to Subrecipient) as read-only in the Revisions tab
  | Verify that when user send the application for revision then in the Revisions tab user see 'Applicant Response' section shows data that user saved before 'Send to Subrecipient'
  | Verify that when user send the application to the sub-recipient after selecting 'Files and Forms: Forms' as one of the options then user will see the Edit button against each form name in Forms section
  | Verify that when user send the application to the sub-recipient after selecting 'Files and Forms: Forms' as one of the options then user will see the different forms associated with Forms section
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
    When I click on "Add" icon for "110 - General Instruction" inside flex table with id "---tableID:-:ApplicationBudgetPeriod---"
    When I enter value "100 - Salaries" into field "fieldMST_Budget_Category__c"
    When I enter value "1" into field "fieldQuantity__c"
    When I enter value "2000" into field "fieldUnitPrice__c"
    When I enter value "Schoolwide" into field "fieldSCDE_BudgetFor__c"
    When I enter value "Wright Middle" into field "fieldSchool__c"
    When I enter value "test" into field "fieldNarrative__c"
    And I click modal button "Save"
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
    #186370
    Then I softly can see top right button "Cancel Revision" in flex table with id "---tableID:-:ApplicationRevisions---"
    #186363
    And I click on top right button "Cancel Revision" in flex table with id "---tableID:-:ApplicationRevisions---"
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
    #186613
    Then I softly see that "Revised Submitted Date" rendered in view mode only
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
    #186373
    Then I softly see field "Applicant Response" as "Automation Testing"
    #186615
    And I navigate to "Forms and files" sub tab
    Then I softly see value "Title II, Part A - Stakeholder Participants" for title "Form Name" inside table "---tableID:-:ApplicationFormsRevision---"
    #186372
    Then I softly can see row level action button "Edit" against "Title II, Part A - Private Schools" in flex table with id "---tableID:-:ApplicationFormsRevision---"
    #187634
    And I navigate to "Revisions" sub tab
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

  @187897 @187896 @188031 @188032 @187887 @188030 @188028 @187874 @187884 @188071 @188083 @187859 @187865 @187860 @187857 @187866 @187864 @187899 @188114 @187900 @188109 @187846 @187845 @187844 @188205 @187842 @sprint-4 @userStory-185306
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
  | Verify that I see that the status as 'Review Initiated'
  | Verify that the Due Date should populate as 7 days from the task creation date
  | Verify that the Task Subject: Review <<Application Title>> for <<Subrecipient Org Name>>
  | Verify the Task Type: Review Revised Application
  | Verify when I click on the 'Play' icon for the task, I am navigated to the application record
  | Verify that I see the status as 'Approved' on the application record
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
    When I click on "Add" icon for "110 - General Instruction" inside flex table with id "---tableID:-:ApplicationBudgetPeriod---"
    When I enter value "100 - Salaries" into field "fieldMST_Budget_Category__c"
    When I enter value "1" into field "fieldQuantity__c"
    When I enter value "2000" into field "fieldUnitPrice__c"
    When I enter value "Schoolwide" into field "fieldSCDE_BudgetFor__c"
    When I enter value "Wright Middle" into field "fieldSchool__c"
    When I enter value "test" into field "fieldNarrative__c"
    And I click modal button "Save"
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
    Then I softly can see row level action button "Request Revision" against "Automation PM" in flex table with id "---tableID:-:Reviewer---"
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
    #187844
    Then I softly see value "Review Revised Application" for title "Type" inside table "---tableID:-:ApplicationPendingTask---"
    #188205
    And I click on "Start" icon for "Review Revised Application" inside flex table with id "---tableID:-:ApplicationPendingTask---"
    Then I softly see field "Announcement EGMS ID" inside "Automation Runtime Announcement" section
    #187842
    And I softly see field "Status" as "Approved"

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
    Then I softly see field "Potential Indirect Cost Recovery" as "$65.22"

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
    Then I softly see field "Potential Indirect Cost Recovery" as "$65.22"
    #185456 #185457 #185440
    And I click on "Edit" in the page details
    Then I softly see field "Potential Indirect Cost Recovery" as "$65.22"

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
    Then I softly see field "Potential Indirect Cost Recovery" as "$0.00"

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
    Then I softly see field "Potential Indirect Cost Recovery" as "$45.45"

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
    Then I softly see field "Potential Indirect Cost Recovery" as "$0.00"
    Then I softly see field "Indirect Cost Rate" as ""
        #185449
    Then I softly see "Potential Indirect Cost Recovery" inside page block detail
        #185487
    And I navigate to "Overview" sub tab
    When I enter value "12345" into field "fieldZip4__c"
    And I navigate to "Budget" sub tab
    When I enter value "50" into field "fieldSCDE_IndirectCostTaken__c"
    And I click on "Save" in the page details
    Then I softly see the following messages in the page details contains:
      | Budget Tab - Indirect Cost Taken amount cannot be greater than the Potential Indirect Cost Recovery. |

  @186345 @186341 @186346 @186343 @186347 @186340 @186344 @186342 @186350 @sprint-4 @userStory-184568
  Scenario: Verify Program Income? field is hidden on  Overview tab's Opportunity Overview section on the Application section
  |Verify that  UEI and is ready only on the Overview tabs , Information section on the Application External view
  |Verify the  Office field is added and shows the Office from the Announcement as read-only  on  Overview tab's Opportunity Overview section on the Application section
  |Verify the Congressional District is hidden on  Overview tab's Place of Performance section on the Application
  |Verify the  Opportunity ID field is relabeled to be Opportunity EGMS ID and has the following updated help text  on  Overview tab's Opportunity Overview section on the Application section Help text:  Funding opportunity associated with this application.
  |Verify the DUNS field is hidden on the Overview tabs Information section on the Application
  |Verify the Country is hidden on  Overview tab's Place of Performance section on the Application external view
  |Verify the layout has 4 columns to match the layout of sections below. on the Overview tabs Information section on the Application on External side
  |Verify the  Performance tab is hidden if both Objectives and KPIs are not required for the related announcement.
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
      #186345
    Then I softly do not see field "Program Income?" inside "Opportunity Overview" section
      #186341
    Then I softly see field "UEI" as "XSGWZYNU6FZ6"
      #186346
    Then I softly see field "Office" as "Ofc"
      #186343
    Then I softly do not see field "Congressional District" inside "Primary Place of Performance" section
      #186347
    And I click on "Save" in the page details
    Then I softly see field "Opportunity EGMS ID" inside "Opportunity Overview" section
    And I hovering mouse on help text icon inside page block detail "Opportunity EGMS ID"
    Then I softly see "Funding opportunity associated with this application" shown as help text
    #186340
    Then I softly do not see field "DUNS" inside "Information" section
    #186344
    Then I softly do not see field "Country" inside "Primary Place of Performance" section
    #186342
    Then I softly see field "Applicant Organization" inside "Information" section
    Then I softly see field "Address" inside "Information" section
    Then I softly see field "EIN" inside "Information" section
    Then I softly see field "UEI" inside "Information" section
    #186350 (BugId-187214)
    Then I softly cannot see "Performance" sub tab at view detail page

  @186349 @186348 @sprint-4 @userStory-184568
  Scenario: Verify the Performance tab's Technical Proposal section is hidden
  |Verify the Proposals tab is renamed to Performance tab
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
    When I enter value "Yes" into field "fieldIsGoalsRequired__c"
    When I enter value "Yes" into field "fieldKPIsRequired__c"
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
    And I click on top right button "Associate" in flex table with id "---tableID:-:GoalsAndObjectives---"
    When I click "Associate" after selection of "SPO-0001" in the table "---tableID:-:Modal---"
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementKPI---"
    When I click "Associate" after selection of "KPI-0000" in the table "---tableID:-:AnnouncementKPIModal---"
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
    #186349
    And I navigate to "Performance" sub tab
    Then I softly do not see "Technical Proposal" page block displayed
    #186348
    Then I softly can see "Performance" sub tab at view detail page

  @188965 @188967 @189027 @189019 @189020 @190117 @189025 @188969 @sprint-5 @userStory-187057
  Scenario: Verify  for  external application record owner  there is new field for 'Max Admin Cost Rate' displayed
  | Verify external application record owner can see the 'Max Admin Cost Allowed' field '
  | Verify  new field for 'Total Budgeted Amount' that is a roll-up field and shows the sum of all Award Total amounts from the budget grid and is read only.
  | Verify for external application record owner there is a validation on Submit that ' Admin Cost taken '  cannot exceed 'Max Admin Cost Allowed'.
  | Verify help text is displayed for the 'Admin Cost Taken' field
  | Verify the help test is displayed for the Max Admin Cost Allowed field
  | Verify the help text for the field 'Indirect Cost Taken' field
  | Verify when Allocation Amount > zero, then Max Admin Cost Allowed is calculated using Allocation Amount.
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
    When I enter value "Yes" into field "fieldIsGoalsRequired__c"
    When I enter value "Yes" into field "fieldKPIsRequired__c"
    And I click modal button "Save and Continue"
    When I enter value "Federal" into field "fieldSCDE_Funding_Source__c"
    When I enter value "test" into field "fieldAnnouncementDescription__c"
    When I enter value "Library" into field "fieldEligibleApplicantTypes__c"
    When I enter value "200" into field "fieldApplicationDueDate__c"
    And I navigate to "Financials" sub tab
    When I enter value "10" into field "fieldSCDE_MaxAdminCostRate__c"
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
    And I click on top right button "Associate" in flex table with id "---tableID:-:GoalsAndObjectives---"
    When I click "Associate" after selection of "SPO-0001" in the table "---tableID:-:Modal---"
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementKPI---"
    When I click "Associate" after selection of "KPI-0000" in the table "---tableID:-:AnnouncementKPIModal---"
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
    #188965 #188967
    And I navigate to "Budget" sub tab
    Then I softly see that "Max Admin Cost Rate" rendered in view mode only
    #189027
    And I softly see field "Total Budgeted Amount" as "$1,100.00"
    Then I softly see that "Total Budgeted Amount" rendered in view mode only
    #189019
    And I click on "Edit" in the page details
    When I enter value "200" into field " fieldSCDE_AdminCostTaken__c"
    And I click on "Save" in the page details
    And I click on "Submit Application" in the page details
    Then I softly see the text containing :
      | Budget Tab - 'Admin Cost Taken' cannot be greater than the 'Max Admin Cost Allowed'. |
    #189020
    And I hovering mouse on help text icon inside page block detail "Admin Cost Taken"
    Then I softly see "Admin Cost Taken' should total the sum of all admin costs entered in the 'Budget" shown as help text
    #190117
    And I hovering mouse on help text icon inside page block detail "Max Admin Cost Allowed"
    Then I softly see "If an allocation is provided for the application, this field is calculated using the 'Allocation amount'. Otherwise, this field is calculated using the 'Total Budgeted Amount'. Calculation is as follows: (Allocation Amount or Total Budgeted Amount * Max Admin Cost Rate)." shown as help text
    #189025
    And I hovering mouse on help text icon inside page block detail "Indirect Cost Taken"
    Then I softly see "'Indirect Cost Taken' should be the sum of all indirect costs entered in the 'Budget' section below." shown as help text
    #188969
    Then I softly see field "Max Admin Cost Allowed" as "100"

  @188968 @188966 @188991 @190121 @sprint-5 @userStory-187057
  Scenario: Verify for external user if the 'Maximum Admin Cost Rate' field on the announcement is blank, then  'Max Admin Cost Allowed'  field is hidden.
  | Verify for the external application record owner if the 'Maximum Admin Cost Rate' field on the announcement is blank, then this field is blank on application
  | Verify there is no validation on Submit application  if the 'Maximum Admin Cost Rate' field on the announcement is blank
  | Verify when Allocation Amount  field is blank then it is calculated using Total Budgeted Amount
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
    When I enter value "Yes" into field "fieldIsGoalsRequired__c"
    When I enter value "Yes" into field "fieldKPIsRequired__c"
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
    And I click on top right button "Associate" in flex table with id "---tableID:-:GoalsAndObjectives---"
    When I click "Associate" after selection of "SPO-0001" in the table "---tableID:-:Modal---"
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementKPI---"
    When I click "Associate" after selection of "KPI-0000" in the table "---tableID:-:AnnouncementKPIModal---"
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
    #188968
    And I navigate to "Budget" sub tab
    Then I softly do not see "Max Admin Cost Allowed" inside page block detail
    #188966
    Then I softly see field "Max Admin Cost Rate" as ""
    #188991
    And I click on "Edit" in the page details
    When I enter value "100" into field " fieldSCDE_AdminCostTaken__c"
    And I click on "Save" in the page details
    And I click on "Submit Application" in the page details
    Then I softly see the text containing :
      | Files Tab - All mandatory forms must be 100% completed |
    #190121
    And I softly see field "Total Budgeted Amount" as "$1,100.00"

  @186433 @186432 @sprint-4 @userStory-185382
  Scenario: Verify the Performance tab's Technical Proposal section is hidden
  |Verify the Proposals tab is renamed to Performance tab
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
    When I enter value "Yes" into field "fieldIsGoalsRequired__c"
    When I enter value "Yes" into field "fieldKPIsRequired__c"
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
    And I click on top right button "Associate" in flex table with id "---tableID:-:GoalsAndObjectives---"
    When I click "Associate" after selection of "SPO-0001" in the table "---tableID:-:Modal---"
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementKPI---"
    When I click "Associate" after selection of "KPI-0000" in the table "---tableID:-:AnnouncementKPIModal---"
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
    When I re-login to "As a Grantor" app as "PM" user on "INTERNAL" portal
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    When I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:InternalApplicationTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:InternalApplicationTableId---"
    #186433
    And I navigate to "Performance" sub tab
    Then I softly do not see "Technical Proposal" page block displayed
    #186432
    Then I softly can see "Performance" sub tab at view detail page

  @186429 @186425 @186430 @186427 @186431 @186424 @186428 @186426 @186434 @sprint-4 @userStory-185382
  Scenario: Verify Program Income? field is hidden on  Overview tab's Opportunity Overview section on the Application section
  |Verify that  UEI and is ready only on the Overview tabs , Information section on the Application Internal view
  |Verify the  Office field is added and shows the Office from the Announcement as read-only  on  Overview tab's Opportunity Overview section on the Application section
  |Verify the Congressional District is hidden on  Overview tab's Place of Performance section on the Application
  |Verify the  Opportunity ID field is relabeled to be Opportunity EGMS ID and has the following updated help text  on  Overview tab's Opportunity Overview section on the Application section Help text:  Funding opportunity associated with this application.
  |Verify the DUNS field is hidden on the Overview tabs Information section on the Application
  |Verify the Country is hidden on  Overview tab's Place of Performance section on the Application Internal view
  |Verify the layout has 4 columns to match the layout of sections below. on the Overview tabs Information section on the Application on internal side
  |Verify the  Performance tab is hidden if both Objectives and KPIs are not required for the related announcement.
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
    When I re-login to "As a Grantor" app as "PM" user on "INTERNAL" portal
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    When I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:InternalApplicationTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:InternalApplicationTableId---"
      #186429
    Then I softly do not see field "Program Income?" inside "Opportunity Overview" section
      #186425
    Then I softly see field "UEI" as "XSGWZYNU6FZ6"
      #186430
    Then I softly see field "Office" as "Ofc"
      #186427
    Then I softly do not see field "Congressional District" inside "Primary Place of Performance" section
      #186431
    Then I softly see field "Opportunity EGMS ID" inside "Opportunity Overview" section
    And I hovering mouse on help text icon inside page block detail "Opportunity EGMS ID"
    Then I softly see "Funding opportunity associated with this application" shown as help text
    #186424
    Then I softly do not see field "DUNS" inside "Information" section
    #186428
    Then I softly do not see field "Country" inside "Primary Place of Performance" section
    #186426
    Then I softly see field "Applicant Organization" inside "Information" section
    Then I softly see field "Address" inside "Information" section
    Then I softly see field "EIN" inside "Information" section
    Then I softly see field "UEI" inside "Information" section
    #186434
    Then I softly cannot see "Performance" sub tab at view detail page

  @189708 @189465 @189469 @189449 @189460 @189462 @189461 @189456 @189463 @189466 @189457 @189712 @189713 @189471 @189472 @189180 @189491 @189442 @189197 @189198 @188993 @189446 @189445 @189425 @189443 @189485 @189202 @189489 @189447 @189483 @189187 @189475 @190173 @190174 @189710 @189480 @189423 @189477 @sprint-5 @userStory-187074 @UmangParekh
  Scenario: Verify "Budget For" field should be displayed on the modal, only when "School" is selected in "Detailed Budgeting Options" picklist on Announcement
  | Verify "Cash Match" field is an optional field.
  | Verify "Non Cash Match" field is an optional field.
  | Verify "Object Code" field on the modal is lookup to all object codes.
  | Verify "Cost" field is required on save.
  | Verify "Award Total" field is a calculated field (Quantity * Cost)
  | Verify "Cost" field is a Currency field that allows 2 decimals
  | Verify "Quantity" field is a numeric field that allows 2 decimals.
  | Verify "Cash Match" field is a currency field that allows 2 decimals
  | Verify "Non Cash Match" is a currency field that allows 2 decimals.
  | Verify "Quantity" field is required on save
  | Verify "School" field is a required field on modal, when "Schoolwide" option is selected in the "Budget For" dropdown on the modal.
  | Verify "School" field is not a required field on modal, when "Schoolwide" option is not selected in the "Budget For" dropdown on the modal.
  | Verify "Total Cash Match" is a calculated field (Total Cash Match = Cash Match + Non Cash Match )
  | Verify "Total Project Cost" is a calculated field (Total Project Cost = Award Total + Total Match)
  | Verify external user on clicking the "Add" action button navigates to a detailed modal.
  | Verify "Description" field inside the Narrative section should have text area with 2000 char
  | Verify external user should not see the focus area title on the modal, if Focus Area Required is set to "NO" on announcement, except the standard focus area
  | Verify external user should see "Save and Cancel" action buttons on the Add/Update Detailed Budget modal
  | Verify external user should able to save the record on the Add/Update Detailed Budget modal
  | Verify external user should see focus area table has an "Add" action button
  | Verify external user should see mentioned fields on the modal.
  | Verify external user should see static text instructions under the "Details" section on the modal
  | Verify external user should see the "Function Code" in read only
  | Verify external user should see the function code on the modal
  | Verify the "Budget For" field on the modal is a dropdown field with 2 options.
  | Verify on cancel, system should show a warning message on the modal
  | Verify the "Narrative" section should have a new field as "Description"
  | Verify the "Object Code" field on the modal is required on save
  | Verify the custom message, when "School" field is kept blank
  | Verify the label or name of the modal as 'Add/Update Detailed Budget'
  | Verify the modal shows related Detailed Budgeting Options fields which were selected on the related Announcement
  | Verify the behaviour of close modal
  | Verify the behaviour of cancel modal
  | Verify "Budget For" field is displayed on the modal, if "School" is selected in "Detailed Budgeting Options" picklist on Announcement
  | Verify when " School" is selected as Detailed Budgeting Option on the announcement, then "Budget For" field should get displayed on the modal.
  | Verify external user should see the "Focus Area title" in read only on the modal, if Focus Area Required is set to "Yes" on announcement
  | Verify the order of the Budget Detailed options
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
    When I enter value "Yes" into field "fieldIsGoalsRequired__c"
    When I enter value "Yes" into field "fieldKPIsRequired__c"
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
    And I click on top right button "Associate" in flex table with id "---tableID:-:GoalsAndObjectives---"
    When I click "Associate" after selection of "SPO-0001" in the table "---tableID:-:Modal---"
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementKPI---"
    When I click "Associate" after selection of "KPI-0000" in the table "---tableID:-:AnnouncementKPIModal---"
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
    And I navigate to "Budget" sub tab
    And I expand nested table containing column value "BP01"
    When I click on "Add" icon for "110 - General Instruction" inside flex table with id "---tableID:-:ApplicationBudgetPeriodFunctionCodes---"
    #189708
    Then I softly see field "fieldSCDE_BudgetFor__c" inside "Add/Update Detailed Budget" section
    #189465
    Then I softly do not see asterisk mark on "Cash Match"
    #189469
    Then I softly do not see asterisk mark on "Non Cash Match"
    #189449
    Then I softly see field "fieldMST_Budget_Category__c" inside "Add/Update Detailed Budget" section
    #189460
    When I enter value "100 - Salaries" into field "fieldMST_Budget_Category__c"
    When I enter value "2.111" into field "fieldQuantity__c"
    When I enter value "Districtwide" into field "fieldSCDE_BudgetFor__c"
    When I enter value "Testing" into field "fieldNarrative__c"
    When I enter value "10.11" into field "fieldCashMatch__c"
    When I enter value "5.11" into field "fieldNonCashMatch__c"
    And I click modal button "Save"
    Then I softly see the following messages in the page details contains:
      | Cost is required to save. |
    #189462 #189461 #189456
    When I enter value "100.111" into field "fieldUnitPrice__c"
    And I click modal button "Save"
    And I expand nested table containing column value "BP01"
    Then I softly see value "$211.23" for title "Award Total" inside table "---tableID:-:ApplicationBudgetPeriodFunctionCodes---"
    #189463
    And I expand nested table containing column value "110 - General Instruction"
    Then I softly see value "$10.11" for title "Cash Match" inside table "---tableID:-:ApplicationBudgetPeriodFunctionCodes---"
    #189466
    Then I softly see value "$5.11" for title "Non Cash Match" inside table "---tableID:-:ApplicationBudgetPeriodFunctionCodes---"
    #189457
    When I click on "Add" icon for "110 - General Instruction" inside flex table with id "---tableID:-:ApplicationBudgetPeriodFunctionCodes---"
    When I enter value "100 - Salaries" into field "fieldMST_Budget_Category__c"
    When I enter value "Schoolwide" into field "fieldSCDE_BudgetFor__c"
    When I enter value "Testing" into field "fieldNarrative__c"
    When I enter value "100.111" into field "fieldUnitPrice__c"
    And I click modal button "Save"
    Then I softly see the following messages in the page details contains:
      | Quantity is Required to Save. |
    #189712
    Then I softly see asterisk mark on "School"
    #189713
    And I close modal by clicking the top right x button
    When I click on "Add" icon for "110 - General Instruction" inside flex table with id "---tableID:-:ApplicationBudgetPeriodFunctionCodes---"
    When I enter value "100 - Salaries" into field "fieldMST_Budget_Category__c"
    When I enter value "2.111" into field "fieldQuantity__c"
    When I enter value "Districtwide" into field "fieldSCDE_BudgetFor__c"
    Then I softly do not see asterisk mark on "School"
    #189471
    When I enter value "Testing" into field "fieldNarrative__c"
    When I enter value "10.11" into field "fieldCashMatch__c"
    When I enter value "5.11" into field "fieldNonCashMatch__c"
    When I enter value "100.111" into field "fieldUnitPrice__c"
    And I click modal button "Save"
    And I expand nested table containing column value "BP01"
    And I expand nested table containing column value "110 - General Instruction"
    Then I softly see value "$15.22" for title "Total Match" inside table "---tableID:-:ApplicationBudgetPeriodFunctionCodes---"
    #189472
    Then I softly see value "$452.90" for title "Total Project Cost" inside table "---tableID:-:ApplicationBudgetPeriodFunctionCodes---"
    #189180
    And I refresh the page
    And I expand nested table containing column value "BP01"
    When I click on "Add" icon for "110 - General Instruction" inside flex table with id "---tableID:-:ApplicationBudgetPeriodFunctionCodes---"
    Then I softly see "Add/Update Detailed Budget" in flex table header "---tableID:-:ApplicationDetailedBudgetModal---"
    #189491
    And I hovering mouse on help text icon inside page block detail "Narrative"
    Then I softly see "2,000 Char Limit" shown as help text
    #189442
    Then I softly do not see "Focus Area" inside page block detail
    #189197
    Then I softly can see top right button "Save" in flex table with id "---tableID:-:ApplicationDetailedBudgetModal---"
    Then I softly can see top right button "Cancel" in flex table with id "---tableID:-:ApplicationDetailedBudgetModal---"
    #189198
    When I enter value "100 - Salaries" into field "fieldMST_Budget_Category__c"
    When I enter value "2.111" into field "fieldQuantity__c"
    When I enter value "Districtwide" into field "fieldSCDE_BudgetFor__c"
    When I enter value "Testing" into field "fieldNarrative__c"
    When I enter value "100.111" into field "fieldUnitPrice__c"
    And I click modal button "Save"
    And I expand nested table containing column value "BP01"
    And I expand nested table containing column value "110 - General Instruction"
    Then I softly see value "100 - Salaries" for title "Object Code" inside table "---tableID:-:ApplicationBudgetPeriodFunctionCodes---"
    #188993
    And I refresh the page
    And I expand nested table containing column value "BP01"
    Then I softly can see row level action button "Add" against "110 - General Instruction" in flex table with id "---tableID:-:ApplicationBudgetPeriodFunctionCodes---"
    #189446
    When I click on "Add" icon for "110 - General Instruction" inside flex table with id "---tableID:-:ApplicationBudgetPeriodFunctionCodes---"
    Then I softly see field "Object Code" inside "Add/Update Detailed Budget" section
    Then I softly see field "Quantity" inside "Add/Update Detailed Budget" section
    Then I softly see field "Cost" inside "Add/Update Detailed Budget" section
    Then I softly see field "Cash Match" inside "Add/Update Detailed Budget" section
    Then I softly see field "Non Cash Match" inside "Add/Update Detailed Budget" section
    #189445
    Then I softly see the text :
      | All fields below are required, except Cash Match and Non Cash Match are optional. |
    #189425
    Then I softly see that "Function Code" rendered in view mode only
    #189443
    Then I softly see "Function Code" inside page block detail
    #189485
    Then I see the following options in dropdown field "fieldSCDE_BudgetFor__c" :
      | Districtwide | Schoolwide |
    #189202
    When I enter value "100 - Salaries" into field "fieldMST_Budget_Category__c"
    When I enter value "2.111" into field "fieldQuantity__c"
    When I enter value "Districtwide" into field "fieldSCDE_BudgetFor__c"
    When I enter value "Testing" into field "fieldNarrative__c"
    When I enter value "100.111" into field "fieldUnitPrice__c"
    And I click modal button "Cancel"
    Then I softly see the following messages in the page details contains:
      | Are you sure you want to cancel? |
    #189489
    And I refresh the page
    And I expand nested table containing column value "BP01"
    When I click on "Add" icon for "110 - General Instruction" inside flex table with id "---tableID:-:ApplicationBudgetPeriodFunctionCodes---"
    Then I softly see field "Description" inside "Narrative" section
    #189447
    When I enter value "2.111" into field "fieldQuantity__c"
    When I enter value "Schoolwide" into field "fieldSCDE_BudgetFor__c"
    When I enter value "Testing" into field "fieldNarrative__c"
    When I enter value "100.111" into field "fieldUnitPrice__c"
    And I click modal button "Save"
    Then I softly see the following messages in the page details contains:
      | Object Code is required to save. |
    #189483
    When I enter value "100 - Salaries" into field "fieldMST_Budget_Category__c"
    And I click modal button "Save"
    Then I softly see the following messages in the page details contains:
      | School is required if 'Budget For' is Schoolwide |
    #189187
    Then I softly see "Add/Update Detailed Budget" in flex table header "---tableID:-:ApplicationDetailedBudgetModal---"
    #189475
    Then I softly see field "Use of Funds" inside "Details" section
    Then I softly see field "Course" inside "Details" section
    #190173 #190174
    And I close modal by clicking the top right x button
    Then I softly see value "$452.90" for title "Total Project Cost" inside table "---tableID:-:ApplicationBudgetPeriodFunctionCodes---"
    #189710 #189480
    And I expand nested table containing column value "BP01"
    When I click on "Add" icon for "110 - General Instruction" inside flex table with id "---tableID:-:ApplicationBudgetPeriodFunctionCodes---"
    Then I softly see "Budget For" inside page block detail
    #189423
    Then I softly see that "Focus Area" rendered in view mode only
    #189477
    Then I see only the following ordered page blocks :
      | Data Need is Based on | Evidence Level | Identified Need | Use of Funds | Program Activity Type | Budget For | School | Course | District |

  @189723 @189726 @189725 @189742 @sprint-5 @userStory-188671
  Scenario: Verify that do not see the "Indirect Cost Rate" field
  |Verify that do not see the "Indirect Cost Taken" field
  |Verify that do not see the "Max Indirect Cost Allowed" field
  |Verify that I do not see that the validation msg "indirect cost taken does not exceed max indirect cost allowed" when 'Indirect Cost Type' is Not Allowed
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
    And I navigate to "Budget" sub tab
      #189723
    Then I softly do not see "Indirect Cost Rate" inside page block detail
      #189726
    Then I softly do not see "Indirect Cost Taken" inside page block detail
      #189725
    Then I softly do not see "Potential Indirect Cost Recovery" inside page block detail
    #189742
    And I click on "Submit Application" in the page details
    Then I cannot see the following messages in the page details contains:
      | indirect cost taken does not exceed Potential Indirect Cost Recovery |

  @189750 @189753 @189752 @sprint-5 @userStory-188671
  Scenario: Verify that do not see the Indirect Cost Rate field (Internal user)
  |Verify that do not see the Indirect Cost Taken (Internal user)
  |Verify that do not see the Max Indirect Cost Allowed (Internal user)
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
    When I re-login to "As a Grantor" app as "PM" user on "INTERNAL" portal
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    When I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:InternalApplicationTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:InternalApplicationTableId---"
    And I navigate to "Budget" sub tab
      #189750
    Then I softly do not see "Indirect Cost Rate" inside page block detail
      #189753
    Then I softly do not see "Indirect Cost Taken" inside page block detail
    #189752
    Then I softly do not see "Potential Indirect Cost Recovery" inside page block detail


  @190355 @190393 @190358 @190362 @sprint-5 @userStory-187985
  Scenario: Verify external user should see the field 'Potential Indirect Cost Recovery' on application's Budget tab, which is relabelled for 'Max Indirect Cost Allowed'
  |Verify internal user should see the field 'Potential Indirect Cost Recovery' on application's Budget tab, which is relabelled for 'Max Indirect Cost Allowed'
  |Verify the help text for "Potential Indirect Cost Recovery" field on application's Budget tab
  |Verify when external user enters more than Potential Indirect Cost Recovery value in "Indirect Cost Taken" field, then system should throw validation message
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
    And I navigate to "Budget" sub tab
      #190355
    Then I softly see field "Potential Indirect Cost Recovery" inside "Allocation, Admin, and Indirect Costs" section
     #190393
    Then I softly do not see field "Max Indirect Cost Allowed" inside "Allocation, Admin, and Indirect Costs" section
    #190358
    And I hovering mouse on help text icon inside page block detail "Potential Indirect Cost Recovery"
    Then I softly see "Contact the program office regarding allowability" shown as help text
    #190362
    And I click on "Edit" in the page details
    When I enter value "5" into field "fieldSCDE_IndirectCostTaken__c"
    And I click on "Save" in the page details
    Then I softly see the following messages in the page details contains:
      | Budget Tab - Indirect Cost Taken amount cannot be greater than the Potential Indirect Cost Recovery. |

  @190891 @sprint-5 @userStory-187909
  Scenario: Verify  that the application review form has a N/A option for  questions where the response type is Yes/No (Pre-Screen Review)
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
    When I click on "Add" icon for "110 - General Instruction" inside flex table with id "---tableID:-:ApplicationBudgetPeriod---"
    When I enter value "100 - Salaries" into field "fieldMST_Budget_Category__c"
    When I enter value "1" into field "fieldQuantity__c"
    When I enter value "2000" into field "fieldUnitPrice__c"
    When I enter value "Schoolwide" into field "fieldSCDE_BudgetFor__c"
    When I enter value "Wright Middle" into field "fieldSchool__c"
    When I enter value "test" into field "fieldNarrative__c"
    And I click modal button "Save"
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
    And I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:ApplicationReviews---"
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
    And I check "{SavedValue:Automation Runtime Announcement}" boxes in flex table with id "---tableID:-:Reviews---"
    When I click on top right button "Send for Review" in flex table with id "---tableID:-:Reviews---"
    And I pause execution for "3" seconds
    When I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    And I perform quick search for "{SavedValue:APPID}" in "---tableID:-:ApplicationPendingTask---" panel
    And I click on "Start" icon for "{SavedValue:APPID}" inside flex table with id "---tableID:-:ApplicationPendingTask---"
    Then I softly see "--None--:Yes:No:N/A" inside selectbox field "Does the applicant meet the eligibility criteria laid out in the funding opportunity announcement?"

  @189938 @190435 @190436 @190892 @sprint-5 @userStory-187909
  Scenario: Verify  that the application review form has a N/A option for all questions where the response type is Yes/No (Program Review Form - SME review)
  |Verify  that the application review form has a N/A option for questions where the response type is Yes/No (Fiscal Review Form - SME review)
  |Verify  that the application review form has a N/A option for questions where the response type is Yes/No (Compliance Review Form - SME review)
  |Verify  that the application review form has a N/A option for questions where the response type is Yes/No (Management  Review)
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
    When I enter value "0" into field "fieldSCDE_IndirectCostTaken__c"
    And I click on "Save" in the page details
    And I expand nested table containing column value "BP01"
    When I click on "Add" icon for "110 - General Instruction" inside flex table with id "---tableID:-:ApplicationBudgetPeriod---"
    When I enter value "100 - Salaries" into field "fieldMST_Budget_Category__c"
    When I enter value "1" into field "fieldQuantity__c"
    When I enter value "2000" into field "fieldUnitPrice__c"
    When I enter value "Schoolwide" into field "fieldSCDE_BudgetFor__c"
    When I enter value "Wright Middle" into field "fieldSchool__c"
    When I enter value "test" into field "fieldNarrative__c"
    And I click modal button "Save"
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
    And I check "{SavedValue:Automation Runtime Announcement}" boxes in flex table with id "---tableID:-:Reviews---"
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
    When I click on top right button "Promote to Next Step" in flex table with id "---tableID:-:ReviewApplication---"
    And I click on "Next Review Step" in the page details
    When I edit the following rows inline in flex table with id "---tableID:-:ReviewForms---" by clicking "Edit" :
      | Form Name         | Due in Days |
      | Program Review    | 5           |
      | Fiscal Review     | 5           |
      | Compliance Review | 5           |
    When I enter the following values into flex table with id "---tableID:-:Reviewer---" by clicking "Add" :
      | Reviewer      |
      | Automation PM |
    And I click on "Assign" icon for "Automation PM" inside flex table with id "---tableID:-:Reviewer---"
    And I check "Select All" boxes in flex table with id "---tableID:-:AssignApplicationToUser---"
    And I click on top right button "Assign" in flex table with id "---tableID:-:AssignApplicationToUser---"
    And I pause execution for "5" seconds
    And I refresh the page
    And I check "Select All" boxes in flex table with id "---tableID:-:Reviews---"
    When I click on top right button "Send for Review" in flex table with id "---tableID:-:Reviews---"
    And I pause execution for "5" seconds
    #Program Review
    And I navigate to "Applications" tab
    When I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    And I perform quick search for "{SavedValue:APPID}" in "---tableID:-:ApplicationPendingTask---" panel
    And I click on "Start" icon for "{SavedValue:APPID}" inside flex table with id "---tableID:-:ApplicationPendingTask---"
    #189938
    Then I softly see "--None--:Yes:No:N/A" inside selectbox field "Does the applicant demonstrate sufficient management and organizational capacity?"
    When I complete filling in the Review form with recommendation "Recommended"
    And I click on "Save" in the page details
    And I wait for "6" seconds
    When I click on "Submit" in the page details without processing
    When I click alert button "OK"
    And I wait for "5" seconds
    #Fiscal Review
    And I navigate to "Applications" tab
    When I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    And I perform quick search for "{SavedValue:APPID}" in "---tableID:-:ApplicationPendingTask---" panel
    And I click on "Start" icon for "{SavedValue:APPID}" inside flex table with id "---tableID:-:ApplicationPendingTask---"
    #190435
    Then I softly see "--None--:Yes:No:N/A" inside selectbox field "Has the applicant submitted a sufficient budget narrative matching the categories contained in the budget?"
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
    #190436
    Then I softly see "--None--:Yes:No:N/A" inside selectbox field "Does the schedule account for all applicable regulatory/permit reviews?"
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
    And I check "Select All" boxes in flex table with id "---tableID:-:AssignApplicationToUser---"
    And I click on top right button "Assign" in flex table with id "---tableID:-:AssignApplicationToUser---"
    And I refresh the page
    And I pause execution for "5" seconds
    And I check "{SavedValue:Automation Runtime Announcement}" boxes in flex table with id "---tableID:-:Reviews---"
    When I click on top right button "Send for Review" in flex table with id "---tableID:-:Reviews---"
    And I pause execution for "3" seconds
    And I navigate to "Applications" tab
    When I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    And I perform quick search for "{SavedValue:APPID}" in "---tableID:-:ApplicationPendingTask---" panel
    And I click on "Start" icon for "{SavedValue:APPID}" inside flex table with id "---tableID:-:ApplicationPendingTask---"
    Then I softly see "--None--:Yes:No:N/A" inside selectbox field "Is the project cost effective and has a cost estimate been provided?"

  @189949 @sprint-5 @userStory-187911
  Scenario: Verify internal user when click the "View" action from the "Applications" table, the application opens in a new tab
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
    When I enter value "0" into field "fieldSCDE_IndirectCostTaken__c"
    And I click on "Save" in the page details
    And I expand nested table containing column value "BP01"
    When I click on "Add" icon for "110 - General Instruction" inside flex table with id "---tableID:-:ApplicationBudgetPeriod---"
    When I enter value "100 - Salaries" into field "fieldMST_Budget_Category__c"
    When I enter value "1" into field "fieldQuantity__c"
    When I enter value "2000" into field "fieldUnitPrice__c"
    When I enter value "Schoolwide" into field "fieldSCDE_BudgetFor__c"
    When I enter value "Wright Middle" into field "fieldSchool__c"
    When I enter value "test" into field "fieldNarrative__c"
    And I click modal button "Save"
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
    And I click on "View" icon for "{SavedValue:APPID}" inside flex table with id "---tableID:-:ReviewApplication---"
    Then I softly see new tab is opened

  @189948 @sprint-5 @userStory-187911
  Scenario: Verify internal user when click the "View" action from the "Reviews" table, the review form opens in a new tab
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
    When I enter value "0" into field "fieldSCDE_IndirectCostTaken__c"
    And I click on "Save" in the page details
    And I expand nested table containing column value "BP01"
    When I click on "Add" icon for "110 - General Instruction" inside flex table with id "---tableID:-:ApplicationBudgetPeriod---"
    When I enter value "100 - Salaries" into field "fieldMST_Budget_Category__c"
    When I enter value "1" into field "fieldQuantity__c"
    When I enter value "2000" into field "fieldUnitPrice__c"
    When I enter value "Schoolwide" into field "fieldSCDE_BudgetFor__c"
    When I enter value "Wright Middle" into field "fieldSchool__c"
    When I enter value "test" into field "fieldNarrative__c"
    And I click modal button "Save"
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
    And I check "{SavedValue:Automation Runtime Announcement}" boxes in flex table with id "---tableID:-:Reviews---"
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
    When I click on top right button "Promote to Next Step" in flex table with id "---tableID:-:ReviewApplication---"
    And I click on "Next Review Step" in the page details
    When I edit the following rows inline in flex table with id "---tableID:-:ReviewForms---" by clicking "Edit" :
      | Form Name         | Due in Days |
      | Program Review    | 5           |
      | Fiscal Review     | 5           |
      | Compliance Review | 5           |
    When I enter the following values into flex table with id "---tableID:-:Reviewer---" by clicking "Add" :
      | Reviewer      |
      | Automation PM |
    And I click on "Assign" icon for "Automation PM" inside flex table with id "---tableID:-:Reviewer---"
    And I check "Select All" boxes in flex table with id "---tableID:-:AssignApplicationToUser---"
    And I click on top right button "Assign" in flex table with id "---tableID:-:AssignApplicationToUser---"
    And I pause execution for "5" seconds
    And I refresh the page
    And I click on "View" icon for "{SavedValue:APPID}" inside flex table with id "---tableID:-:Reviews---"
    Then I softly see new tab is opened
    And I softly see field "Form Name" as "Program Review"

  @190561 @189956 @190562 @sprint-5 @userStory-187918
  Scenario: Verify the Conflict of Interest section is hidden on all review forms of application (Pre-Screen - Review )
  |Verify the Conflict of Interest section is hidden on all review forms of application (SME - Review - Program Review Form )
  |Verify  the Conflict of Interest section is hidden on all review forms of application (Management review )
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
    When I enter value "0" into field "fieldSCDE_IndirectCostTaken__c"
    And I click on "Save" in the page details
    And I expand nested table containing column value "BP01"
    When I click on "Add" icon for "110 - General Instruction" inside flex table with id "---tableID:-:ApplicationBudgetPeriod---"
    When I enter value "100 - Salaries" into field "fieldMST_Budget_Category__c"
    When I enter value "1" into field "fieldQuantity__c"
    When I enter value "2000" into field "fieldUnitPrice__c"
    When I enter value "Schoolwide" into field "fieldSCDE_BudgetFor__c"
    When I enter value "Wright Middle" into field "fieldSchool__c"
    When I enter value "test" into field "fieldNarrative__c"
    And I click modal button "Save"
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
    And I check "{SavedValue:Automation Runtime Announcement}" boxes in flex table with id "---tableID:-:Reviews---"
    When I click on top right button "Send for Review" in flex table with id "---tableID:-:Reviews---"
    When I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    And I perform quick search for "{SavedValue:APPID}" in "---tableID:-:ApplicationPendingTask---" panel
    And I click on "Start" icon for "{SavedValue:APPID}" inside flex table with id "---tableID:-:ApplicationPendingTask---"
    #190561
    Then I softly do not see "Conflict of Interest" page block displayed
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
    When I click on top right button "Promote to Next Step" in flex table with id "---tableID:-:ReviewApplication---"
    And I click on "Next Review Step" in the page details
    When I edit the following rows inline in flex table with id "---tableID:-:ReviewForms---" by clicking "Edit" :
      | Form Name         | Due in Days |
      | Program Review    | 5           |
      | Fiscal Review     | 5           |
      | Compliance Review | 5           |
    When I enter the following values into flex table with id "---tableID:-:Reviewer---" by clicking "Add" :
      | Reviewer      |
      | Automation PM |
    And I click on "Assign" icon for "Automation PM" inside flex table with id "---tableID:-:Reviewer---"
    And I check "Select All" boxes in flex table with id "---tableID:-:AssignApplicationToUser---"
    And I click on top right button "Assign" in flex table with id "---tableID:-:AssignApplicationToUser---"
    And I pause execution for "5" seconds
    And I refresh the page
    When I check "Select All" boxes in flex table with id "---tableID:-:Reviews---"
    When I click on top right button "Send for Review" in flex table with id "---tableID:-:Reviews---"
    And I pause execution for "5" seconds
    #Program Review
    And I navigate to "Applications" tab
    When I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    And I perform quick search for "{SavedValue:APPID}" in "---tableID:-:ApplicationPendingTask---" panel
    And I click on "Start" icon for "{SavedValue:APPID}" inside flex table with id "---tableID:-:ApplicationPendingTask---"
    #189956
    Then I softly do not see "Conflict of Interest" page block displayed
    When I complete filling in the Review form with recommendation "Recommended"
    And I click on "Save" in the page details
    And I wait for "6" seconds
    When I click on "Submit" in the page details without processing
    When I click alert button "OK"
    And I wait for "5" seconds
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
    And I check "Select All" boxes in flex table with id "---tableID:-:AssignApplicationToUser---"
    And I click on top right button "Assign" in flex table with id "---tableID:-:AssignApplicationToUser---"
    And I refresh the page
    And I pause execution for "5" seconds
    And I check "{SavedValue:Automation Runtime Announcement}" boxes in flex table with id "---tableID:-:Reviews---"
    When I click on top right button "Send for Review" in flex table with id "---tableID:-:Reviews---"
    And I pause execution for "3" seconds
    And I navigate to "Applications" tab
    When I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    And I perform quick search for "{SavedValue:APPID}" in "---tableID:-:ApplicationPendingTask---" panel
    And I click on "Start" icon for "{SavedValue:APPID}" inside flex table with id "---tableID:-:ApplicationPendingTask---"
    #190562
    Then I softly do not see "Conflict of Interest" page block displayed

  @189696 @189693 @189698 @189699 @189697 @189703 @189705 @189702 @sprint-5 @userStory-187917
  Scenario: Verify that application Owner can see the status as 'Reviewed'
  | Verify that after application review, Owner should able to Submit the application for Approval.
  | Verify that when application review is completed, Owner can see the status of application reviews as Completed
  | Verify that for application review, Owner should able to see the multiple review forms.
  | Verify that application Owner can Validate the review forms after filling it.
  | Verify that the application Owner can view the forms associated with the application after filling it.
  | Verify that the application Owner should be able to view the various business forms.
  | Verify that the application Owner is not able to Edit the forms once it is Reviewed.
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
    When I click on "Add" icon for "110 - General Instruction" inside flex table with id "---tableID:-:ApplicationBudgetPeriod---"
    When I enter value "100 - Salaries" into field "fieldMST_Budget_Category__c"
    When I enter value "1" into field "fieldQuantity__c"
    When I enter value "2000" into field "fieldUnitPrice__c"
    When I enter value "Schoolwide" into field "fieldSCDE_BudgetFor__c"
    When I enter value "Wright Middle" into field "fieldSchool__c"
    When I enter value "test" into field "fieldNarrative__c"
    And I click modal button "Save"
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
    When I click on top right button "Promote to Next Step" in flex table with id "---tableID:-:ReviewApplication---"
    And I click on "Next Review Step" in the page details
    When I edit the following rows inline in flex table with id "---tableID:-:ReviewForms---" by clicking "Edit" :
      | Form Name         | Due in Days |
      | Program Review    | 5           |
      | Fiscal Review     | 5           |
      | Compliance Review | 5           |
    When I enter the following values into flex table with id "---tableID:-:Reviewer---" by clicking "Add" :
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
    #189696
    Then I softly can see top right button "Submit for Approval" in flex table with id "---tableID:-:ApplicationTableId---"
    #189693
    And I click on "Submit for Approval" in the page details
    When I "Approve" in the approval decision
    And I navigate to "Applications" tab
    When I navigate to "Applications" content inside "Applications" subheader on left panel
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:ApplicationTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:ApplicationTableId---"
    And I softly see field "Status" as "Reviewed"
    #189698
    And I navigate to "Related Log" tab
    Then I softly see value "Completed" for title "Status" inside table "---tableID:-:ReviewForms---"
    #189699
    And I expand nested table containing column value "SME Review"
    Then I softly see value "50.00%" for title "Form Weight" inside table "---tableID:-:ReviewForms---"
    #189697
    Then I softly can see top right button "Validate" in flex table with id "---tableID:-:ReviewForms---"
    #189703
    Then I softly can see row level action button "View" against "SME Review" in flex table with id "---tableID:-:ReviewForms---"
    #189705
    And I navigate to "Setup" tab
    Then I softly see value "Grantor Site Visit Forms" for title "Package Name" inside table "---tableID:-:ApplicationForms---"
    Then I softly see value "Grantor Progress Report Forms" for title "Package Name" inside table "---tableID:-:ApplicationForms---"
    #189702
    Then I softly cannot see row level action button "Edit" against "Management Review" in flex table with id "---tableID:-:ApplicationForms---"

  @189731 @189730 @191284 @189728 @189727 @sprint-5 @userStory-187067
  Scenario: | Verify that Application owner can see the 'Budget Summary' Button in Budget Section for the application.
  | Verify that Application owner can see the Budget Narrative Description field inside Budget Section for the application.
  | Verify that application owner can see the Award Total title inside Budget Section for the application.
  | Verify application owner can see the different Function Codes in Budget Section for the application.
  | Verify that application owner can see the object codes inside Budget Section for the application.
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
    When I click on "Add" icon for "110 - General Instruction" inside flex table with id "---tableID:-:ApplicationBudgetPeriod---"
    When I enter value "100 - Salaries" into field "fieldMST_Budget_Category__c"
    When I enter value "1" into field "fieldQuantity__c"
    When I enter value "2000" into field "fieldUnitPrice__c"
    When I enter value "Schoolwide" into field "fieldSCDE_BudgetFor__c"
    When I enter value "Wright Middle" into field "fieldSchool__c"
    When I enter value "test" into field "fieldNarrative__c"
    And I click modal button "Save"
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
    And I navigate to "Budget" tab
    #189731
    Then I softly can see top right button "Budget Summary" in flex table with id "---tableID:-:ApplicationBudgetPeriod---"
    #189730
    And I softly see field "Budget Narrative" as "Justification"
    #191284
    Then I softly see value "$2,000.00" for title "Award Total" inside table "---tableID:-:ApplicationBudgetPeriod---"
    #189728
    And I expand nested table containing column value "110 - General Instruction"
    Then I softly cannot see row level action button "View" against "100 - Salaries" in flex table with id "---tableID:-:ApplicationBudgetPeriod---"
    #189727
    Then I softly see value "100 - Salaries" for title "Object Code" inside table "---tableID:-:ApplicationBudgetPeriod---"

  @191157 @189597 @189586 @189542 @sprint-5 @userStory-187060
  Scenario: Verify Budgeted amount column shows the sum all Award Total amounts from the budget for all line items for the school.
  | Verify the "Budgeted Amount " field is displayed inside Allocations by school
  | Verify that for validation message is displayed for formula announcements that have allocations By Applicant and School, if the sum of all line items for a school does not match the allocated amount for that school
  | Verify the validation message is displayed on submit to grantor application if the Total Budgeted Amount for the application in the Budget tab is not equal to the Allocation Amount for the application.
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
    When I enter value "Yes" into field "fieldIsGoalsRequired__c"
    When I enter value "Yes" into field "fieldKPIsRequired__c"
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
    And I click on top right button "Associate" in flex table with id "---tableID:-:GoalsAndObjectives---"
    When I click "Associate" after selection of "SPO-0001" in the table "---tableID:-:Modal---"
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementKPI---"
    When I click "Associate" after selection of "KPI-0000" in the table "---tableID:-:AnnouncementKPIModal---"
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
    And I navigate to "Budget" sub tab
    And I expand nested table containing column value "BP01"
    When I click on "Add" icon for "110 - General Instruction" inside flex table with id "---tableID:-:ApplicationBudgetPeriodFunctionCodes---"
    When I enter value "100 - Salaries" into field "fieldMST_Budget_Category__c"
    When I enter value "2" into field "fieldQuantity__c"
    When I enter value "Schoolwide" into field "fieldSCDE_BudgetFor__c"
    When I enter value "Testing" into field "fieldNarrative__c"
    When I enter value "100" into field "fieldUnitPrice__c"
    And I click modal button "Save"
    And I expand nested table containing column value "BP01"
   #191157
    Then I softly see value "$200.00" for title "Award Total" inside table "---tableID:-:ApplicationBudgetPeriodFunctionCodes---"
   #189597
    Then I softly see field "Budgeted Amount" inside "Allocations by School" section
    #189586 #189542
    And I click on "Submit Application" in the page details
    Then I softly see the text containing :
      | Budget Tab - The 'Budgeted Amount' for each school must equal the 'Allocation Amount' for the school. |
    Then I softly see the text containing :
      | Budget Tab - The 'Total Budgeted Amount' must be equal to the 'Allocation Amount' for the application. |

  @186928 @187581 @187582 @186785 @187599 @186789 @186791 @186788 @186792 @186796 @186797 @186790 @187594 @187586 @187588 @187592 @186787 @187587 @187585 @187598 @187593 @186778 @187600 @186794 @187589 @186799 @186800 @sprint-5 @userStory-185281
  Scenario: Verify external user should receive a task that a revision has been requested with Task Type as "Application Revision Request"
  | Verify external user should receive a task that a revision has been requested with Task Subject as Revise Application <<Application Title>>
  | Verify external user should receive a task that a revision has been requested with Due Date that is populated from the Revision tab
  | Verify the behaviour when external user click on the "Play" icon for the Task.
  | Verify external user should  provide some text in the Applicant Response section on Revision tab
  | Verify external user should Add data, from only those sections of application, that are selected internal user (SCDE) in the "Application section for Revisions" fields on the Application
  | Verify external user should Delete data, from only those sections of application, that are selected internal user (SCDE) in the "Application section for Revisions" fields on the Application
  | Verify external user should edit data, from only those sections of application, that are selected internal user (SCDE) in the "Application section for Revisions" fields on the Application
  | Verify external user should edit forms section, if internal user selects "Allow Edits" for the forms section on the Application
  | Verify external user should get an error, if application is submitted without entering the text in Applicant Response section on Revisions tab
  | Verify external user should get a confirmation pop-up on the submit of revised application
  | Verify external user should Remove data, from only those sections of application, that are selected internal user (SCDE) in the "Application section for Revisions" fields on the Application
  | Verify external user should see 'Allow Edits' column is checked on Available forms for Revision section of Revision tab , if the announcement owner checked it for a given form.
  | Verify external user should see "Applicant Name" as the name of the subrecipient user who created the application in read only.
  | Verify external user should see "Application Section for Revisions" as read only fields on Revision tab
  | Verify external user should see "Available Forms for Revisions" section on Revision tab
  | Verify external user should see "Due Date" as read only fields on Revision tab
  | Verify external user should see "Revision Created Date" as the date/time on which the revision changes were first saved in read only.
  | Verify external user should see "Revision Request Status" as read only fields on Revision tab
  | Verify external user should see a new section "Applicant Response" on Revisions tab in Edit mode
  | Verify external user should see all forms associated with the application in "Available forms for Revisions sections" on Revision tab
  | Verify external user should see section "Explanation of Revisions Needed" on Revisions tab in Read Only mode
  | Verify external user should see Explanation of Revisions Needed' section with the data entered and saved by the SCDE announcement owner.
  | Verify external user should see the forms as Invalidated, if internal user selects the "Allow Edits" in forms section on the Application.
  | Verify internal user should see "Revised Submitted Date" as blank in read only fields on Revision tab
  | Verify if external user selects "Yes" on the confirmation pop-up of submit revised application, the application is submitted successfully, application status is set to 'Revision Submitted' and task is closed/completed.
  | Verify once external user submits the revised application, any other user in my organization, should not be able to edit anything in the application.
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
    When I click on "Add" icon for "110 - General Instruction" inside flex table with id "---tableID:-:ApplicationBudgetPeriod---"
    When I enter value "100 - Salaries" into field "fieldMST_Budget_Category__c"
    When I enter value "1" into field "fieldQuantity__c"
    When I enter value "2000" into field "fieldUnitPrice__c"
    When I enter value "Schoolwide" into field "fieldSCDE_BudgetFor__c"
    When I enter value "Wright Middle" into field "fieldSchool__c"
    When I enter value "test" into field "fieldNarrative__c"
    And I click modal button "Save"
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
    And I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:ApplicationRevision---" panel
    And I click on "Request Revision" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:ApplicationRevision---"
    When I navigate to "Applications" content inside "Applications" subheader on left panel
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:ApplicationTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:ApplicationTableId---"
    And I softly see field "Status" as "Revision Initiated"
    And I logout
    Given I am on "SUBPORTAL" portal
    When I login as "SPI" user
    When I navigate to "Home" tab
    When I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:programId}" in "{tableID:PendingTask}" panel
    #186928
    Then I softly see value "Application Revision Request" for title "Task Type" inside table "---tableID:-:PendingTask---"
    #187581
    Then I softly see value "Revise Application" for title "Subject" inside table "---tableID:-:PendingTask---"
    #187582
    Then I softly see value "12/30/2022" for title "Due Date" inside table "---tableID:-:PendingTask---"
    #186785
    And I click on "Start" icon for "{SavedValue:programId}" inside flex table with id "{tableID:PendingTask}"
    Then I softly see field "Status" as "Revision Initiated"
    #187599
    And I navigate to "Revisions" sub tab
    Then I softly see fields "Applicant Response" is in edit mode
    #186789
    And I navigate to "Forms and Files" sub tab
    Then I softly can see top right button "Add" in flex table with id "---tableID:-:ApplicationFormsAndFilesNotes---"
    #186791
    And I click on top right button "Add" in flex table with id "---tableID:-:ApplicationFormsAndFilesNotes---"
    When I enter value "New Notes" into field "Title"
    When I enter value "New Notes have been Added here" into field "Description"
    And I click on top right button "Save" in flex table with id "---tableID:-:ApplicationFormsAndFilesNotes---"
    Then I softly can see row level action button "Delete" against "New Notes" in flex table with id "---tableID:-:ApplicationFormsAndFilesNotes---"
    #186788
    Then I softly can see row level action button "Edit" against "New Notes" in flex table with id "---tableID:-:ApplicationFormsAndFilesNotes---"
    #186792
    Then I softly can see row level action button "Edit" against "Title II, Part A - Stakeholder Participants" in flex table with id "---tableID:-:ApplicationForms---"
    #186796
    And I navigate to "Revisions" sub tab
    And I click on "Save" in the page details
    And I click on "Submit Application" in the page details
    Then I softly see the text containing :
      | Details is required to save under Revisions. |
    #186797
    And I click on "Edit" in the page details
    When I enter value "Testing" into field "Applicant Response"
    And I click on "Save" in the page details
    And I click on "Submit Application" in the page details
    Then I softly see the text containing :
      | The application will no longer be editable. Are you sure you are ready to submit the negotiation to Grantor? |
    #186790
    And I refresh the page
    And I navigate to "Forms and Files" sub tab
    Then I softly can see row level action button "Edit" against "Title II, Part A - Stakeholder Participants" in flex table with id "---tableID:-:ApplicationForms---"
    Then I softly can see row level action button "Delete" against "New Notes" in flex table with id "---tableID:-:ApplicationFormsAndFilesNotes---"
    #187594
    And I navigate to "Revisions" sub tab
    Then I softly see value "checked" for title "Allow Edits?" inside table "---tableID:-:ApplicationFormsRevision---"
    #187586
    Then I softly see that "Applicant Name" rendered in view mode only
    #187588
    Then I softly see that "Application Sections for Revision" rendered in view mode only
    #187592
    Then I see only the following ordered page blocks :
      | Revision Request Details | Available Forms for Revision | Applicant Response | Explanation of Revisions Needed |
    #186787
    Then I softly see that "Due Date" rendered in view mode only
    #187587
    Then I softly see that "Revision Created Date" rendered in view mode only
    #187585
    Then I softly see that "Revision Request Status" rendered in view mode only
    #187598
    Then I softly see fields "fieldTEXTAREAApplicantResponse__c" is in edit mode
    #187593
    Then I softly see value "Title II, Part A - Stakeholder Participants" for title "Form Name" inside table "---tableID:-:ApplicationFormsRevision---"
    #186778
    Then I softly see that "Explanation of Revisions Needed" rendered in view mode only
    #187600
    And I softly see field "fieldTEXTAREAComments__c" as "Justification"
    #186794
    And I navigate to "Forms and Files" sub tab
    Then I softly see value "No" for title "Is Form Validated?" inside table "---tableID:-:ApplicationForms---"
    #187589
    And I navigate to "Revisions" sub tab
    Then I softly see field "Revised Submitted Date" inside "Revision Request Details" section
    #186799
    When I enter value "Testing" into field "Applicant Response"
    And I click on "Save" in the page details
    And I click on "Submit Application" in the page details
    Then I softly see field "Status" as "Revision Submitted"
    #186800
    Then I softly cannot see top right button "Edit" in page detail

  @190564 @189957 @190967 @sprint-5 @userStory-187918
  Scenario: Verify the internal user is able to save the form
  |Verify reviewer is able to submit review form
  |Verify reviewer is able to complete review form
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
    When I enter value "0" into field "fieldSCDE_IndirectCostTaken__c"
    And I click on "Save" in the page details
    And I expand nested table containing column value "BP01"
    When I click on "Add" icon for "110 - General Instruction" inside flex table with id "---tableID:-:ApplicationBudgetPeriod---"
    When I enter value "100 - Salaries" into field "fieldMST_Budget_Category__c"
    When I enter value "1" into field "fieldQuantity__c"
    When I enter value "2000" into field "fieldUnitPrice__c"
    When I enter value "Schoolwide" into field "fieldSCDE_BudgetFor__c"
    When I enter value "Wright Middle" into field "fieldSchool__c"
    When I enter value "test" into field "fieldNarrative__c"
    And I click modal button "Save"
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
    And I check "{SavedValue:Automation Runtime Announcement}" boxes in flex table with id "---tableID:-:Reviews---"
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
    When I click on top right button "Promote to Next Step" in flex table with id "---tableID:-:ReviewApplication---"
    And I click on "Next Review Step" in the page details
    When I edit the following rows inline in flex table with id "---tableID:-:ReviewForms---" by clicking "Edit" :
      | Form Name         | Due in Days |
      | Program Review    | 5           |
      | Fiscal Review     | 5           |
      | Compliance Review | 5           |
    When I enter the following values into flex table with id "---tableID:-:Reviewer---" by clicking "Add" :
      | Reviewer      |
      | Automation PM |
    And I click on "Assign" icon for "Automation PM" inside flex table with id "---tableID:-:Reviewer---"
    And I check "Select All" boxes in flex table with id "---tableID:-:AssignApplicationToUser---"
    And I click on top right button "Assign" in flex table with id "---tableID:-:AssignApplicationToUser---"
    And I pause execution for "5" seconds
    And I refresh the page
    When I check "Select All" boxes in flex table with id "---tableID:-:Reviews---"
    When I click on top right button "Send for Review" in flex table with id "---tableID:-:Reviews---"
    And I pause execution for "5" seconds
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
    And I softly see field "Status" as "Review Completed"

  @189783 @189787 @191071 @191049 @190103 @191066 @190102 @191070 @sprint-5 @userStory-187612
  Scenario: Verify that see a 'Revisions' link in the left menu under 'Application Reviews' heading
  |Verify that I see two sections on the Revisions list page: Pending Revision and Completed Revisions
  | Verify that the 'Revision Requested From' column shows the name of the review step from which the revision was initiated.
  | Verify that The Completed Revisions section do not shows applications where application status are Revision Initiated and Revision Submitted
  | Verify that the nested grid in the pending revisions section should show all revision records for the application
  | Verify that the nested grid in the complete revisions section should show all revision records for the application are in status of Complete or Canceled
  | Verify that the Pending Revisions section shows all applications where the application status is either Revision Initiated or Revision Submitted
  | Verify that the Replace 'Applicant Name' column with 'Revision Requested From Step' column
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Applications" tab
      #189783
    Then I see "Revisions" inside "Application Reviews" is displayed
      #189787
    When I navigate to "Revisions" content inside "Application Reviews" subheader on left panel
    Then I softly see "Pending Revisions" page block displayed
    Then I softly see "Completed Revisions" page block displayed
     #191071
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
    When I click on "Add" icon for "110 - General Instruction" inside flex table with id "---tableID:-:ApplicationBudgetPeriod---"
    When I enter value "100 - Salaries" into field "fieldMST_Budget_Category__c"
    When I enter value "1" into field "fieldQuantity__c"
    When I enter value "2000" into field "fieldUnitPrice__c"
    When I enter value "Schoolwide" into field "fieldSCDE_BudgetFor__c"
    When I enter value "Wright Middle" into field "fieldSchool__c"
    When I enter value "test" into field "fieldNarrative__c"
    And I click modal button "Save"
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
    When I click on top right button "Promote to Next Step" in flex table with id "---tableID:-:ReviewApplication---"
    And I click on "Next Review Step" in the page details
    When I edit the following rows inline in flex table with id "---tableID:-:ReviewForms---" by clicking "Edit" :
      | Form Name         | Due in Days |
      | Program Review    | 5           |
      | Fiscal Review     | 5           |
      | Compliance Review | 5           |
    When I enter the following values into flex table with id "---tableID:-:Reviewer---" by clicking "Add" :
      | Reviewer      |
      | Automation PM |
    And I click on "Assign" icon for "Automation PM" inside flex table with id "---tableID:-:Reviewer---"
    And I check "Select All" boxes in flex table with id "---tableID:-:AssignApplicationToUser---"
    And I click on top right button "Assign" in flex table with id "---tableID:-:AssignApplicationToUser---"
    And I pause execution for "5" seconds
    And I refresh the page
    When I check "all" boxes in flex table with id "---tableID:-:Reviews---"
    When I click on top right button "Send for Review" in flex table with id "---tableID:-:Reviews---"
    And I pause execution for "5" seconds
    And I click on top right button "Initiate Revision" in flex table with id "---tableID:-:Reviews---"
    And I softly see field "Status" as "Revision Initiated"
    And I navigate to "Revisions" sub tab
    And I click on top right button "Create Revision" in flex table with id "---tableID:-:ApplicationRevisions---"
    And I softly see field "Status" as "Revision Created"
    And I navigate to "Applications" tab
    When I navigate to "Revisions" content inside "Application Reviews" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:ApplicationReviews---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:ApplicationReviews---"
    And I navigate to "Revisions" sub tab
    And I expand nested table containing column value "Pre-Screen Review"
    Then I softly see value "Pre-Screen Review" for title "Revision Requested From" inside table "---tableID:-:ApplicationRevisionRequested---"
    #191049
    And I navigate to "Revisions" sub tab
    When I enter value "150" into field "NegotiationDueDate__c"
    When I enter value "Overview" into field "fieldApplicationSectionsForRevision__c"
    When I enter value "Testing" into field "fieldExplanationOfRevisionsNeeded__c"
    And I click on top right button "Save" in flex table with id "---tableID:-:ApplicationRevisions---"
    And I click on "Submit For Approval" in the page details
    And I softly see field "Status" as "Revision Submitted"
    #190103
    And I expand nested table containing column value "Pre-Screen Review"
    Then I softly see value "Revision Submitted" for title "Status" inside table "---tableID:-:ApplicationRevisionRequested---"
    #191066
    When I "Approve" in the approval decision
    And I click on "Cancel Revisions" in the page details
    Then I softly see field "Revision Request Status" as "Canceled"
    And I click on "Complete Revisions" in the page details
    And I softly see field "Status" as "Revision Completed"
    And I navigate to "Revisions" sub tab
    And I expand nested table containing column value "Pre-Screen Review"
    Then I softly see value "Revision Completed" for title "Status" inside table "---tableID:-:ApplicationRevisionRequested---"
    #190102
    And I navigate to "Applications" tab
    When I navigate to "Revisions" content inside "Application Reviews" subheader on left panel
    Then I softly see value "Revision Initiated" for title "Status" inside table "---tableID:-:ApplicationRevisions---"
    #191070
    And I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:ApplicationReviews---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:ApplicationReviews---"
    And I navigate to "Revisions" sub tab
    And I expand nested table containing column value "Pre-Screen Review"
    Then I softly see value "Pre-Screen Review" for title "Revision Requested" inside table "---tableID:-:ApplicationRevisionRequested---"

  @189675 @189673 @189668 @189667 @189662 @189677 @189670 @sprint-5 @userStory-187916
  Scenario: Verify announcement owner should able to sent back the application to reviewer, by going to Previous Step from the FDM, when FDM is in created state
  | Verify announcement owner should able to sent back the application to reviewer, even after application is promoted to next step
  | Verify application reviewer should receive a task Type, when announcement owner clicks on the "Sent Back to Reviewer" icon on the Application Review step.
  | Verify application reviewer should receive a Subject, when announcement owner clicks on the "Sent Back to Reviewer" icon on the Application Review step.
  | Verify Announcement owner user should see "Send Back to Reviewer" icon on the Actions column of Reviews section when the status of application is "Review Completed".
  | Verify announcement owner should not able to sent back the application to reviewer, when FDM (application is promoted to FDM) is submitted for approval
  | Verify when announcement owner clicks on the Application, then the status of application should be seen as "Review Completed".
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
    When I click on "Add" icon for "110 - General Instruction" inside flex table with id "---tableID:-:ApplicationBudgetPeriod---"
    When I enter value "100 - Salaries" into field "fieldMST_Budget_Category__c"
    When I enter value "1" into field "fieldQuantity__c"
    When I enter value "2000" into field "fieldUnitPrice__c"
    When I enter value "Schoolwide" into field "fieldSCDE_BudgetFor__c"
    When I enter value "Wright Middle" into field "fieldSchool__c"
    When I enter value "test" into field "fieldNarrative__c"
    And I click modal button "Save"
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
    When I click on top right button "Promote to Next Step" in flex table with id "---tableID:-:ReviewApplication---"
    And I click on "Next Review Step" in the page details
    When I edit the following rows inline in flex table with id "---tableID:-:ReviewForms---" by clicking "Edit" :
      | Form Name         | Due in Days |
      | Program Review    | 5           |
      | Fiscal Review     | 5           |
      | Compliance Review | 5           |
    When I enter the following values into flex table with id "---tableID:-:Reviewer---" by clicking "Add" :
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
    When I click on "Submit" in the page details without processing
    When I click alert button "OK"
    And I wait for "5" seconds
    And I click on "Previous Review Step" in the page details
    When I click on "Sent back to Reviewer" icon for "AP-SCDE-211" inside flex table with id "---tableID:-:AnnouncementReviewStep---"
    And I wait for "3" seconds
    #189675 #189673
    And I softly see field "Status" as "Sent for Review"
    #189668
    And I navigate to "Applications" tab
    When I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    And I perform quick search for "{SavedValue:APPID}" in "---tableID:-:ApplicationPendingTask---" panel
    Then I softly see value "Revise Review" for title "Type" inside table "---tableID:-:ApplicationPendingTask---"
    #189667
    Then I softly see value "Revise Review for Test Application for VD_TestOrg" for title "Subject" inside table "---tableID:-:ApplicationPendingTask---"
    #189662
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
    And I click on "Previous Review Step" in the page details
    Then I softly can see row level action button "Sent back to Reviewer" against "AP-SCDE-211" in flex table with id "---tableID:-:AnnouncementReviewStep---"
    #189677
    When I click on "Sent back to Reviewer" icon for "AP-SCDE-211" inside flex table with id "---tableID:-:AnnouncementReviewStep---"
    Then I softly see the text :
      | Cannot send back the application review to the reviewer because the application is already promoted to a Funding Decision Memo (FDM) and the FDM is submitted for approval. |
    #189670
    And I navigate to "Applications" tab
    When I navigate to "Applications" content inside "Applications" subheader on left panel
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:ApplicationTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:ApplicationTableId---"
    And I softly see field "Status" as "Review Completed"

  @190537 @sprint-5 @userStory-187654
  Scenario: Verify that if Focus Area is not required, budget table does not show FA grouping.
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
    When I enter value "0" into field "fieldSCDE_IndirectCostTaken__c"
    And I click on "Save" in the page details
    And I expand nested table containing column value "BP01"
    When I click on "Add" icon for "110 - General Instruction" inside flex table with id "---tableID:-:ApplicationBudgetPeriod---"
    When I enter value "100 - Salaries" into field "fieldMST_Budget_Category__c"
    When I enter value "1" into field "fieldQuantity__c"
    When I enter value "2000" into field "fieldUnitPrice__c"
    When I enter value "Schoolwide" into field "fieldSCDE_BudgetFor__c"
    When I enter value "Wright Middle" into field "fieldSchool__c"
    When I enter value "test" into field "fieldNarrative__c"
    And I click modal button "Save"
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
    When I navigate to "Applications" content inside "Applications" subheader on left panel
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{SavedValue:APPID}" in "---tableID:-:ApplicationTableId---" panel
    When I click on "View" icon for "{SavedValue:APPID}" inside flex table with id "---tableID:-:ApplicationTableId---"
    And I navigate to "Budget" sub tab
    And I expand nested table containing column value "BP01"
    Then I softly see "Focus Area : {SavedValue:Automation Runtime Announcement}" inside rows of enhanced grid id "{tableID:ApplicationBudgetPeriod}"

  @190546 @190646 @sprint-5 @userStory-187654
  Scenario: Verify that "Total Project Cost" is a calculated field (Total Project Cost = Award Total + Total Match)
  |Verify that "Functional Code" column on parent table should display all the functional codes associated on the announcement
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
    When I enter value "Yes" into field "fieldFocusAreaRequired__c"
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
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFocusArea---"
    And I check "{StaticRecords:AutomationPermanentFocusArea}" boxes in flex table with id "---tableID:-:Modal---"
    And I click on top right button "Associate" in flex table with id "---tableID:-:Modal---"
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
    When I enter value "0" into field "fieldSCDE_IndirectCostTaken__c"
    And I click on "Save" in the page details
    And I expand nested table containing column value "BP01"
    When I click on "Add" icon for "110 - General Instruction" inside flex table with id "---tableID:-:ApplicationBudgetPeriod---"
    When I enter value "100 - Salaries" into field "fieldMST_Budget_Category__c"
    When I enter value "1" into field "fieldQuantity__c"
    When I enter value "2000" into field "fieldUnitPrice__c"
    When I enter value "1" into field "fieldCashMatch__c"
    When I enter value "Schoolwide" into field "fieldSCDE_BudgetFor__c"
    When I enter value "Wright Middle" into field "fieldSchool__c"
    When I enter value "test" into field "fieldNarrative__c"
    And I click modal button "Save"
     #190546
    And I expand nested table containing column value "BP01"
    Then I softly see value "$2,001.00" for title "Total Project Cost" inside table "---tableID:-:ApplicationBudgetPeriodFunctionCodes---"
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
    When I navigate to "Applications" content inside "Applications" subheader on left panel
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{SavedValue:APPID}" in "---tableID:-:ApplicationTableId---" panel
    When I click on "View" icon for "{SavedValue:APPID}" inside flex table with id "---tableID:-:ApplicationTableId---"
    And I navigate to "Budget" sub tab
    And I expand nested table containing column value "BP01"
    #190646
    Then I see "Total Records:1" inside flex table with id "---tableID:-:ApplicationBudgetPeriod---"

  @190543 @190651 @190650 @190649 @190648 @190647 @189130 @189365 @189135 @189769 @sprint-5 @userStory-187654
  Scenario: Verify that "Total Match" is a calculated field (Total Match = Cash Match + Non Cash Match )
  |Verify that  "Total Project Cost" column on parent should display the total sum of Award Total and Total Match ['Total Project Cost' = Award Total + Total Match  ].
  |Verify that "Total Match" column on parent table should display the total sum of both cash match and non cash match ['Total Match'= Cash Match + Non Cash Match]
  |Verify that "Non Cash Match" column on parent table should display the non cash match sum of all the object codes added for the function code.
  |Verify that "Cash Match" column on parent table should display the cash match sum of all the object codes added for the function code.
  |Verify that "Award Total" column on parent table should display the award total sum for all object codes added for the function code.
  |Verify that as internal user can see the Budget template is grouped by Focus Areas associated with the announcement
  |Verify that for each Focus area there is a table with columns
  |Verify that Function Code table (Budget Period table) has a new child table (nested grid) for Object Codes
  |Verify that view action is displayed for internal user on application of the child nested grid, of Budget Periods section in the Application, if Focus Area setting is required in the Announcement
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Announcements" tab
    When I navigate to "Formula" content inside "Announcements" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:FormulaAnnouncements---"
    When I enter value "Automation Runtime Announcement" into field "fieldAnnouncementName__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    And I pause execution for "3" seconds
    And I click on "Continue" in the page details
    When I enter value "Yes" into field "fieldIsMatchRequired__c"
    When I enter value "1" into field "fieldGranteeMatch__c"
    When I enter value "No" into field "fieldRiskAssessment_Required__c"
    When I enter value "No" into field "fieldIsNegotiationsAllowed__c"
    When I enter value "Yes" into field "fieldFocusAreaRequired__c"
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
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFocusArea---"
    And I check "{StaticRecords:AutomationPermanentFocusArea}" boxes in flex table with id "---tableID:-:Modal---"
    And I check "{StaticRecords:AutomationPermanentFocusArea2}" boxes in flex table with id "---tableID:-:Modal---"
    And I click on top right button "Associate" in flex table with id "---tableID:-:Modal---"
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
    When I enter value "0" into field "fieldSCDE_IndirectCostTaken__c"
    And I click on "Save" in the page details
    And I expand nested table containing column value "BP01"
    When I click on "Add" icon for "110 - General Instruction" inside flex table with id "---tableID:-:ApplicationBudgetPeriod---"
    When I enter value "100 - Salaries" into field "fieldMST_Budget_Category__c"
    When I enter value "1" into field "fieldQuantity__c"
    When I enter value "1000" into field "fieldUnitPrice__c"
    When I enter value "1" into field "fieldCashMatch__c"
    When I enter value "1" into field "fieldNonCashMatch__c"
    When I enter value "Schoolwide" into field "fieldSCDE_BudgetFor__c"
    When I enter value "Wright Middle" into field "fieldSchool__c"
    When I enter value "test" into field "fieldNarrative__c"
    And I click modal button "Save"
    And I expand nested table containing column value "BP01"
    When I click on "Add" icon for "$0.00" inside flex table with id "---tableID:-:ApplicationBudgetPeriod---"
    When I enter value "100 - Salaries" into field "fieldMST_Budget_Category__c"
    When I enter value "1" into field "fieldQuantity__c"
    When I enter value "1000" into field "fieldUnitPrice__c"
    When I enter value "1" into field "fieldCashMatch__c"
    When I enter value "1" into field "fieldNonCashMatch__c"
    When I enter value "Schoolwide" into field "fieldSCDE_BudgetFor__c"
    When I enter value "Wright Middle" into field "fieldSchool__c"
    When I enter value "test" into field "fieldNarrative__c"
    And I click modal button "Save"
    #190543
    And I expand nested table containing column value "BP01"
    Then I softly see value "$2.00" for title "Total Match" inside table "---tableID:-:ApplicationBudgetPeriodFunctionCodes---"
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
    And I pause execution for "2" seconds
    And I save the field containing "EGMS ID" as "APPID"
    When I re-login to "As a Grantor" app as "PM" user on "INTERNAL" portal
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{SavedValue:APPID}" in "---tableID:-:InternalApplicationTableId---" panel
    When I click on "View" icon for "{SavedValue:APPID}" inside flex table with id "---tableID:-:InternalApplicationTableId---"
    And I navigate to "Budget" sub tab
    And I expand nested table containing column value "BP01"
    #190651
    Then I softly see value "$2,004.00" for title "Total Project Cost" inside table "---tableID:-:ApplicationBudgetPeriod---"
    #190650
    Then I softly see value "$4.00" for title "Total Match" inside table "---tableID:-:ApplicationBudgetPeriod---"
    #190649
    Then I softly see value "$2.00" for title "Non Cash Match" against the value "Grand Total" inside table "---tableID:-:ApplicationBudgetPeriod---"
    #190648
    Then I softly see value "$2.00" for title "Cash Match" against the value "Grand Total" inside table "---tableID:-:ApplicationBudgetPeriod---"
    #190647
    Then I softly see value "$2,000.00" for title "Award Total" inside table "---tableID:-:ApplicationBudgetPeriod---"
    #189130
    Then I softly see "Focus Area : Automation Permanent Focus Area" inside rows of enhanced grid id "{tableID:ApplicationBudgetPeriod}"
    Then I softly see "Focus Area : Automation Permanent Focus Area2" inside rows of enhanced grid id "{tableID:ApplicationBudgetPeriod}"
    #189365
    Then I softly see "Function Code" in flex table header "---tableID:-:ApplicationBudgetPeriodFunctionCodes---"
    Then I softly see "Award Total" in flex table header "---tableID:-:ApplicationBudgetPeriodFunctionCodes---"
    Then I softly see "Cash Match" in flex table header "---tableID:-:ApplicationBudgetPeriodFunctionCodes---"
    Then I softly see "Non Cash Match" in flex table header "---tableID:-:ApplicationBudgetPeriodFunctionCodes---"
    Then I softly see "Total Match" in flex table header "---tableID:-:ApplicationBudgetPeriodFunctionCodes---"
    Then I softly see "Total Project Cost" in flex table header "---tableID:-:ApplicationBudgetPeriodFunctionCodes---"
    #189135
    And I expand nested table containing column value "110 - General Instruction"
    Then I softly see "Object Code" in flex table header "AppLineItemsFlexToggle"
    Then I softly see "Award Total" in flex table header "AppLineItemsFlexToggle"
    Then I softly see "Cash Match" in flex table header "AppLineItemsFlexToggle"
    Then I softly see "Non Cash Match" in flex table header "AppLineItemsFlexToggle"
    Then I softly see "Total Match" in flex table header "AppLineItemsFlexToggle"
    Then I softly see "Total Project Cost" in flex table header "AppLineItemsFlexToggle"
    Then I softly see "School" in flex table header "AppLineItemsFlexToggle"
    Then I softly see "Narrative Description" in flex table header "AppLineItemsFlexToggle"
    Then I softly see "Actions" in flex table header "AppLineItemsFlexToggle"
    #189769
    Then I softly can see row level action button "View" against "Wright Middle" in flex table with id "---tableID:-:ApplicationBudgetPeriod---"

  @189350 @sprint-5 @userStory-187654 @skipOnJenkins
  Scenario: Verify that internal user is allowed to download the budget data in an Excel format.
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Announcements" tab
    When I navigate to "Formula" content inside "Announcements" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:FormulaAnnouncements---"
    When I enter value "Automation Runtime Announcement" into field "fieldAnnouncementName__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    And I pause execution for "3" seconds
    And I click on "Continue" in the page details
    When I enter value "Yes" into field "fieldIsMatchRequired__c"
    When I enter value "1" into field "fieldGranteeMatch__c"
    When I enter value "No" into field "fieldRiskAssessment_Required__c"
    When I enter value "No" into field "fieldIsNegotiationsAllowed__c"
    When I enter value "Yes" into field "fieldFocusAreaRequired__c"
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
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFocusArea---"
    And I check "{StaticRecords:AutomationPermanentFocusArea}" boxes in flex table with id "---tableID:-:Modal---"
    And I check "{StaticRecords:AutomationPermanentFocusArea2}" boxes in flex table with id "---tableID:-:Modal---"
    And I click on top right button "Associate" in flex table with id "---tableID:-:Modal---"
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
    When I enter value "0" into field "fieldSCDE_IndirectCostTaken__c"
    And I click on "Save" in the page details
    And I expand nested table containing column value "BP01"
    When I click on "Add" icon for "110 - General Instruction" inside flex table with id "---tableID:-:ApplicationBudgetPeriod---"
    When I enter value "100 - Salaries" into field "fieldMST_Budget_Category__c"
    When I enter value "1" into field "fieldQuantity__c"
    When I enter value "1000" into field "fieldUnitPrice__c"
    When I enter value "1" into field "fieldCashMatch__c"
    When I enter value "1" into field "fieldNonCashMatch__c"
    When I enter value "Schoolwide" into field "fieldSCDE_BudgetFor__c"
    When I enter value "Wright Middle" into field "fieldSchool__c"
    When I enter value "test" into field "fieldNarrative__c"
    And I click modal button "Save"
    And I save the field containing "EGMS ID" as "APPID"
    When I re-login to "As a Grantor" app as "PM" user on "INTERNAL" portal
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{SavedValue:APPID}" in "---tableID:-:InternalApplicationTableId---" panel
    When I click on "View" icon for "{SavedValue:APPID}" inside flex table with id "---tableID:-:InternalApplicationTableId---"
    And I navigate to "Budget" sub tab
    When I click on parallel lines menu bar with data target value "#EnhanceAppGrantorBudgetPeriodsFlexToggle"
    And I select "Download as XLS" from parallel lines dropdown of "Budget"
    Then I see "Function Codes" in downloaded xls or csv file "govgrants"

  @189032 @189033 @189034 @189035 @189031 @189036 @188779 @188857 @188775 @188977 @188979 @188827 @188954 @188957 @188955 @188931 @188930 @188947 @188949 @188815 @188950 @188859 @189584 @sprint-5 @userStory-187072
  Scenario: Verify "Award Total" column on parent table should display the award total sum for all object codes added for the function code.
  | Verify "Cash Match" column on parent table should display the cash match sum of all the object codes added for the function code.
  | Verify "Non Cash Match" column on parent table should display the non cash match sum of all the object codes added for the function code.
  | Verify "Total Match" column on parent table should display the total sum of both cash match and non cash match ['Total Match'= Cash Match + Non Cash Match]
  | Verify "Functional Code" column on parent table should display the related functional code that is associated on the announcement
  | Verify "Total Project Cost" column on parent should display the total sum of Award Total and Total Match ['Total Project Cost' = Award Total + Total Match].
  | Verify external user should see the Budget table grouped by Focus Areas in the application.
  | Verify external user should see a new child table(nested grid) once added on the parent.
  | Verify external user should see Narrative Description column inside new child table that is added on the parent.
  | Verify external user should see 'Budget Summary' option on Budget Section.
  | Verify external user should be able to see the Start Date for the related Budget period on the parent table.
  | Verify external user should be able to see the End Date for the related Budget period on the parent table.
  | Verify external user should see the "Add" on the Action column of the Budget grid, of Budget Periods section, when Application is in created state.
  | Verify external user should see the "Add" option on the Action column of the Budget grid, of Budget Periods section.
  | Verify external user should see the function code on the modal
  | Verify external user should see the "View" on the Action column of the child nested grid, of Budget Periods section, when Application is in created state.
  | Verify external user should see the "View" on the Action column of the child nested grid, of Budget Periods section in the Application.
  | Verify external user should see the "Edit" on the Action column of the child nested grid, of Budget Periods section, when Application is in created state
  | Verify external user should see the "Delete" on the Action column of the child nested grid, of Budget Periods section, when Application is in created state.
  | Verify external user should see the "Function Code","Award Total", "Cash Match", "Non Cash Match", 'Total Match', "Total Project Cost", "Actions column in Focus Area table (Parent), in the Application.
  | Verify external user should see the Object Code column record in the child nested grid, of Budget Periods section.
  | Verify external user should see the table columns in child nested grid, of Budget Periods section in the Application.
  | Verify external user should see the Add on Action column of the Budget grid, of Budget Periods section, when Application is in created state.
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
    When I enter value "Yes" into field "fieldIsGoalsRequired__c"
    When I enter value "Yes" into field "fieldKPIsRequired__c"
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
    And I click on top right button "Associate" in flex table with id "---tableID:-:GoalsAndObjectives---"
    When I click "Associate" after selection of "SPO-0001" in the table "---tableID:-:Modal---"
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementKPI---"
    When I click "Associate" after selection of "KPI-0000" in the table "---tableID:-:AnnouncementKPIModal---"
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
    And I navigate to "Budget" sub tab
    And I expand nested table containing column value "BP01"
    When I click on "Add" icon for "110 - General Instruction" inside flex table with id "---tableID:-:ApplicationBudgetPeriodFunctionCodes---"
    When I enter value "100 - Salaries" into field "fieldMST_Budget_Category__c"
    When I enter value "2" into field "fieldQuantity__c"
    When I enter value "Districtwide" into field "fieldSCDE_BudgetFor__c"
    When I enter value "Testing" into field "fieldNarrative__c"
    When I enter value "5000" into field "fieldUnitPrice__c"
    When I enter value "10" into field "fieldCashMatch__c"
    When I enter value "5" into field "fieldNonCashMatch__c"
    And I click modal button "Save"
    And I expand nested table containing column value "BP01"
    When I click on "Add" icon for "110 - General Instruction" inside flex table with id "---tableID:-:ApplicationBudgetPeriodFunctionCodes---"
    When I enter value "200 - Employee Benefits" into field "fieldMST_Budget_Category__c"
    When I enter value "2" into field "fieldQuantity__c"
    When I enter value "Districtwide" into field "fieldSCDE_BudgetFor__c"
    When I enter value "Automation Testing" into field "fieldNarrative__c"
    When I enter value "10000" into field "fieldUnitPrice__c"
    When I enter value "10" into field "fieldCashMatch__c"
    When I enter value "5" into field "fieldNonCashMatch__c"
    And I click modal button "Save"
    And I expand nested table containing column value "BP01"
    #189032
    Then I softly see value "$30,000.00" for title "Award Total" inside table "---tableID:-:ApplicationBudgetPeriodFunctionCodes---"
    #189033
    And I expand nested table containing column value "110 - General Instruction"
    Then I softly see value "$20.00" for title "Cash Match" inside table "---tableID:-:ApplicationBudgetPeriodFunctionCodes---"
    #189034
    Then I softly see value "$10.00" for title "Non Cash Match" inside table "---tableID:-:ApplicationBudgetPeriodFunctionCodes---"
    #189035
    Then I softly see value "$30.00" for title "Total Match" inside table "---tableID:-:ApplicationBudgetPeriodFunctionCodes---"
    #189031
    And I refresh the page
    And I expand nested table containing column value "BP01"
    Then I softly see value "110 - General Instruction" for title "Function Code" inside table "---tableID:-:ApplicationBudgetPeriodFunctionCodes---"
    #189036
    Then I softly see value "$30,030.00" for title "Total Project Cost" inside table "---tableID:-:ApplicationBudgetPeriodFunctionCodes---"
    #188779
    Then I softly see value "BP01" for title "Budget Period" inside table "---tableID:-:ApplicationBudgetPeriodFunctionCodes---"
    #188857
    When I click on "Add" icon for "110 - General Instruction" inside flex table with id "---tableID:-:ApplicationBudgetPeriodFunctionCodes---"
    When I enter value "200 - Employee Benefits" into field "fieldMST_Budget_Category__c"
    When I enter value "1" into field "fieldQuantity__c"
    When I enter value "Districtwide" into field "fieldSCDE_BudgetFor__c"
    When I enter value "Automation Test" into field "fieldNarrative__c"
    When I enter value "100" into field "fieldUnitPrice__c"
    When I enter value "10" into field "fieldCashMatch__c"
    When I enter value "5" into field "fieldNonCashMatch__c"
    And I click modal button "Save"
    And I expand nested table containing column value "BP01"
    And I expand nested table containing column value "110 - General Instruction"
    Then I softly see value "200 - Employee Benefits" for title "Object Code" inside table "---tableID:-:ApplicationBudgetPeriodFunctionCodes---"
    #188775
    Then I softly see value "Automation Test" for title "Narrative Description" inside table "---tableID:-:ApplicationBudgetPeriodFunctionCodes---"
    #188977
    And I refresh the page
    Then I softly can see top right button "Budget Summary" in flex table with id "---tableID:-:ApplicationBudgetPeriod---"
    #188979
    Then I softly see value "02/10/2022" for title "Start Date" inside table "---tableID:-:ApplicationBudgetPeriod---"
    #188827
    Then I softly see value "12/01/2022" for title "End Date" inside table "---tableID:-:ApplicationBudgetPeriod---"
    #188954 #188957
    And I expand nested table containing column value "BP01"
    Then I softly can see row level action button "Add" against "110 - General Instruction" in flex table with id "---tableID:-:ApplicationBudgetPeriodFunctionCodes---"
    #188955
    When I click on "Add" icon for "110 - General Instruction" inside flex table with id "---tableID:-:ApplicationBudgetPeriodFunctionCodes---"
    Then I softly see "Function Code" inside page block detail
    #188931 #188930
    And I close modal by clicking the top right x button
    And I expand nested table containing column value "BP01"
    And I expand nested table containing column value "110 - General Instruction"
    Then I softly can see row level action button "View" against "100 - Salaries" in flex table with id "---tableID:-:ApplicationBudgetPeriodFunctionCodes---"
    #188947
    Then I softly can see row level action button "Edit" against "100 - Salaries" in flex table with id "---tableID:-:ApplicationBudgetPeriodFunctionCodes---"
    #188949
    Then I softly can see row level action button "Delete" against "100 - Salaries" in flex table with id "---tableID:-:ApplicationBudgetPeriodFunctionCodes---"
    #188815
    Then I see only the following ordered headers in table with id "---tableID:-:ApplicationBudgetPeriodFunctionCodes---" :
      | Object Code | Award Total | Cash Match | Non Cash Match | Total Match | Total Project Cost | Actions |
    #188950
    Then I softly see value "100 - Salaries" for title "Object Code" inside table "---tableID:-:ApplicationBudgetPeriodFunctionCodes---"
    #188859
    And I refresh the page
    And I expand nested table containing column value "BP01"
    Then I see only the following ordered headers in table with id "---tableID:-:ApplicationBudgetPeriod---" :
      | Function Code | Award Total | Total Project Cost | Actions |
    #189584
    Then I softly can see row level action button "Add" against "110 - General Instruction" in flex table with id "---tableID:-:ApplicationBudgetPeriod---"

  @191801 @191782 @191779 @191781 @191777 @191780 @sprint-6 @userStory-189788
  Scenario: Verify that announcement owner, after promoting an application to FDM, can see the status of application as Reviewed.
  | Verify that when application review is completed, Owner can see the status of application reviews as 'Completed'.
  | Verify that for application review, Owner should able to see the different review forms.
  | Verify that application Owner can Validate the review forms after completely filling it.
  | Verify that the application Owner can view the forms associated with the application after completely filling it.
  | Verify that the application Owner should be able to view the various business forms associated with the application.
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
    When I click on "Add" icon for "110 - General Instruction" inside flex table with id "---tableID:-:ApplicationBudgetPeriod---"
    When I enter value "100 - Salaries" into field "fieldMST_Budget_Category__c"
    When I enter value "1" into field "fieldQuantity__c"
    When I enter value "2000" into field "fieldUnitPrice__c"
    When I enter value "Schoolwide" into field "fieldSCDE_BudgetFor__c"
    When I enter value "Wright Middle" into field "fieldSchool__c"
    When I enter value "test" into field "fieldNarrative__c"
    And I click modal button "Save"
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
    When I click on top right button "Promote to Next Step" in flex table with id "---tableID:-:ReviewApplication---"
    And I click on "Next Review Step" in the page details
    When I edit the following rows inline in flex table with id "---tableID:-:ReviewForms---" by clicking "Edit" :
      | Form Name         | Due in Days |
      | Program Review    | 5           |
      | Fiscal Review     | 5           |
      | Compliance Review | 5           |
    When I enter the following values into flex table with id "---tableID:-:Reviewer---" by clicking "Add" :
      | Reviewer      |
      | Automation PM |
    And I click on "Assign" icon for "Automation PM" inside flex table with id "---tableID:-:Reviewer---"
    And I check "Select All" boxes in flex table with id "---tableID:-:AssignApplicationToUser---"
    And I click on top right button "Assign" in flex table with id "---tableID:-:AssignApplicationToUser---"
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
    And I check "Select All" boxes in flex table with id "---tableID:-:AssignApplicationToUser---"
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
   #191801
    And I softly see field "Status" as "Reviewed"
   #191782
    And I navigate to "Related Log" tab
    Then I softly see value "Completed" for title "Status" inside table "---tableID:-:ReviewForms---"
   #191779
    And I expand nested table containing column value "SME Review"
    Then I softly see value "50.00%" for title "Form Weight" inside table "---tableID:-:ReviewForms---"
   #191781
    Then I softly can see top right button "Validate" in flex table with id "---tableID:-:ReviewForms---"
   #191777
    Then I softly can see row level action button "View" against "SME Review" in flex table with id "---tableID:-:ReviewForms---"
   #191780
    And I navigate to "Setup" tab
    Then I softly see value "Grantor Site Visit Forms" for title "Package Name" inside table "---tableID:-:ApplicationForms---"
    Then I softly see value "Grantor Progress Report Forms" for title "Package Name" inside table "---tableID:-:ApplicationForms---"

  @191914 @191911 @191912 @191909 @191913 @191910 @sprint-6 @userStory-189809
  Scenario: Verify that Internal user should be able to view 'Subaward Floor' field is in Read Only mode after Announcement is Published.
  | Verify that Internal user should be able to see Description mentioned in the field after Announcement is Published.
  | Verify that 'Eligible Applicants' are displayed in 'Eligibility Details' Section once the Announcement is being Published.
  | Verify that Key Dates Section is Populated with Published Date, Due Date, Estimated Project Period Start Date, End Date.
  | Verify that Internal user should be able to see Funding Account associated with the application.
  | Verify that Internal user should be able to see Business Forms that are associated with the application after Announcement is Published..
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
   #191914
    And I navigate to "Financials" sub tab
    Then I softly see that "Subaward Floor" rendered in view mode only
   #191911
    And I navigate to "Overview" sub tab
    And I softly see field "Description" as "Testing"
   #191912
    Then I softly see field "Eligible Applicant Types" inside "Eligibility Details" section
   #191909
    Then I softly see field "Published Date" inside "Key Dates" section
    Then I softly see field "Application Due Date" inside "Key Dates" section
    Then I softly see field "Estimated Project Period Start Date" inside "Key Dates" section
    Then I softly see field "Estimated Project Period End Date" inside "Key Dates" section
   #191913
    And I navigate to "Financials" sub tab
    Then I softly see value "FA-ST-01" for title "Funding Account" inside table "---tableID:-:ApplicationFundingAccount---"
   #191910
    And I navigate to "Setup" sub tab
    Then I softly see value "Grantor Site Visit Forms" for title "Package Name" inside table "---tableID:-:ApplicationForms---"
    Then I softly see value "Organization Desk Review" for title "Package Name" inside table "---tableID:-:ApplicationForms---"

  @191867 @191877 @191876 @191874 @191875 @191871 @191869 @191882 @191889 @191890 @sprint-6 @userStory-189862
  Scenario: Verify external user should see "Add" button on the table
  | Verify "Document Sub-Type" field is a drop-down with options
  | Verify "Document Type" column is a drop-down field with 2 options
  | Verify "Five-Year Period" field should be a dropdown with five-year timespans listed
  | Verify "School Name" column is a dropdown field with five-year timespans listed
  | Verify all the columns available on the table are required on Save
  | Verify external user should able to "Add" multiple lines / entries to the table
  | Verify external user should able to see the Document Version for the plan
  | Verify external user should able to see the status as In-Progress after saving the Annual Plans
  | Verify external user should delete an entry, only when the entry status In-Progress
    Given I am on "SUBPORTAL" portal
    When I login as "SPI" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I navigate to "Annual Plans" sub tab
   #191867
    Then I softly can see top right button "Add" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
   #191877
    And I click on top right button "Add" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    Then I see the following options in dropdown field "DocumentSubType__c" :
      | Initial | Update 1 | Update 2 | Update 3 | Update 4 |
   #191876
    Then I see the following options in dropdown field "DocumentType__c" :
      | CCNA | One Plan |
   #191874
    Then I see the following options in dropdown field "FiveYearPeriod__c" :
      | 2016/17 - 2020/21 | 2017/18 - 2021/22 | 2018/19 - 2022/23 | 2019/20 - 2023/24 | 2020/21 - 2024/25 |
   #191875
    Then I see the following options in dropdown field "SchoolYear__c" :
      | 2016/17 | 2017/18 | 2018/19 | 2019/20 | 2020/21 | 2021/22 | 2022/23 | 2023/24 | 2024/25 |
   #191871
    And I click on top right button "Save" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    Then I softly see the text :
      | Required Field Missing |
   #191869
    Then I see only the following ordered headers in table with id "---tableID:-:ApplicationAnnualPlans---" :
      | Five-Year Period | School Year | Document Type | Document Sub-Type | Document Version | Status | Last Submitted By | Last Submitted On | Document Link | Actions |
   #191882
    Then I softly see field "Document Version" inside "Annual Plans" section
   #191889
    When I enter value "2017/18 - 2021/22" into field "FiveYearPeriod__c"
    When I enter value "2017/18" into field "SchoolYear__c"
    When I enter value "CCNA" into field "DocumentType__c"
    When I enter value "Initial" into field "DocumentSubType__c"
    And I click on top right button "Save" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    Then I softly see value "In-Progress" for title "Status" inside table "---tableID:-:ApplicationAnnualPlans---"
   #191890
    And I click on "Delete" icon for "In-Progress" inside flex table with id "---tableID:-:ApplicationAnnualPlans---"
    Then I softly see "No Records Found" inside flex table with id "---tableID:-:ApplicationAnnualPlans---"

  @191787 @191789 @191799 @191790 @191791 @sprint-6 @userStory-190011
  Scenario: Verify that external user should be able to edit value in 'Indirect Cost Rate' field.
  | Verify external user should see message, if "Indirect Cost Taken" is greater than "Potential Indirect Cost Recovery" on application.
  | Verify "Indirect Cost Taken" should be equal to "Potential Indirect Cost Recovery" on application.
  | Verify that external user should see 'Max Admin Cost Rate' field as a Read only field.
  | Verify "Allocation Amount" should be equal to "Total Budgeted Amount" on application.
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
    When I enter value "project abstract" into field "fieldProjectAbstract__c"
    When I enter value "checked" into field "fieldAcknowledgment4__c"
    And I navigate to "Budget" sub tab
    When I enter value "justification" into field "fieldJustification__c"
    And I click on "Save" in the page details
    And I expand nested table containing column value "BP01"
    When I click on "Add" icon for "110 - General Instruction" inside flex table with id "---tableID:-:ApplicationBudgetPeriod---"
    When I enter value "100 - Salaries" into field "fieldMST_Budget_Category__c"
    When I enter value "1" into field "fieldQuantity__c"
    When I enter value "2000" into field "fieldUnitPrice__c"
    When I enter value "Schoolwide" into field "fieldSCDE_BudgetFor__c"
    When I enter value "Wright Middle" into field "fieldSchool__c"
    When I enter value "test" into field "fieldNarrative__c"
    And I click modal button "Save"
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
    And I click on "Initiate Review" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:ApplicationReviews---"
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
    #191787
    And I click on "Edit" in the page details
    Then I softly see fields "Indirect Cost Rate" is in edit mode
    #191789
    And I enter value "500" into field "Indirect Cost Taken"
    And I click on "Save" in the page details
    And I click on "Submit Application" in the page details
    Then I softly see the text containing :
      | Budget Tab - The 'Indirect Cost Taken' must be equal to or less than the 'Potential Indirect Cost Recovery'. |
    #191799
    And I enter value "200" into field "Indirect Cost Taken"
    And I click on "Save" in the page details
    And I click on "Submit Application" in the page details
    Then I softly see field "Indirect Cost Taken" as "$200.00"
    #191790
    Then I softly see that "Max Admin Cost Rate" rendered in view mode only
    #191791
    And I softly see field "Allocation Amount" as "$2,000.00"

  @192494 @192505 @192506 @192500 @192490 @192508 @sprint-6 @userStory-189866
  Scenario: Verify that do not see that the Applicant Organization field in Information section
  |Verify that do not see that the Opportunity Type field on overview tab
  |Verify that do not see that the Budget Category Package field on overview tab
  |Verify that new field for Org Code is added on the Overview tab
  |Verify that the header has the Applicant Organization shown
  |Verify that the Pre-Award Risk Assessment Required? field is shown on the Overview tab
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
    When I enter value "No" into field "fieldFocusAreaRequired__c"
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
    And I pause execution for "2" seconds
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
    And I save the field containing "EGMS ID" as "APPID"
    When I re-login to "As a Grantor" app as "PM" user on "INTERNAL" portal
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{SavedValue:APPID}" in "---tableID:-:InternalApplicationTableId---" panel
    When I click on "View" icon for "{SavedValue:APPID}" inside flex table with id "---tableID:-:InternalApplicationTableId---"
      #192494
    Then I softly do not see field "Applicant Organization" inside "Information" section
      #192505
    Then I softly do not see field "Opportunity Type" inside "Opportunity Overview" section
      #192506
    Then I softly do not see "Budget Category Package" inside page block detail
      #192500
    Then I softly see "Org Code" inside page block detail
      #192490
    Then I softly see "Applicant Organization" field inside header "Application"
      #192508
    Then I softly see "Pre-Award Risk Assessment Required?" inside page block detail

  @192463 @192729 @192461 @192462 @192466 @sprint-6 @userStory-189867
  Scenario: Verify that do not see that the Funding Organization field is on the Overview tab
  |Verify that the header has a field for Application EGMS ID
  |Verify that the header has the Applicant Organization shown
  |Verify that the Org Code is on the Overview tab
  |Verify that the Pre-Award Risk Assessment Required? field is shown on the Overview tab
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
    When I enter value "No" into field "fieldFocusAreaRequired__c"
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
      #192463
    Then I softly do not see "Funding Organization" inside page block detail
      #192729
    Then I softly see "Application EGMS ID" field inside header "Application"
      #192461
    Then I softly see "Applicant Organization" field inside header "Application"
      #192462
    Then I softly see "Org Code" inside page block detail
      #192466
    Then I softly see "Pre-Award Risk Assessment Required?" inside page block detail

  @191852 @191855 @sprint-6 @userStory-189864
  Scenario: Verify that external user can see the Application landing page list page columns
  |Verify that external  user can see the Application list page columns
    Given I am on "SUBPORTAL" portal
    When I login as "SPI" user
    And I navigate to "Applications" tab
      #191852
    Then I see only the following ordered headers in table with id "---tableID:-:ApplicationId---" :
      | EGMS ID | Funding Opportunity Title | Application Due Date | Owner | Submitted On | Status | Actions |
      #191855
    When I navigate to "Applications" content inside "Applications" subheader on left panel
    Then I see only the following ordered headers in table with id "---tableID:-:ApplicationExternalTableId---" :
      | EGMS ID | Funding Opportunity Title | Application Due Date | Owner | Submitted On | Status | Actions |

  @192743 @192744 @sprint-6 @userStory-189864
  Scenario: Verify that the default focus area on the related applications should be populated as the "Announcement Name"
  |Verify that I do not see the "Focus Area : Standard Focus Area"
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
    When I enter value "No" into field "fieldFocusAreaRequired__c"
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
    And I navigate to "Budget" sub tab
    And I expand nested table containing column value "BP01"
    Then I softly see "Focus Area : {SavedValue:Automation Runtime Announcement}" inside rows of enhanced grid id "{tableID:ApplicationBudgetPeriod}"

  @192221 @sprint-6 @userStory-190291
  Scenario: Verify the the message:  The 'Indirect Cost Rate' for your organization is not available.  Contact EGMS support for assistance
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
    When I click on "Add" icon for "110 - General Instruction" inside flex table with id "---tableID:-:ApplicationBudgetPeriod---"
    When I enter value "100 - Salaries" into field "fieldMST_Budget_Category__c"
    When I enter value "1" into field "fieldQuantity__c"
    When I enter value "2000" into field "fieldUnitPrice__c"
    When I enter value "Schoolwide" into field "fieldSCDE_BudgetFor__c"
    When I enter value "Wright Middle" into field "fieldSchool__c"
    When I enter value "test" into field "fieldNarrative__c"
    And I click modal button "Save"
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
    And I pause execution for "4" seconds
    And I click on "Submit Application" in the page details
    Then I softly see the following messages in the page details contains:
      | The 'Indirect Cost Rate' for your organization is not available. Contact EGMS support for assistance. |