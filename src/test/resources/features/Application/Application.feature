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
    When I enter value "N/A" into field "fieldSCDE_Allocation_Level__c"
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
    When I enter value "N/A" into field "fieldSCDE_Allocation_Level__c"
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
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
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
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
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
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
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
    And I click on "Save" in the page details
    And I click on top right button "Add Budget Period" in flex table with id "---tableID:-:AnnouncementBudgetPeriod---"
    And I edit the following rows inline in flex table with id "---tableID:-:AnnouncementBudgetPeriod---" by clicking "Edit" :
      | Budget Period Name | Start Date | End Date |
      | BP01               | 250        | 365      |
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