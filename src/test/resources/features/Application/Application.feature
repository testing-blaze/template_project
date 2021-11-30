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
    And I click modal button "Continue"
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
    Then I softly see field "Status" as "Qualified"
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
    And I click modal button "Continue"
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
    Then I softly see field "Status" as "Qualified"
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
    And I click modal button "Continue"
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
    Then I softly see field "Status" as "Qualified"
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