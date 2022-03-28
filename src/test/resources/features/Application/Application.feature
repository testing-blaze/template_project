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
    When I enter value "No" into field "fieldIsBudgetNarrativeRequired__c"
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
    When I enter value "15" into field "fieldSCDE_Maximum_Indirect_Cost__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I refresh the page
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Allocations" sub tab
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
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
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

  @182203 @182200 @182152 @sprint-2 @userStory-178223 @sanity
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
    When I enter value "No" into field "fieldIsBudgetNarrativeRequired__c"
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
    When I enter value "15" into field "fieldSCDE_Maximum_Indirect_Cost__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I refresh the page
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Allocations" sub tab
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
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
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
    When I enter value "No" into field "fieldIsBudgetNarrativeRequired__c"
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
    When I enter value "2021" into field "fieldSCDE_Fiscal_Year__c"
    When I enter value "15" into field "fieldSCDE_Maximum_Indirect_Cost__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I refresh the page
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Allocations" sub tab
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
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
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
    Then I softly see field "Allocation Amount" as "$2,000.00"
     #181726
    Then I softly see field "Allocation Amount" inside "Allocation, Admin, and Indirect Costs" section
     #181725
    Then I see only the following ordered page blocks :
      | Allocation, Admin, and Indirect Costs | Allocations By School | Budget | Budget Narrative |
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
    When I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:ApplicationExternalTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:ApplicationExternalTableId---"
    And I navigate to "Budget" sub tab
    Then I softly see field "Allocation Amount" as "$1,000.00"

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
    When I enter value "No" into field "fieldIsBudgetNarrativeRequired__c"
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
    When I enter value "15" into field "fieldSCDE_Maximum_Indirect_Cost__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I refresh the page
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Allocations" sub tab
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
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
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
    And I navigate to "Budget" sub tab
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
    And I navigate to "Forms and Files" sub tab
    When I click on "Edit" icon for "No" inside flex table with id "---tableID:-:ApplicationForms---"
    When I enter the following values into flex table with id "---tableID:-:StakeholderParticipants---" by clicking "Add" :
      | Participant’s Name | School Name | Role    | Stakeholder Representation |
      | Automation         | Dixie High  | Teacher | School within District     |
    And I click on "Save" in the page details
    And I click on "Back" in the page details
    When I click on "Edit" icon for "No" inside flex table with id "---tableID:-:ApplicationForms---"
    When I enter value "Yes" into field "IsFormValidated__c"
    And I click on "Submit for Approval" in the page details
    And I wait for "5" seconds
    When I "Approve" in the approval decision
    And I softly see field "Status" as "Approved for Submission"
    And I click on "Submit Application to Grantor" in the page details
    And I softly see field "Status" as "Submitted"
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
    When I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:ApplicationExternalTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:ApplicationExternalTableId---"
    And I navigate to "Budget" sub tab
    Then I softly see field "Allocation Amount" as "$1,000.00"

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
    When I enter value "No" into field "fieldIsBudgetNarrativeRequired__c"
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
    When I enter value "15" into field "fieldSCDE_Maximum_Indirect_Cost__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I refresh the page
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Allocations" sub tab
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
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
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
    And I navigate to "Budget" sub tab
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
    And I navigate to "Forms and Files" sub tab
    When I click on "Edit" icon for "No" inside flex table with id "---tableID:-:ApplicationForms---"
    When I enter the following values into flex table with id "---tableID:-:StakeholderParticipants---" by clicking "Add" :
      | Participant’s Name | School Name | Role    | Stakeholder Representation |
      | Automation         | Dixie High  | Teacher | School within District     |
    And I click on "Save" in the page details
    And I click on "Back" in the page details
    When I click on "Edit" icon for "No" inside flex table with id "---tableID:-:ApplicationForms---"
    When I enter value "Yes" into field "IsFormValidated__c"
    And I click on "Submit for Approval" in the page details
    And I wait for "5" seconds
    When I "Approve" in the approval decision
    And I softly see field "Status" as "Approved for Submission"
    And I click on "Submit Application to Grantor" in the page details
    And I softly see field "Status" as "Submitted"
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
    When I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:ApplicationExternalTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:ApplicationExternalTableId---"
    And I navigate to "Budget" sub tab
    Then I softly see field "Allocation Amount" as "$1,000.00"

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
    When I enter value "No" into field "fieldIsBudgetNarrativeRequired__c"
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
    When I enter value "15" into field "fieldSCDE_Maximum_Indirect_Cost__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I refresh the page
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Allocations" sub tab
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
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
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
    And I navigate to "Budget" sub tab
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
    And I navigate to "Forms and Files" sub tab
    When I click on "Edit" icon for "No" inside flex table with id "---tableID:-:ApplicationForms---"
    When I enter the following values into flex table with id "---tableID:-:StakeholderParticipants---" by clicking "Add" :
      | Participant’s Name | School Name | Role    | Stakeholder Representation |
      | Automation         | Dixie High  | Teacher | School within District     |
    And I click on "Save" in the page details
    And I click on "Back" in the page details
    When I click on "Edit" icon for "No" inside flex table with id "---tableID:-:ApplicationForms---"
    When I enter value "Yes" into field "IsFormValidated__c"
    And I click on "Submit for Approval" in the page details
    And I wait for "5" seconds
    When I "Approve" in the approval decision
    And I softly see field "Status" as "Approved for Submission"
    And I click on "Submit Application to Grantor" in the page details
    And I softly see field "Status" as "Submitted"
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
    Then I softly see field "Allocation Amount" as "$1,000.00"

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
    When I enter value "No" into field "fieldIsBudgetNarrativeRequired__c"
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
    When I enter value "15" into field "fieldSCDE_Maximum_Indirect_Cost__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I refresh the page
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementBudgetCategory---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I wait for "3" seconds
    And I navigate to "Allocations" sub tab
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
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
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
    When I enter value "No" into field "fieldIsBudgetNarrativeRequired__c"
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
    When I enter value "15" into field "fieldSCDE_Maximum_Indirect_Cost__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I refresh the page
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Allocations" sub tab
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
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
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
    And I navigate to "Budget" sub tab
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
    And I navigate to "Forms and Files" sub tab
    When I click on "Edit" icon for "No" inside flex table with id "---tableID:-:ApplicationForms---"
    When I enter the following values into flex table with id "---tableID:-:StakeholderParticipants---" by clicking "Add" :
      | Participant’s Name | School Name | Role    | Stakeholder Representation |
      | Automation         | Dixie High  | Teacher | School within District     |
    And I click on "Save" in the page details
    And I click on "Back" in the page details
    When I click on "Edit" icon for "No" inside flex table with id "---tableID:-:ApplicationForms---"
    When I enter value "Yes" into field "IsFormValidated__c"
    And I click on "Submit for Approval" in the page details
    And I wait for "5" seconds
    When I "Approve" in the approval decision
    And I softly see field "Status" as "Approved for Submission"
    And I click on "Submit Application to Grantor" in the page details
    And I softly see field "Status" as "Submitted"
    And I logout
    Given I am on "INTERNAL" portal
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Announcements" tab
    When I navigate to "Formula" content inside "Announcements" subheader on left panel
    When I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:FormulaAnnouncements---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:FormulaAnnouncements---"
    #183483
    And I navigate to "Files" sub tab
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
    When I enter value "No" into field "fieldIsBudgetNarrativeRequired__c"
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
    When I enter value "15" into field "fieldSCDE_Maximum_Indirect_Cost__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I refresh the page
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Allocations" sub tab
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
    Given I am on "SUBPORTAL" portal
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
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
    When I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:ApplicationExternalTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:ApplicationExternalTableId---"
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
    When I enter value "No" into field "fieldIsBudgetNarrativeRequired__c"
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
    When I enter value "15" into field "fieldSCDE_Maximum_Indirect_Cost__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I refresh the page
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Allocations" sub tab
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
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
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
    And I navigate to "Budget" sub tab
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
    And I navigate to "Forms and Files" sub tab
    When I click on "Edit" icon for "No" inside flex table with id "---tableID:-:ApplicationForms---"
    When I enter the following values into flex table with id "---tableID:-:StakeholderParticipants---" by clicking "Add" :
      | Participant’s Name | School Name | Role    | Stakeholder Representation |
      | Automation         | Dixie High  | Teacher | School within District     |
    And I click on "Save" in the page details
    And I click on "Back" in the page details
    When I click on "Edit" icon for "No" inside flex table with id "---tableID:-:ApplicationForms---"
    When I enter value "Yes" into field "IsFormValidated__c"
    And I click on "Submit for Approval" in the page details
    And I wait for "5" seconds
    When I "Approve" in the approval decision
    And I softly see field "Status" as "Approved for Submission"
    And I click on "Submit Application to Grantor" in the page details
    And I softly see field "Status" as "Submitted"
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
    When I enter value "No" into field "fieldIsBudgetNarrativeRequired__c"
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
    When I enter value "15" into field "fieldSCDE_Maximum_Indirect_Cost__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I refresh the page
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Allocations" sub tab
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
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
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
    And I navigate to "Budget" sub tab
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
    And I navigate to "Forms and Files" sub tab
    When I click on "Edit" icon for "No" inside flex table with id "---tableID:-:ApplicationForms---"
    When I enter the following values into flex table with id "---tableID:-:StakeholderParticipants---" by clicking "Add" :
      | Participant’s Name | School Name | Role    | Stakeholder Representation |
      | Automation         | Dixie High  | Teacher | School within District     |
    And I click on "Save" in the page details
    And I click on "Back" in the page details
    When I click on "Edit" icon for "No" inside flex table with id "---tableID:-:ApplicationForms---"
    When I enter value "Yes" into field "IsFormValidated__c"
    And I click on "Submit for Approval" in the page details
    And I wait for "5" seconds
    When I "Approve" in the approval decision
    And I softly see field "Status" as "Approved for Submission"
    And I click on "Submit Application to Grantor" in the page details
    And I softly see field "Status" as "Submitted"
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
    When I enter value "No" into field "fieldIsBudgetNarrativeRequired__c"
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
    When I enter value "15" into field "fieldSCDE_Maximum_Indirect_Cost__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I refresh the page
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Allocations" sub tab
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
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
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
    And I navigate to "Budget" sub tab
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
    And I navigate to "Forms and Files" sub tab
    When I click on "Edit" icon for "No" inside flex table with id "---tableID:-:ApplicationForms---"
    When I enter the following values into flex table with id "---tableID:-:StakeholderParticipants---" by clicking "Add" :
      | Participant’s Name | School Name | Role    | Stakeholder Representation |
      | Automation         | Dixie High  | Teacher | School within District     |
    And I click on "Save" in the page details
    And I click on "Back" in the page details
    When I click on "Edit" icon for "No" inside flex table with id "---tableID:-:ApplicationForms---"
    When I enter value "Yes" into field "IsFormValidated__c"
    And I click on "Submit for Approval" in the page details
    And I wait for "5" seconds
    When I "Approve" in the approval decision
    And I softly see field "Status" as "Approved for Submission"
    And I click on "Submit Application to Grantor" in the page details
    And I softly see field "Status" as "Submitted"
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
    When I enter value "No" into field "fieldIsBudgetNarrativeRequired__c"
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
    When I enter value "15" into field "fieldSCDE_Maximum_Indirect_Cost__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I refresh the page
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Allocations" sub tab
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
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
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
    And I navigate to "Budget" sub tab
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
    And I navigate to "Forms and Files" sub tab
    When I click on "Edit" icon for "No" inside flex table with id "---tableID:-:ApplicationForms---"
    When I enter the following values into flex table with id "---tableID:-:StakeholderParticipants---" by clicking "Add" :
      | Participant’s Name | School Name | Role    | Stakeholder Representation |
      | Automation         | Dixie High  | Teacher | School within District     |
    And I click on "Save" in the page details
    And I click on "Back" in the page details
    When I click on "Edit" icon for "No" inside flex table with id "---tableID:-:ApplicationForms---"
    When I enter value "Yes" into field "IsFormValidated__c"
    And I click on "Submit for Approval" in the page details
    And I wait for "5" seconds
    When I "Approve" in the approval decision
    And I softly see field "Status" as "Approved for Submission"
    And I click on "Submit Application to Grantor" in the page details
    And I softly see field "Status" as "Submitted"
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

  @185269 @185278 @185277 @sprint-4 @userStory-179376 @sanity
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
    When I enter value "No" into field "fieldIsBudgetNarrativeRequired__c"
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
    When I enter value "15" into field "fieldSCDE_Maximum_Indirect_Cost__c"
    When I enter value "10" into field "fieldSCDE_Maximum_Indirect_Cost__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I refresh the page
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Allocations" sub tab
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
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
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

  @185276 @185461 @185466 @185464 @185437 @sprint-4 @userStory-179376 @sanity
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
    When I enter value "No" into field "fieldIsBudgetNarrativeRequired__c"
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
    And I refresh the page
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Allocations" sub tab
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
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
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
    Then I softly see field "Potential Indirect Cost Recovery" as "$181.82"

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
    When I enter value "No" into field "fieldIsBudgetNarrativeRequired__c"
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
    When I enter value "2021" into field "fieldSCDE_Fiscal_Year__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I refresh the page
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Allocations" sub tab
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
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
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
    Then I softly see field "Potential Indirect Cost Recovery" as "$260.87"
    #185456 #185457 #185440
    And I click on "Edit" in the page details
    Then I softly see field "Potential Indirect Cost Recovery" as "$260.87"

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
    When I enter value "No" into field "fieldIsBudgetNarrativeRequired__c"
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
    And I refresh the page
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Allocations" sub tab
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
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Coordinator" into field "fieldRole__c"
    When I enter value "SPA Automation" into field "fieldAssignedTo__c"
    When I enter value "Active" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
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
    Then I softly see field "Potential Indirect Cost Recovery" as "$142.86"

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
    When I enter value "No" into field "fieldIsBudgetNarrativeRequired__c"
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
    And I refresh the page
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Allocations" sub tab
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
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Coordinator" into field "fieldRole__c"
    When I enter value "SPA Automation" into field "fieldAssignedTo__c"
    When I enter value "Active" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
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
    When I enter value "No" into field "fieldIsBudgetNarrativeRequired__c"
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
    When I enter value "0" into field "fieldSCDE_Maximum_Indirect_Cost__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I refresh the page
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Allocations" sub tab
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
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Coordinator" into field "fieldRole__c"
    When I enter value "SPA Automation" into field "fieldAssignedTo__c"
    When I enter value "Active" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
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
    When I enter value "No" into field "fieldIsBudgetNarrativeRequired__c"
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
    When I enter value "15" into field "fieldSCDE_Maximum_Indirect_Cost__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I refresh the page
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Allocations" sub tab
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
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
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
    When I enter value "No" into field "fieldIsBudgetNarrativeRequired__c"
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
    When I enter value "15" into field "fieldSCDE_Maximum_Indirect_Cost__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I refresh the page
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Allocations" sub tab
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
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
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
    When I enter value "No" into field "fieldIsBudgetNarrativeRequired__c"
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
    When I enter value "15" into field "fieldSCDE_Maximum_Indirect_Cost__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I refresh the page
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Allocations" sub tab
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
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
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
    And I expand nested table containing column value "BP01"
    When I click on "Add" icon for "110 - General Instruction" inside flex table with id "---tableID:-:ApplicationBudgetPeriod---"
    When I enter value "100 - Salaries" into field "fieldMST_Budget_Category__c"
    When I enter value "1" into field "fieldQuantity__c"
    When I enter value "1000" into field "fieldUnitPrice__c"
    When I enter value "test" into field "fieldNarrative__c"
    And I click modal button "Save"
    And I softly see field "Total Budgeted Amount" as "$1000.00"
    Then I softly see that "Total Budgeted Amount" rendered in view mode only
    #189019
    And I click on "Edit" in the page details
    When I enter value "200" into field "fieldSCDE_AdminCostTaken__c"
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
    When I enter value "No" into field "fieldIsBudgetNarrativeRequired__c"
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
    When I enter value "2021" into field "fieldSCDE_Fiscal_Year__c"
    When I enter value "15" into field "fieldSCDE_Maximum_Indirect_Cost__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I refresh the page
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Allocations" sub tab
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
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
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
    When I enter value "100" into field "fieldSCDE_AdminCostTaken__c"
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
    When I enter value "No" into field "fieldIsBudgetNarrativeRequired__c"
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
    When I enter value "15" into field "fieldSCDE_Maximum_Indirect_Cost__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I refresh the page
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Allocations" sub tab
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
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
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
    When I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:ApplicationId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:ApplicationId---"
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
    When I enter value "No" into field "fieldIsBudgetNarrativeRequired__c"
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
    When I enter value "15" into field "fieldSCDE_Maximum_Indirect_Cost__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I refresh the page
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Allocations" sub tab
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
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
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
    When I enter value "No" into field "fieldIsBudgetNarrativeRequired__c"
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
    When I enter value "15" into field "fieldSCDE_Maximum_Indirect_Cost__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I refresh the page
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Allocations" sub tab
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
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
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
    Then I softly see field "Budget For" inside "Details" section
    #189465
    Then I softly do not see asterisk mark on "Cash Match"
    #189469
    Then I softly do not see asterisk mark on "Non Cash Match"
    #189449
    Then I softly see field "Object Code" inside "Details" section
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
    When I enter value "2.111" into field "fieldQuantity__c"
    And I click modal button "Save"
    Then I softly see the following messages in the page details contains:
      | 'School' is required if 'Budget For' is Schoolwide. |
    #189713
    And I close modal by clicking the top right x button
    And I expand nested table containing column value "BP01"
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
    When I enter value "No" into field "fieldIsBudgetNarrativeRequired__c"
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
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I refresh the page
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Allocations" sub tab
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
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
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
    When I enter value "No" into field "fieldIsBudgetNarrativeRequired__c"
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
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I refresh the page
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Allocations" sub tab
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
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
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
    When I enter value "No" into field "fieldIsBudgetNarrativeRequired__c"
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
    When I enter value "15" into field "fieldSCDE_Maximum_Indirect_Cost__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I refresh the page
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Allocations" sub tab
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
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
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
    When I enter value "No" into field "fieldIsBudgetNarrativeRequired__c"
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
    When I enter value "15" into field "fieldSCDE_Maximum_Indirect_Cost__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I refresh the page
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Allocations" sub tab
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
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
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
    And I navigate to "Budget" sub tab
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
    And I navigate to "Forms and Files" sub tab
    When I click on "Edit" icon for "No" inside flex table with id "---tableID:-:ApplicationForms---"
    When I enter the following values into flex table with id "---tableID:-:StakeholderParticipants---" by clicking "Add" :
      | Participant’s Name | School Name | Role    | Stakeholder Representation |
      | Automation         | Dixie High  | Teacher | School within District     |
    And I click on "Save" in the page details
    And I click on "Back" in the page details
    When I click on "Edit" icon for "No" inside flex table with id "---tableID:-:ApplicationForms---"
    When I enter value "Yes" into field "IsFormValidated__c"
    And I click on "Submit for Approval" in the page details
    And I wait for "5" seconds
    When I "Approve" in the approval decision
    And I softly see field "Status" as "Approved for Submission"
    And I click on "Submit Application to Grantor" in the page details
    And I softly see field "Status" as "Submitted"
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
    When I enter value "No" into field "fieldIsBudgetNarrativeRequired__c"
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
    When I enter value "15" into field "fieldSCDE_Maximum_Indirect_Cost__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I refresh the page
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Allocations" sub tab
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
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
    And I logout
    Given I am on "SUBPORTAL" portal
    And I navigate to "Opportunities" tab
    When I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:PublishedOpportunities---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:PublishedOpportunities---"
    When I click on "Qualify" in the page details
    And I softly see field "Status" as "Qualified"
    And I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    And I navigate to "Budget" sub tab
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
    And I navigate to "Forms and Files" sub tab
    When I click on "Edit" icon for "No" inside flex table with id "---tableID:-:ApplicationForms---"
    When I enter the following values into flex table with id "---tableID:-:StakeholderParticipants---" by clicking "Add" :
      | Participant’s Name | School Name | Role    | Stakeholder Representation |
      | Automation         | Dixie High  | Teacher | School within District     |
    And I click on "Save" in the page details
    And I click on "Back" in the page details
    When I click on "Edit" icon for "No" inside flex table with id "---tableID:-:ApplicationForms---"
    When I enter value "Yes" into field "IsFormValidated__c"
    And I click on "Submit for Approval" in the page details
    And I wait for "5" seconds
    When I "Approve" in the approval decision
    And I softly see field "Status" as "Approved for Submission"
    And I click on "Submit Application to Grantor" in the page details
    And I softly see field "Status" as "Submitted"
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
    When I enter value "No" into field "fieldIsBudgetNarrativeRequired__c"
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
    When I enter value "2021" into field "fieldSCDE_Fiscal_Year__c"
    When I enter value "15" into field "fieldSCDE_Maximum_Indirect_Cost__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I refresh the page
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Allocations" sub tab
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
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
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
    And I navigate to "Budget" sub tab
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
    And I navigate to "Forms and Files" sub tab
    When I click on "Edit" icon for "No" inside flex table with id "---tableID:-:ApplicationForms---"
    When I enter the following values into flex table with id "---tableID:-:StakeholderParticipants---" by clicking "Add" :
      | Participant’s Name | School Name | Role    | Stakeholder Representation |
      | Automation         | Dixie High  | Teacher | School within District     |
    And I click on "Save" in the page details
    And I click on "Back" in the page details
    When I click on "Edit" icon for "No" inside flex table with id "---tableID:-:ApplicationForms---"
    When I enter value "Yes" into field "IsFormValidated__c"
    And I click on "Submit for Approval" in the page details
    And I wait for "5" seconds
    When I "Approve" in the approval decision
    And I softly see field "Status" as "Approved for Submission"
    And I click on "Submit Application to Grantor" in the page details
    And I softly see field "Status" as "Submitted"
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
    When I enter value "No" into field "fieldIsBudgetNarrativeRequired__c"
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
    When I enter value "15" into field "fieldSCDE_Maximum_Indirect_Cost__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I refresh the page
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Allocations" sub tab
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
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
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
    And I navigate to "Budget" sub tab
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
    And I navigate to "Forms and Files" sub tab
    When I click on "Edit" icon for "No" inside flex table with id "---tableID:-:ApplicationForms---"
    When I enter the following values into flex table with id "---tableID:-:StakeholderParticipants---" by clicking "Add" :
      | Participant’s Name | School Name | Role    | Stakeholder Representation |
      | Automation         | Dixie High  | Teacher | School within District     |
    And I click on "Save" in the page details
    And I click on "Back" in the page details
    When I click on "Edit" icon for "No" inside flex table with id "---tableID:-:ApplicationForms---"
    When I enter value "Yes" into field "IsFormValidated__c"
    And I click on "Submit for Approval" in the page details
    And I wait for "5" seconds
    When I "Approve" in the approval decision
    And I softly see field "Status" as "Approved for Submission"
    And I click on "Submit Application to Grantor" in the page details
    And I softly see field "Status" as "Submitted"
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
    When I enter value "No" into field "fieldIsBudgetNarrativeRequired__c"
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
    When I enter value "15" into field "fieldSCDE_Maximum_Indirect_Cost__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I refresh the page
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Allocations" sub tab
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
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
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
    And I navigate to "Budget" sub tab
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
    And I navigate to "Forms and Files" sub tab
    When I click on "Edit" icon for "No" inside flex table with id "---tableID:-:ApplicationForms---"
    When I enter the following values into flex table with id "---tableID:-:StakeholderParticipants---" by clicking "Add" :
      | Participant’s Name | School Name | Role    | Stakeholder Representation |
      | Automation         | Dixie High  | Teacher | School within District     |
    And I click on "Save" in the page details
    And I click on "Back" in the page details
    When I click on "Edit" icon for "No" inside flex table with id "---tableID:-:ApplicationForms---"
    When I enter value "Yes" into field "IsFormValidated__c"
    And I click on "Submit for Approval" in the page details
    And I wait for "5" seconds
    When I "Approve" in the approval decision
    And I softly see field "Status" as "Approved for Submission"
    And I click on "Submit Application to Grantor" in the page details
    And I softly see field "Status" as "Submitted"
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
    When I enter value "No" into field "fieldIsBudgetNarrativeRequired__c"
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
    When I enter value "15" into field "fieldSCDE_Maximum_Indirect_Cost__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I refresh the page
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Allocations" sub tab
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
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
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
    And I navigate to "Budget" sub tab
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
    And I navigate to "Forms and Files" sub tab
    When I click on "Edit" icon for "No" inside flex table with id "---tableID:-:ApplicationForms---"
    When I enter the following values into flex table with id "---tableID:-:StakeholderParticipants---" by clicking "Add" :
      | Participant’s Name | School Name | Role    | Stakeholder Representation |
      | Automation         | Dixie High  | Teacher | School within District     |
    And I click on "Save" in the page details
    And I click on "Back" in the page details
    When I click on "Edit" icon for "No" inside flex table with id "---tableID:-:ApplicationForms---"
    When I enter value "Yes" into field "IsFormValidated__c"
    And I click on "Submit for Approval" in the page details
    And I wait for "5" seconds
    When I "Approve" in the approval decision
    And I softly see field "Status" as "Approved for Submission"
    And I click on "Submit Application to Grantor" in the page details
    And I softly see field "Status" as "Submitted"
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
    When I enter value "No" into field "fieldIsBudgetNarrativeRequired__c"
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
    When I enter value "15" into field "fieldSCDE_Maximum_Indirect_Cost__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I refresh the page
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Allocations" sub tab
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
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
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
    And I navigate to "Budget" sub tab
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
    And I navigate to "Forms and Files" sub tab
    When I click on "Edit" icon for "No" inside flex table with id "---tableID:-:ApplicationForms---"
    When I enter the following values into flex table with id "---tableID:-:StakeholderParticipants---" by clicking "Add" :
      | Participant’s Name | School Name | Role    | Stakeholder Representation |
      | Automation         | Dixie High  | Teacher | School within District     |
    And I click on "Save" in the page details
    And I click on "Back" in the page details
    When I click on "Edit" icon for "No" inside flex table with id "---tableID:-:ApplicationForms---"
    When I enter value "Yes" into field "IsFormValidated__c"
    And I click on "Submit for Approval" in the page details
    And I wait for "5" seconds
    When I "Approve" in the approval decision
    And I softly see field "Status" as "Approved for Submission"
    And I click on "Submit Application to Grantor" in the page details
    And I softly see field "Status" as "Submitted"
    And I save the field containing "EGMS ID" as "APPID"
    When I re-login to "As a Grantor" app as "PM" user on "INTERNAL" portal
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:InternalApplicationTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:InternalApplicationTableId---"
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
    When I enter value "No" into field "fieldIsBudgetNarrativeRequired__c"
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
    When I enter value "15" into field "fieldSCDE_Maximum_Indirect_Cost__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I refresh the page
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Allocations" sub tab
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
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
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
    When I enter value "Wright Middle" into field "fieldSchool__c"
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
    When I enter value "No" into field "fieldIsBudgetNarrativeRequired__c"
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
    When I enter value "15" into field "fieldSCDE_Maximum_Indirect_Cost__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I refresh the page
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Allocations" sub tab
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
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
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
    And I navigate to "Budget" sub tab
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
    And I navigate to "Forms and Files" sub tab
    When I click on "Edit" icon for "No" inside flex table with id "---tableID:-:ApplicationForms---"
    When I enter the following values into flex table with id "---tableID:-:StakeholderParticipants---" by clicking "Add" :
      | Participant’s Name | School Name | Role    | Stakeholder Representation |
      | Automation         | Dixie High  | Teacher | School within District     |
    And I click on "Save" in the page details
    And I click on "Back" in the page details
    When I click on "Edit" icon for "No" inside flex table with id "---tableID:-:ApplicationForms---"
    When I enter value "Yes" into field "IsFormValidated__c"
    And I click on "Submit for Approval" in the page details
    And I wait for "5" seconds
    When I "Approve" in the approval decision
    And I softly see field "Status" as "Approved for Submission"
    And I click on "Submit Application to Grantor" in the page details
    And I softly see field "Status" as "Submitted"
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
    When I enter value "No" into field "fieldIsBudgetNarrativeRequired__c"
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
    When I enter value "15" into field "fieldSCDE_Maximum_Indirect_Cost__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I refresh the page
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Allocations" sub tab
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
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
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
    And I navigate to "Budget" sub tab
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
    And I navigate to "Forms and Files" sub tab
    When I click on "Edit" icon for "No" inside flex table with id "---tableID:-:ApplicationForms---"
    When I enter the following values into flex table with id "---tableID:-:StakeholderParticipants---" by clicking "Add" :
      | Participant’s Name | School Name | Role    | Stakeholder Representation |
      | Automation         | Dixie High  | Teacher | School within District     |
    And I click on "Save" in the page details
    And I click on "Back" in the page details
    When I click on "Edit" icon for "No" inside flex table with id "---tableID:-:ApplicationForms---"
    When I enter value "Yes" into field "IsFormValidated__c"
    And I click on "Submit for Approval" in the page details
    And I wait for "5" seconds
    When I "Approve" in the approval decision
    And I softly see field "Status" as "Approved for Submission"
    And I click on "Submit Application to Grantor" in the page details
    And I softly see field "Status" as "Submitted"
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
    When I enter value "No" into field "fieldIsBudgetNarrativeRequired__c"
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
    When I enter value "15" into field "fieldSCDE_Maximum_Indirect_Cost__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I refresh the page
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Allocations" sub tab
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
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
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
    And I navigate to "Budget" sub tab
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
    And I navigate to "Forms and Files" sub tab
    When I click on "Edit" icon for "No" inside flex table with id "---tableID:-:ApplicationForms---"
    When I enter the following values into flex table with id "---tableID:-:StakeholderParticipants---" by clicking "Add" :
      | Participant’s Name | School Name | Role    | Stakeholder Representation |
      | Automation         | Dixie High  | Teacher | School within District     |
    And I click on "Save" in the page details
    And I click on "Back" in the page details
    When I click on "Edit" icon for "No" inside flex table with id "---tableID:-:ApplicationForms---"
    When I enter value "Yes" into field "IsFormValidated__c"
    And I click on "Submit for Approval" in the page details
    And I wait for "5" seconds
    When I "Approve" in the approval decision
    And I softly see field "Status" as "Approved for Submission"
    And I click on "Submit Application to Grantor" in the page details
    And I softly see field "Status" as "Submitted"
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
    When I check "Select All" boxes in flex table with id "---tableID:-:Reviews---"
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
    When I enter value "No" into field "fieldIsBudgetNarrativeRequired__c"
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
    When I enter value "15" into field "fieldSCDE_Maximum_Indirect_Cost__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I refresh the page
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Allocations" sub tab
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
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
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
    And I navigate to "Budget" sub tab
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
    And I navigate to "Forms and Files" sub tab
    When I click on "Edit" icon for "No" inside flex table with id "---tableID:-:ApplicationForms---"
    When I enter the following values into flex table with id "---tableID:-:StakeholderParticipants---" by clicking "Add" :
      | Participant’s Name | School Name | Role    | Stakeholder Representation |
      | Automation         | Dixie High  | Teacher | School within District     |
    And I click on "Save" in the page details
    And I click on "Back" in the page details
    When I click on "Edit" icon for "No" inside flex table with id "---tableID:-:ApplicationForms---"
    When I enter value "Yes" into field "IsFormValidated__c"
    And I click on "Submit for Approval" in the page details
    And I wait for "5" seconds
    When I "Approve" in the approval decision
    And I softly see field "Status" as "Approved for Submission"
    And I click on "Submit Application to Grantor" in the page details
    And I softly see field "Status" as "Submitted"
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
    When I check "Select All" boxes in flex table with id "---tableID:-:Reviews---"
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
    When I enter value "No" into field "fieldIsBudgetNarrativeRequired__c"
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
    When I enter value "15" into field "fieldSCDE_Maximum_Indirect_Cost__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I refresh the page
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Allocations" sub tab
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
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
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
    And I navigate to "Budget" sub tab
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
    And I navigate to "Forms and Files" sub tab
    When I click on "Edit" icon for "No" inside flex table with id "---tableID:-:ApplicationForms---"
    When I enter the following values into flex table with id "---tableID:-:StakeholderParticipants---" by clicking "Add" :
      | Participant’s Name | School Name | Role    | Stakeholder Representation |
      | Automation         | Dixie High  | Teacher | School within District     |
    And I click on "Save" in the page details
    And I click on "Back" in the page details
    When I click on "Edit" icon for "No" inside flex table with id "---tableID:-:ApplicationForms---"
    When I enter value "Yes" into field "IsFormValidated__c"
    And I click on "Submit for Approval" in the page details
    And I wait for "5" seconds
    When I "Approve" in the approval decision
    And I softly see field "Status" as "Approved for Submission"
    And I click on "Submit Application to Grantor" in the page details
    And I softly see field "Status" as "Submitted"
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
    When I enter value "No" into field "fieldIsBudgetNarrativeRequired__c"
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
    When I enter value "15" into field "fieldSCDE_Maximum_Indirect_Cost__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I refresh the page
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Allocations" sub tab
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
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
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
    And I navigate to "Budget" sub tab
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
    And I navigate to "Forms and Files" sub tab
    When I click on "Edit" icon for "No" inside flex table with id "---tableID:-:ApplicationForms---"
    When I enter the following values into flex table with id "---tableID:-:StakeholderParticipants---" by clicking "Add" :
      | Participant’s Name | School Name | Role    | Stakeholder Representation |
      | Automation         | Dixie High  | Teacher | School within District     |
    And I click on "Save" in the page details
    And I click on "Back" in the page details
    When I click on "Edit" icon for "No" inside flex table with id "---tableID:-:ApplicationForms---"
    When I enter value "Yes" into field "IsFormValidated__c"
    And I click on "Submit for Approval" in the page details
    And I wait for "5" seconds
    When I "Approve" in the approval decision
    And I softly see field "Status" as "Approved for Submission"
    And I click on "Submit Application to Grantor" in the page details
    And I softly see field "Status" as "Submitted"
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
    When I enter value "No" into field "fieldIsBudgetNarrativeRequired__c"
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
    When I enter value "15" into field "fieldSCDE_Maximum_Indirect_Cost__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I refresh the page
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Allocations" sub tab
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
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
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
    And I navigate to "Budget" sub tab
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
    And I navigate to "Forms and Files" sub tab
    When I click on "Edit" icon for "No" inside flex table with id "---tableID:-:ApplicationForms---"
    When I enter the following values into flex table with id "---tableID:-:StakeholderParticipants---" by clicking "Add" :
      | Participant’s Name | School Name | Role    | Stakeholder Representation |
      | Automation         | Dixie High  | Teacher | School within District     |
    And I click on "Save" in the page details
    And I click on "Back" in the page details
    When I click on "Edit" icon for "No" inside flex table with id "---tableID:-:ApplicationForms---"
    When I enter value "Yes" into field "IsFormValidated__c"
    And I click on "Submit for Approval" in the page details
    And I wait for "5" seconds
    When I "Approve" in the approval decision
    And I softly see field "Status" as "Approved for Submission"
    And I click on "Submit Application to Grantor" in the page details
    And I softly see field "Status" as "Submitted"
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
    When I enter value "No" into field "fieldIsBudgetNarrativeRequired__c"
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
    When I enter value "15" into field "fieldSCDE_Maximum_Indirect_Cost__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I refresh the page
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Allocations" sub tab
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
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
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
    And I navigate to "Budget" sub tab
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
    When I enter value "No" into field "fieldIsBudgetNarrativeRequired__c"
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
    When I enter value "15" into field "fieldSCDE_Maximum_Indirect_Cost__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I refresh the page
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Allocations" sub tab
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
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
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
    When I enter value "No" into field "fieldIsBudgetNarrativeRequired__c"
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
    When I enter value "15" into field "fieldSCDE_Maximum_Indirect_Cost__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I refresh the page
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Allocations" sub tab
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
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
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
    And I navigate to "Budget" sub tab
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
    And I navigate to "Forms and Files" sub tab
    When I click on "Edit" icon for "No" inside flex table with id "---tableID:-:ApplicationForms---"
    When I enter the following values into flex table with id "---tableID:-:StakeholderParticipants---" by clicking "Add" :
      | Participant’s Name | School Name | Role    | Stakeholder Representation |
      | Automation         | Dixie High  | Teacher | School within District     |
    And I click on "Save" in the page details
    And I click on "Back" in the page details
    When I click on "Edit" icon for "No" inside flex table with id "---tableID:-:ApplicationForms---"
    When I enter value "Yes" into field "IsFormValidated__c"
    And I click on "Submit for Approval" in the page details
    And I wait for "5" seconds
    When I "Approve" in the approval decision
    And I softly see field "Status" as "Approved for Submission"
    And I click on "Submit Application to Grantor" in the page details
    And I softly see field "Status" as "Submitted"
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
    When I check "Select All" boxes in flex table with id "---tableID:-:Reviews---"
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
    When I enter value "No" into field "fieldIsBudgetNarrativeRequired__c"
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
    When I enter value "15" into field "fieldSCDE_Maximum_Indirect_Cost__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I refresh the page
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Allocations" sub tab
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
    Then I softly do not see value "In-Progress" for title "Status" inside table "---tableID:-:ApplicationAnnualPlans---"

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
    When I enter value "No" into field "fieldIsBudgetNarrativeRequired__c"
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
    When I enter value "15" into field "fieldSCDE_Maximum_Indirect_Cost__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I refresh the page
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Allocations" sub tab
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
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
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
    And I navigate to "Budget" sub tab
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
    And I navigate to "Forms and Files" sub tab
    When I click on "Edit" icon for "No" inside flex table with id "---tableID:-:ApplicationForms---"
    When I enter the following values into flex table with id "---tableID:-:StakeholderParticipants---" by clicking "Add" :
      | Participant’s Name | School Name | Role    | Stakeholder Representation |
      | Automation         | Dixie High  | Teacher | School within District     |
    And I click on "Save" in the page details
    And I click on "Back" in the page details
    When I click on "Edit" icon for "No" inside flex table with id "---tableID:-:ApplicationForms---"
    When I enter value "Yes" into field "IsFormValidated__c"
    And I click on "Submit for Approval" in the page details
    And I wait for "5" seconds
    When I "Approve" in the approval decision
    And I softly see field "Status" as "Approved for Submission"
    And I click on "Submit Application to Grantor" in the page details
    And I softly see field "Status" as "Submitted"
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
    When I enter value "No" into field "fieldIsBudgetNarrativeRequired__c"
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
    When I enter value "15" into field "fieldSCDE_Maximum_Indirect_Cost__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I refresh the page
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I pause execution for "2" seconds
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Allocations" sub tab
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
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
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
    When I enter value "No" into field "fieldIsBudgetNarrativeRequired__c"
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
    When I enter value "15" into field "fieldSCDE_Maximum_Indirect_Cost__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I refresh the page
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Allocations" sub tab
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
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
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
    When I enter value "No" into field "fieldIsBudgetNarrativeRequired__c"
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
    When I enter value "15" into field "fieldSCDE_Maximum_Indirect_Cost__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I refresh the page
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Allocations" sub tab
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
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
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
    When I enter value "No" into field "fieldIsBudgetNarrativeRequired__c"
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
    And I refresh the page
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Allocations" sub tab
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
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
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
    And I navigate to "Budget" sub tab
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
    And I navigate to "Forms and Files" sub tab
    When I click on "Edit" icon for "No" inside flex table with id "---tableID:-:ApplicationForms---"
    When I enter the following values into flex table with id "---tableID:-:StakeholderParticipants---" by clicking "Add" :
      | Participant’s Name | School Name | Role    | Stakeholder Representation |
      | Automation         | Dixie High  | Teacher | School within District     |
    And I click on "Save" in the page details
    And I click on "Back" in the page details
    When I click on "Edit" icon for "No" inside flex table with id "---tableID:-:ApplicationForms---"
    When I enter value "Yes" into field "IsFormValidated__c"
    And I click on "Submit for Approval" in the page details
    Then I softly see the following messages in the page details contains:
      | The 'Indirect Cost Rate' for your organization is not available. Contact EGMS support for assistance. |

  @193149 @193144 @193147 @193140 @193142 @193131 @193137 @193134 @sprint-6 @userStory-190318
  Scenario: Verify that Delete icon where the entire line and document are deleted
  | Verify that status changes to 'Submitted'
  | Verify that the Last Submitted By field is populated
  | Verify that the Document Sub-Type field in Annual plans tab is populated
  | Verify that Upload Icon where I can upload the Required document
  | Verify that the "Retract "row-level action with a back arrow icon.
  | Verify that Retract updates the status to 'Retracted'
  | Verify that External user can see the Document Version in Annual Plans tab.
    Given I am on "SUBPORTAL" portal
    When I login as "SPI" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I navigate to "Annual Plans" sub tab
    When I enter value "2017/18 - 2021/22" into field "FiveYearPeriod__c"
    When I enter value "2017/18" into field "SchoolYear__c"
    When I enter value "CCNA" into field "DocumentType__c"
    When I enter value "Initial" into field "DocumentSubType__c"
    And I click on top right button "Save" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    #193149
    Then I softly can see row level action button "Delete" against "In-Progress" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    #193144
    When I click on "Submit" icon for "In-Progress" inside flex table with id "---tableID:-:ApplicationAnnualPlans---"
    Then I softly see value "Submitted" for title "Status" inside table "---tableID:-:ApplicationAnnualPlans---"
    #193147
    Then I softly see value "SPI Automation" for title "Last Submitted By" inside table "---tableID:-:ApplicationAnnualPlans---"
    #193140
    Then I softly see value "Initial" for title "Document Sub-Type" inside table "---tableID:-:ApplicationAnnualPlans---"
    #193142
    Then I softly can see row level action button "Upload" against "Submitted" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    #193131
    Then I softly can see row level action button "Retract" against "Submitted" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    #193137
    When I click on "Retract" icon for "Submitted" inside flex table with id "---tableID:-:ApplicationAnnualPlans---"
    Then I softly see value "Retracted" for title "Status" inside table "---tableID:-:ApplicationAnnualPlans---"
    #193134
    Then I softly see value "1" for title "Document Version" inside table "---tableID:-:ApplicationAnnualPlans---"

  @192191 @192194 @sprint-6 @userStory-189636
  Scenario: Verify that the Fiscal Year is required on Submit
  | Verify that the validation Message:  Financials Tab - 'Fiscal Year' is required to Submit for Approval.
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
    When I enter value "No" into field "fieldIsBudgetNarrativeRequired__c"
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
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I refresh the page
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Allocations" sub tab
    And I click on top right button "Upload Excel" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
    When I switch to iframe with id "SoleSourceAwardOrganizationsiframeContentId"
    When I upload file "AppWithSchoolCode.xlsx" into library
    And I click modal button "Upload File"
    And I pause execution for "2" seconds
    And I click on "Submit For Approval" in the page details
    #192191  #192194
    Then I softly see the following messages in the page details contains:
      | Financials Tab - 'Fiscal Year' is required to Submit for Approval. |

  @192150 @192152 @192086 @192110 @192096 @192102 @192099 @192100 @192090 @192226 @192075 @192050 @192069 @192051 @192052 @192049 @192047 @192160 @192122 @sprint-6 @userStory-189635
  Scenario: Verify that after save revisions tab changes in the application, I see a 'Cancel Revision' button on the application
  | Verify that If I cancel the revision, I see a warning message with an option to continue or not continue
  | Verify that If user click YES in the pop-up then in the Revisions tab user see 'Explanation of Revisions Needed' section shows data that user saved before canceled
  | Verify that If user click YES in the pop-up then in the Revisions tab, user see Application Section for Revisions Shows data that I saved before I canceled
  | Verify that If user click YES in the pop-up then user see Applicant Name as read-only in the Revisions tab
  | Verify that If user click YES in the pop-up then user see In the 'Available Forms for Revisions' section, user see all forms associated with the application. I see that the 'Allow Edits' column is checked if I checked it for a given form before I canceled
  | Verify that If user click YES in the pop-up then user see Revised Due Date (that was saved before user canceled) in Revision tab as read only
  | Verify that If user click YES in the pop-up then user see Revised Submitted Date is blank in the Revisions tab
  | Verify that If user click YES in the pop-up then user see Revision Created Date as read-only in the Revisions tab
  | Verify that If user click YES in the pop-up then user see Revision Request Status " Canceled" as read-only in the Revisions tab
  | Verify that after cancelation, I see that the Decision Status for the application in the review step is reset to 'Pending'. The application status remains 'Review Initiated'
  | Verify that 'Explanation of Revisions Needed' is text field accept up to 4,000 chars
  | Verify that after save changes in revisions tab, user not see the request revision action (dollar icon) in the review step for the application
  | Verify that after saved changes in revisions tab, the 'Decision Status' for the application for the review step is updated from "Pending" to "Revision In-Progress"
  | Verify that after saved revisions tab changes in the application,  Revision Request Status (status  = Created) shown as read only
  | Verify that after saving my changes, I can Edit and save data in the fields in only the Revisions tab
  | Verify that Applicant Name is read only after save revisions tab changes in the application
  | Verify that in Revision tab, after saving my changes, I see 4 options (Edit, Send to Subrecipients, Cancel Revision, Back to Current Review Step) on the application header
  | Verify that Application Section for Revisions filed is Multi-picklist in the 'Revisions' tab
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
    When I enter value "No" into field "fieldIsBudgetNarrativeRequired__c"
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
    When I enter value "15" into field "fieldSCDE_Maximum_Indirect_Cost__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I refresh the page
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Allocations" sub tab
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
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
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
    And I navigate to "Budget" sub tab
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
    And I navigate to "Forms and Files" sub tab
    When I click on "Edit" icon for "No" inside flex table with id "---tableID:-:ApplicationForms---"
    When I enter the following values into flex table with id "---tableID:-:StakeholderParticipants---" by clicking "Add" :
      | Participant’s Name | School Name | Role    | Stakeholder Representation |
      | Automation         | Dixie High  | Teacher | School within District     |
    And I click on "Save" in the page details
    And I click on "Back" in the page details
    When I click on "Edit" icon for "No" inside flex table with id "---tableID:-:ApplicationForms---"
    When I enter value "Yes" into field "IsFormValidated__c"
    And I click on "Submit for Approval" in the page details
    And I wait for "5" seconds
    When I "Approve" in the approval decision
    And I softly see field "Status" as "Approved for Submission"
    And I click on "Submit Application to Grantor" in the page details
    And I softly see field "Status" as "Submitted"
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
    And I pause execution for "5" seconds
    And I refresh the page
    And I click on "Request Revision" icon for "Automation PM" inside flex table with id "---tableID:-:Reviewer---"
    And I navigate to "Revisions" sub tab
    When I enter value "200" into field "NegotiationDueDate__c"
    When I enter value "Overview" into field "fieldApplicationSectionsForRevision__c"
    When I enter value "Test" into field "fieldExplanationOfRevisionsNeeded__c"
    And I click on top right button "Save" in flex table with id "---tableID:-:ApplicationRevisions---"
    #192150
    Then I softly can see top right button "Cancel Revision" in flex table with id "---tableID:-:ApplicationRevisions---"
    #192152
    And I click on top right button "Cancel Revision" in flex table with id "---tableID:-:ApplicationRevisions---"
    Then I softly see the following messages in the page details contains:
      | The revisions will no longer be editable. Are you sure you are ready to cancel the revisions? |
    #192086
    When I navigate to "Applications" content inside "Applications" subheader on left panel
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:ApplicationTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:ApplicationTableId---"
    And I navigate to "Revisions" sub tab
    Then I softly see field "Details" inside "Explanation of Revisions Needed" section
    #192110
    Then I softly see field "Application Section for Revisions" inside "Request Revision Details" section
    #192096
    Then I softly see that "Applicant Name" rendered in view mode only
    #192102
    Then I softly see value "Title II, Part A - Private Schools" for title "Form Name" inside table "---tableID:-:ApplicationFormsRevision---"
    Then I softly see value "Title II, Part A - Stakeholder Participants" for title "Form Name" inside table "---tableID:-:ApplicationFormsRevision---"
    Then I softly see value "checked" for title "Allow Edits?" inside table "---tableID:-:ApplicationFormsRevision---"
    #192099
    Then I softly see that "Due Date" rendered in view mode only
    #192100
    Then I softly see field "Revised Submitted Date" inside "Request Revision Details" section
    #192090
    Then I softly see that "Revision Created Date" rendered in view mode only
    #192226
    Then I softly see field "Revision Request Status" as "Canceled"
    Then I softly see that "Revision Request Status" rendered in view mode only
    #192075
    When I navigate to "Reviews" content inside "Application Reviews" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:ApplicationReviews---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:ApplicationReviews---"
    And I navigate to "Related Log" sub tab
    And I click on "View" icon for "Pre-Screen Review" inside flex table with id "---tableID:-:AnnouncementReviewSteps---"
    And I softly see field "Status" as "In Progress"
    Then I softly see value "Pending" for title "Decision Status" inside table "---tableID:-:AnnouncementPreScreenReview---"
    #192050
    When I enter value "Test" into field "fieldExplanationOfRevisionsNeeded__c"
    And I click on top right button "Save" in flex table with id "---tableID:-:ApplicationRevisions---"
    And I softly see field "Status" as "Review Initiated"
    #192069
    When I navigate to "Reviews" content inside "Application Reviews" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:ApplicationReviews---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:ApplicationReviews---"
    And I navigate to "Related Log" sub tab
    And I click on "View" icon for "Pre-Screen Review" inside flex table with id "---tableID:-:AnnouncementReviewSteps---"
    Then I softly cannot see row level action button "Request Revision" against "TEXAS BEAR CREEK STORAGE" in flex table with id "---tableID:-:ApplicationRevisions---"
    #192051
    Then I softly see value "Revision In-Progress" for title "Decision Status" inside table "---tableID:-:AnnouncementPreScreenReview---"
    #192052
    When I navigate to "Applications" content inside "Applications" subheader on left panel
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:ApplicationTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:ApplicationTableId---"
    And I navigate to "Revisions" sub tab
    Then I softly see field "Revision Request Status" as "Created"
    Then I softly see that "Revision Request Status" rendered in view mode only
    #192049
    And I click on top right button "Edit" in flex table with id "---tableID:-:AnnouncementPreScreenReview---"
    Then I softly see fields "fieldNegotiationDueDate__c" is in edit mode
    Then I softly see fields "fieldApplicationSectionsForRevision__c" is in edit mode
    Then I softly see fields "ExplanationOfRevisionsNeeded__c" is in edit mode
    #192047
    And I click on top right button "Save" in flex table with id "---tableID:-:AnnouncementPreScreenReview---"
    Then I softly see that "Applicant Name" rendered in view mode only
    #192160
    Then I softly can see top right button "Edit" in flex table with id "---tableID:-:AnnouncementPreScreenReview---"
    Then I softly can see top right button " Send to Subrecipients" in flex table with id "---tableID:-:AnnouncementPreScreenReview---"
    Then I softly can see top right button "Cancel Revision" in flex table with id "---tableID:-:AnnouncementPreScreenReview---"
    Then I softly can see top right button "Back to Current Review Step" in flex table with id "---tableID:-:AnnouncementPreScreenReview---"
    #192122
    And I click on top right button "Edit" in flex table with id "---tableID:-:AnnouncementPreScreenReview---"
    Then I softly see "Budget:Performance:Forms and Files : Forms:Forms and Files: Supporting Document Checklist :Forms and Files: Application Files:Forms and Files: Notes" inside selectbox field "fieldApplicationSectionsForRevision__c"

  @192111 @192104 @192109 @192073 @192076 @192101 @192114 @sprint-6 @userStory-190315
  Scenario: Verify Document Type column is a drop-down field with options
  | Verify all the columns available on the table are required on Save
  | Verify that status changes to 'Submitted'
  | Verify that Delete icon where the entire line and document are deleted
  | Verify external user should delete an entry, only when the entry status is Submitted
  | Verify that the Document Sub-Type field in Annual plans tab is populated
  | Verify that the Last Submitted By field is populated
    Given I am on "SUBPORTAL" portal
    When I login as "SPI" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I navigate to "Annual Plans" sub tab
    #192111
    And I click on top right button "Add" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    Then I see the following options in dropdown field "DocumentType__c" :
      | CCNA | One Plan |
    #192104
    And I click on top right button "Save" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    Then I softly see the text :
      | Required Field Missing |
    #192109
    When I enter value "2017/18 - 2021/22" into field "FiveYearPeriod__c"
    When I enter value "2017/18" into field "SchoolYear__c"
    When I enter value "CCNA" into field "DocumentType__c"
    When I enter value "Initial" into field "DocumentSubType__c"
    And I click on top right button "Save" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    #192073
    Then I softly can see row level action button "Upload" against "CCNA" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    #192076
    And I click on "Upload" icon for "In-Progress" inside flex table with id "---tableID:-:AnnualPlans---"
    And I switch to iframe with id "AnnualPlansExternaliframeContentId"
    When I upload file "EmptyFile.xlsx" into library
    And I click modal button "Save"
    Then I softly see the following messages in the page details contains:
      | Attachment saved successfully. |
    And I close modal by clicking the top right x button
    When I click on "Submit" icon for "In-Progress" inside flex table with id "---tableID:-:ApplicationAnnualPlans---"
    Then I softly see value "Submitted" for title "Status" inside table "---tableID:-:ApplicationAnnualPlans---"
    #192101
    And I click on top right button "Add" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    When I enter value "2018/19 - 2022/23" into field "FiveYearPeriod__c"
    When I enter value "2018/19" into field "SchoolYear__c"
    When I enter value "CCNA" into field "DocumentType__c"
    When I enter value "Initial" into field "DocumentSubType__c"
    And I click on top right button "Save" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    Then I softly see value "Initial" for title "Document Sub-Type" inside table "---tableID:-:ApplicationAnnualPlans---"
    #192114
    Then I softly see value "SPI Automation" for title "Last Submitted By" inside table "---tableID:-:ApplicationAnnualPlans---"

  @191804 @191807 @191805 @191808 @sprint-6 @userStory-189880
  Scenario: Verify that sequence of the sections in Forms and Files tab for External view
  | Verify that all Forms section is re-labeled to be Forms for External view
  | Verify that the columns on the Forms table tab for External view
  | Verify that the Files tab is relabeled to be Forms and Files for External view
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
    When I enter value "No" into field "fieldIsBudgetNarrativeRequired__c"
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
    When I enter value "15" into field "fieldSCDE_Maximum_Indirect_Cost__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I refresh the page
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
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
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
    #191804
    And I navigate to "Forms and Files" sub tab
    Then I see only the following ordered page blocks :
      | Forms | Supporting Documents Checklist | Application Files | Notes |
    #191807
    Then I softly see "Forms" page block displayed
    #191805
    Then I see only the following ordered headers in table with id "---tableID:-:ApplicationForms---" :
      | Sequence Number | Form Name | Mandatory? | Is Form Validated? | Last Modified By | Last Modified Date | Actions |
    #191808
    Then I softly can see "Forms and Files" sub tab at view detail page

  @191810 @191811 @sprint-6 @userStory-190010
  Scenario: Verify that after save changes in revisions tab and Initiate Review Process, user can see the status as Review Initiated
  | Verify that after save changes in revisions tab, user not see the request revision action (dollar icon) in the review step for the application
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
    When I enter value "No" into field "fieldIsBudgetNarrativeRequired__c"
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
    When I enter value "15" into field "fieldSCDE_Maximum_Indirect_Cost__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I refresh the page
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Allocations" sub tab
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
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
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
    And I navigate to "Budget" sub tab
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
    And I navigate to "Forms and Files" sub tab
    When I click on "Edit" icon for "No" inside flex table with id "---tableID:-:ApplicationForms---"
    When I enter the following values into flex table with id "---tableID:-:StakeholderParticipants---" by clicking "Add" :
      | Participant’s Name | School Name | Role    | Stakeholder Representation |
      | Automation         | Dixie High  | Teacher | School within District     |
    And I click on "Save" in the page details
    And I click on "Back" in the page details
    When I click on "Edit" icon for "No" inside flex table with id "---tableID:-:ApplicationForms---"
    When I enter value "Yes" into field "IsFormValidated__c"
    And I click on "Submit for Approval" in the page details
    And I wait for "5" seconds
    When I "Approve" in the approval decision
    And I softly see field "Status" as "Approved for Submission"
    And I click on "Submit Application to Grantor" in the page details
    And I softly see field "Status" as "Submitted"
    And I save the field containing "EGMS ID" as "APPID"
    When I re-login to "As a Grantor" app as "PM" user on "INTERNAL" portal
    And I navigate to "Applications" tab
    When I navigate to "Reviews" content inside "Application Reviews" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:ApplicationReviews---" panel
    And I click on "Initiate Review Process" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:ApplicationReviews---"
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
    And I pause execution for "5" seconds
    And I refresh the page
    And I click on "Request Revision" icon for "Automation PM" inside flex table with id "---tableID:-:Reviewer---"
    And I navigate to "Revisions" sub tab
    When I enter value "200" into field "NegotiationDueDate__c"
    When I enter value "Overview" into field "fieldApplicationSectionsForRevision__c"
    When I enter value "Test" into field "fieldExplanationOfRevisionsNeeded__c"
    And I click on top right button "Save" in flex table with id "---tableID:-:ApplicationRevisions---"
    #191810
    And I softly see field "Status" as "Review Initiated"
    #191811
    When I navigate to "Reviews" content inside "Application Reviews" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:ApplicationReviews---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:ApplicationReviews---"
    And I navigate to "Related Log" sub tab
    And I click on "View" icon for "Pre-Screen Review" inside flex table with id "---tableID:-:AnnouncementReviewSteps---"
    Then I softly cannot see row level action button "Request Revision" against "TEXAS BEAR CREEK STORAGE" in flex table with id "---tableID:-:ApplicationRevisions---"

  @193421 @193431 @193426 @193430 @193428 @193432 @193433 @193230 @193229 @193423 @sprint-6 @userStory-190588
  Scenario: Verify "Cash Match" field is an optional field.
  | Verify "Non Cash Match" field is an optional field.
  | Verify "Object Code" field on the modal is lookup to all object codes.
  | Verify "Cost" field is required on save.
  | Verify "Award Total" field is a calculated field (Quantity * Cost)
  | Verify "Cost" field is a Currency field that allows 2 decimals
  | Verify "Quantity" field is a numeric field that allows 2 decimals.
  | Verify "Cash Match" field is a currency field that allows 2 decimals
  | Verify "Non Cash Match" is a currency field that allows 2 decimals.
  | Verify "Quantity" field is required on save
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
    When I enter value "No" into field "fieldIsBudgetNarrativeRequired__c"
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
    When I enter value "15" into field "fieldSCDE_Maximum_Indirect_Cost__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I refresh the page
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Allocations" sub tab
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
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
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
    #193421
    Then I softly do not see asterisk mark on "Cash Match"
    #193431
    Then I softly do not see asterisk mark on "Non Cash Match"
    #193426
    Then I softly see field "Object Code" inside "Details" section
    #193430
    When I enter value "100 - Salaries" into field "fieldMST_Budget_Category__c"
    When I enter value "2.111" into field "fieldQuantity__c"
    When I enter value "Districtwide" into field "fieldSCDE_BudgetFor__c"
    When I enter value "Testing" into field "fieldNarrative__c"
    When I enter value "10.11" into field "fieldCashMatch__c"
    When I enter value "5.11" into field "fieldNonCashMatch__c"
    And I click modal button "Save"
    Then I softly see the following messages in the page details contains:
      | Cost is required to save. |
    #193428 #193432 #193433
    When I enter value "100.111" into field "fieldUnitPrice__c"
    And I click modal button "Save"
    And I expand nested table containing column value "BP01"
    Then I softly see value "$211.23" for title "Award Total" inside table "---tableID:-:ApplicationBudgetPeriodFunctionCodes---"
    #193230
    And I expand nested table containing column value "110 - General Instruction"
    Then I softly see value "$10.11" for title "Cash Match" inside table "---tableID:-:ApplicationBudgetPeriodFunctionCodes---"
    #193229
    Then I softly see value "$5.11" for title "Non Cash Match" inside table "---tableID:-:ApplicationBudgetPeriodFunctionCodes---"
    #193423
    When I click on "Add" icon for "110 - General Instruction" inside flex table with id "---tableID:-:ApplicationBudgetPeriodFunctionCodes---"
    When I enter value "100 - Salaries" into field "fieldMST_Budget_Category__c"
    When I enter value "Schoolwide" into field "fieldSCDE_BudgetFor__c"
    When I enter value "Testing" into field "fieldNarrative__c"
    When I enter value "100.111" into field "fieldUnitPrice__c"
    And I click modal button "Save"
    Then I softly see the following messages in the page details contains:
      | Quantity is Required to Save. |

  @191887 @191886 @191851 @191863 @191883 @191884 @191885 @191891 @191888 @sprint-6 @userStory-189862
  Scenario: Verify external user should see "Add" button on the table
  | Verify external user should see "Upload" action on "Actions" column, when plan status = In-Progress
  | Verify external user should see "Submit" action on "Actions" column, when plan status is In-Progress
  | Verify external user should see a new tab called "Annual Plans" on the Subrecipient Organization's profile
  | Verify "Document Sub-Type" field is a drop-down with options
  | Verify "Five-Year Period" field should be a dropdown with five-year timespans listed
  | Verify "School Name" column is a dropdown field with five-year timespans listed
  | Verify external user should able to see the status as In-Progress after saving the Annual Plans
  | Verify external user should delete an entry, only when the entry status In-Progress
    Given I am on "SUBPORTAL" portal
    When I login as "SPI" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I navigate to "Annual Plans" sub tab
     #191887
    Then I softly can see top right button "Add" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    #191883
    And I click on top right button "Add" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    Then I see the following options in dropdown field "DocumentSubType__c" :
      | Initial | Update 1 | Update 2 | Update 3 | Update 4 |
     #191886
    And I click on top right button "Add" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    When I enter value "2017/18 - 2021/22" into field "FiveYearPeriod__c"
    When I enter value "2017/18" into field "SchoolYear__c"
    When I enter value "CCNA" into field "DocumentType__c"
    When I enter value "Initial" into field "DocumentSubType__c"
    And I click on top right button "Save" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    Then I softly can see row level action button "Upload" against "In-Progress" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
     #191851
    Then I softly can see row level action button "Submit" against "In-Progress" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
     #191863
    Then I softly can see "Annual Plans" sub tab at view detail page
     #191884
    Then I see the following options in dropdown field "FiveYearPeriod__c" :
      | 2016/17 - 2020/21 | 2017/18 - 2021/22 | 2018/19 - 2022/23 | 2019/20 - 2023/24 | 2020/21 - 2024/25 |
     #191891
    And I click on top right button "Add" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    When I enter value "2018/19 - 2022/23" into field "FiveYearPeriod__c"
    When I enter value "2018/19" into field "SchoolYear__c"
    When I enter value "CCNA" into field "DocumentType__c"
    When I enter value "Initial" into field "DocumentSubType__c"
    And I click on top right button "Save" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    Then I softly see value "In-Progress" for title "Status" inside table "---tableID:-:ApplicationAnnualPlans---"
     #191885
    Then I see the following options in dropdown field "SchoolYear__c" :
      | 2016/17 | 2017/18 | 2018/19 | 2019/20 | 2020/21 | 2021/22 | 2022/23 |
     #191888
    And I click on "Delete" icon for "In-Progress" inside flex table with id "---tableID:-:ApplicationAnnualPlans---"
    Then I softly do not see value "In-Progress" for title "Status" inside table "---tableID:-:ApplicationAnnualPlans---"

  @192374 @192301 @192549 @192548 @192348 @192515 @192541 @192537 @192534 @192528 @sprint-6 @userStory-190638
  Scenario: Verify School field is a required field on modal, when Schoolwide option is selected in the "Budget For" dropdown on the modal.
  | Verify "Total Cash Match" is a calculated field (Total Cash Match = Cash Match + Non Cash Match )
  | Verify "Total Project Cost" is a calculated field (Total Project Cost = Award Total + Total Match)
  | Verify external user on clicking the "Add" action button navigates to a detailed modal.
  | Verify "Description" field inside the Narrative section should have text area with 2000 char
  | Verify external user should not see the focus area title on the modal, if Focus Area Required is set to "NO" on announcement, except the standard focus area
  | Verify external user should see "Save and Cancel" action buttons on the Add/Update Detailed Budget modal
  | Verify external user should able to save the record on the Add/Update Detailed Budget modal
  | Verify external user should see focus area table has an "Add" action button
  | Verify external user should see mentioned fields on the modal.
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
    When I enter value "No" into field "fieldIsBudgetNarrativeRequired__c"
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
    When I enter value "15" into field "fieldSCDE_Maximum_Indirect_Cost__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I refresh the page
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Allocations" sub tab
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
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
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
      #192374
    When I enter value "2.111" into field "fieldQuantity__c"
    When I enter value "Schoolwide" into field "fieldSCDE_BudgetFor__c"
    When I enter value "Testing" into field "fieldNarrative__c"
    When I enter value "100.111" into field "fieldUnitPrice__c"
    When I enter value "100 - Salaries" into field "fieldMST_Budget_Category__c"
    And I click modal button "Save"
    Then I softly see the following messages in the page details contains:
      | School is required if 'Budget For' is Schoolwide |
      #192301
    When I enter value "Wright Middle" into field "fieldSchool__c"
    And I click modal button "Save"
    And I expand nested table containing column value "BP01"
    And I expand nested table containing column value "110 - General Instruction"
    Then I softly see value "$15.22" for title "Total Match" inside table "---tableID:-:ApplicationBudgetPeriodFunctionCodes---"
      #192549
    Then I softly see value "$452.90" for title "Total Project Cost" inside table "---tableID:-:ApplicationBudgetPeriodFunctionCodes---"
      #192548
    And I refresh the page
    And I expand nested table containing column value "BP01"
    When I click on "Add" icon for "110 - General Instruction" inside flex table with id "---tableID:-:ApplicationBudgetPeriodFunctionCodes---"
    Then I softly see "Add/Update Detailed Budget" in flex table header "---tableID:-:ApplicationDetailedBudgetModal---"
      #192348
    And I hovering mouse on help text icon inside page block detail "Narrative"
    Then I softly see "2,000 Char Limit" shown as help text
      #192515
    Then I softly do not see "Focus Area" inside page block detail
      #192541
    Then I softly can see top right button "Save" in flex table with id "---tableID:-:ApplicationDetailedBudgetModal---"
    Then I softly can see top right button "Cancel" in flex table with id "---tableID:-:ApplicationDetailedBudgetModal---"
      #192537
    When I enter value "100 - Salaries" into field "fieldMST_Budget_Category__c"
    When I enter value "2.111" into field "fieldQuantity__c"
    When I enter value "Districtwide" into field "fieldSCDE_BudgetFor__c"
    When I enter value "Testing" into field "fieldNarrative__c"
    When I enter value "100.111" into field "fieldUnitPrice__c"
    And I click modal button "Save"
    And I expand nested table containing column value "BP01"
    And I expand nested table containing column value "110 - General Instruction"
    Then I softly see value "100 - Salaries" for title "Object Code" inside table "---tableID:-:ApplicationBudgetPeriodFunctionCodes---"
      #192534
    And I refresh the page
    And I expand nested table containing column value "BP01"
    Then I softly can see row level action button "Add" against "110 - General Instruction" in flex table with id "---tableID:-:ApplicationBudgetPeriodFunctionCodes---"
      #192528
    When I click on "Add" icon for "110 - General Instruction" inside flex table with id "---tableID:-:ApplicationBudgetPeriodFunctionCodes---"
    Then I softly see field "Object Code" inside "Add/Update Detailed Budget" section
    Then I softly see field "Quantity" inside "Add/Update Detailed Budget" section
    Then I softly see field "Cash Match" inside "Add/Update Detailed Budget" section
    Then I softly see field "Non Cash Match" inside "Add/Update Detailed Budget" section
    Then I softly see field "Cost" inside "Add/Update Detailed Budget" section

  @192925 @192922 @sprint-6 @userStory-190291
  Scenario: Verify that for competitive announcement there is no validation checking that the requested amount is not below the subaward floor
  |Verify that for competitive announcements there is no validation checking that the requested amount does not exceed subaward ceiling
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Announcements" tab
    When I navigate to "Competitive" content inside "Announcements" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:CompetitiveAnnouncements---"
    When I enter value "Competitive" into field "fieldAnnouncementType__c"
    When I enter value "Automation Runtime Announcement" into field "fieldAnnouncementName__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    And I click on "Continue" in the page details
    When I enter value "No" into field "fieldIsMatchRequired__c"
    When I enter value "No" into field "fieldRiskAssessment_Required__c"
    When I enter value "N/A" into field "fieldSCDE_Allocation_Level__c"
    And I click modal button "Save and Continue"
    When I enter value "Federal" into field "fieldSCDE_Funding_Source__c"
    When I enter value "test" into field "fieldAnnouncementDescription__c"
    When I enter value "Library" into field "fieldEligibleApplicantTypes__c"
    When I enter value "200" into field "fieldApplicationDueDate__c"
    And I navigate to "Financials" sub tab
    When I enter value "1000" into field "fieldAwardFloor__c"
    When I enter value "1000" into field "fieldAwardCeiling__c"
    When I enter value "1000" into field "fieldTotalCommittedAmount__c"
    When I enter value "Unrestricted" into field "fieldSCDE_Indirect_Cost_Type__c"
    When I enter value "2022" into field "fieldSCDE_Fiscal_Year__c"
    When I enter value "15" into field "fieldSCDE_Maximum_Indirect_Cost__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I refresh the page
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
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
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
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
    And I navigate to "Budget" sub tab
    And I click on "Save" in the page details
    And I expand nested table containing column value "BP01"
    When I click on "Add" icon for "110 - General Instruction" inside flex table with id "---tableID:-:ApplicationBudgetPeriod---"
    When I enter value "100 - Salaries" into field "fieldMST_Budget_Category__c"
    When I enter value "1" into field "fieldQuantity__c"
    When I enter value "1000" into field "fieldUnitPrice__c"
    When I enter value "test" into field "fieldNarrative__c"
    And I click modal button "Save"
    And I navigate to "Forms and Files" sub tab
    When I click on "Edit" icon for "No" inside flex table with id "---tableID:-:ApplicationForms---"
    When I enter the following values into flex table with id "---tableID:-:StakeholderParticipants---" by clicking "Add" :
      | Participant’s Name | School Name | Role    | Stakeholder Representation |
      | Automation         | Dixie High  | Teacher | School within District     |
    And I click on "Save" in the page details
    And I click on "Back" in the page details
    When I click on "Edit" icon for "No" inside flex table with id "---tableID:-:ApplicationForms---"
    When I enter value "Yes" into field "IsFormValidated__c"
    And I click on "Submit for Approval" in the page details
    When I "Approve" in the approval decision
    And I softly see field "Status" as "Approved for Submission"
    And I click on "Submit Application to Grantor" in the page details
    And I softly see field "Status" as "Submitted"

  @192908 @192906 @sprint-6 @userStory-190291
  Scenario: Verify that for formula announcement there is no validation checking that the requested amount is not below the subaward floor
  |Verify that for formula announcements there is no validation checking that the requested amount does not exceed subaward ceiling
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
    When I enter value "No" into field "fieldIsBudgetNarrativeRequired__c"
    When I enter value "By Applicant and School" into field "fieldSCDE_Allocation_Level__c"
    When I enter value "School" into field "fieldSCDE_Detailed_Budgeting_Options__c"
    And I click modal button "Save and Continue"
    When I enter value "Federal" into field "fieldSCDE_Funding_Source__c"
    When I enter value "test" into field "fieldAnnouncementDescription__c"
    When I enter value "Library" into field "fieldEligibleApplicantTypes__c"
    When I enter value "200" into field "fieldApplicationDueDate__c"
    And I navigate to "Financials" sub tab
    When I enter value "1000" into field "fieldAwardFloor__c"
    When I enter value "1000" into field "fieldAwardCeiling__c"
    When I enter value "1000" into field "fieldTotalCommittedAmount__c"
    When I enter value "Unrestricted" into field "fieldSCDE_Indirect_Cost_Type__c"
    When I enter value "2022" into field "fieldSCDE_Fiscal_Year__c"
    When I enter value "15" into field "fieldSCDE_Maximum_Indirect_Cost__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I refresh the page
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Allocations" sub tab
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
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
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
    And I navigate to "Budget" sub tab
    And I click on "Save" in the page details
    And I expand nested table containing column value "BP01"
    When I click on "Add" icon for "110 - General Instruction" inside flex table with id "---tableID:-:ApplicationBudgetPeriod---"
    When I enter value "100 - Salaries" into field "fieldMST_Budget_Category__c"
    When I enter value "1" into field "fieldQuantity__c"
    When I enter value "1000" into field "fieldUnitPrice__c"
    When I enter value "Schoolwide" into field "fieldSCDE_BudgetFor__c"
    When I enter value "Wright Middle" into field "fieldSchool__c"
    When I enter value "test" into field "fieldNarrative__c"
    And I click modal button "Save"
    And I navigate to "Forms and Files" sub tab
    When I click on "Edit" icon for "No" inside flex table with id "---tableID:-:ApplicationForms---"
    When I enter the following values into flex table with id "---tableID:-:StakeholderParticipants---" by clicking "Add" :
      | Participant’s Name | School Name | Role    | Stakeholder Representation |
      | Automation         | Dixie High  | Teacher | School within District     |
    And I click on "Save" in the page details
    And I click on "Back" in the page details
    When I click on "Edit" icon for "No" inside flex table with id "---tableID:-:ApplicationForms---"
    When I enter value "Yes" into field "IsFormValidated__c"
    And I click on "Submit for Approval" in the page details
    When I "Approve" in the approval decision
    And I softly see field "Status" as "Approved for Submission"
    And I click on "Submit Application to Grantor" in the page details
    And I softly see field "Status" as "Submitted"

  @192849 @192846 @sprint-6 @userStory-190291
  Scenario: Verify that I can submit my formula application with a total budgeted amount that is above the subaward ceiling
  |Verify that I can submit my formula application with a total budgeted amount that is below the subaward floor
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
    When I enter value "No" into field "fieldIsBudgetNarrativeRequired__c"
    When I enter value "By Applicant and School" into field "fieldSCDE_Allocation_Level__c"
    When I enter value "School" into field "fieldSCDE_Detailed_Budgeting_Options__c"
    And I click modal button "Save and Continue"
    When I enter value "Federal" into field "fieldSCDE_Funding_Source__c"
    When I enter value "test" into field "fieldAnnouncementDescription__c"
    When I enter value "Library" into field "fieldEligibleApplicantTypes__c"
    When I enter value "200" into field "fieldApplicationDueDate__c"
    And I navigate to "Financials" sub tab
    When I enter value "2000" into field "fieldAwardFloor__c"
    When I enter value "500" into field "fieldAwardCeiling__c"
    When I enter value "1000" into field "fieldTotalCommittedAmount__c"
    When I enter value "Unrestricted" into field "fieldSCDE_Indirect_Cost_Type__c"
    When I enter value "2022" into field "fieldSCDE_Fiscal_Year__c"
    When I enter value "15" into field "fieldSCDE_Maximum_Indirect_Cost__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I refresh the page
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Allocations" sub tab
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
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
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
    And I navigate to "Budget" sub tab
    And I click on "Save" in the page details
    And I expand nested table containing column value "BP01"
    When I click on "Add" icon for "110 - General Instruction" inside flex table with id "---tableID:-:ApplicationBudgetPeriod---"
    When I enter value "100 - Salaries" into field "fieldMST_Budget_Category__c"
    When I enter value "1" into field "fieldQuantity__c"
    When I enter value "1000" into field "fieldUnitPrice__c"
    When I enter value "Schoolwide" into field "fieldSCDE_BudgetFor__c"
    When I enter value "Wright Middle" into field "fieldSchool__c"
    When I enter value "test" into field "fieldNarrative__c"
    And I click modal button "Save"
    And I navigate to "Forms and Files" sub tab
    When I click on "Edit" icon for "No" inside flex table with id "---tableID:-:ApplicationForms---"
    When I enter the following values into flex table with id "---tableID:-:StakeholderParticipants---" by clicking "Add" :
      | Participant’s Name | School Name | Role    | Stakeholder Representation |
      | Automation         | Dixie High  | Teacher | School within District     |
    And I click on "Save" in the page details
    And I click on "Back" in the page details
    When I click on "Edit" icon for "No" inside flex table with id "---tableID:-:ApplicationForms---"
    When I enter value "Yes" into field "IsFormValidated__c"
    And I click on "Submit for Approval" in the page details
    When I "Approve" in the approval decision
    And I softly see field "Status" as "Approved for Submission"
    And I click on "Submit Application to Grantor" in the page details
    And I softly see field "Status" as "Submitted"

  @191906 @193106 @193105 @191893 @191892 @192825 @192832 @193361 @sprint-6 @userStory-187064
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
    When I enter value "No" into field "fieldIsBudgetNarrativeRequired__c"
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
    When I enter value "15" into field "fieldSCDE_Maximum_Indirect_Cost__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I refresh the page
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Allocations" sub tab
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
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
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
    And I navigate to "Budget" sub tab
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
    And I navigate to "Forms and Files" sub tab
    When I click on "Edit" icon for "No" inside flex table with id "---tableID:-:ApplicationForms---"
    When I enter the following values into flex table with id "---tableID:-:StakeholderParticipants---" by clicking "Add" :
      | Participant’s Name | School Name | Role    | Stakeholder Representation |
      | Automation         | Dixie High  | Teacher | School within District     |
    And I click on "Save" in the page details
    And I click on "Back" in the page details
    When I click on "Edit" icon for "No" inside flex table with id "---tableID:-:ApplicationForms---"
    When I enter value "Yes" into field "IsFormValidated__c"
    And I click on "Submit for Approval" in the page details
    When I "Approve" in the approval decision
    And I softly see field "Status" as "Approved for Submission"
    And I click on "Submit Application to Grantor" in the page details
    And I softly see field "Status" as "Submitted"
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
    When I check "Select All" boxes in flex table with id "---tableID:-:Reviews---"
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
    #191906
    Then I softly can see top right button "Submit for Approval" in flex table with id "---tableID:-:ApplicationTableId---"
    #193106
    And I click on "Submit for Approval" in the page details
    When I "Approve" in the approval decision
    And I navigate to "Applications" tab
    When I navigate to "Applications" content inside "Applications" subheader on left panel
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:ApplicationTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:ApplicationTableId---"
    And I softly see field "Status" as "Reviewed"
    #193105
    And I navigate to "Related Log" tab
    Then I softly see value "Completed" for title "Status" inside table "---tableID:-:ReviewForms---"
    #191893
    And I expand nested table containing column value "SME Review"
    Then I softly see value "50.00%" for title "Form Weight" inside table "---tableID:-:ReviewForms---"
    #191892
    Then I softly can see top right button "Validate" in flex table with id "---tableID:-:ReviewForms---"
    #192825
    Then I softly can see row level action button "View" against "SME Review" in flex table with id "---tableID:-:ReviewForms---"
    #192832
    And I navigate to "Setup" tab
    Then I softly see value "Grantor Site Visit Forms" for title "Package Name" inside table "---tableID:-:ApplicationForms---"
    Then I softly see value "Grantor Progress Report Forms" for title "Package Name" inside table "---tableID:-:ApplicationForms---"
    #193361
    Then I softly cannot see row level action button "Edit" against "Management Review" in flex table with id "---tableID:-:ApplicationForms---"

  @192124 @192125 @192123 @192149 @192127 @192126 @sprint-6 @userStory-189635
  Scenario: Verify that If user click YES in the pop-up then in the Revisions tab, user see Application Section for Revisions Shows data that I saved
  | Verify that If user click YES in the pop-up then user see Applicant Name as read-only in the Revisions tab
  | Verify that after cancellation, I see that the Decision Status for the application in the review step is reset to 'Pending'. The application status remains 'Review Initiated'
  | Verify that user can see the status as Review Initiated.
  | Verify that after save changes in revisions tab, user not see the request revision action (dollar icon) in the review step for the application
  | Verify that after saved changes in revisions tab, the 'Decision Status' for the application for the review step is updated from "Pending" to "Revision In-Progress"
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
    When I enter value "No" into field "fieldIsBudgetNarrativeRequired__c"
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
    When I enter value "15" into field "fieldSCDE_Maximum_Indirect_Cost__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I refresh the page
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Allocations" sub tab
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
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
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
    And I navigate to "Budget" sub tab
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
    And I navigate to "Forms and Files" sub tab
    When I click on "Edit" icon for "No" inside flex table with id "---tableID:-:ApplicationForms---"
    When I enter the following values into flex table with id "---tableID:-:StakeholderParticipants---" by clicking "Add" :
      | Participant’s Name | School Name | Role    | Stakeholder Representation |
      | Automation         | Dixie High  | Teacher | School within District     |
    And I click on "Save" in the page details
    And I click on "Back" in the page details
    When I click on "Edit" icon for "No" inside flex table with id "---tableID:-:ApplicationForms---"
    When I enter value "Yes" into field "IsFormValidated__c"
    And I click on "Submit for Approval" in the page details
    When I "Approve" in the approval decision
    And I softly see field "Status" as "Approved for Submission"
    And I click on "Submit Application to Grantor" in the page details
    And I softly see field "Status" as "Submitted"
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
    And I pause execution for "5" seconds
    And I refresh the page
    And I click on "Request Revision" icon for "Automation PM" inside flex table with id "---tableID:-:Reviewer---"
    And I navigate to "Revisions" sub tab
    When I enter value "200" into field "NegotiationDueDate__c"
    When I enter value "Overview" into field "fieldApplicationSectionsForRevision__c"
    When I enter value "Test" into field "fieldExplanationOfRevisionsNeeded__c"
    And I click on top right button "Save" in flex table with id "---tableID:-:ApplicationRevisions---"
    When I navigate to "Applications" content inside "Applications" subheader on left panel
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:ApplicationTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:ApplicationTableId---"
    And I navigate to "Revisions" sub tab
    #192124
    Then I softly see field "Application Section for Revisions" inside "Request Revision Details" section
    #192125
    Then I softly see that "Applicant Name" rendered in view mode only
    #192123
    When I navigate to "Reviews" content inside "Application Reviews" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:ApplicationReviews---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:ApplicationReviews---"
    And I navigate to "Related Log" sub tab
    And I click on "View" icon for "Pre-Screen Review" inside flex table with id "---tableID:-:AnnouncementReviewSteps---"
    Then I softly see value "Pending" for title "Decision Status" inside table "---tableID:-:AnnouncementPreScreenReview---"
    #192149
    When I enter value "Test" into field "fieldExplanationOfRevisionsNeeded__c"
    And I click on top right button "Save" in flex table with id "---tableID:-:ApplicationRevisions---"
    And I softly see field "Status" as "Review Initiated"
    #192127
    When I navigate to "Reviews" content inside "Application Reviews" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:ApplicationReviews---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:ApplicationReviews---"
    And I navigate to "Related Log" sub tab
    And I click on "View" icon for "Pre-Screen Review" inside flex table with id "---tableID:-:AnnouncementReviewSteps---"
    Then I softly cannot see row level action button "Request Revision" against "TEXAS BEAR CREEK STORAGE" in flex table with id "---tableID:-:ApplicationRevisions---"
    #192126
    Then I softly see value "Revision In-Progress" for title "Decision Status" inside table "---tableID:-:AnnouncementPreScreenReview---"

  @191865 @191872 @191870 @191879 @191868 @191862 @191881 @192830 @sprint-6 @userStory-187064
  Scenario: Verify that the 'Request Revisions' button available on the application
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
    When I enter value "No" into field "fieldIsBudgetNarrativeRequired__c"
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
    When I enter value "15" into field "fieldSCDE_Maximum_Indirect_Cost__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I refresh the page
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Allocations" sub tab
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
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
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
    And I navigate to "Budget" sub tab
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
    And I navigate to "Forms and Files" sub tab
    When I click on "Edit" icon for "No" inside flex table with id "---tableID:-:ApplicationForms---"
    When I enter the following values into flex table with id "---tableID:-:StakeholderParticipants---" by clicking "Add" :
      | Participant’s Name | School Name | Role    | Stakeholder Representation |
      | Automation         | Dixie High  | Teacher | School within District     |
    And I click on "Save" in the page details
    And I click on "Back" in the page details
    When I click on "Edit" icon for "No" inside flex table with id "---tableID:-:ApplicationForms---"
    When I enter value "Yes" into field "IsFormValidated__c"
    And I click on "Submit for Approval" in the page details
    When I "Approve" in the approval decision
    And I softly see field "Status" as "Approved for Submission"
    And I click on "Submit Application to Grantor" in the page details
    And I softly see field "Status" as "Submitted"
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
    #191865
    Then I softly can see row level action button "Request Revision" against "Automation PM" in flex table with id "---tableID:-:Reviewer---"
    #191872
    And I click on "Request Revision" icon for "Automation PM" inside flex table with id "---tableID:-:Reviewer---"
    And I navigate to "Revisions" sub tab
    When I enter value "200" into field "NegotiationDueDate__c"
    When I enter value "Overview" into field "fieldApplicationSectionsForRevision__c"
    When I enter value "Test" into field "fieldExplanationOfRevisionsNeeded__c"
    And I click on top right button "Save" in flex table with id "---tableID:-:ApplicationRevisions---"
    Then I softly can see top right button "Edit" in flex table with id "---tableID:-:ApplicationRevisions---"
    Then I softly can see row level action button "Edit" against "Title II, Part A - Stakeholder Participants" in flex table with id "---tableID:-:AvailableFormsforRevision---"
    #191870
    And I click on top right button "Edit" in flex table with id "---tableID:-:ApplicationRevisions---"
    Then I softly see fields "fieldExplanationOfRevisionsNeeded__c" is in edit mode
    #191879
    And I click on top right button "Save" in flex table with id "---tableID:-:ApplicationRevisions---"
    Then I softly see that "Applicant Response" rendered in view mode only
    #191868
    And I click on top right button "Edit" in flex table with id "---tableID:-:ApplicationRevisions---"
    Then I softly see fields "fieldApplicationSectionsForRevision__c" is in edit mode
    #191862
    Then I softly see fields "NegotiationDueDate__c" is in edit mode
    #191881
    Then I softly see value "Title II, Part A - Stakeholder Participants" for title "Form Name" inside table "---tableID:-:AvailableFormsforRevision---"
	#192830
    And I click on top right button "Save" in flex table with id "---tableID:-:ApplicationRevisions---"
    And I softly see field "Explanation of Revisions Needed" as "Test"
    Then I softly see that "Explanation of Revisions Needed" rendered in view mode only

  @193469 @193468 @193167 @193466 @193168 @193467 @sprint-6 @userStory-190291
  Scenario: Verify that the following fields tracked for the application:  Admin Cost Taken
  |Verify that the following fields tracked for the application:  Indirect Cost Taken
  |Verify that the following fields tracked for the application: Application Title
  |Verify that the following fields tracked for the application: Status
  |Verify that the following fields tracked for the application: Allocation Amount
  |Verify that the following fields tracked for the application: Indirect Cost Rate
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
    When I enter value "No" into field "fieldIsBudgetNarrativeRequired__c"
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
    When I enter value "15" into field "fieldSCDE_Maximum_Indirect_Cost__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I refresh the page
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Allocations" sub tab
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
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
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
    When I enter value "Automation Runtime Announcement" into field "fieldTitle__c"
    And I navigate to "Budget" sub tab
    When I enter value "10" into field "fieldSCDE_IndirectCostTaken__c"
    When I enter value "10" into field "fieldSCDE_AdminCostTaken__c"
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
    And I navigate to "Forms and Files" sub tab
    And I click on "Edit" icon for "No" inside table
    When I enter the following values into flex table with id "---tableID:-:StakeholderParticipants---" by clicking "Add" :
      | Participant’s Name | School Name | Role    | Stakeholder Representation |
      | Automation         | Dixie High  | Teacher | School within District     |
    And I click on "Save" in the page details
    And I click on "Back" in the page details
    When I click on "Edit" icon for "No" inside flex table with id "---tableID:-:ApplicationForms---"
    When I enter value "Yes" into field "IsFormValidated__c"
    And I click on "Submit for Approval" in the page details
    When I "Approve" in the approval decision
    And I softly see field "Status" as "Approved for Submission"
    And I click on "Submit Application to Grantor" in the page details
    And I softly see field "Status" as "Submitted"
    And I save the field containing "EGMS ID" as "APPID"
    When I re-login to "As a Grantor" app as "PM" user on "INTERNAL" portal
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{SavedValue:APPID}" in "---tableID:-:InternalApplicationTableId---" panel
    When I click on "View" icon for "{SavedValue:APPID}" inside flex table with id "---tableID:-:InternalApplicationTableId---"
    And I navigate to "History" sub tab
    #193469
    Then I softly see value "Admin Cost Taken" for title "Changed Field" inside table "---tableID:-:ApplicationHistory---"
    #193468
    Then I softly see value "Indirect Cost Taken" for title "Changed Field" inside table "---tableID:-:ApplicationHistory---"
    #193167
    Then I softly see value "Application Title" for title "Changed Field" inside table "---tableID:-:ApplicationHistory---"
    #193466
    Then I softly see value "Status" for title "Changed Field" inside table "---tableID:-:ApplicationHistory---"
    #193168
    Then I softly see value "SCDE Allocation Amount" for title "Changed Field" inside table "---tableID:-:ApplicationHistory---"
    #193467
    Then I softly see value "Indirect Cost Rate" for title "Changed Field" inside table "---tableID:-:ApplicationHistory---"

  @191827 @191845 @191846 @sprint-6 @userStory-189863
  Scenario: Verify that for internal user  'Pre-Applications'  hidden from the left navigation panel
  |Verify that internal user can see the Application landing page list page columns
  |Verify the columns displayed on Application list page (from the left navigation panel)
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Applications" tab
      #191827
    Then I do not see "Pre-Applications" inside "Applications" is displayed
      #191845
    Then I see only the following ordered headers in table with id "---tableID:-:InternalApplicationTableId---" :
      | EGMS ID | Announcement Title | Applicant Organization | Application Due Date | Owner | Submitted On | Status | Actions |
      #191846
    When I navigate to "Applications" content inside "Applications" subheader on left panel
    Then I see only the following ordered headers in table with id "---tableID:-:ApplicationTableId---" :
      | EGMS ID | Announcement Title | Applicant Organization | Application Due Date | Owner | Submitted On | Status | Actions |

  @192839 @192836 @192833 @192827 @191864 @191826 @193367 @191823 @191835 @191828 @sprint-6 @userStory-190638
  Scenario: Verify "Total Cash Match" is a calculated field (Total Cash Match = Cash Match + Non Cash Match )
  | Verify "Total Project Cost" is a calculated field (Total Project Cost = Award Total + Total Match)
  | Verify external user on clicking the "Add" action button navigates to a detailed modal.
  | Verify "Description" field inside the Narrative section should have text area with 2000 char
  | Verify external user should not see the focus area title on the modal, if Focus Area Required is set to "NO" on announcement, except the standard focus area
  | Verify external user should see "Save and Cancel" action buttons on the Add/Update Detailed Budget modal
  | Verify external user should able to save the record on the Add/Update Detailed Budget modal
  | Verify external user should see focus area table has an "Add" action button
  | Verify external user should see mentioned fields on the modal.
  | Verify external user should see static text instructions under the "Details" section on the modal
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
    When I enter value "No" into field "fieldIsBudgetNarrativeRequired__c"
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
    When I enter value "15" into field "fieldSCDE_Maximum_Indirect_Cost__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I refresh the page
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Allocations" sub tab
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
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
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
    #192839
    When I enter value "Testing" into field "fieldNarrative__c"
    When I enter value "10.11" into field "fieldCashMatch__c"
    When I enter value "5.11" into field "fieldNonCashMatch__c"
    When I enter value "100.111" into field "fieldUnitPrice__c"
    When I enter value "100 - Salaries" into field "fieldMST_Budget_Category__c"
    When I enter value "1" into field "fieldQuantity__c"
    And I click modal button "Save"
    And I expand nested table containing column value "BP01"
    And I expand nested table containing column value "110 - General Instruction"
    Then I softly see value "$15.22" for title "Total Match" inside table "---tableID:-:ApplicationBudgetPeriodFunctionCodes---"
    #192836
    Then I softly see value "$452.90" for title "Total Project Cost" inside table "---tableID:-:ApplicationBudgetPeriodFunctionCodes---"
    #192833
    And I refresh the page
    And I expand nested table containing column value "BP01"
    When I click on "Add" icon for "110 - General Instruction" inside flex table with id "---tableID:-:ApplicationBudgetPeriodFunctionCodes---"
    Then I softly see "Add/Update Detailed Budget" in flex table header "---tableID:-:ApplicationDetailedBudgetModal---"
    #192827
    And I hovering mouse on help text icon inside page block detail "Narrative"
    Then I softly see "2,000 Char Limit" shown as help text
    #191864
    Then I softly do not see "Focus Area" inside page block detail
    #191826
    Then I softly can see top right button "Save" in flex table with id "---tableID:-:ApplicationDetailedBudgetModal---"
    Then I softly can see top right button "Cancel" in flex table with id "---tableID:-:ApplicationDetailedBudgetModal---"
    #193367
    When I enter value "100 - Salaries" into field "fieldMST_Budget_Category__c"
    When I enter value "2.111" into field "fieldQuantity__c"
    When I enter value "Districtwide" into field "fieldSCDE_BudgetFor__c"
    When I enter value "Testing" into field "fieldNarrative__c"
    When I enter value "100.111" into field "fieldUnitPrice__c"
    And I click modal button "Save"
    And I expand nested table containing column value "BP01"
    And I expand nested table containing column value "110 - General Instruction"
    Then I softly see value "100 - Salaries" for title "Object Code" inside table "---tableID:-:ApplicationBudgetPeriodFunctionCodes---"
    #191823
    And I refresh the page
    And I expand nested table containing column value "BP01"
    Then I softly can see row level action button "Add" against "110 - General Instruction" in flex table with id "---tableID:-:ApplicationBudgetPeriodFunctionCodes---"
    #191835
    When I click on "Add" icon for "110 - General Instruction" inside flex table with id "---tableID:-:ApplicationBudgetPeriodFunctionCodes---"
    Then I softly see field "Object Code" inside "Add/Update Detailed Budget" section
    Then I softly see field "Quantity" inside "Add/Update Detailed Budget" section
    Then I softly see field "Cost" inside "Add/Update Detailed Budget" section
    Then I softly see field "Cash Match" inside "Add/Update Detailed Budget" section
    Then I softly see field "Non Cash Match" inside "Add/Update Detailed Budget" section
    #191828
    And I click modal button "Save"
    Then I softly see the text :
      | All fields below are required, except Cash Match and Non Cash Match are optional. |

  @191904 @191902 @192828 @192834 @192837 @192831 @191895 @191897 @191898 @191896 @193105 @191819 @191859 @191821 @192829 @192838 @193366 @sprint-6 @userStory-187064
  Scenario: Verify that after application review, Owner should able to Submit the application for Approval.
  | Verify that application Owner can see the status as 'Reviewed'
  | Verify that when application review is completed, Owner can see the status of application reviews as Completed
  | Verify that for application review, Owner should able to see the multiple review forms.
  | Verify that application Owner can Save the review forms after filling it.
  | Verify that the application Owner can view the forms associated with the application.
  | Verify that the application Owner should be able to view the various business forms
  | Verify that the application Owner is not able to Edit the forms once it is Reviewed
  | Verify that when application review is completed, Owner can see the status of application reviews as 'Completed'.
  | Verify that for application review, Owner should able to see the different review form
  | Verify that application Owner can Validate the review forms after completely filling
  | Verify that application Owner can see the status as Reviewed
  | Verify that the application Owner can view the forms associated with the application after filling.
  | Verify that the application Owner should be able to view the various business forms
  | Verify that the application Owner is able to Edit the forms once it is Reviewed
  | Verify that when application review is completed, Owner can see the status of application reviews as Completed
  | Verify that application Owner can Validate the review forms
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
    When I enter value "No" into field "fieldIsBudgetNarrativeRequired__c"
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
    When I enter value "15" into field "fieldSCDE_Maximum_Indirect_Cost__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I refresh the page
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Allocations" sub tab
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
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
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
    And I navigate to "Budget" sub tab
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
    And I navigate to "Forms and Files" sub tab
    When I click on "Edit" icon for "No" inside flex table with id "---tableID:-:ApplicationForms---"
    When I enter the following values into flex table with id "---tableID:-:StakeholderParticipants---" by clicking "Add" :
      | Participant’s Name | School Name | Role    | Stakeholder Representation |
      | Automation         | Dixie High  | Teacher | School within District     |
    And I click on "Save" in the page details
    And I click on "Back" in the page details
    When I click on "Edit" icon for "No" inside flex table with id "---tableID:-:ApplicationForms---"
    When I enter value "Yes" into field "IsFormValidated__c"
    And I click on "Submit for Approval" in the page details
    When I "Approve" in the approval decision
    And I softly see field "Status" as "Approved for Submission"
    And I click on "Submit Application to Grantor" in the page details
    And I softly see field "Status" as "Submitted"
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
    When I check "Select All" boxes in flex table with id "---tableID:-:Reviews---"
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
    And I pause execution for "5" seconds
    #191904
    Then I softly can see top right button "Submit for Approval" in flex table with id "---tableID:-:ApplicationTableId---"
    #191902 #191821
    And I click on "Submit for Approval" in the page details
    When I "Approve" in the approval decision
    And I navigate to "Applications" tab
    When I navigate to "Applications" content inside "Applications" subheader on left panel
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:ApplicationTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:ApplicationTableId---"
    And I softly see field "Status" as "Reviewed"
    #192828 #192834
    And I navigate to "Related Log" tab
    Then I softly see value "Completed" for title "Status" inside table "---tableID:-:ReviewForms---"
     #191897
    Then I softly can see row level action button "View" against "SME Review" in flex table with id "---tableID:-:ReviewForms---"
    #192837
    And I expand nested table containing column value "SME Review"
    Then I softly see value "100.00%" for title "Form Weight" inside table "---tableID:-:ReviewForms---"
    #192831
    Then I softly can see top right button "Save" in flex table with id "---tableID:-:ReviewForms---"
    #191898 #191895
    And I navigate to "Setup" tab
    Then I softly cannot see row level action button "Edit" against "Management Review" in flex table with id "---tableID:-:ApplicationForms---"
    #191896
    Then I softly see value "Grantor Site Visit Forms" for title "Package Name" inside table "---tableID:-:ApplicationForms---"
    #193105
    Then I softly see value "Grantor Progress Report" for title "Package Name" inside table "---tableID:-:ApplicationForms---"
    #191819
    And I navigate to "Related Log" tab
    Then I softly see value "Pending" for title "Status" inside table "---tableID:-:ReviewForms---"
    #191859
    And I expand nested table containing column value "SME Review"
    Then I softly see value "50.00%" for title "Form Weight" inside table "---tableID:-:ReviewForms---"
    #192829
    Then I softly can see top right button "Validate" in flex table with id "---tableID:-:ReviewForms---"
    #192838
    Then I softly see value "Grantor Progress Report Forms" for title "Package Name" inside table "---tableID:-:ApplicationForms---"
    #193366
    Then I softly can see row level action button "View" against "Management Review" in flex table with id "---tableID:-:ReviewForms---"

  @194134 @194139 @194137 @194138 @sprint-7 @userStory-193079
  Scenario: Verify that external user see a button for 'Budget Report'  on Budget tab of application
  |Verify that  external user can see the budget has a column for  Object Code and all of the budget data related to each Object Code such as match columns and detailed budgeting options on Budget Report displayed
  |Verify that  internal user can see the budget has a column for  Object Code and all of the budget data related to each Object Code such as match columns and detailed budgeting options on Budget Report displayed
  |Verify that external user can see the budget has a column for Function Code in Budget Report displayed
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
    When I enter value "No" into field "fieldIsBudgetNarrativeRequired__c"
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
    When I enter value "15" into field "fieldSCDE_Maximum_Indirect_Cost__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I refresh the page
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Allocations" sub tab
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
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
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
    When I enter value "Automation Runtime Announcement" into field "fieldTitle__c"
    And I navigate to "Budget" sub tab
    When I enter value "10" into field "fieldSCDE_IndirectCostTaken__c"
    When I enter value "10" into field "fieldSCDE_AdminCostTaken__c"
    And I click on "Save" in the page details
      #194134
    Then I softly can see top right button "Budget Report" in flex table with id "---tableID:-:ApplicationBudgetPeriod---"
      #194139 #194137 #194138
    And I click on top right button "Budget Report" in flex table with id "---tableID:-:ApplicationBudgetPeriod---"
    Then I softly see the text :
      | Budget Report |

  @194133 @194136 @sprint-7 @userStory-193079
  Scenario: Verify that internal user see a button for 'Budget Report'  on Budget tab of application
  |Verify that internal user can see the budget has a column for Function Code in Budget Report displayed
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
    When I enter value "No" into field "fieldIsBudgetNarrativeRequired__c"
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
    When I enter value "15" into field "fieldSCDE_Maximum_Indirect_Cost__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I refresh the page
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Allocations" sub tab
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
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
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
    When I enter value "Automation Runtime Announcement" into field "fieldTitle__c"
    And I navigate to "Budget" sub tab
    When I enter value "10" into field "fieldSCDE_IndirectCostTaken__c"
    When I enter value "10" into field "fieldSCDE_AdminCostTaken__c"
    And I click on "Save" in the page details
    And I save the field containing "EGMS ID" as "APPID"
    When I re-login to "As a Grantor" app as "PM" user on "INTERNAL" portal
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{SavedValue:APPID}" in "---tableID:-:InternalApplicationTableId---" panel
    When I click on "View" icon for "{SavedValue:APPID}" inside flex table with id "---tableID:-:InternalApplicationTableId---"
    And I navigate to "Budget" sub tab
      #194133
    Then I softly can see top right button "Budget Report" in flex table with id "---tableID:-:ApplicationBudgetPeriod---"
      #194136
    And I click on top right button "Budget Report" in flex table with id "---tableID:-:ApplicationBudgetPeriod---"
    Then I softly see the text :
      | Budget Report |

  @194222 @sprint-7 @userStory-192821
  Scenario: Verify that the Potential Indirect Cost Recovery field is calculated by (Allocation Amount * Indirect Cost Rate) / (1 + Indirect Cost Rate)
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
    When I enter value "No" into field "fieldIsBudgetNarrativeRequired__c"
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
    When I enter value "15" into field "fieldSCDE_Maximum_Indirect_Cost__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I refresh the page
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Allocations" sub tab
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
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
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
    When I enter value "Automation Runtime Announcement" into field "fieldTitle__c"
    And I navigate to "Budget" sub tab
    When I enter value "10" into field "fieldSCDE_IndirectCostTaken__c"
    When I enter value "10" into field "fieldSCDE_AdminCostTaken__c"
    And I click on "Save" in the page details
    And I softly see field "Potential Indirect Cost Recovery" as "$260.87"

  @194223 @sprint-7 @userStory-192821
  Scenario: Verify that the Potential Indirect Cost Recovery field is calculated by (Total Budgeted Amount * Indirect Cost Rate) / (1 + Indirect Cost Rate)
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Announcements" tab
    When I navigate to "Competitive" content inside "Announcements" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:CompetitiveAnnouncements---"
    When I enter value "Competitive" into field "fieldAnnouncementType__c"
    When I enter value "Automation Runtime Announcement" into field "fieldAnnouncementName__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    And I click on "Continue" in the page details
    When I enter value "No" into field "fieldIsMatchRequired__c"
    When I enter value "No" into field "fieldRiskAssessment_Required__c"
    When I enter value "N/A" into field "fieldSCDE_Allocation_Level__c"
    And I click modal button "Save and Continue"
    When I enter value "Federal" into field "fieldSCDE_Funding_Source__c"
    When I enter value "test" into field "fieldAnnouncementDescription__c"
    When I enter value "Library" into field "fieldEligibleApplicantTypes__c"
    When I enter value "200" into field "fieldApplicationDueDate__c"
    And I navigate to "Financials" sub tab
    When I enter value "1000" into field "fieldAwardFloor__c"
    When I enter value "1000" into field "fieldAwardCeiling__c"
    When I enter value "1000" into field "fieldTotalCommittedAmount__c"
    When I enter value "Unrestricted" into field "fieldSCDE_Indirect_Cost_Type__c"
    When I enter value "2022" into field "fieldSCDE_Fiscal_Year__c"
    When I enter value "15" into field "fieldSCDE_Maximum_Indirect_Cost__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I refresh the page
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
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
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
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
    And I navigate to "Budget" sub tab
    And I click on "Save" in the page details
    And I expand nested table containing column value "BP01"
    When I click on "Add" icon for "110 - General Instruction" inside flex table with id "---tableID:-:ApplicationBudgetPeriod---"
    When I enter value "100 - Salaries" into field "fieldMST_Budget_Category__c"
    When I enter value "1" into field "fieldQuantity__c"
    When I enter value "1000" into field "fieldUnitPrice__c"
    When I enter value "test" into field "fieldNarrative__c"
    And I click modal button "Save"
    And I softly see field "Potential Indirect Cost Recovery" as "$130.43"

  @196210 @196214 @196217 @196216 @196218 @196221 @196219 @196230 @196225 @196212 @196211 @sprint-8 @userStory-194296
  Scenario:  Verify that for a CCNA , if there is an Update 4 that is already approved, external user can add a second Update 4 with the same Five-Year Period, Document Type, and Document Sub-Type.
  | Verify error message for a CCNA , if external user create a new Update 4 line for a five-year period and there is already an Update 4 entry for the same five-year period in status: 'in-progress' entry
  | Verify error message for a CCNA , if external user create a new Update 4 line for a five-year period and there is already an Update 4 entry for the same five-year period in status: 'retracted' entry
  | Verify error message for a CCNA , if external user create a new Update 4 line for a five-year period and there is already an Update 4 entry for the same five-year period in status: 'submitted' entry
  | Verify error message for an One Plan, if external user create a new Update 4 line for a five-year period and there is already an Update 4 entry for the same five-year period in status: 'in-progress' entry
  | Verify error message for an One Plan, if external user create a new Update 4 line for a five-year period and there is already an Update 4 entry for the same five-year period in status: 'retracted' entry
  | Verify error message for an One Plan, if external user create a new Update 4 line for a five-year period and there is already an Update 4 entry for the same five-year period in status: 'submitted' entry
  | Verify error msg when external user add an entry for a second Update4 for the same Five-Year Period and Document Type, the School Year NOT subsequent to the school year from the previously approved Update 4 for the same Five-Year Period and Document Type.
  | Verify that external user add an entry for a second Update 4 for the same Five-Year Period and Document Type, the School Year must be subsequent to the school year from the previously approved Update 4 for the same Five-Year Period and Document Type.
  | Verify that external user can add any number of Update 4s for a given Five-Year Period if the previous Update 4 is approved.
  | Verify that for an One Plan, if there is an Update 4 that is already approved, external user can add a second Update 4 with the same Five-Year Period, Document Type, and Document Sub-Type.
    Given I am on "SUBPORTAL" portal
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I navigate to "Annual Plans" sub tab
    And I click on top right button "Add" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    When I enter value "2016/17 - 2020/21" into field "FiveYearPeriod__c"
    When I enter value "2017/18" into field "SchoolYear__c"
    When I enter value "CCNA" into field "DocumentType__c"
    When I enter value "Update 4" into field "DocumentSubType__c"
    And I click on top right button "Save" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
      #196210
    Then I softly can see row level action button "Submit" against "In-Progress" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
      #196214
    And I click on top right button "Add" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    When I enter value "2016/17 - 2020/21" into field "FiveYearPeriod__c"
    When I enter value "2017/18" into field "SchoolYear__c"
    When I enter value "CCNA" into field "DocumentType__c"
    When I enter value "Update 4" into field "DocumentSubType__c"
    And I click on top right button "Save" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    Then I softly see the text :
      | A new entry for Update 4 for a given Five-Year Period can be added only after the existing Update 4 entry is either approved or a revision is requested |
      #196217
    And I refresh the page
    When I click on "Submit" icon for "In-Progress" inside flex table with id "---tableID:-:ApplicationAnnualPlans---"
    And I click on "Retract" icon for "Submitted" inside flex table with id "---tableID:-:ApplicationAnnualPlans---"
    Then I softly see value "Retracted" for title "Status" inside table "---tableID:-:ApplicationAnnualPlans---"
    And I click on top right button "Add" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    When I enter value "2016/17 - 2020/21" into field "FiveYearPeriod__c"
    When I enter value "2017/18" into field "SchoolYear__c"
    When I enter value "CCNA" into field "DocumentType__c"
    When I enter value "Update 4" into field "DocumentSubType__c"
    And I click on top right button "Save" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    Then I softly see the text :
      | A new entry for Update 4 for a given Five-Year Period can be added only after the existing Update 4 entry is either approved or a revision is requested |
      #196216
    And I refresh the page
    When I click on "Submit" icon for "In-Progress" inside flex table with id "---tableID:-:ApplicationAnnualPlans---"
    Then I softly see value "Submitted" for title "Status" inside table "---tableID:-:ApplicationAnnualPlans---"
    And I click on top right button "Add" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    When I enter value "2016/17 - 2020/21" into field "FiveYearPeriod__c"
    When I enter value "2017/18" into field "SchoolYear__c"
    When I enter value "CCNA" into field "DocumentType__c"
    When I enter value "Update 4" into field "DocumentSubType__c"
    And I click on top right button "Save" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    Then I softly see the text :
      | A new entry for Update 4 for a given Five-Year Period can be added only after the existing Update 4 entry is either approved or a revision is requested. |
       #196218
    And I click on top right button "Add" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    When I enter value "2016/17 - 2020/21" into field "FiveYearPeriod__c"
    When I enter value "2017/18" into field "SchoolYear__c"
    When I enter value "One Plan" into field "DocumentType__c"
    When I enter value "Update 4" into field "DocumentSubType__c"
    And I click on top right button "Save" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    Then I softly can see row level action button "Submit" against "In-Progress" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    And I click on top right button "Add" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    When I enter value "2016/17 - 2020/21" into field "FiveYearPeriod__c"
    When I enter value "2017/18" into field "SchoolYear__c"
    When I enter value "One Plan" into field "DocumentType__c"
    When I enter value "Update 4" into field "DocumentSubType__c"
    And I click on top right button "Save" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    Then I softly see the text :
      | A new entry for Update 4 for a given Five-Year Period can be added only after the existing Update 4 entry is either approved or a revision is requested. |
      #196221
    And I refresh the page
    When I click on "Submit" icon for "In-Progress" inside flex table with id "---tableID:-:ApplicationAnnualPlans---"
    And I click on "Retract" icon for "Submitted" inside flex table with id "---tableID:-:ApplicationAnnualPlans---"
    Then I softly see value "Retracted" for title "Status" inside table "---tableID:-:ApplicationAnnualPlans---"
    And I click on top right button "Add" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    When I enter value "2016/17 - 2020/21" into field "FiveYearPeriod__c"
    When I enter value "2017/18" into field "SchoolYear__c"
    When I enter value "One Plan" into field "DocumentType__c"
    When I enter value "Update 4" into field "DocumentSubType__c"
    And I click on top right button "Save" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    Then I softly see the text :
      | A new entry for Update 4 for a given Five-Year Period can be added only after the existing Update 4 entry is either approved or a revision is requested. |
      #196219
    And I refresh the page
    When I click on "Submit" icon for "In-Progress" inside flex table with id "---tableID:-:ApplicationAnnualPlans---"
    Then I softly see value "Submitted" for title "Status" inside table "---tableID:-:ApplicationAnnualPlans---"
    And I click on top right button "Add" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    When I enter value "2016/17 - 2020/21" into field "FiveYearPeriod__c"
    When I enter value "2017/18" into field "SchoolYear__c"
    When I enter value "One Plan" into field "DocumentType__c"
    When I enter value "Update 4" into field "DocumentSubType__c"
    And I click on top right button "Save" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    Then I softly see the text :
      | A new entry for Update 4 for a given Five-Year Period can be added only after the existing Update 4 entry is either approved or a revision is requested. |
      #196230
    And I refresh the page
    And I click on top right button "Add" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    When I enter value "2016/17 - 2020/21" into field "FiveYearPeriod__c"
    When I enter value "2020/21" into field "SchoolYear__c"
    When I enter value "One Plan" into field "DocumentType__c"
    When I enter value "Update 4" into field "DocumentSubType__c"
    And I click on top right button "Save" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    Then I softly can see row level action button "Submit" against "In-Progress" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    And I click on top right button "Add" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    When I enter value "2016/17 - 2020/21" into field "FiveYearPeriod__c"
    When I enter value "2020/21" into field "SchoolYear__c"
    When I enter value "One Plan" into field "DocumentType__c"
    When I enter value "Update 4" into field "DocumentSubType__c"
    And I click on top right button "Save" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    Then I softly see the text :
      | For a given Five-Year Period, a new entry for Update 4 can only be added for a School Year that is subsequent to the School Year for which the last Update 4 entry was approved. |
      #196225
    And I click on top right button "Add" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    When I enter value "2016/17 - 2020/21" into field "FiveYearPeriod__c"
    When I enter value "2017/18" into field "SchoolYear__c"
    When I enter value "One Plan" into field "DocumentType__c"
    When I enter value "Update 4" into field "DocumentSubType__c"
    And I click on top right button "Save" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    Then I softly can see row level action button "Submit" against "Update 4" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
      #196212 #196211
    And I click on top right button "Add" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    When I enter value "2016/17 - 2020/21" into field "FiveYearPeriod__c"
    When I enter value "2018/19" into field "SchoolYear__c"
    When I enter value "CCNA" into field "DocumentType__c"
    When I enter value "Update 4" into field "DocumentSubType__c"
    And I click on top right button "Save" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    Then I softly can see row level action button "Submit" against "In-Progress" in flex table with id "---tableID:-:ApplicationAnnualPlans---"

  @196295 @196296 @197086 @sprint-8 @userStory-194659
  Scenario: Verify that Internal user can delete any entry in the Annual Plans table if it is in 'Submitted' status.
  | Verify that Internal user can NOT delete any entry in the Annual Plans table if it is in 'Approved' status.
  | Verify that Internal user can NOT delete any entry in the Annual Plans table if it is in 'Revision Requested' status.
    Given I am on "SUBPORTAL" portal
    When I login as "SPI" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I navigate to "Annual Plans" sub tab
    And I click on top right button "Add" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    When I enter value "2017/18 - 2021/22" into field "FiveYearPeriod__c"
    When I enter value "2017/18" into field "SchoolYear__c"
    When I enter value "CCNA" into field "DocumentType__c"
    When I enter value "Initial" into field "DocumentSubType__c"
    And I click on top right button "Save" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    When I click on "Submit" icon for "In-Progress" inside flex table with id "---tableID:-:ApplicationAnnualPlans---"
    Then I softly see value "Submitted" for title "Status" inside table "---tableID:-:ApplicationAnnualPlans---"
    And I click on top right button "Add" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    When I enter value "2018/19 - 2022/23" into field "FiveYearPeriod__c"
    When I enter value "2018/19" into field "SchoolYear__c"
    When I enter value "One Plan" into field "DocumentType__c"
    When I enter value "Initial" into field "DocumentSubType__c"
    And I click on top right button "Save" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    When I click on "Approve" icon for "In-Progress" inside flex table with id "---tableID:-:ApplicationAnnualPlans---"
    Then I softly see value "Approved" for title "Status" inside table "---tableID:-:ApplicationAnnualPlans---"
    And I click on top right button "Add" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    When I enter value "2019/20 - 2023/24" into field "FiveYearPeriod__c"
    When I enter value "2019/20" into field "SchoolYear__c"
    When I enter value "CCNA" into field "DocumentType__c"
    When I enter value "Initial" into field "DocumentSubType__c"
    And I click on top right button "Save" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    When I click on "Approve" icon for "In-Progress" inside flex table with id "---tableID:-:ApplicationAnnualPlans---"
    When I click on "Request Revision" icon for "Approved" inside flex table with id "---tableID:-:ApplicationAnnualPlans---"
    Then I softly see value "Revision Requested" for title "Status" inside table "---tableID:-:ApplicationAnnualPlans---"
    And I logout
    Given I am on "INTERNAL" portal
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Home" tab
    When I navigate to "Subrecipients" content inside "Organization" subheader on left panel
    When I perform quick search for "TEXAS BEAR CREEK STORAGE" in "---tableID:-:ApplicationSubrecipientOrganization---" panel
    When I click on "View" icon for "TEXAS BEAR CREEK STORAGE" inside flex table with id "---tableID:-:ApplicationSubrecipientOrganization---"
    And I navigate to "Annual Plans" sub tab
    #196295
    And I click on "Delete" icon for "Submitted" inside flex table with id "---tableID:-:ApplicationAnnualPlans---"
    Then I softly do not see value "Submitted" for title "Status" inside table "---tableID:-:ApplicationAnnualPlans---"
    #196296
    Then I softly cannot see row level action button "Delete" against "Approved" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    #197086
    Then I softly cannot see row level action button "Delete" against "Revision Requested" in flex table with id "---tableID:-:ApplicationAnnualPlans---"

  @197123 @197122 @197121 @sprint-8 @userStory-194064
  Scenario: Verify that 'Organization Roles' table  'Assignment Status' column is a required field in Edit mode
  | Verify that as the external WAC user can see the 'Edit' action where external WAC user can edit 'Assignment Status' column
  | Verify that in-line Edit action on an 'Organization Roles' table's action column
    Given I am on "SUBPORTAL" portal
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
      #197123
    Then I softly see asterisk mark on "Assignment Status"
      #197122
    Then I see the following options in dropdown field "fieldAssignmentStatus__c" :
      | Active | Inactive |
      #197121
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
    Then I softly can see row level action button "Edit" against "SPI Automation" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"

  @196723 @196721 @196716 @sprint-8 @userStory-194244
  Scenario: Verify that 'Organization Roles' table  'Assignment Status' column is a required field in Edit mode
  | Verify that as the internal Admin user can see the 'Edit' action where internal admin can edit 'Assignment Status' column
  | Verify that in-line Edit action button in an 'Organization Roles' table's action column
    Given I am on "SUBPORTAL" portal
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
    And I logout
    Given I am on "INTERNAL" portal
    When I login to "As a Grantor" app as "Admin" user
    And I navigate to "Home" tab
    When I navigate to "Subrecipients" content inside "Organization" subheader on left panel
    When I perform quick search for "TEXAS BEAR CREEK STORAGE" in "---tableID:-:ApplicationSubrecipientOrganization---" panel
    When I click on "View" icon for "TEXAS BEAR CREEK STORAGE" inside flex table with id "---tableID:-:ApplicationSubrecipientOrganization---"
    When I click on "Edit" icon for "VD TestUser5" inside flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "None" into field "fieldAssignmentStatus__c"
    And I click on top right button "Save" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    #196723
    Then I softly see the text containing :
      | Required Field Missing |
    #196721
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    Then I see the following options in dropdown field "fieldAssignmentStatus__c" :
      | Active | Inactive |
    #196716
    And I close modal by clicking the top right x button
    Then I softly can see row level action button "Edit" against "VD TestUser5" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"

  @196709 @196707 @196703 @196701 @196684 @196697 @196689 @196682 @sprint-8 @userStory-194060
    Scenario: Verify that the Advanced Search options are enabled for the Organization Role table.
    | Verify that 'Last Updated'  field shows the date/time for when the entry was last edited
    | Verify that 'Organization Roles' table  'Assignment Status' column is a dropdown field
    | Verify that 'Organization Roles' table  'Assignment Status' column is a required field
    | Verify that 'Organization Roles' table  'Role' column is a required field
    | Verify that on 'Organization Roles' table  'Assigned To' column is a required field
    | Verify that 'Organization Roles' table 'Role' column is a dropdown field
    | Verify that Internal Admin can 'Add' multiple lines (entries) to the 'Organization Roles' table
    Given I am on "SUBPORTAL" portal
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
    And I logout
    Given I am on "INTERNAL" portal
    When I login to "As a Grantor" app as "Admin" user
    And I navigate to "Home" tab
    When I navigate to "Subrecipients" content inside "Organization" subheader on left panel
    When I perform quick search for "TEXAS BEAR CREEK STORAGE" in "---tableID:-:ApplicationSubrecipientOrganization---" panel
    When I click on "View" icon for "TEXAS BEAR CREEK STORAGE" inside flex table with id "---tableID:-:ApplicationSubrecipientOrganization---"
    And I softly see field "Status" as "Active"
    When I perform quick search for "Program Coordinator" in "---tableID:-:ApplicationOrganizationRoles---" panel
    #196709
    Then I softly see value "Program Coordinator" for title "Role" inside table "---tableID:-:ApplicationOrganizationRoles---"
    #196707
    When I click on "Edit" icon for "SPI Automation" inside flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click on top right button "Save" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    Then I softly see value "02/18/2022" for title "Last Updated" inside table "---tableID:-:ApplicationOrganizationRoles---"
    #196703
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    Then I see the following options in dropdown field "fieldAssignmentStatus__c" :
      | Active | Inactive |
    #196701
    Then I softly see asterisk mark on "Assignment Status"
    #196684
    Then I softly see asterisk mark on "Role"
    #196697
    Then I softly see asterisk mark on "Assigned To"
    #196689
    Then I see the following options in dropdown field "fieldRole__c" :
      | Program Coordinator | Program Approver | Fiscal Coordinator | Fiscal Approver | Authorized Official |
    #196682
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "SPI WAC Automation" into field "fieldAssignedTo__c"
    When I enter value "Active" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
    Then I softly see value "Program Approver" for title "Role" inside table "---tableID:-:ApplicationOrganizationRoles---"
    Then I softly see value "SPI WAC Automation" for title "Assigned To" inside table "---tableID:-:ApplicationOrganizationRoles---"

  @197072 @197078 @197083 @197079 @197085 @196434 @196437 @197073 @197087 @196433 @sprint-8 @userStory-192664
  Scenario: Verify that  that Role field has dropdown with the following options: Program Coordinator, Program Approver,  Fiscal Coordinator,  Fiscal Approver,  Authorized Official
  | Verify that 'Assigned To' is a required field
  | Verify that 'Assignment Status' field has dropdown field with the following options: Active, Inactive
  | Verify that 'Assignment Status' is a required field
  | Verify that 'Last Updated' field shows the date/time for when the entry was last edited.
  | Verify that only external WAC user can 'Add' multiple lines (entries) to the 'Organization Roles' table.
  | Verify that the table has the 'Role' column which is required on submit
  | Verify that the 'Program' is an optional field.
  | Verify that Quick Search and Advanced Search options are enabled for the table
  | Verify that the static instructional text of 'Organization Roles' section
    Given I am on "SUBPORTAL" portal
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    #197072
    Then I see the following options in dropdown field "fieldRole__c" :
      | Program Coordinator | Program Approver | Fiscal Coordinator | Fiscal Approver | Authorized Official |
    #197078
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
    Then I softly see the text containing :
      | Assigned To is required to save. |
    #197083
    Then I see the following options in dropdown field "fieldAssignmentStatus__c" :
      | Active | Inactive |
    #197079
    And I refresh the page
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "SPI WAC Automation" into field "fieldAssignedTo__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    And I click modal button "Save"
    Then I softly see the text containing :
      | Assignment Status is required to save. |
    #197085
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    When I click on "Edit" icon for "Program Approver" inside flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Active" into field "fieldAssignmentStatus__c"
    And I click on top right button "Save" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    Then I softly see value "02/21/2022" for title "Last Updated" inside table "---tableID:-:ApplicationOrganizationRoles---"
    #196434
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Coordinator" into field "fieldRole__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
    Then I softly see value "Program Coordinator" for title "Role" inside table "---tableID:-:ApplicationOrganizationRoles---"
    #196437
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
    Then I softly see the text containing :
      | Role is required to save. |
    #197073
    Then I softly do not see asterisk mark on "Program"
    #197087
    And I refresh the page
    When I perform quick search for "SPI Automation" in "---tableID:-:ApplicationOrganizationRoles---" panel
    Then I softly see value "SPI Automation" for title "Assigned To" inside table "---tableID:-:ApplicationOrganizationRoles---"
    #196433
    Then I softly see the text containing :
    | The organization's Web-Access Coordinator (WAC) can update role assignments in this section. A WAC can assign at least one 'Active' user for each of the following roles: Program Coordinator, Program Approver, Fiscal Coordinator, Fiscal Approver, and Authorized Official. Program Coordinators and Fiscal Coordinators can be assigned on a per program basis. Program Approvers can only be assigned on a per program basis. And, Fiscal Approvers and Authorized Officials can only be assigned on an organization level basis.  Only one Fiscal Approver and a single Authorized Official is allowed to be assigned at the organization level i.e. there cannot be more than one record in the table below with Assignment Status as 'Active' for Fiscal Approver and Authorized Official.  If there are no program-level Program or Fiscal Coordinators assigned below for a given program, then tasks will be assigned to the organization-level Program or Fiscal Coordinators.  If for a given role (e.g. Program Coordinator), all assigned user accounts are inactive or the user accounts are active but the assignment status for all users assigned for that role is inactive, then the system will not create any task (e.g. Revise Application task) for that role. When roles are updated below, the role on individual records (e.g. applications or progress reports) that are already created in the system are not updated. |

  @191877 @191876 @191874 @191875 @191871 @191869 @191882 @191867 @191887 @191863 @sprint-8 @userStory-189862
  Scenario: Verify "Document Sub-Type" field is a drop-down with options
  | Verify "Document Type" column is a drop-down field with 2 options
  | Verify "Five-Year Period" field should be a dropdown with five-year timespans listed
  | Verify "School Name" column is a dropdown field with five-year timespans listed
  | Verify all the columns available on the table are required on Save
  | Verify external user should able to "Add" multiple lines / entries to the table
  | Verify external user should able to see the Document Version for the plan
  | Verify external user should see "Add" button on the table
  | Verify external user should see "Upload", "Submit" & "Delete" actions on "Actions" column, when plan status = In-Progress.
  | Verify external user should see a table with columns in the Annual Plan tab
    Given I am on "SUBPORTAL" portal
    When I login as "SPI" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I navigate to "Annual Plans" sub tab
    And I click on top right button "Add" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    #191877
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
      | 2016/17 | 2017/18 | 2018/19 | 2019/20 | 2020/21 | 2021/22 | 2022/23 |
    #191871
    And I click on top right button "Save" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    Then I softly see the text :
      | Required Field Missing |
    #191869
    When I enter value "2017/18 - 2021/22" into field "FiveYearPeriod__c"
    When I enter value "2017/18" into field "SchoolYear__c"
    When I enter value "CCNA" into field "DocumentType__c"
    When I enter value "Initial" into field "DocumentSubType__c"
    And I click on top right button "Save" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    Then I softly see value "In-Progress" for title "Status" inside table "---tableID:-:ApplicationAnnualPlans---"
    #191882
    Then I softly see value "1" for title "Document Version" inside table "---tableID:-:ApplicationAnnualPlans---"
    #191867
    Then I softly can see top right button "Add" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    #191887
    Then I softly can see row level action button "Upload" against "In-Progress" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    Then I softly can see row level action button "Submit" against "In-Progress" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    Then I softly can see row level action button "Delete" against "In-Progress" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    #191863
    Then I see only the following ordered headers in table with id "---tableID:-:ApplicationAnnualPlans---" :
      | Five-Year Period | School Year | Document Type | Document Sub-Type | Document Version | Status | Last Submitted By | Last Submitted On | Document Link | Actions |

  @196454 @196436 @196448 @196465 @196466 @196471 @196468 @196469 @196470 @196441 @196474 @sprint-8 @userStory-194658
  Scenario: Verify that CCNA user cannot skip an update that has an in-progress entry for the previous update for a given five-year period.
  | Verify that external user can enter a CCNA with Document Sub -type -Initial
  | Verify that for CCNA plane user should not be able to select the school year outside of the five-year period
  | Verify that CCNA user cannot skip an update that has an submitted entry for the previous update for a given five-year period.
  | Verify that CCNA user cannot skip an update that has an retracted entry for the previous update for a given five-year period.
  | Verify that for CCNA entry user cannot add the new back dated entry or a given CCNA that has an approved status
  | Verify that for CCNA entry user cannot add the new back dated entry or a given CCNA that has an in-progress
  | Verify that for CCNA entry user cannot add the new back dated entry or a given CCNA that has an submitted status
  | Verify that for CCNA entry user cannot add the new back dated entry or a given CCNA that has an retract status
  | Verify that the validation is displayed for correct school year on  CCNA for selected document subtype - initial
  | Verify the "Five Year Period' column is in sorted descending order
    Given I am on "SUBPORTAL" portal
    When I login as "SPI" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I navigate to "Annual Plans" sub tab
    And I click on top right button "Add" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    When I enter value "2016/17 - 2020/21" into field "FiveYearPeriod__c"
    When I enter value "2016/17" into field "SchoolYear__c"
    When I enter value "CCNA" into field "DocumentType__c"
    When I enter value "Update 2" into field "DocumentSubType__c"
    And I click on top right button "Save" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    #196454
    Then I softly see the text :
      | For the selected Five-Year Period, you cannot skip an update. |
    #196436
    When I enter value "Initial" into field "DocumentSubType__c"
    And I click on top right button "Save" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    Then I softly see value "Initial" for title "Document Sub-Type" inside table "---tableID:-:ApplicationAnnualPlans---"
    #196448
    And I click on top right button "Add" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    When I enter value "2016/17 - 2020/21" into field "FiveYearPeriod__c"
    When I enter value "2022/23" into field "SchoolYear__c"
    When I enter value "CCNA" into field "DocumentType__c"
    When I enter value "Initial" into field "DocumentSubType__c"
    And I click on top right button "Save" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    Then I softly see the text :
      | For the selected Five-Year One Plan, and Document Sub-Type, select a valid School Year. The School Year must align with the document sub-type being added for the five year period. |
    #196465
    And I click on top right button "Add" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    When I enter value "2016/17 - 2020/21" into field "FiveYearPeriod__c"
    When I enter value "2016/17" into field "SchoolYear__c"
    When I enter value "CCNA" into field "DocumentType__c"
    When I enter value "Update 3" into field "DocumentSubType__c"
    And I click on top right button "Save" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    And I click on "Submit" icon for "In-Progress" inside flex table with id "---tableID:-:ApplicationAnnualPlans---"
    Then I softly see value "Submitted" for title "Status" inside table "---tableID:-:ApplicationAnnualPlans---"
    And I click on top right button "Add" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    When I enter value "2016/17 - 2020/21" into field "FiveYearPeriod__c"
    When I enter value "2016/17" into field "SchoolYear__c"
    When I enter value "CCNA" into field "DocumentType__c"
    When I enter value "Update 2" into field "DocumentSubType__c"
    And I click on top right button "Save" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    Then I softly see the text containing :
      | For the selected Five-Year Period, you cannot skip an update. |
   #196466
    And I click on "Retract" icon for "Submitted" inside flex table with id "---tableID:-:ApplicationAnnualPlans---"
    Then I softly see value "Retracted" for title "Status" inside table "---tableID:-:ApplicationAnnualPlans---"
    And I click on top right button "Add" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    When I enter value "2016/17 - 2020/21" into field "FiveYearPeriod__c"
    When I enter value "2016/17" into field "SchoolYear__c"
    When I enter value "CCNA" into field "DocumentType__c"
    When I enter value "Update 3" into field "DocumentSubType__c"
    And I click on top right button "Save" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    Then I softly see the text containing :
      | For the selected Five-Year Period, you cannot skip an update. |
    #196471
    And I click on "Approve" icon for "Retracted" inside flex table with id "---tableID:-:ApplicationAnnualPlans---"
    Then I softly see value "Approved" for title "Status" inside table "---tableID:-:ApplicationAnnualPlans---"
    And I click on top right button "Add" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    When I enter value "2016/17 - 2020/21" into field "FiveYearPeriod__c"
    When I enter value "2017/18" into field "SchoolYear__c"
    When I enter value "CCNA" into field "DocumentType__c"
    When I enter value "Update 1" into field "DocumentSubType__c"
    And I click on top right button "Save" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    Then I softly see the text containing :
      | For the selected Five-Year Period, you cannot add a backdated CCNA or One Plan. |
    #196468
    And I click on top right button "Add" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    When I enter value "2016/17 - 2020/21" into field "FiveYearPeriod__c"
    When I enter value "2016/17" into field "SchoolYear__c"
    When I enter value "CCNA" into field "DocumentType__c"
    When I enter value "Update 1" into field "DocumentSubType__c"
    And I click on top right button "Save" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    Then I softly see value "In-Progress" for title "Status" inside table "---tableID:-:ApplicationAnnualPlans---"
    And I click on top right button "Add" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    When I enter value "2016/17 - 2020/21" into field "FiveYearPeriod__c"
    When I enter value "2017/18" into field "SchoolYear__c"
    When I enter value "CCNA" into field "DocumentType__c"
    When I enter value "Update 1" into field "DocumentSubType__c"
    And I click on top right button "Save" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    Then I softly see the text containing :
      | For the selected Five-Year Period, you cannot add a backdated CCNA or One Plan. |
    #196469
    And I click on "Submit" icon for "In-Progress" inside flex table with id "---tableID:-:ApplicationAnnualPlans---"
    Then I softly see value "Submitted" for title "Status" inside table "---tableID:-:ApplicationAnnualPlans---"
    And I click on top right button "Add" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    When I enter value "2018/19- 2022/23" into field "FiveYearPeriod__c"
    When I enter value "2019/20" into field "SchoolYear__c"
    When I enter value "CCNA" into field "DocumentType__c"
    When I enter value "Update 1" into field "DocumentSubType__c"
    And I click on top right button "Save" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    Then I softly see the text containing :
      | For the selected Five-Year Period, you cannot add a backdated CCNA or One Plan. |
    #196470
    And I click on "Retract" icon for "Submitted" inside flex table with id "---tableID:-:ApplicationAnnualPlans---"
    Then I softly see value "Retracted" for title "Status" inside table "---tableID:-:ApplicationAnnualPlans---"
    And I click on top right button "Add" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    When I enter value "2018/19- 2022/23" into field "FiveYearPeriod__c"
    When I enter value "2019/20" into field "SchoolYear__c"
    When I enter value "CCNA" into field "DocumentType__c"
    When I enter value "Update 1" into field "DocumentSubType__c"
    And I click on top right button "Save" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    Then I softly see the text containing :
      | For the selected Five-Year Period, you cannot add a backdated CCNA or One Plan. |
    #196441
    And I click on top right button "Add" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    When I enter value "2016/17- 2020/21" into field "FiveYearPeriod__c"
    When I enter value "2017/18" into field "SchoolYear__c"
    When I enter value "CCNA" into field "DocumentType__c"
    When I enter value "Initial" into field "DocumentSubType__c"
    And I click on top right button "Save" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    Then I softly see the text containing :
      | For the selected Five-Year One Plan, and Document Sub-Type, select a valid School Year. The School Year must align with the document sub-type being added for the five year period. |
    #196474
    Then I softly see content of expected column "Five-Year Period" is in "DESC" order of table id "---tableID:-:ApplicationAnnualPlans---"

  @197182 @197184 @197181 @197183 @197187 @197185 @197191 @197193 @197190 @197186 @197174 @197173 @197172 @197178 @197177 @197175 @sprint-8 @userStory-192665
  Scenario: Verify that the external WAC user cannot select a Program for the Authorized Official role
  | Verify that the external WAC user cannot select a Program for the Authorized Official role in Edit mode
  | Verify that the external WAC user cannot select a Program for the Fiscal Approver role
  | Verify that the external WAC user cannot select a Program for the Fiscal Approver role in Edit mode
  | Verify that when external WAC user add a record on Organization Roles table, only one active assignment is allowed per Program at any time for the Program Approver role
  | Verify that when external WAC user add a record on Organization Roles table, the Program selection is required for Program Approver
  | Verify that when external WAC user can add a record on Organization Roles table, only one active assignment can be made for a given user for a given program for the Program Coordinator role.
  | Verify that when external WAC user can edit a record on Organization Roles table, only one active assignment can be made for a given user for a given program for the Program Coordinator role.
  | Verify that when external WAC user edit the record on Organization Roles table, only one active assignment is allowed per Program at any time for the Fiscal Coordinator role
  | Verify that when external WAC user edit the record on Organization Roles table, the Program selection is required for Program Approver.
  | Verify that when the external WAC, Add entries in the Organization Roles table only one active assignment is allowed for the organization (ie, not assigned to a program) at any time for the Authorized Official Role.
  | Verify that when the external WAC, Add entries in the Organization Roles table only one active assignment is allowed for the organization (ie, not assigned to a program) at any time for the Fiscal Approver Role
  | Verify that when the external WAC, Add entries in the Organization Roles table only one active assignment is allowed for the organization (ie, not assigned to a program) at any time for the Fiscal Coordinator Role
  | Verify that when the external WAC, Edit entries in the Organization Roles table only one active assignment is allowed for the organization (ie, not assigned to a program) at any time for the Authorized Official Role
  | Verify that when the external WAC, Edit entries in the Organization Roles table only one active assignment is allowed for the organization (ie, not assigned to a program) at any time for the Fiscal Approver Role
  | Verify that when the external WAC, Edit entries in the Organization Roles table only one active assignment is allowed for the organization (ie, not assigned to a program) at any time for the Fiscal Coordinator Role
    Given I am on "SUBPORTAL" portal
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Authorized Official" into field "fieldRole__c"
    When I enter value "SPA Automation" into field "fieldAssignedTo__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "Active" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
    #197182
    Then I softly see the text containing :
    | Program selection is not allowed the Authorized Official role, as this is an organization-level role. |
    #197184
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "PG-SCDE-0005" into field "fieldProgram__c"
    And I click modal button "Save"
    Then I softly see the text containing :
    | Program selection is not allowed for the Authorized Official role, as this is an organization-level role. |
    #197181
    And I close modal by clicking the top right x button
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Fiscal Approver" into field "fieldRole__c"
    When I enter value "SPA Automation" into field "fieldAssignedTo__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "Active" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
    Then I softly see the text containing :
    | Program selection is not allowed for the Fiscal Approver role, as this is an organization-level role. |
    #197183
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "PG-SCDE-0005" into field "fieldProgram__c"
    And I click modal button "Save"
    Then I softly see the text containing :
    | Program selection is not allowed for the Fiscal Approver role, as this is an organization-level role. |
    #197187
    And I close modal by clicking the top right x button
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "SPA Automation" into field "fieldAssignedTo__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "Active" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
    Then I softly see value "Active" for title "Assignment Status" inside table "---tableID:-:ApplicationOrganizationRoles---"
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "Active" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
    Then I softly see the text containing :
    | Only one Program Approver can be made active for each program at any time. |
    #197185
    And I close modal by clicking the top right x button
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "SPA Automation" into field "fieldAssignedTo__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
    Then I softly see the text containing :
    | Program selection is required for the Program Approver role. |
    #197191 #197193
    And I close modal by clicking the top right x button
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Coordinator" into field "fieldRole__c"
    When I enter value "SPA Automation" into field "fieldAssignedTo__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "Active" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
    Then I softly see value "Active" for title "Assignment Status" inside table "---tableID:-:ApplicationOrganizationRoles---"
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Coordinator" into field "fieldRole__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "Active" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
    Then I softly see the text containing :
    | Program Coordinator role can only be assigned to a user one time for a given program. |
    #197190
    And I close modal by clicking the top right x button
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Fiscal Coordinator" into field "fieldRole__c"
    When I enter value "SPA Automation" into field "fieldAssignedTo__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "Active" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
    Then I softly see value "Active" for title "Assignment Status" inside table "---tableID:-:ApplicationOrganizationRoles---"
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Fiscal Coordinator" into field "fieldRole__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "Active" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
    Then I softly see the text containing :
    | Only one Fiscal Coordinator can be made active for each program at any time. |
    #197186
    And I close modal by clicking the top right x button
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "SPA Automation" into field "fieldAssignedTo__c"
    When I enter value "Active" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
    Then I softly see the text containing :
    | Program selection is required for the Program Approver role. |
    #197174
    And I close modal by clicking the top right x button
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Authorized Official" into field "fieldRole__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Active" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
    Then I softly see value "Active" for title "Assignment Status" inside table "---tableID:-:ApplicationOrganizationRoles---"
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Authorized Official" into field "fieldRole__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Active" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
    Then I softly see the text containing :
    | Only one Authorized Official can be made active for the organization at any time.  |
    #197173
    And I close modal by clicking the top right x button
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Fiscal Approver" into field "fieldRole__c"
    When I enter value "SPA Automation" into field "fieldAssignedTo__c"
    When I enter value "Active" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
    Then I softly see value "Active" for title "Assignment Status" inside table "---tableID:-:ApplicationOrganizationRoles---"
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Fiscal Approver" into field "fieldRole__c"
    When I enter value "SPA Automation" into field "fieldAssignedTo__c"
    When I enter value "Active" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
    Then I softly see the text containing :
    | Only one Fiscal Approver can be made active for the organization at any time. |
    #197172
    And I close modal by clicking the top right x button
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Fiscal Coordinator" into field "fieldRole__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Active" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
    Then I softly see value "Active" for title "Assignment Status" inside table "---tableID:-:ApplicationOrganizationRoles---"
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Fiscal Coordinator" into field "fieldRole__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Active" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
    Then I softly see the text containing :
    | Only one Fiscal Coordinator can be made active for the organization at any time. |
    #197178
    And I close modal by clicking the top right x button
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Authorized Official" into field "fieldRole__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
    Then I softly see value "Inactive" for title "Assignment Status" inside table "---tableID:-:ApplicationOrganizationRoles---"
    When I click on "Edit" icon for "Authorized Official" inside flex table with id "ApplicationOrganizationRoles"
    When I enter value "Active" into field "fieldAssignmentStatus__c"
    And I click on top right button "Save" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    Then I softly see the text containing :
    | Only one Authorized Official can be made active for the organization at any time. |
    #197177
    And I close modal by clicking the top right x button
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Fiscal Approver" into field "fieldRole__c"
    When I enter value "SPA Automation" into field "fieldAssignedTo__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
    Then I softly see value "Inactive" for title "Assignment Status" inside table "---tableID:-:ApplicationOrganizationRoles---"
    When I click on "Edit" icon for "Fiscal Approver" inside flex table with id "ApplicationOrganizationRoles"
    When I enter value "Active" into field "fieldAssignmentStatus__c"
    And I click on top right button "Save" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    Then I softly see the text containing :
    | Only one Fiscal Approver can be made active for the organization at any time. |
    #197175
    And I close modal by clicking the top right x button
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Fiscal Coordinator" into field "fieldRole__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
    Then I softly see value "Inactive" for title "Assignment Status" inside table "---tableID:-:ApplicationOrganizationRoles---"
    When I click on "Edit" icon for "Fiscal Coordinator" inside flex table with id "ApplicationOrganizationRoles"
    When I enter value "Active" into field "fieldAssignmentStatus__c"
    And I click on top right button "Save" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    Then I softly see the text containing :
    | Only one Fiscal Coordinator can be made active for the organization at any time. |

  @196670 @1966635 @196680 @196646 @196654 @196660 @sprint-8 @userStory-194059
  Scenario: Verify that the Advanced Search options are enabled for the Organization Role table
  | Verify  that the Quick Search options are enabled for the Organization Role table
  | Verify that the Organization Role table automatically sorts by the 'Assignment Status' column
  | Verify that the Subrecipient Organization's profile has a new section called 'Organization Roles' on the Overview tab.  It is located after the Contacts section on the layout
  | Verify that the static instructional text in Organization Role section
  | Verify the Organization Role section's table columns
    Given I am on "SUBPORTAL" portal
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Fiscal Coordinator" into field "fieldRole__c"
    When I enter value "SPA Automation" into field "fieldAssignedTo__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
    And I logout
    Given I am on "INTERNAL" portal
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Home" tab
    When I navigate to "Subrecipients" content inside "Organization" subheader on left panel
    When I perform quick search for "TEXAS BEAR CREEK STORAGE" in "---tableID:-:ApplicationSubrecipientOrganization---" panel
    When I click on "View" icon for "TEXAS BEAR CREEK STORAGE" inside flex table with id "---tableID:-:ApplicationSubrecipientOrganization---"
    And I softly see field "Status" as "Active"
    When I perform quick search for "Program Approver" in "---tableID:-:ApplicationOrganizationRoles---" panel
    #196670
    Then I softly see value "Program Approver" for title "Role" inside table "---tableID:-:ApplicationOrganizationRoles---"
    #196663
    When I perform quick search for "Fiscal Coordinator" in "---tableID:-:ApplicationOrganizationRoles---" panel
    Then I softly see value "Fiscal Coordinator" for title "Role" inside table "---tableID:-:ApplicationOrganizationRoles---"
    #196680
    Then I softly see content of expected column "Assignment Status" is in "ASC" order of table id "---tableID:-:ApplicationOrganizationRoles---"
    #196646
    Then I see only the following ordered page blocks :
      | Description | Additional Information | Additional Addresses | Contacts | Organization Roles | Approval Steps by Process | Third Party Verification | Indirect Rates | System Information |
    #196654
    Then I softly see the Instruction text in the page
      | The sub-recipient (district, LEA) organization's Web-Access Coordinator (WAC) can update role assignments in this section. The WAC can assign at least one organization user for each organization role. Some role distinctions include:                                                                                                                                                   |
      | Program Coordinators and Fiscal Coordinators can be assigned at the program-level or organization-level. The system will assign organization-level Fiscal Coordinators as approvers if there is no Fiscal Coordinator assigned for a program. Similarly, the system will assign tasks to organization-level Program Coordinator if there is no Program Coordinator assigned for a program. |
      | Program Approvers can only be assigned at the program level.                                                                                                                                                                                                                                                                                                                               |
      | Only one Fiscal Approver and one Authorized Official can be assigned for a given organization.                                                                                                                                                                                                                                                                                             |
      | Also, please note the following:                                                                                                                                                                                                                                                                                                                                                           |
      | The system considers only 'Active' assignments when allowing role-specific actions (e.g., creating an application) or assigning tasks.                                                                                                                                                                                                                                                     |
      | If a user's account is inactive, the system will not assign any task based on the user's 'Active' assignments listed below.                                                                                                                                                                                                                                                                |
      | Any new assignments made below will apply only to newly created records and tasks in the system. Therefore, updating the assignments below will not automatically update the existing assignments in the system within existing records. However, the WAC can use the 'Refresh' option in the individual records (e.g., application) to manually refresh the assignments, if needed.       |
    #196660
    Then I see only the following ordered headers in table with id "---tableID:-:ApplicationOrganizationRoles---" :
      | Role | Program  | Assigned To | Assignment Status | Last Updated |

  @196692 @196712 @196708 @196698 @sprint-8 @userStory-194060
  Scenario: Verify that on 'Organization Roles' table  'Program' column is a optional field
  | Verify that the Organization Role table automatically sorts by the 'Assignment Status' column (Internal Admin user)
  | Verify that the Quick Search options are enabled for the Organization Role table (Internal Admin)
  | Verify that 'Organization Roles' table  'Assigned To' column is a Quick Search field that finds all Active users for the subrecipient organization
    When I login to "As a Grantor" app as "Admin" user
    And I navigate to "Home" tab
    When I navigate to "Subrecipients" content inside "Organization" subheader on left panel
    When I perform quick search for "TEXAS BEAR CREEK STORAGE" in "---tableID:-:ApplicationSubrecipientOrganization---" panel
    When I click on "View" icon for "TEXAS BEAR CREEK STORAGE" inside flex table with id "---tableID:-:ApplicationSubrecipientOrganization---"
    And I softly see field "Status" as "Active"
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    #196692
    Then I softly do not see asterisk mark on "Program"
    #196712
    Then I softly see content of expected column "Assignment Status" is in "ASC" order of table id "---tableID:-:ApplicationOrganizationRoles---"
    #196708
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Authorized Official" into field "fieldRole__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
    When I perform quick search for "Authorized Official" in "---tableID:-:ApplicationOrganizationRoles---" panel
    Then I softly see value "Authorized Official" for title "Role" inside table "---tableID:-:ApplicationOrganizationRoles---"
    #196698
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Coordinator" into field "fieldRole__c"
    When I enter value "SPA Automation" into field "fieldAssignedTo__c"
    When I enter value "Active" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
    When I perform quick search for "Active" in "---tableID:-:ApplicationOrganizationRoles---" panel
    Then I softly see value "Active" for title "Assignment Status" inside table "---tableID:-:ApplicationOrganizationRoles---"

  @196954 @196951 @197658 @196971 @196964 @196976 @196978 @197666 @196972 @196933 @196932 @196928 @196946 @sprint-8 @userStory-194245
  Scenario: Verify that the Internal Admin user cannot select a Program for the Authorized Official role
  | Verify that the Internal Admin user cannot select a Program for the Fiscal Approver role
  | Verify that when Internal Admin user add a record on Organization Roles table, only one active assignment is allowed per Program at any time for the Fiscal Coordinator role
  | Verify that when Internal Admin user add a record on Organization Roles table, only one active assignment is allowed per Program at any time for the Program Approver role
  | Verify that when Internal Admin user add a record on Organization Roles table, the Program selection is required for Program Approver
  | Verify that when Internal Admin user can add a record on Organization Roles table, only one active assignment can be made for a given user for a given program for the Program Coordinator role.
  | Verify that when Internal Admin user can edit a record on Organization Roles table, only one active assignment can be made for a given user for a given program for the Program Coordinator role.
  | Verify that when Internal Admin user edit the record on Organization Roles table, only one active assignment is allowed per Program at any time for the Fiscal Coordinator role
  | Verify that when Internal Admin user edit the record on Organization Roles table, only one active assignment is allowed per Program at any time for the Program Approver role
  | Verify that when the internal Admin, Add entries in the Organization Roles table only one active assignment is allowed for the organization (ie, not assigned to a program) at any time for the Authorized Official Role
  | Verify that when the internal Admin, Add entries in the Organization Roles table only one active assignment is allowed for the organization (ie, not assigned to a program) at any time for the Fiscal Approver Role
  | Verify that when the internal Admin, Add entries in the Organization Roles table only one active assignment is allowed for the organization (ie, not assigned to a program) at any time for the Fiscal Coordinator Role
  | Verify that when the internal Admin, Edit entries in the Organization Roles table only one active assignment is allowed for the organization (ie, not assigned to a program) at any time for the Authorized Official Role
    When I login to "As a Grantor" app as "Admin" user
    And I navigate to "Home" tab
    When I navigate to "Subrecipients" content inside "Organization" subheader on left panel
    When I perform quick search for "TEXAS BEAR CREEK STORAGE" in "---tableID:-:ApplicationSubrecipientOrganization---" panel
    When I click on "View" icon for "TEXAS BEAR CREEK STORAGE" inside flex table with id "---tableID:-:ApplicationSubrecipientOrganization---"
    And I softly see field "Status" as "Active"
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Authorized Official" into field "fieldRole__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "SPA Automation" into field "fieldAssignedTo__c"
    When I enter value "Active" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
    #196954
    Then I softly see the text containing :
      | Program selection is not allowed for the Authorized Official role, as this is an organization-level role. |
    #196951
    When I enter value "Fiscal Approver" into field "fieldRole__c"
    When I enter value "PG-SCDE-0315" into field "fieldProgram__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Active" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
    Then I softly see the text containing :
      | Program selection is not allowed for the Fiscal Approver role, as this is an organization-level role. |
    #197658
    When I enter value "Fiscal Coordinator" into field "fieldRole__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "SPA Automation" into field "fieldAssignedTo__c"
    When I enter value "Active" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
    Then I softly see value "Active" for title "Assignment Status" inside table "---tableID:-:ApplicationOrganizationRoles---"
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Fiscal Coordinator" into field "fieldRole__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Active" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
    Then I softly see the text containing :
      | Only one Fiscal Coordinator can be made active for each program at any time. |
    #196971
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "PG-SCDE-0315" into field "fieldProgram__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Active" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
    Then I softly see value "Active" for title "Assignment Status" inside table "---tableID:-:ApplicationOrganizationRoles---"
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "PG-SCDE-0315" into field "fieldProgram__c"
    When I enter value "SPA Automation" into field "fieldAssignedTo__c"
    When I enter value "Active" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
    Then I softly see the text containing :
      | Only one Program Approver can be made active for each program at any time. |
    #196964
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
    Then I softly see the text containing :
      | Program selection is required for the Program Approver role. |
    #196976
    When I enter value "Program Coordinator" into field "fieldRole__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "SPA Automation" into field "fieldAssignedTo__c"
    When I enter value "Active" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
    Then I softly see value "Active" for title "Assignment Status" inside table "---tableID:-:ApplicationOrganizationRoles---"
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Coordinator" into field "fieldRole__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "SPA Automation" into field "fieldAssignedTo__c"
    When I enter value "Active" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
    Then I softly see the text containing :
      | Program Coordinator role can only be assigned to a user one time for a given program. |
    #196978
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Coordinator" into field "fieldRole__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "SPA Automation" into field "fieldAssignedTo__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
    Then I softly see value "Inactive" for title "Assignment Status" inside table "---tableID:-:ApplicationOrganizationRoles---"
    When I click on "Edit" icon for "Program Coordinator" inside flex table with id "ApplicationOrganizationRoles"
    When I enter value "Active" into field "fieldAssignmentStatus__c"
    And I click on top right button "Save" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    Then I softly see the text containing :
      | Program Coordinator role can only be assigned to a user one time for a given program. |
    #197666
    When I enter value "Fiscal Coordinator" into field "fieldRole__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "SPA Automation" into field "fieldAssignedTo__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
    Then I softly see value "Inactive" for title "Assignment Status" inside table "---tableID:-:ApplicationOrganizationRoles---"
    When I click on "Edit" icon for "Fiscal Coordinator" inside flex table with id "ApplicationOrganizationRoles"
    When I enter value "Active" into field "fieldAssignmentStatus__c"
    And I click on top right button "Save" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    Then I softly see the text containing :
      | Only one Fiscal Coordinator can be made active for each program at any time. |
    #196972
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "PG-SCDE-0315" into field "fieldProgram__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
    Then I softly see value "Inactive" for title "Assignment Status" inside table "---tableID:-:ApplicationOrganizationRoles---"
    When I click on "Edit" icon for "Program Approver" inside flex table with id "ApplicationOrganizationRoles"
    When I enter value "Active" into field "fieldAssignmentStatus__c"
    And I click on top right button "Save" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    Then I softly see the text containing :
      | Only one Program Approver can be made active for each program at any time. |
    #196933
    When I enter value "Authorized Official" into field "fieldRole__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Active" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
    Then I softly see value "Active" for title "Assignment Status" inside table "---tableID:-:ApplicationOrganizationRoles---"
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Authorized Official" into field "fieldRole__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Active" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
    Then I softly see the text containing :
      | Only one  Authorized Official can be made active for the organization at any time. |
    #196932
    When I enter value "Fiscal Approver" into field "fieldRole__c"
    When I enter value "SPA Automation" into field "fieldAssignedTo__c"
    When I enter value "Active" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
    Then I softly see value "Active" for title "Assignment Status" inside table "---tableID:-:ApplicationOrganizationRoles---"
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Fiscal Approver" into field "fieldRole__c"
    When I enter value "SPA Automation" into field "fieldAssignedTo__c"
    When I enter value "Active" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
    Then I softly see the text containing :
      | Only one Fiscal Approver can be made active for the organization at any time. |
    #196928
    When I enter value "Fiscal Coordinator" into field "fieldRole__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Active" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
    Then I softly see value "Active" for title "Assignment Status" inside table "---tableID:-:ApplicationOrganizationRoles---"
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Fiscal Coordinator" into field "fieldRole__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Active" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
    Then I softly see the text containing :
      | Only one Fiscal Coordinator can be made active for the organization at any time. |
    #196946
    When I enter value "Authorized Official" into field "fieldRole__c"
    When I enter value "SPA Automation" into field "fieldAssignedTo__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
    Then I softly see value "Inactive" for title "Assignment Status" inside table "---tableID:-:ApplicationOrganizationRoles---"
    When I click on "Edit" icon for "Authorized Official" inside flex table with id "ApplicationOrganizationRoles"
    When I enter value "Active" into field "fieldAssignmentStatus__c"
    And I click on top right button "Save" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    Then I softly see the text containing :
      | Only one Authorized Official can be made active for the organization at any time. |

  @196432 @197074 @197076 @197094 @sprint-8 @userStory-192664
  Scenario: Verify that Program is a lookup field that finds all Active Internal Programs
  | Verify that Organization's profile has a new section called 'Organization Roles'  located after the Contacts section on the layout
  | Verify that the modal has a column for 'Program Name' and the user can select any one program.
  | Verify that the table automatically sorts by the 'Assignment Status' column.
    Given I am on "SUBPORTAL" portal
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    #197074
    When I perform quick search for "PG-SCDE-0005" in "---tableID:-:ApplicationOrganizationRolesModal---" panel
    Then I softly see value "PG-SCDE-0005" for title "EGMS ID" inside table "---tableID:-:ApplicationOrganizationRolesModal---"
    #196432
    Then I see only the following ordered page blocks :
      | Description | Additional Information | Additional Addresses | Contacts | Organization Roles | Approval Steps by Process | Indirect Rates | System Information |
    #197076
    Then I softly see field "Program" inside "Overview" section
    #197094
    Then I softly see content of expected column "Assignment Status" is in "ASC" order of table id "---tableID:-:ApplicationOrganizationRoles---"

  @197991 @197995 @197990 @197986 @197981 @197979 @sprint-8 @userStory-195721
  Scenario: Verify that 'I Agree' is checked and is read-only
  | Verify that I can Attach a document in the Supporting Documents section.
  | Verify that the 'Acknowledgement' section on the Overview tab is read-only
  | Verify that The following statement (static text) is shown:  "I hereby certify that the information provided is accurate and complete.
  | Verify that the button opens a modal window with a section for the 'Acknowledgement'
  | Verify that page level button called 'Complete Acknowledgement'.
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
    When I enter value "No" into field "fieldIsBudgetNarrativeRequired__c"
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
    When I enter value "15" into field "fieldSCDE_Maximum_Indirect_Cost__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I refresh the page
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Allocations" sub tab
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
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Coordinator" into field "fieldRole__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Active" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "SPA Automation" into field "fieldAssignedTo__c"
    When I enter value "Active" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
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
    And I navigate to "Overview" sub tab
    #197991
    Then I softly see value "checked" for title "I Agree" inside table "---tableID:-:ApplicationAcknowledgement---"
    #197995
    And I navigate to "Forms And Files" sub tab
    Then I softly can see top right button "New" in flex table with id "---tableID:-:ApplicationSupportingDocuments---"
    #197990
    And I navigate to "Overview" sub tab
    And I click on "Edit" in the page details
    Then I softly see that "Acknowledgement" rendered in view mode only
    #197986
    And I click on "Complete Acknowledgement" in the page details
    Then I softly see the text :
      | I hereby certify that the information provided is accurate and complete. |
    #197981
    Then I softly see field "fieldTEXTAREAAcknowledgment4__c" inside "Acknowledgement" section
    #197979
    Then I softly can see top right button "Complete Acknowledgement" in page detail

  @196546 @196542 @196541 @196549 @196548 @196547 @196550 @196534 @196529 @196530 @sprint-8 @userStory-195713
  Scenario: Verify "Document Sub-Type" field is a drop-down with options
  | Verify "Document Type" column is a drop-down field with 2 options
  | Verify "Five-Year Period" field should be a dropdown with five-year timespans listed
  | Verify "School Name" column is a dropdown field with five-year timespans listed
  | Verify all the columns available on the table are required on Save
  | Verify external user should able to "Add" multiple lines / entries to the table
  | Verify external user should able to see the Document Version for the plan
  | Verify external user should see "Add" button on the table
  | Verify external user should see "Upload", "Submit" & "Delete" actions on "Actions" column, when plan status = In-Progress.
  | Verify external user should see a table with columns in the Annual Plan tab
    Given I am on "SUBPORTAL" portal
    When I login as "SPI" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I navigate to "Annual Plans" sub tab
    And I click on top right button "Add" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    #196546
    Then I see the following options in dropdown field "DocumentSubType__c" :
      | Initial | Update 1 | Update 2 | Update 3 | Update 4 |
    #196542
    Then I see the following options in dropdown field "DocumentType__c" :
      | CCNA | One Plan |
    #196541
    Then I see the following options in dropdown field "FiveYearPeriod__c" :
      | 2016/17 - 2020/21 | 2017/18 - 2021/22 | 2018/19 - 2022/23 | 2019/20 - 2023/24 | 2020/21 - 2024/25 |
    #196549
    Then I see the following options in dropdown field "SchoolYear__c" :
      | 2016/17 | 2017/18 | 2018/19 | 2019/20 | 2020/21 | 2021/22 | 2022/23 |
    #196548
    And I click on top right button "Save" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    Then I softly see the text :
      | Required Field Missing |
    #196547
    When I enter value "2017/18 - 2021/22" into field "FiveYearPeriod__c"
    When I enter value "2017/18" into field "SchoolYear__c"
    When I enter value "CCNA" into field "DocumentType__c"
    When I enter value "Initial" into field "DocumentSubType__c"
    And I click on top right button "Save" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    Then I softly see value "In-Progress" for title "Status" inside table "---tableID:-:ApplicationAnnualPlans---"
    #196550
    Then I softly see value "1" for title "Document Version" inside table "---tableID:-:ApplicationAnnualPlans---"
    #196534
    Then I softly can see top right button "Add" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    #196529
    Then I softly can see row level action button "Upload" against "In-Progress" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    Then I softly can see row level action button "Submit" against "In-Progress" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    Then I softly can see row level action button "Delete" against "In-Progress" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    #196530
    Then I see only the following ordered headers in table with id "---tableID:-:ApplicationAnnualPlans---" :
      | Five-Year Period | School Year | Document Type | Document Sub-Type | Document Version | Status | Last Submitted By | Last Submitted On | Document Link | Actions |

  @198681 @198680 @198686 @199147 @198685 @198675 @198677 @198676 @198678 @198682 @198671 @sprint-8 @userStory-197015
  Scenario: Verify that School field is lookup filters out facilities.
  | Verify that the "School" field is a lookup to all schools associated with the organization.
  | Verify that user can View the contact record after creating contact.
  | Verify that "School" field is displayed on View contact modal
  | Verify that validation message is displayed  if I select the System Role as 'School User', then I must select a School
  | Verify that WAC user create new contact the modal is shows  Role field is updated to show the following dropdown options, in this order: i.  Primary  ii.  School User iii.  Non-User
  | Verify that WAC user create new contact the modal shows 'System Role' has help text saying:   For contacts within your organization who you wish to become a user of the system, select 'Primary.' For a school contact within your district who you wish to be.
  | Verify that WAC user create new contact the modal shows Role field is relabeled to be 'System Role'
  | Verify that WAC user create new contact the modal shows new field for "School"
  | Verify that WAC user new contact is created the modal shows the "Contact type" is hidden
  | Verify that when WAC user create a new contact then the modal shows the Organization' field is updated to populate with the logged in users organization and is read-only.
    Given I am on "SUBPORTAL" portal
    When I login as "SPIWAC" user
    And I navigate to "Home" tab
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationContacts---"
    #198681 #198680
    When I click search icon for look up field "School" with clearing
    When I perform quick search for "0160001" in "---tableID:-:ApplicationContactsModal---" panel
    Then I softly see value "Abbeville High" for title "School Name" inside table "---tableID:-:ApplicationContactsModal---"
    #198686
    When I enter value "Automation" into field "fieldFirstName"
    When I enter value "Testing" into field "fieldLastName"
    When I enter value "(897) 898-7654" into field "fieldPhone"
    And I enter email id "testmailDrop" into field "fieldEmail"
    When I enter value "Primary" into field "fieldUserRole__c"
    When I enter value "1133 Fifteenth St. N.W., Suite 1000" into field "fieldMailingStreet"
    When I enter value "Washington" into field "fieldMailingCity"
    When I enter value "HI" into field "fieldState__c"
    When I enter value "67848" into field "fieldMailingPostalCode"
    And I click modal button "Save"
    And I close modal by clicking the top right x button
    And I click on "View" icon for "Automation Testing" inside flex table with id "---tableID:-:ApplicationContacts---"
    Then I softly see "View Contact" inside page block detail
    #199147
    Then I softly see field "School" inside "Contact Information" section
    #198685
    And I close modal by clicking the top right x button
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationContacts---"
    When I enter value "Automation" into field "fieldFirstName"
    When I enter value "Engineer" into field "fieldLastName"
    When I enter value "(997) 998-7654" into field "fieldPhone"
    And I enter email id "testmail" into field "fieldEmail"
    When I enter value "School User" into field "fieldUserRole__c"
    When I enter value "1133 Fifteenth St. N.W." into field "fieldMailingStreet"
    When I enter value "Washington" into field "fieldMailingCity"
    When I enter value "AK" into field "fieldState__c"
    When I enter value "47848" into field "fieldMailingPostalCode"
    And I click modal button "Save"
    Then I softly see the text containing :
      | If the 'System Role' for the contact is 'School User,' the school to which the contact belongs must be selected. |
    #198675
    Then I see the following options in dropdown field "fieldUserRole__c" :
      | Primary  | School User | Non-User |
    #198677
    And I hovering mouse on help text icon inside page block detail "System Role"
    Then I see "For contacts within your organization who you wish to become a user of the system, select 'Primary.' For a school contact within your district who you wish to become a user of the system, select 'School User.'" shown as help text
    #198676
    Then I softly see field "System Role" inside "Contact Information" section
    #198678
    Then I softly see field "School" inside "Contact Information" section
    #198682
    Then I softly do not see "Contact type" inside page block detail
    #198671
    Then I softly see field "Organization" as "TEXAS BEAR CREEK STORAGE"
    Then I softly see that "Organization" rendered in view mode only

  @196921 @198032 @197381 @196863 @196861 @196884 @196877 @196874 @196886 @196920 @196922 @196924 @196895 @196925 @sprint-8 @userStory-194813
  Scenario: Verify external user (Prog Coordinator) should see the Fiscal Coordinator assigned to the organization is assigned for that approval step, if there is NO Fiscal Coordinator assigned to the program related to the application.
  | Verify external user (Program Coordinator) should see the order of the steps properly
  | Verify external user (Program Coordinator) should not able to create application and see validation, when two approval steps are assigned to the same user on the org
  | Verify external user (Program Coordinator) should see a new section called "Approvers" under Responsibilities tab in application.
  | Verify external user (Program Coordinator) should see a new tab "Responsibilities" on the application
  | Verify external user (Program Coordinator) should see both Step1 & Step2 approvals on application, if org level approval Step is set to Step1 for  Fiscal Approver and Step2 for Program Approver for the application [Two step approval].
  | Verify external user (Program Coordinator) should see both Step1 & Step2 approvals on application, if org level approval Step is set to Step1 for Program Approver and Step2 for Fiscal Approver for the application [Two step approval].
  | Verify external user (Program Coordinator) should see only Step1 approval on application, if org level approval Step is set to Step1 for Fiscal Approver for the application [Single step approval].
  | Verify external user (Program Coordinator) should see the approval step populates with the assigned user, if there is a Program Approver assigned to the program related to the application.
  | Verify external user (Program Coordinator) should see the approver name on application, if on org table Fiscal Coordinator is assigned to the program related to the application.
  | Verify external user (Program Coordinator) should see the Name as blank on application if there is a Fiscal Approver step set up in the Approval Steps table, and there is not a Fiscal Coordinator assigned to the program or to the organization
  | Verify external user (Program Coordinator) should see the Name as blank on application, if assigned approver's user account is 'Inactive'
  | Verify external user (Program Coordinator) should see the Name as blank on application's approval process, if there is no Program Approver assigned to the program related to the application.
  | Verify the external user (Program Coordinator) should see the Approver's section help text
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
    When I enter value "No" into field "fieldIsBudgetNarrativeRequired__c"
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
    When I enter value "15" into field "fieldSCDE_Maximum_Indirect_Cost__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I refresh the page
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Allocations" sub tab
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
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Active" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Fiscal Coordinator" into field "fieldRole__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Active" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
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
    And I navigate to "Responsibilities" sub tab
    #196921 #198032
    Then I softly see value "Fiscal Coordinator" for title "Name" inside table "---tableID:-:ApplicationApprovers---"
    Then I softly see value "Step 2" for title "Approval Step" inside table "---tableID:-:ApplicationApprovers---"
    #197381
    When I click on "Edit" icon for "Step 1" inside flex table with id "---tableID:-:ApplicationApprovers---"
    When I enter value "Fiscal Coordinator" into field "fieldRole__c"
    When I click on "Save" in the page details
    Then I softly see the text containing :
      | The application cannot be created because two approval steps are assigned to the same user. Contact your organization's Web Accessibility Coordinator (WAC) to update the approval assignments before creating the application |
    #196863
    Then I softly see that "Approvers" rendered in view mode only
    #196861
    Then I softly can see "Responsibilities" sub tab at view detail page
    #196884
    Then I softly see value "Program Approver" for title "Name" inside table "---tableID:-:ApplicationApprovers---"
    #196877
    Then I softly see value "Step 1" for title "Approval Step" inside table "---tableID:-:ApplicationApprovers---"
    #196874
    Then I softly see value "Fiscal Coordinator" for title "Name" inside table "---tableID:-:ApplicationApprovers---"
    #196886
    Then I softly see value "Step 2" for title "Approval Step" inside table "---tableID:-:ApplicationApprovers---"
    #196920
    And I logout
    Given I am on "SUBPORTAL" portal
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Fiscal Approver" into field "fieldRole__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Active" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
    And I logout
    Given I am on "SUBPORTAL" portal
    When I login as "SPI" user
    And I navigate to "Applications" tab
    When I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:PublishedOpportunities---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:PublishedOpportunities---"
    And I navigate to "Responsibilities" sub tab
    Then I softly see value "Fiscal Approver" for title "Name" inside table "---tableID:-:ApplicationApprovers---"
    #196922
    Then I softly see value "Step 1" for title "Approval Step" inside table "---tableID:-:ApplicationApprovers---"
    #196924
    Then I softly see value "" for title "Name" inside table "---tableID:-:ApplicationApprovers---"
    Then I softly see value "Step 2" for title "Approval Step" inside table "---tableID:-:ApplicationApprovers---"
    #196895
    And I logout
    Given I am on "SUBPORTAL" portal
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Fiscal Approver" into field "fieldRole__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
    And I logout
    Given I am on "SUBPORTAL" portal
    When I login as "SPI" user
    And I navigate to "Applications" tab
    When I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:PublishedOpportunities---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:PublishedOpportunities---"
    And I navigate to "Responsibilities" sub tab
    Then I softly see value "" for title "Name" inside table "---tableID:-:ApplicationApprovers---"
    #196925
    And I hovering mouse on help text icon inside page block detail "Approvers"
    Then I softly see "Approvers can be edited by the organization's WAC user, if needed." shown as help text

  @190658 @190661 @190933 @190656 @190664 @190667 @190660 @190657 @189355 @189278 @sprint-5 @userStory-187894
  Scenario: Verify announcement owner should see the review records for the review form in the Review section of the Review Step, when "Review Response Shared" is NO for a given review form within a review step
  | Verify announcement user should see "Average Weighted Score" column in parent table and "Average Score" column in nested table in the Application section of the Review step, when "Review Response Shared" is NO for any review form within a review step.
  | Verify announcement users (excluding assigned reviewer & announcement owner) should see "Average Weighted Score" column (parent table) and "Average Score" column (nested table), when "Review Response Shared" is YES for any review form within a review step.
  | Verify the label name of  "Recommendations" column should get changed to "Requested Review(s)" in the Applications section (nested table) of Review Step page.
  | Verify any internal user (excluding assigned reviewer and announcement owner) should view the completed review record for that review form, when 'Review Response Shared' flag is YES for a given review form within a review step.
  | Verify any internal users (excluding assigned reviewer & announcement owner) should see "Average Weighted Score" column (parent table) and "Average Score" (nested table), when "Review Response Shared" is YES for any review form within a review step.
  | Verify assigned reviewer should not see "Average Weighted Score" column in parent table and "Average Score" column in nested table in the Application section of Review step, when "Review Response Shared" is NO for any review form within a review step.
  | Verify assigned reviewer should see the review records for the review form in the Review section of the Review Step, when "Review Response Shared" is NO for a given review form within a review step
  | Verify internal user should see the "Review Response Shared" column in the Application section (nested table) of Review Step page.
  | Verify internal user should see the "Review Response Shared" column in the Forms section of Review Step page
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
    When I enter value "No" into field "fieldIsBudgetNarrativeRequired__c"
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
    When I enter value "15" into field "fieldSCDE_Maximum_Indirect_Cost__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I refresh the page
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Allocations" sub tab
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
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
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
    And I navigate to "Budget" sub tab
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
    And I navigate to "Forms and Files" sub tab
    When I click on "Edit" icon for "No" inside flex table with id "---tableID:-:ApplicationForms---"
    When I enter the following values into flex table with id "---tableID:-:StakeholderParticipants---" by clicking "Add" :
      | Participant’s Name | School Name | Role    | Stakeholder Representation |
      | Automation         | Dixie High  | Teacher | School within District     |
    And I click on "Save" in the page details
    And I click on "Back" in the page details
    When I click on "Edit" icon for "No" inside flex table with id "---tableID:-:ApplicationForms---"
    When I enter value "Yes" into field "IsFormValidated__c"
    And I click on "Submit for Approval" in the page details
    When I "Approve" in the approval decision
    And I softly see field "Status" as "Approved for Submission"
    And I click on "Submit Application to Grantor" in the page details
    And I softly see field "Status" as "Submitted"
    And I logout
    Given I am on "INTERNAL" portal
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Applications" tab
    When I navigate to "Reviews" content inside "Application Reviews" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:ApplicationReviews---" panel
    And I click on "Initiate Review Process" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:ApplicationReviews---"
    And I navigate to "Related Log" sub tab
    And I click on "View" icon for "Pre-Screen Review" inside flex table with id "---tableID:-:AnnouncementReviewStep---"
    #190658
    Then I softly see value "AP-SCDE-236" for title "Application EGMS ID" inside table "---tableID:-:Reviews---"
    #190661
    Then I see only the following ordered headers in table with id "---tableID:-:ApplicationFormsRevision---" :
      | EGMS ID | Application Title | Applicant Organization | Minimum Reviews | Average Weighted Score | Decision Status | Application Status | Actions |
    #190933 #190656
    And I expand nested table containing column value "VD_TestOrg"
    Then I see only the following ordered headers in table with id "---tableID:-:ReviewForms---" :
      | Form Name | Reviews Assigned | Reviews Required | Requested Review(s) | Average Score | Minimum Number of Reviews Completed | Review Response Shared |
    #190664
    Then I softly see value "Checked" for title "Minimum Number of Reviews Completed" inside table "---tableID:-:ReviewForms---"
    #190667
    And I refresh the page
    Then I softly see value "N/A" for title "Average Weighted Score" inside table "---tableID:-:ApplicationFormsRevision---"
    #190660
    And I expand nested table containing column value "VD_TestOrg"
    Then I softly see value "N/A" for title "Average Score" inside table "---tableID:-:ReviewForms---"
    #190657
    And I refresh the page
    Then I softly see value "Assigned" for title "Status" inside table "---tableID:-:Reviews---"
    #189355
    And I expand nested table containing column value "VD_TestOrg"
    Then I softly see value "Yes" for title "Review Response Shared" inside table "---tableID:-:ReviewForms---"
    #189278
    And I click on "Back to Announcement" in the page details
    And I navigate to "Setup" sub tab
    Then I see only the following ordered headers in table with id "---tableID:-:ApplicationForms---" :
      | form Name | Minimum Number of Reviews Required | Number of Applications | Form Weight(%) | Required? | Due in Days | Review Response Shared | Actions |

  @198717 @198718 @198698 @198721 @198720 @198719 @198722 @sprint-8 @userStory-197138
  Scenario: Verify that when I 'Edit' a contact that is not a user 'System Role' has help text saying: For contacts within your organization who you wish to become a user of the system, select 'Primary.' For a school contact within your district who you wish to be.
  | Verify that when I 'Edit' a contact that is not a user and who is not yet invited to register, the modal  shows new field for "School".
  | Verify that when I 'Edit' a contact that is not a user and who is not yet invited to register, the modal  shows Role field is relabeled to be 'System Role'.
  | Verify that when I 'Edit' a contact that is not a user and who is not yet invited to register, the modal  shows the "Contact type" is hidden.
  | Verify that School field is lookup filters out facilities.
  | Verify that the "School" field is a lookup to all schools associated with the organization.
  | Verify that validation message is displayed  if I select the System Role as 'School User', then I must select a School
    Given I am on "SUBPORTAL" portal
    When I login as "SPIWAC" user
    And I navigate to "Home" tab
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationContacts---"
    When I enter value "Automation" into field "fieldFirstName"
    When I enter value "Testing" into field "fieldLastName"
    When I enter value "(897) 898-7654" into field "fieldPhone"
    And I enter email id "testmailDrop" into field "fieldEmail"
    When I enter value "Non-User" into field "fieldUserRole__c"
    When I enter value "1133 Fifteenth St. N.W., Suite 1000" into field "fieldMailingStreet"
    When I enter value "Washington" into field "fieldMailingCity"
    When I enter value "HI" into field "fieldState__c"
    When I enter value "67848" into field "fieldMailingPostalCode"
    And I click modal button "Save"
    And I close modal by clicking the top right x button
    And I click on "Edit" icon for "Automation Testing" inside flex table with id "---tableID:-:ApplicationContacts---"
    And I hovering mouse on help text icon inside page block detail "System Role"
    #198717
    Then I softly see the text containing :
      | For contacts within your organization who you wish to become a user of the system, select 'Primary.' For a school contact within your district who you wish to become a user of the system, select 'School User.' |
    #198718
    Then I softly see field "School" inside "Contact Information" section
    #198698
    Then I softly see field "System Role" inside "Contact Information" section
    #198721
    Then I softly do not see "Contact type" inside page block detail
    #198720 #198719
    When I click search icon for look up field "School" with clearing
    When I perform quick search for "0160001" in "---tableID:-:ApplicationContactsModal---" panel
    Then I softly see value "Abbeville High" for title "School Name" inside table "---tableID:-:ApplicationContactsModal---"
    #198722
    And I close modal by clicking the top right x button
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationContacts---"
    When I enter value "Automation" into field "fieldFirstName"
    When I enter value "Engineer" into field "fieldLastName"
    When I enter value "(997) 998-7654" into field "fieldPhone"
    And I enter email id "testmail" into field "fieldEmail"
    When I enter value "School User" into field "fieldUserRole__c"
    When I enter value "1133 Fifteenth St. N.W." into field "fieldMailingStreet"
    When I enter value "Washington" into field "fieldMailingCity"
    When I enter value "AK" into field "fieldState__c"
    When I enter value "47848" into field "fieldMailingPostalCode"
    And I click modal button "Save"
    Then I softly see the text containing :
      | If the 'System Role' for the contact is 'School User,' the school to which the contact belongs must be selected. |

  @200239 @200263 @200254 @sprint-9 @userStory-197350
  Scenario: Verify Notify button on Allocation By School section in Budget tab
  | Verify that user can select Yes on warning message and the system completes the notification
  | Verify that when user Notify a school, the 'Allow Budget Edits?' column is set to Yes.
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
    When I enter value "No" into field "fieldIsBudgetNarrativeRequired__c"
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
    When I enter value "15" into field "fieldSCDE_Maximum_Indirect_Cost__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I refresh the page
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Allocations" sub tab
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
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
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
    And I navigate to "Budget" sub tab
    #200239
    Then I softly can see top right button "Notify" in flex table with id "---tableID:-:ApplicationAllocationsBySchool---"
    #200263
    And I click on top right button "Notify" in flex table with id "---tableID:-:ApplicationAllocationsBySchool---"
    Then I softly see value "Yes" for title "School Notified?" inside table "---tableID:-:ApplicationAllocationsBySchool---"
    #200254
    Then I softly see value "Yes" for title "Allow Budget Edits?" inside table "---tableID:-:ApplicationAllocationsBySchool---"

  @199143 @199130 @199136 @199135 @199134 @199133 @199137 @199129 @199140 @199142 @sprint-9 @userStory-184842
  Scenario: Verify that CCNA user cannot skip an update that has an in-progress entry for the previous update for a given five-year period.
  | Verify that external user can enter a CCNA with Document Sub -type -Initial
  | Verify that for CCNA plane user should not be able to select the school year outside of the five-year period
  | Verify that CCNA user cannot skip an update that has an submitted entry for the previous update for a given five-year period.
  | Verify that CCNA user cannot skip an update that has an retracted entry for the previous update for a given five-year period.
  | Verify that for CCNA entry user cannot add the new back dated entry or a given CCNA that has an approved status
  | Verify that for CCNA entry user cannot add the new back dated entry or a given CCNA that has an in-progress
  | Verify that for CCNA entry user cannot add the new back dated entry or a given CCNA that has an submitted status
  | Verify that for CCNA entry user cannot add the new back dated entry or a given CCNA that has an retract status
  | Verify that the validation is displayed for correct school year on  CCNA for selected document subtype - initial
    Given I am on "SUBPORTAL" portal
    When I login as "SPI" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I navigate to "Annual Plans" sub tab
    And I click on top right button "Add" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    When I enter value "2016/17 - 2020/21" into field "FiveYearPeriod__c"
    When I enter value "2016/17" into field "SchoolYear__c"
    When I enter value "CCNA" into field "DocumentType__c"
    When I enter value "Update 2" into field "DocumentSubType__c"
    And I click on top right button "Save" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    #199143
    Then I softly see the text :
      | For the selected Five-Year Period, you cannot skip an update. |
    #199130
    When I enter value "Initial" into field "DocumentSubType__c"
    And I click on top right button "Save" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    Then I softly see value "Initial" for title "Document Sub-Type" inside table "---tableID:-:ApplicationAnnualPlans---"
    #199136
    And I click on top right button "Add" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    When I enter value "2016/17 - 2020/21" into field "FiveYearPeriod__c"
    When I enter value "2022/23" into field "SchoolYear__c"
    When I enter value "CCNA" into field "DocumentType__c"
    When I enter value "Initial" into field "DocumentSubType__c"
    And I click on top right button "Save" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    Then I softly see the text :
      | For the selected Five-Year One Plan, and Document Sub-Type, select a valid School Year. The School Year must align with the document sub-type being added for the five year period. |
    #199135
    And I click on top right button "Add" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    When I enter value "2016/17 - 2020/21" into field "FiveYearPeriod__c"
    When I enter value "2016/17" into field "SchoolYear__c"
    When I enter value "CCNA" into field "DocumentType__c"
    When I enter value "Update 3" into field "DocumentSubType__c"
    And I click on top right button "Save" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    And I click on "Submit" icon for "In-Progress" inside flex table with id "---tableID:-:ApplicationAnnualPlans---"
    Then I softly see value "Submitted" for title "Status" inside table "---tableID:-:ApplicationAnnualPlans---"
    And I click on top right button "Add" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    When I enter value "2016/17 - 2020/21" into field "FiveYearPeriod__c"
    When I enter value "2016/17" into field "SchoolYear__c"
    When I enter value "CCNA" into field "DocumentType__c"
    When I enter value "Update 2" into field "DocumentSubType__c"
    And I click on top right button "Save" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    Then I softly see the text containing :
      | For the selected Five-Year Period, you cannot skip an update. |
   #199134
    And I click on "Retract" icon for "Submitted" inside flex table with id "---tableID:-:ApplicationAnnualPlans---"
    Then I softly see value "Retracted" for title "Status" inside table "---tableID:-:ApplicationAnnualPlans---"
    And I click on top right button "Add" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    When I enter value "2016/17 - 2020/21" into field "FiveYearPeriod__c"
    When I enter value "2016/17" into field "SchoolYear__c"
    When I enter value "CCNA" into field "DocumentType__c"
    When I enter value "Update 3" into field "DocumentSubType__c"
    And I click on top right button "Save" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    Then I softly see the text containing :
      | For the selected Five-Year Period, you cannot skip an update. |
    #199133
    And I click on "Approve" icon for "Retracted" inside flex table with id "---tableID:-:ApplicationAnnualPlans---"
    Then I softly see value "Approved" for title "Status" inside table "---tableID:-:ApplicationAnnualPlans---"
    And I click on top right button "Add" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    When I enter value "2016/17 - 2020/21" into field "FiveYearPeriod__c"
    When I enter value "2017/18" into field "SchoolYear__c"
    When I enter value "CCNA" into field "DocumentType__c"
    When I enter value "Update 1" into field "DocumentSubType__c"
    And I click on top right button "Save" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    Then I softly see the text containing :
      | For the selected Five-Year Period, you cannot add a backdated CCNA or One Plan. |
    #199137
    And I click on top right button "Add" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    When I enter value "2016/17 - 2020/21" into field "FiveYearPeriod__c"
    When I enter value "2016/17" into field "SchoolYear__c"
    When I enter value "CCNA" into field "DocumentType__c"
    When I enter value "Update 1" into field "DocumentSubType__c"
    And I click on top right button "Save" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    Then I softly see value "In-Progress" for title "Status" inside table "---tableID:-:ApplicationAnnualPlans---"
    And I click on top right button "Add" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    When I enter value "2016/17 - 2020/21" into field "FiveYearPeriod__c"
    When I enter value "2017/18" into field "SchoolYear__c"
    When I enter value "CCNA" into field "DocumentType__c"
    When I enter value "Update 1" into field "DocumentSubType__c"
    And I click on top right button "Save" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    Then I softly see the text containing :
      | For the selected Five-Year Period, you cannot add a backdated CCNA or One Plan. |
    #199129
    And I click on "Submit" icon for "In-Progress" inside flex table with id "---tableID:-:ApplicationAnnualPlans---"
    Then I softly see value "Submitted" for title "Status" inside table "---tableID:-:ApplicationAnnualPlans---"
    And I click on top right button "Add" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    When I enter value "2018/19- 2022/23" into field "FiveYearPeriod__c"
    When I enter value "2019/20" into field "SchoolYear__c"
    When I enter value "CCNA" into field "DocumentType__c"
    When I enter value "Update 1" into field "DocumentSubType__c"
    And I click on top right button "Save" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    Then I softly see the text containing :
      | For the selected Five-Year Period, you cannot add a backdated CCNA or One Plan. |
    #199140
    And I click on "Retract" icon for "Submitted" inside flex table with id "---tableID:-:ApplicationAnnualPlans---"
    Then I softly see value "Retracted" for title "Status" inside table "---tableID:-:ApplicationAnnualPlans---"
    And I click on top right button "Add" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    When I enter value "2018/19- 2022/23" into field "FiveYearPeriod__c"
    When I enter value "2019/20" into field "SchoolYear__c"
    When I enter value "CCNA" into field "DocumentType__c"
    When I enter value "Update 1" into field "DocumentSubType__c"
    And I click on top right button "Save" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    Then I softly see the text containing :
      | For the selected Five-Year Period, you cannot add a backdated CCNA or One Plan. |
    #199142
    And I click on top right button "Add" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    When I enter value "2016/17- 2020/21" into field "FiveYearPeriod__c"
    When I enter value "2017/18" into field "SchoolYear__c"
    When I enter value "CCNA" into field "DocumentType__c"
    When I enter value "Initial" into field "DocumentSubType__c"
    And I click on top right button "Save" in flex table with id "---tableID:-:ApplicationAnnualPlans---"
    Then I softly see the text containing :
      | For the selected Five-Year One Plan, and Document Sub-Type, select a valid School Year. The School Year must align with the document sub-type being added for the five year period. |

  @198873 @198727 @198679 @198659 @198662 @198667 @198687 @198724 @sprint-9 @userStory-197210
  Scenario: UI- Verify the Add/Update Detailed Budget modal's UI on Add as an external school user, when subrecipient match = No on announcement
  | UI- Verify the function code table of Budget section on application Budget tab as an external school user, when subrecipient match[Cash Match and Non Cash] is No on announcement
  | UI- Verify the Add/Update Detailed Budget modal's UI on Add as an external school user, when subrecipient match = No on announcement
  | UI- Verify the Budget section on application as an external school user
  | UI- Verify the function code table of Budget section on application Budget tab as an external school user, when subrecipient match[Cash Match and Non Cash] is No on announcement
  | Verify external school user should able to add own school's budget, if the "Budget Open for Edits? " = Yes
  | Verify external school user should not see "Budget for" and "School" field as auto-populated and as read only on application's budget, when on announcement Detailed Budgeting Option is not 'School'.
  | Verify external school user should see the budget values in the roll-up fields for own school, in the child table.
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
    When I enter value "No" into field "fieldIsBudgetNarrativeRequired__c"
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
    And I refresh the page
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Allocations" sub tab
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
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
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
    And I navigate to "Budget" sub tab
    And I click on "Save" in the page details
    And I expand nested table containing column value "BP01"
    When I click on "Add" icon for "110 - General Instruction" inside flex table with id "---tableID:-:ApplicationBudgetPeriod---"
    #198873 #198727
    Then I softly do not see field "Cash Match" inside "Details" section
    Then I softly do not see field "Non Cash Match" inside "Details" section
    Then I softly do not see field "Total Match" inside "Details" section
    Then I softly do not see field "Total Project Cost" inside "Details" section
    #198679
    Then I softly see field "Object Code" inside "Details" section
    Then I softly see field "Award Total" inside "Details" section
    Then I softly see field "Budget For" inside "Details" section
    #198659
    And I close modal by clicking the top right x button
    And I expand nested table containing column value "BP01"
    Then I softly see "Focus Area" inside page block detail
    #198662
    When I click on "Add" icon for "110 - General Instruction" inside flex table with id "---tableID:-:ApplicationBudgetPeriod---"
    When I enter value "100 - Salaries" into field "fieldMST_Budget_Category__c"
    When I enter value "1" into field "fieldQuantity__c"
    When I enter value "1000" into field "fieldUnitPrice__c"
    When I enter value "Schoolwide" into field "fieldSCDE_BudgetFor__c"
    When I enter value "Wright Middle" into field "fieldSchool__c"
    When I enter value "test" into field "fieldNarrative__c"
    And I click modal button "Save"
    And I expand nested table containing column value "BP01"
    Then I see only the following ordered headers in table with id "---tableID:-:ApplicationBudgetPeriod---" :
      | Function Code | Award Total | Cash Match | Non Cash Match | Total Match | Total Project Cost | Actions |
    #198667
    When I click on "Add" icon for "110 - General Instruction" inside flex table with id "---tableID:-:ApplicationBudgetPeriod---"
    Then I softly see field "fieldSCDE_BudgetFor__c" inside "Details" section
    #198687
    And I softly see field "School" as "Wright Middle"
    Then I softly see that "School" rendered in view mode only
    #198724
    And I close modal by clicking the top right x button
    And I expand nested table containing column value "BP01"
    Then I softly see value "$1000.00" for title "Award Total" inside table "---tableID:-:ApplicationBudgetPeriod---"

  @199110 @199132 @199111 @199112 @sprint-9 @userStory-197213
  Scenario: Verify that program coordinator can add new build-up budget items.
  | Verify that program coordinator if select a school that is listed in the Allocations By School table, validation message  is not displayed on saving.
  | Verify that program coordinator can view, edit, or delete any build-up budget item.
  | Verify that program coordinator if select a school that is not listed in the Allocations By School table, validation message  is displayed on saving.
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
    When I enter value "No" into field "fieldIsBudgetNarrativeRequired__c"
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
    And I refresh the page
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Allocations" sub tab
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
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
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
    And I navigate to "Budget" sub tab
    And I click on "Save" in the page details
    And I expand nested table containing column value "BP01"
    #199110
    Then I softly can see row level action button "Add" against "110 - General Instruction" in flex table with id "---tableID:-:ApplicationBudgetPeriod---"
    #199132
    When I click on "Add" icon for "110 - General Instruction" inside flex table with id "---tableID:-:ApplicationBudgetPeriod---"
    When I enter value "100 - Salaries" into field "fieldMST_Budget_Category__c"
    When I enter value "2" into field "fieldQuantity__c"
    When I enter value "200" into field "fieldUnitPrice__c"
    When I enter value "Schoolwide" into field "fieldSCDE_BudgetFor__c"
    When I enter value "Abbeville High" into field "fieldSchool__c"
    When I enter value "testing" into field "fieldNarrative__c"
    And I click modal button "Save"
    Then I softly see value "110 - General Instruction" for title "Function Code" inside table "---tableID:-:ApplicationBudgetPeriod---"
    #199111
    And I expand nested table containing column value "BP01"
    And I expand nested table containing column value "110 - General Instruction"
    Then I softly can see row level action button "View" against "100 - Salaries" in flex table with id "---tableID:-:ApplicationBudgetPeriod---"
    Then I softly can see row level action button "Edit" against "100 - Salaries" in flex table with id "---tableID:-:ApplicationBudgetPeriod---"
    Then I softly can see row level action button "Delete" against "100 - Salaries" in flex table with id "---tableID:-:ApplicationBudgetPeriod---"
    #199112
    And I refresh the page
    And I expand nested table containing column value "BP01"
    When I click on "Add" icon for "110 - General Instruction" inside flex table with id "---tableID:-:ApplicationBudgetPeriod---"
    When I enter value "100 - Salaries" into field "fieldMST_Budget_Category__c"
    When I enter value "2" into field "fieldQuantity__c"
    When I enter value "200" into field "fieldUnitPrice__c"
    When I enter value "Schoolwide" into field "fieldSCDE_BudgetFor__c"
    When I enter value "Abbeville High" into field "fieldSchool__c"
    When I enter value "testing" into field "fieldNarrative__c"
    And I click modal button "Save"
    Then I softly see the text containing :
    | Schoolwide budget items can only be added for schools listed in the 'Allocations By School' section. |

  @199759 @199747 @199744 @198964 @198962 @198963 @198650 @198655 @198651 @200060 @198652 @198707 @198710 @sprint-9 @userStory-197037
  Scenario: Verify if approvers are same for both steps on Org Role assignment, then WAC user should see the validation on the click of "Update Role Assignments" on application.
  | Verify if Fiscal Coordinators not present on Org Role assignment, then WAC user should see validation on the click on "Update Role Assignment" button on application
  | Verify WAC user should see the confirmation message upon hitting "Update Role Assignments" button on application
  | Verify WAC should able to update Fiscal Coordinator to Step1, if there is a Step2 approver.
  | Verify WAC user should able to update the steps for fiscal coordinator and prog approver role. (step2 = prog approver & step1 = fiscal approver)
  | Verify WAC should able to update Program Approver to Step1, if there is no Step 2 approver.
  | Verify WAC user should able to see a page-level button as 'Update Role Assignments' when application is in created state.
  | Verify WAC user should able to update the Program Coordinators role assignments, when application is in Created state.
  | Verify WAC user should able to see a page-level button as 'Update Role Assignments' when application is in "Approved for Submission" state.
  | Verify WAC user should able to update the Authorized Officials role assignments, when application is in Approved for Submission state.
  | Verify WAC user should able to see a page-level button as 'Update Role Assignments' when application is in "Revision Initiated" state.
  | Verify WAC user should able to update the Program Coordinators role assignments when application is in Revision Initiated state.
  | Verify WAC user should able to update the Program Approvers, Fiscal Coordinators role assignments, when application is in Revision Initiated state.
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
    When I enter value "No" into field "fieldIsBudgetNarrativeRequired__c"
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
    And I refresh the page
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Allocations" sub tab
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
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "SPIWAC Automation" into field "fieldAssignedTo__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "Active" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Fiscal Coordinator" into field "fieldRole__c"
    When I enter value "SPIWAC Automation" into field "fieldAssignedTo__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
    And I navigate to "Opportunities" tab
    When I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:PublishedOpportunities---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:PublishedOpportunities---"
    When I click on "Qualify" in the page details
    And I softly see field "Status" as "Qualified"
    And I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    And I navigate to "Responsibilities" sub tab
    And I click on top right button "Update Role Assignments" in flex table with id "---tableID:-:ApplicationApprovers---"
    #199759
    Then I softly see the text containing :
      | The role assignments cannot be updated because the same user is assigned as program approver and fiscal coordinator in the Organization Roles section. The 'Web-Access Coordinator (WAC)' must first update the assignments in the Organization Roles section in the organization's profile before updating the role assignments for this application. |
    #199747
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Coordinator" into field "fieldRole__c"
    When I enter value "SPIWAC Automation" into field "fieldAssignedTo__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
    And I navigate to "Applications" tab
    When I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:PublishedOpportunities---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:PublishedOpportunities---"
    And I navigate to "Responsibilities" sub tab
    And I click on top right button "Update Role Assignments" in flex table with id "---tableID:-:ApplicationApprovers---"
    Then I softly see the text containing :
      | The organization does not have Fiscal Coordinator assigned for this program or for the organization. |
    #199744
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Fiscal Approver" into field "fieldRole__c"
    When I enter value "SPIWAC Automation" into field "fieldAssignedTo__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
    And I navigate to "Applications" tab
    When I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:PublishedOpportunities---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:PublishedOpportunities---"
    And I navigate to "Responsibilities" sub tab
    And I click on top right button "Update Role Assignments" in flex table with id "---tableID:-:ApplicationApprovers---"
    Then I softly see the text containing :
      | The role assignments for this application will be updated. Are you sure you want to proceed? |
    #198964 #198962
    And I click modal button "Yes"
    Then I softly see value "Fiscal Approver" for title "Name" inside table "---tableID:-:ApplicationApprovers---"
    #198963
    Then I softly see value "Step 1" for title "Approval Step" inside table "---tableID:-:ApplicationApprovers---"
    #198650
    Then I softly can see top right button "Update Role Assignments" in flex table with id "---tableID:-:ApplicationApprovers---"
    #198655
    Then I softly can see top right button "Edit" in page detail
    #198651
    And I navigate to "Budget" sub tab
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
    And I navigate to "Forms and Files" sub tab
    When I click on "Edit" icon for "No" inside flex table with id "---tableID:-:ApplicationForms---"
    When I enter the following values into flex table with id "---tableID:-:StakeholderParticipants---" by clicking "Add" :
      | Participant’s Name | School Name | Role    | Stakeholder Representation |
      | Automation         | Dixie High  | Teacher | School within District     |
    And I click on "Save" in the page details
    And I click on "Back" in the page details
    When I click on "Edit" icon for "No" inside flex table with id "---tableID:-:ApplicationForms---"
    When I enter value "Yes" into field "IsFormValidated__c"
    And I click on "Submit for Approval" in the page details
    When I "Approve" in the approval decision
    And I softly see field "Status" as "Approved for Submission"
    Then I softly can see top right button "Update Role Assignments" in flex table with id "---tableID:-:ApplicationApprovers---"
    #200060
    Then I softly can see top right button "Submit Application to Grantor" in page detail
    #198652
    And I click on "Submit Application to Grantor" in the page details
    And I softly see field "Status" as "Submitted"
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
    When I login as "SPIWAC" user
    And I navigate to "Applications" tab
    When I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:PublishedOpportunities---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:PublishedOpportunities---"
    And I navigate to "Responsibilities" sub tab
    Then I softly can see top right button "Update Role Assignments" in flex table with id "---tableID:-:ApplicationApprovers---"
    #198707
    Then I softly cannot see top right button "Edit" in page detail
    #198710
    And I click on top right button "Update Role Assignments" in flex table with id "---tableID:-:ApplicationApprovers---"
    Then I softly see value "Program Approver" for title "Name" inside table "---tableID:-:ApplicationApprovers---"

  @198658 @198663 @199796 @sprint-9 @userStory-197009
  Scenario: Verify that external user do not see section for the Project Information on the Overview tab of the application.
  | Verify that validation for requiring Abstract on 'Submit for Approval' and 'Submit to Grantor' is disabled.
  | Verify that validation for requiring Abstract on 'Submit to Grantor' is disabled.
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
    When I enter value "No" into field "fieldIsBudgetNarrativeRequired__c"
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
    And I refresh the page
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Allocations" sub tab
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
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
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
    And I navigate to "Overview" sub tab
    #198658
    Then I softly do not see "Project Information" page block displayed
    #198663
    And I navigate to "Budget" sub tab
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
    And I navigate to "Forms and Files" sub tab
    When I click on "Edit" icon for "No" inside flex table with id "---tableID:-:ApplicationForms---"
    When I enter the following values into flex table with id "---tableID:-:StakeholderParticipants---" by clicking "Add" :
      | Participant’s Name | School Name | Role    | Stakeholder Representation |
      | Automation         | Dixie High  | Teacher | School within District     |
    And I click on "Save" in the page details
    And I click on "Back" in the page details
    When I click on "Edit" icon for "No" inside flex table with id "---tableID:-:ApplicationForms---"
    When I enter value "Yes" into field "IsFormValidated__c"
    And I click on "Submit for Approval" in the page details
    When I "Approve" in the approval decision
    And I softly see field "Status" as "Approved for Submission"
    #199796
    And I click on "Submit Application to Grantor" in the page details
    And I softly see field "Status" as "Submitted"

  @198994 @198991 @sprint-9 @userStory-197011
  Scenario: Verify that if the announcement has the 'Budget Narrative Required?' setting as No, then the Budget Narrative section is  hidden on the application and the validation requiring budget narrative does not run.
  | Verify that  if the announcement has the 'Budget Narrative Required?' setting as Yes, then the Budget Narrative section is shown on the application.
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
    When I enter value "No" into field "fieldIsBudgetNarrativeRequired__c"
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
    And I refresh the page
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Allocations" sub tab
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
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
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
    And I navigate to "Budget" sub tab
    #198994
    Then I softly do not see "Budget Narrative" inside page block detail
    #198991
    And I logout
    Given I am on "INTERNAL" portal
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
    When I enter value "Yes" into field "fieldIsBudgetNarrativeRequired__c"
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
    And I refresh the page
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Allocations" sub tab
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
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
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
    And I navigate to "Budget" sub tab
    Then I softly see "Budget Narrative" inside page block detail

  @198600 @198601 @sprint-8 @userStory-197020
  Scenario: Verify the Contacts table on Subrecipient Organization's profile, as an internal user
  | Verify the Subrecipient Contacts table on the left navigation as an internal user
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Home" tab
    When I navigate to "Subrecipients" content inside "Organization" subheader on left panel
    When I perform quick search for "MAINE TIMBER MATS LLC" in "---tableID:-:SubrecipientOrganization---" panel
    When I click on "View" icon for "MAINE TIMBER MATS LLC" inside flex table with id "---tableID:-:SubrecipientOrganization---"
    #198600
    Then I see only the following ordered headers in table with id "---tableID:-:ApplicationContacts---" :
      | Name | System Role | School | Email | Phone | Status | Is User | Actions |
    #198601
    When I navigate to "Subrecipients" content inside "Organization" subheader on left panel
    When I perform quick search for "TEXAS BEAR CREEK STORAGE" in "---tableID:-:SubrecipientOrganization---" panel
    When I click on "View" icon for "TEXAS BEAR CREEK STORAGE" inside flex table with id "---tableID:-:SubrecipientOrganization---"
    Then I see only the following ordered headers in table with id "---tableID:-:ApplicationContacts---" :
      | Name | Organization | School | Email | Phone | System Role | Status | Is User | Actions |

  @198615 @199399 @198872 @198617 @sprint-8 @userStory-197028
  Scenario: Verify external school user should not see application in the application list page, if the school user is not given an allocation for the same application.
  | Verify external school user should not see Revisions or Negotiations or Reviews in the left navigation and no other links on its layout
  | Verify external school user should see "View" in the action column of Application list page.
  | Verify external school user should see the application list page table with columns
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Announcements" tab
    When I navigate to "Formula" content inside "Announcements" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:FormulaAnnouncements---"
    When I enter value "Automation Runtime Announcement" into field "fieldAnnouncementName__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    And I click on "Continue" in the page details
    When I enter value "No" into field "fieldIsMatchRequired__c"
    When I enter value "No" into field "fieldRiskAssessment_Required__c"
    When I enter value "No" into field "fieldIsBudgetNarrativeRequired__c"
    When I enter value "No" into field "fieldIsNegotiationsAllowed__c"
    When I enter value "By Applicant and School" into field "fieldSCDE_Allocation_Level__c"
    When I enter value "School" into field "fieldSCDE_Detailed_Budgeting_Options__c"
    And I click modal button "Save and Continue"
    When I enter value "Federal" into field "fieldSCDE_Funding_Source__c"
    When I enter value "test" into field "fieldAnnouncementDescription__c"
    When I enter value "Library" into field "fieldEligibleApplicantTypes__c"
    When I enter value "200" into field "fieldApplicationDueDate__c"
    And I navigate to "Financials" sub tab
    When I enter value "Unrestricted" into field "fieldSCDE_Indirect_Cost_Type__c"
    When I enter value "2022" into field "fieldSCDE_Fiscal_Year__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I refresh the page
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Allocations" sub tab
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
    And I navigate to "Applications" tab
    #198615
    Then I softly do not see value "{SavedValue:Automation Runtime Announcement}" for title "Application Title" inside table "{tableID:ApplicationId}"
    #199399
    Then I softly cannot see row level action button "Revision" against "AP-SCDE-34" in flex table with id "---tableID:-:ApplicationId---"
    #198872
    Then I softly can see row level action button "View" against "AP-SCDE-34" in flex table with id "---tableID:-:ApplicationId---"
    #198617
    Then I see only the following ordered headers in table with id "---tableID:-:ApplicationId---" :
      | EGMS ID | Application Title | District Program Coordinator | Project Period | Budget Open for Edits? | Actions |

  @200260 @200269 @200258 @200351 @sprint-9 @userStory-197350
  Scenario: Verify warning message when user Notify schools
  | Verify that user can select No on warning message and the system does not completes the notification
  | Verify that when user Notify a school, the 'Allow Budget Edits?' column is set to Yes.
  | Verify that user select one or more schools and click on the Notify button
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
    When I enter value "No" into field "fieldIsBudgetNarrativeRequired__c"
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
    When I enter value "15" into field "fieldSCDE_Maximum_Indirect_Cost__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I refresh the page
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Allocations" sub tab
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
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
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
    And I navigate to "Budget" sub tab
    #200260
    And I click on top right button "Notify" in flex table with id "---tableID:-:ApplicationAllocationsBySchool---"
    Then I softly see the text containing :
      | Notifying schools will automatically enable schools to edit school budgets. Are you sure you want to proceed? |
    #200269
    And I click on top right button "Notify" in flex table with id "---tableID:-:ApplicationAllocationsBySchool---"
    And I click modal button "No"
    Then I softly see value "No" for title "School Notified?" inside table "---tableID:-:ApplicationAllocationsBySchool---"
    #200258
    Then I softly see value "Yes" for title "Allow Budget Edits?" inside table "---tableID:-:ApplicationAllocationsBySchool---"
    #200351
    And I click on top right button "Notify" in flex table with id "---tableID:-:ApplicationAllocationsBySchool---"
    And I click modal button "Yes"
    Then I softly see value "Yes" for title "School Notified?" inside table "---tableID:-:ApplicationAllocationsBySchool---"

  @196355 @198965 @196365 @196393 @sprint-8 @userStory-194871
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
    When I enter value "No" into field "fieldIsBudgetNarrativeRequired__c"
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
    When I enter value "15" into field "fieldSCDE_Maximum_Indirect_Cost__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I refresh the page
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Allocations" sub tab
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
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
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
    When I enter value "Wright Middle" into field "fieldSchool__c"
    And I click modal button "Save"
    And I expand nested table containing column value "BP01"
    #196355
    Then I softly see value "$200.00" for title "Award Total" inside table "---tableID:-:ApplicationBudgetPeriodFunctionCodes---"
    #198965
    Then I softly see field "Budgeted Amount" inside "Allocations by School" section
    #196365 #196393
    And I click on "Submit Application" in the page details
    Then I softly see the text containing :
      | Budget Tab - The 'Budgeted Amount' for each school must equal the 'Allocation Amount' for the school. |
    Then I softly see the text containing :
      | Budget Tab - The 'Total Budgeted Amount' must be equal to the 'Allocation Amount' for the application. |

  @198922 @199272 @199271 @199280 @198925 @199268 @198733 @199274 @199273 @198747 @198736 @sprint-9 @userStory-197212
  Scenario: Verify 'Unbudgeted Balance' column is a formula field on Allocation By School table
  | Verify "Allow Budget Edits?" field should populates as "NO" by default on 'Allocations By School' table of application.
  | Verify "Allow Budget Edits?" should populates populates as Yes or No on 'Allocations By School' table of application.
  | Verify external program coordinator should see a dropdown with Yes/No options in the 'Allow Budget Edits?' column, on Allocations By School table
  | Verify "School Notified?" should populates "NO" by default on 'Allocations By School' table of application.
  | Verify "School Notified?" field should populates populates as Yes or No on 'Allocations By School' table of application.
  | Verify "Unbudgeted Balance" field should be a calculated and read only field on 'Allocations, Admin, and Indirect Costs' section of application.
  | Verify external program coordinator should see the "Edit" action on Actions column of the 'Allocations By School' table on application.
  | Verify external program coordinator should able to inline edit only 'Allow Budget Edits?' column, on clicking inline Edit.
  | Verify external program coordinator should not see "Program Manager" column on 'Allocations by School' table, when allocations ='By Applicant' and detailed budgeting= 'School' on announcement.
  | Verify external program coordinator user should see the "Allocation By School" table with updated columns, when allocation level = 'By Applicant' and detail budgeting = 'School'.
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
    When I enter value "No" into field "fieldIsBudgetNarrativeRequired__c"
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
    When I enter value "15" into field "fieldSCDE_Maximum_Indirect_Cost__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I refresh the page
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Allocations" sub tab
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
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Coordinator" into field "fieldRole__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
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
    And I navigate to "Budget" sub tab
    #198922
    Then I softly see "Unbudgeted Balance" field inside header "Allocation, Admin, and Indirect Costs"
    #199272
    Then I softly see value "No" for title "Allow Budget Edits?" inside table "---tableID:-:AllocationsBySchool---"
    #199271 #199280
    When I click on "Edit" icon for "Wright Middle" inside flex table with id "---tableID:-:AllocationsBySchool---"
    Then I see the following options in dropdown field "Allow Budget Edits?" :
      | Yes | No |
    #199268
    Then I softly see value "No" for title "School Notified?" inside table "---tableID:-:AllocationsBySchool---"
    #198925
    And I click on top right button "Notify" in flex table with id "---tableID:-:AllocationsBySchool---"
    Then I softly see value "Yes" for title "School Notified?" inside table "---tableID:-:AllocationsBySchool---"
    #198733
    Then I softly see that "fieldSCDE_UnbudgetedBalance__c" rendered in view mode only
    #199274 #199273
    Then I softly can see row level action button "Edit" against "Wright Middle" in flex table with id "---tableID:-:AllocationsBySchool---"
    #198747
    Then I softly do not see "Program Manager" in flex table header "---tableID:-:AllocationsBySchool---"
    #198736
    Then I see only the following ordered headers in table with id "---tableID:-:AllocationsBySchool---" :
      | School Code | School | Allocation | Budgeted Amount | Unbudgeted Balance | School Notified? | Allow Budget Edits? | Actions |

  @196649 @196650 @197069 @196641 @196642 @197458 @sprint-8 @userStory-194815
  Scenario: Verify that after the application is created  and then the WAC user assigns the role and Program Coordinator who is assigned to the program related to the application and has an assignment status that is Active can edit the application.
  | Verify that after the application is created the WAC user assigns the role  Program Coordinator who is assigned at the organization and has an assignment status that is Active can edit the application.
  | Verify that Edit access is displayed on the application for the section where the Program Coordinator should be associated with related program.
  | Verify that Program Coordinator who is assigned to the program related to the application and has an assignment status that is Active can edit the application.
  | Verify that Program Coordinator who is assigned to the program related to the application and has an assignment status that is Active can edit the application.
  | Verify that when application is created the Program Coordinator who is assigned at the organization and has an assignment status that is Active can edit the application.
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
    When I enter value "No" into field "fieldIsBudgetNarrativeRequired__c"
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
    When I enter value "15" into field "fieldSCDE_Maximum_Indirect_Cost__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I refresh the page
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Allocations" sub tab
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
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Coordinator" into field "fieldRole__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
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
    And I navigate to "Overview" sub tab
    #196649
    Then I softly see fields "fieldTitle__c" is in edit mode
    #196650
    And I navigate to "Budget" sub tab
    Then I softly see fields "fieldSCDE_IndirectCostTaken__c" is in edit mode
    Then I softly see fields "fieldSCDE_AdminCostTaken__c" is in edit mode
    #197069 #196641
    Then I softly can see top right button "Edit" in page detail
    Then I softly can see top right button "Submit for SR Approval" in page detail
    And I navigate to "Overview" sub tab
    Then I softly can see top right button "Associate" in flex table with id "---tableID:-:ApplicationContacts---"
    #196642
    And I navigate to "Forms and Files" sub tab
    Then I softly can see top right button "Add Files" in flex table with id "---tableID:-:ApplicationFiles---"
    Then I softly can see top right button "Add" in flex table with id "---tableID:-:ApplicationFormsAndFilesNotes---"
    #197458
    And I navigate to "Collab" sub tab
    Then I softly can see top right button "Send Email" in flex table with id "---tableID:-:Messages---"

  @200832 @200837 @200852 @200843 @200851 @UserStory:199061 @Sprint:10
  Scenario: Verify that Autorized Officer(AO) can select Send Back for Corrections on application
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
    When I enter value "No" into field "fieldIsBudgetNarrativeRequired__c"
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
    When I enter value "15" into field "fieldSCDE_Maximum_Indirect_Cost__c"
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I refresh the page
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFunctionCode---"
    When I click "Associate" after selection of "110 - General Instruction" in the table "---tableID:-:Modal---"
    And I navigate to "Allocations" sub tab
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
    When I login as "SPIWAC" user
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
    When I enter value "Program Approver" into field "fieldRole__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    When I enter value "SPI Automation" into field "fieldAssignedTo__c"
    When I enter value "Inactive" into field "fieldAssignmentStatus__c"
    And I click modal button "Save"
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
    And I navigate to "Budget" sub tab
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
    And I navigate to "Forms and Files" sub tab
    When I click on "Edit" icon for "No" inside flex table with id "---tableID:-:ApplicationForms---"
    When I enter the following values into flex table with id "---tableID:-:StakeholderParticipants---" by clicking "Add" :
      | Participant’s Name | School Name | Role    | Stakeholder Representation |
      | Automation         | Dixie High  | Teacher | School within District     |
    And I click on "Save" in the page details
    And I click on "Validate" in the page details
    And I wait for "3" seconds
    And I click on "Submit for Approval" in the page details
    And I wait for "7" seconds
    And I save the field containing "EGMS ID" as "APPID"
    And I logout
    Given I am on "SUBPORTAL" portal
    When I login as "SPA" user
    And I navigate to "Applications" tab
    When I navigate to "Pending Tasks" content inside "Tasks" subheader on left panel
    And I perform quick search for "{SavedValue:APPID}" in "---tableID:-:ApplicationPendingTask---" panel
    And I click on "Start" icon for "{SavedValue:APPID}" inside flex table with id "---tableID:-:ApplicationPendingTask---"
    When I "Approve" in the approval decision
    And I softly see field "Status" as "Approved for Submission"
    #200832
    Then I can see top right button "Send Back for Corrections" in page detail
    #200837
    When I click on "Send Back for Corrections" in the page details without processing
    And I wait for "3" seconds
    Then I softly see confirmation box with body "Are you sure you want to send the application back to the Program Coordinator for corrections? Select Yes to proceed." is displayed
    And I wait for "2" seconds
    #200852
    And I click "No" on modal confirmation box
    And I wait for "2" seconds
    Then I can see top right button "Send Back for Corrections" in page detail
    #200843
    When I click on "Send Back for Corrections" in the page details without processing
    And I click "Yes" on modal confirmation box
    Then I see the field labeled "Status" as "Created"
    #200851
    And I checkout to yopmail with mailid "automationspi@yopmail.com"
    And I pause execution for "60" seconds
    And I refresh the page
    And I wait for "2" seconds
    And I refresh the page
    Then I see the mail text is as follows :
    """
   Hello,

This email is to notify you that the application for {SavedValue:Automation Runtime Announcement} has been sent back for corrections by the Authorized Official.

Application Details

Application EGMS ID: {SavedValue:APPID}
Application Title: {SavedValue:Automation Runtime Announcement}
Opportunity Title: {SavedValue:Automation Runtime Announcement}

Log into the Enterprise Grants Management System (EGMS) to revise and resubmit the application for approval.

Please do not reply to this system-generated email. You may contact the South Carolina Department of Education at EGMS@ed.sc.gov if you have any questions or need assistance.

    """