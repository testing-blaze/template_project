@application @regression @scdeRegression
Feature: Validate all scenarios related to application

  @182263 @182264 @sprint-2 @userStory-178222
  Scenario: Verify that there is a 'Sequence Number' column on the Forms section under Files tab (Applications)
  |Verify the forms are listed in the ascending order of the sequence numbers listed on the form package (Applications)
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Announcements" tab
    When I navigate to "Formula" content inside "Announcements" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:FormulaAnnouncements---"
    When I enter value "Automation Runtime Formula Announcement" into field "fieldAnnouncementName__c"
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
    When I perform quick search for "{SavedValue:Automation Runtime Formula Announcement}" in "---tableID:-:PublishedOpportunities---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Formula Announcement}" inside flex table with id "---tableID:-:PublishedOpportunities---"
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
    When I enter value "Automation Runtime Formula Announcement" into field "fieldAnnouncementName__c"
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
    When I perform quick search for "{SavedValue:Automation Runtime Formula Announcement}" in "---tableID:-:PublishedOpportunities---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Formula Announcement}" inside flex table with id "---tableID:-:PublishedOpportunities---"
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
    When I enter value "Automation Runtime Formula Announcement" into field "fieldAnnouncementName__c"
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
    When I perform quick search for "{SavedValue:Automation Runtime Formula Announcement}" in "---tableID:-:PublishedOpportunities---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Formula Announcement}" inside flex table with id "---tableID:-:PublishedOpportunities---"
    When I click on "Qualify" in the page details
    And I softly see field "Status" as "Qualified"
    And I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
      #181730 #181729
    Then I softly see that "fieldSCDE_Allocation_Amount__c" rendered in view mode only
    And I click on "Save" in the page details
      #181731
    And I navigate to "Budget" sub tab
    Then I softly see field "Allocation Amount" as "$500"
     #181726
    Then I softly see field "Allocation Amount" inside "Allocation Amount and Indirect Costs" section
     #181725
    Then I see only the following ordered page blocks :
      | Allocation Amount and Indirect Costs | Allocations By School | Budget Periods | Budget Narrative |
    #181749
    And I logout
    Given I am on "INTERNAL" portal
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Announcements" tab
    When I navigate to "Formula" content inside "Announcements" subheader on left panel
    When I perform quick search for "{SavedValue:Automation Runtime Formula Announcement}" in "---tableID:-:FormulaAnnouncements---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Formula Announcement}" inside flex table with id "---tableID:-:FormulaAnnouncements---"
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
    When I perform quick search for "{SavedValue:Automation Runtime Formula Announcement}" in "---tableID:-:ApplicationTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Formula Announcement}" inside flex table with id "---tableID:-:ApplicationTableId---"
    And I navigate to "Budget" sub tab
    Then I softly see field "Allocation Amount" as "$1,000"

  @181750 @sprint-2 @userStory-179997
  Scenario: Verify that the allocation amount updates in application while application Status 'Submitted'
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
    When I perform quick search for "{SavedValue:Automation Runtime Formula Announcement}" in "---tableID:-:PublishedOpportunities---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Formula Announcement}" inside flex table with id "---tableID:-:PublishedOpportunities---"
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
      | Category Name                     | Budget |
      | Administrative and legal expenses | 1000   |
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
    When I perform quick search for "{SavedValue:Automation Runtime Formula Announcement}" in "---tableID:-:FormulaAnnouncements---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Formula Announcement}" inside flex table with id "---tableID:-:FormulaAnnouncements---"
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
    When I perform quick search for "{SavedValue:Automation Runtime Formula Announcement}" in "---tableID:-:ApplicationTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Formula Announcement}" inside flex table with id "---tableID:-:ApplicationTableId---"
    And I navigate to "Budget" sub tab
    Then I softly see field "Allocation Amount" as "$1,000"

  @181761 @sprint-2 @userStory-179997
  Scenario: Verify that the allocation amount updates in application while application Status 'Review Initiated'
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
    When I perform quick search for "{SavedValue:Automation Runtime Formula Announcement}" in "---tableID:-:PublishedOpportunities---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Formula Announcement}" inside flex table with id "---tableID:-:PublishedOpportunities---"
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
      | Category Name                     | Budget |
      | Administrative and legal expenses | 1000   |
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
    And I perform quick search for "{SavedValue:Automation Runtime Competitive Announcement}" in "---tableID:-:ApplicationReviews---" panel
    And I click on "Initiate Review Process" icon for "{SavedValue:Automation Runtime Formula Announcement}" inside flex table with id "---tableID:-:ApplicationReviews---"
    And I navigate to "Applications" tab
    When I navigate to "Applications" content inside "Applications" subheader on left panel
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{SavedValue:Automation Runtime Formula Announcement}" in "---tableID:-:ApplicationTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Formula Announcement}" inside flex table with id "---tableID:-:ApplicationTableId---"
    And I softly see field "Status" as "Review Initiated"
    And I navigate to "Announcements" tab
    When I navigate to "Formula" content inside "Announcements" subheader on left panel
    When I perform quick search for "{SavedValue:Automation Runtime Formula Announcement}" in "---tableID:-:FormulaAnnouncements---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Formula Announcement}" inside flex table with id "---tableID:-:FormulaAnnouncements---"
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
    When I perform quick search for "{SavedValue:Automation Runtime Formula Announcement}" in "---tableID:-:ApplicationTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Formula Announcement}" inside flex table with id "---tableID:-:ApplicationTableId---"
    And I navigate to "Budget" sub tab
    Then I softly see field "Allocation Amount" as "$1,000"

  @181764 @sprint-2 @userStory-179997 @wip
  Scenario: Verify that the allocation amount should not updated in application while application Status 'Reviewed'
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
    When I perform quick search for "{SavedValue:Automation Runtime Formula Announcement}" in "---tableID:-:PublishedOpportunities---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Formula Announcement}" inside flex table with id "---tableID:-:PublishedOpportunities---"
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
      | Category Name                     | Budget |
      | Administrative and legal expenses | 1000   |
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
    And I perform quick search for "{SavedValue:Automation Runtime Formula Announcement}" in "---tableID:-:ApplicationReviews---" panel
    And I click on "Initiate Review Process" icon for "{SavedValue:Automation Runtime Formula Announcement}" inside flex table with id "---tableID:-:ApplicationReviews---"
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
    And I perform quick search for "{SavedValue:Automation Runtime Formula Announcement}" in "---tableID:-:ApplicationReviews---" panel
    And I click on "View" icon for "{SavedValue:Automation Runtime Formula Announcement}" inside flex table with id "---tableID:-:ApplicationReviews---"
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
    And I perform quick search for "{SavedValue:Automation Runtime Formula Announcement}" in "---tableID:-:ApplicationReviews---" panel
    And I click on "View" icon for "{SavedValue:Automation Runtime Formula Announcement}" inside flex table with id "---tableID:-:ApplicationReviews---"
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
    And I perform quick search for "{SavedValue:Automation Runtime Formula Announcement}" in "---tableID:-:ApplicationReviews---" panel
    And I click on "View" icon for "{SavedValue:Automation Runtime Formula Announcement}" inside flex table with id "---tableID:-:ApplicationReviews---"
    And I navigate to "Related Log" sub tab
    And I click on "View" icon for "Management Review" inside flex table with id "---tableID:-:AnnouncementReviewStep------"
    And I check "{SavedValue:APPID}" boxes in flex table with id "---tableID:-:ReviewApplication---"
    When I click on top right button "Promote to FDM" in flex table with id "---tableID:-:ReviewApplication---"
    When I navigate to "Funding Decision Memos (FDM)" content inside "Application Reviews" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Formula Announcement}" in "---tableID:-:FDMtableId---" panel
    And I click on "View" icon for "{SavedValue:Automation Runtime Formula Announcement}" inside flex table with id "---tableID:-:FDMtableId---"
    And I click on "Edit" in the page details
    And I enter value "SA" into field "fieldGrantCode__c"
    And I enter value "Justification Automation" into field "fieldJustification__c"
    And I click on "Save" in the page details
    When I edit the following rows inline in flex table with id "---tableID:-:fdmRecommnedApplication---" by clicking "Edit" :
      | Application Title                                        | Recommended Budget | Recommend for Funding | Comments           |
      | {SavedValue:Automation Runtime Competitive Announcement} | 2000               | Yes                   | Automation Comment |
    And I pause execution for "3" seconds
    And I click on "Submit for Approval" in the page details
    When I "Approve" in the approval decision
    And I navigate to "Applications" tab
    When I navigate to "Applications" content inside "Applications" subheader on left panel
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{SavedValue:Automation Runtime Formula Announcement}" in "---tableID:-:ApplicationTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Formula Announcement}" inside flex table with id "---tableID:-:ApplicationTableId---"
    And I softly see field "Status" as "Reviewed"
    And I navigate to "Announcements" tab
    When I navigate to "Formula" content inside "Announcements" subheader on left panel
    When I perform quick search for "{SavedValue:Automation Runtime Formula Announcement}" in "---tableID:-:FormulaAnnouncements---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Formula Announcement}" inside flex table with id "---tableID:-:FormulaAnnouncements---"
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
    When I perform quick search for "{SavedValue:Automation Runtime Formula Announcement}" in "---tableID:-:ApplicationTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Formula Announcement}" inside flex table with id "---tableID:-:ApplicationTableId---"
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
    When I enter value "Automation Runtime Formula Announcement" into field "fieldAnnouncementName__c"
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
    When I perform quick search for "110 - General Instruction" in "---tableID:-:SelectBudgetCategory---" panel
    And I check "110 - General Instruction" boxes in flex table with id "---tableID:-:SelectBudgetCategory---"
    And I click on top right button "Associate" in flex table with id "---tableID:-:SelectBudgetCategory---"
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
    When I perform quick search for "{SavedValue:Automation Runtime Formula Announcement}" in "---tableID:-:PublishedOpportunities---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Formula Announcement}" inside flex table with id "---tableID:-:PublishedOpportunities---"
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
    When I perform quick search for "{SavedValue:Automation Runtime Formula Announcement}" in "---tableID:-:PublishedOpportunities---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Formula Announcement}" inside flex table with id "---tableID:-:PublishedOpportunities---"
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
      | Category Name                     | Budget |
      | Administrative and legal expenses | 1000   |
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
    When I perform quick search for "{SavedValue:Automation Runtime Formula Announcement}" in "---tableID:-:FormulaAnnouncements---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Formula Announcement}" inside flex table with id "---tableID:-:FormulaAnnouncements---"
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
    When I enter value "Automation Runtime Formula Announcement" into field "fieldAnnouncementName__c"
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
    When I perform quick search for "{SavedValue:Automation Runtime Formula Announcement}" in "---tableID:-:PublishedOpportunities---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Formula Announcement}" inside flex table with id "---tableID:-:PublishedOpportunities---"
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
    When I perform quick search for "{SavedValue:Automation Runtime Formula Announcement}" in "---tableID:-:FormulaAnnouncements---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Formula Announcement}" inside flex table with id "---tableID:-:FormulaAnnouncements---"
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
    When I perform quick search for "{SavedValue:Automation Runtime Formula Announcement}" in "---tableID:-:ApplicationTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Formula Announcement}" inside flex table with id "---tableID:-:ApplicationTableId---"
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
    When I perform quick search for "{SavedValue:Automation Runtime Formula Announcement}" in "---tableID:-:PublishedOpportunities---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Formula Announcement}" inside flex table with id "---tableID:-:PublishedOpportunities---"
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
      | Category Name                     | Budget |
      | Administrative and legal expenses | 1000   |
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
    And I perform quick search for "{SavedValue:Automation Runtime Competitive Announcement}" in "---tableID:-:ApplicationReviews---" panel
    And I click on "Initiate Review Process" icon for "{SavedValue:Automation Runtime Formula Announcement}" inside flex table with id "---tableID:-:ApplicationReviews---"
    And I navigate to "Applications" tab
    When I navigate to "Applications" content inside "Applications" subheader on left panel
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{SavedValue:Automation Runtime Formula Announcement}" in "---tableID:-:ApplicationTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Formula Announcement}" inside flex table with id "---tableID:-:ApplicationTableId---"
    And I softly see field "Status" as "Review Initiated"
    When I navigate to "Reviews" content inside "Application Reviews" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Competitive Announcement}" in "---tableID:-:ApplicationReviews---" panel
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
    When I perform quick search for "{SavedValue:Automation Runtime Formula Announcement}" in "---tableID:-:ApplicationTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Formula Announcement}" inside flex table with id "---tableID:-:ApplicationTableId---"
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
    And I perform quick search for "{SavedValue:Automation Runtime Competitive Announcement}" in "---tableID:-:ApplicationReviews---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Formula Announcement}" inside flex table with id "---tableID:-:ApplicationReviews---"
    And I navigate to "Related Log" sub tab
    And I click on "View" icon for "Pre-Screen Review" inside flex table with id "---tableID:-:AnnouncementReviewSteps---"
    And I softly see field "Status" as "In Progress"
    Then I softly see value "Pending" for title "Decision Status" inside table "---tableID:-:AnnouncementPreScreenReview---"

  @185293 @185521 @185523 @185535 @185321 @185538 @185319 @185286 @185282 @185285 @185323 @sprint-4 @userStory-184581 @UmangParekh
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
    When I perform quick search for "{SavedValue:Automation Runtime Formula Announcement}" in "---tableID:-:PublishedOpportunities---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Formula Announcement}" inside flex table with id "---tableID:-:PublishedOpportunities---"
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
      | Category Name                     | Budget |
      | Administrative and legal expenses | 1000   |
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
    And I perform quick search for "{SavedValue:Automation Runtime Competitive Announcement}" in "---tableID:-:ApplicationReviews---" panel
    And I click on "Initiate Review Process" icon for "{SavedValue:Automation Runtime Formula Announcement}" inside flex table with id "---tableID:-:ApplicationReviews---"
    And I navigate to "Applications" tab
    When I navigate to "Applications" content inside "Applications" subheader on left panel
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{SavedValue:Automation Runtime Formula Announcement}" in "---tableID:-:ApplicationTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Formula Announcement}" inside flex table with id "---tableID:-:ApplicationTableId---"
    And I softly see field "Status" as "Review Initiated"
    When I navigate to "Reviews" content inside "Application Reviews" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Competitive Announcement}" in "---tableID:-:ApplicationReviews---" panel
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
    And I perform quick search for "{SavedValue:Automation Runtime Competitive Announcement}" in "---tableID:-:ApplicationReviews---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Formula Announcement}" inside flex table with id "---tableID:-:ApplicationReviews---"
    And I navigate to "Related Log" sub tab
    And I click on "View" icon for "Pre-Screen Review" inside flex table with id "---tableID:-:AnnouncementReviewSteps---"
    Then I softly cannot see row level action button "Request Revision" against "TEXAS BEAR CREEK STORAGE" in flex table with id "---tableID:-:ApplicationRevisions---"
    #185523
    Then I softly see value "Revision In-Progress" for title "Decision Status" inside table "---tableID:-:AnnouncementPreScreenReview---"
    #185535
    When I navigate to "Applications" content inside "Applications" subheader on left panel
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{SavedValue:Automation Runtime Formula Announcement}" in "---tableID:-:ApplicationTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Formula Announcement}" inside flex table with id "---tableID:-:ApplicationTableId---"
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
    And I perform quick search for "{SavedValue:Automation Runtime Competitive Announcement}" in "---tableID:-:ApplicationReviews---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Formula Announcement}" inside flex table with id "---tableID:-:ApplicationReviews---"
    And I navigate to "Related Log" sub tab
    And I click on "View" icon for "Pre-Screen Review" inside flex table with id "---tableID:-:AnnouncementReviewSteps---"
    Then I softly see value "Pending" for title "Decision Status" inside table "---tableID:-:AnnouncementPreScreenReview---"
    Then I softly see value "Review Initiated" for title "Application Status" inside table "---tableID:-:AnnouncementPreScreenReview---"
    Then I softly can see row level action button "Request Revision" against "TEXAS BEAR CREEK STORAGE" in flex table with id "---tableID:-:AnnouncementPreScreenReview---"

  @186363 @186156 @186232 @186233 @187634 @sprint-4 @userStory-184588 @UmangParekh
  Scenario: Verify that after application sending to the sub-recipient, user see that the Decision Status for the application in the review step is set to 'Revision In-Progress' and application status is set to 'Revision Initiated'
  | Verify that after user saved the revision changes on an application, user can see 'Send to Subrecipient' button on the application
  | Verify that If I try to send the application to the sub-recipient after selecting 'Files and Forms: Forms' as one of the options but without checking the 'Allow Edits' box for any form, then I get the error message
  | Verify that If I try to send the application to the sub-recipient without selecting 'Files and Forms: Forms' as one of the options after checking the 'Allow Edits' box for at least one form, then I get the error message
  | Verify that review status is 'Sent to Review',  set the review status to 'Review Incomplete' when user send the application to subrecipient by clicking the Send to Subrecipient button
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
    When I perform quick search for "{SavedValue:Automation Runtime Formula Announcement}" in "---tableID:-:PublishedOpportunities---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Formula Announcement}" inside flex table with id "---tableID:-:PublishedOpportunities---"
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
      | Category Name                     | Budget |
      | Administrative and legal expenses | 1000   |
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
    And I perform quick search for "{SavedValue:Automation Runtime Competitive Announcement}" in "---tableID:-:ApplicationReviews---" panel
    And I click on "Initiate Review Process" icon for "{SavedValue:Automation Runtime Formula Announcement}" inside flex table with id "---tableID:-:ApplicationReviews---"
    And I navigate to "Applications" tab
    When I navigate to "Applications" content inside "Applications" subheader on left panel
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{SavedValue:Automation Runtime Formula Announcement}" in "---tableID:-:ApplicationTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Formula Announcement}" inside flex table with id "---tableID:-:ApplicationTableId---"
    And I softly see field "Status" as "Review Initiated"
    When I navigate to "Reviews" content inside "Application Reviews" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Competitive Announcement}" in "---tableID:-:ApplicationReviews---" panel
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
    And I perform quick search for "{SavedValue:Automation Runtime Competitive Announcement}" in "---tableID:-:ApplicationReviews---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Formula Announcement}" inside flex table with id "---tableID:-:ApplicationReviews---"
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
    #187634
    And I click on "Edit" icon for "Title II, Part A - Stakeholder Participants" inside flex table with id "---tableID:-:AvailableFormsforRevision---"
    When I enter value "checked" into field "AllowEdit__c"
    And I click on top right button "Save" in flex table with id "---tableID:-:AvailableFormsforRevision---"
    And I click on top right button "Send to Subrecipient" in flex table with id "---tableID:-:AnnouncementPreScreenReview---"
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