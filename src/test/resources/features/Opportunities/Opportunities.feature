@announcement @regression @scdeRegression
Feature: Validate all scenarios related to opportunities

  Background: To setup data
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
    And I navigate to "Setup" sub tab
    When I click on "Edit" icon for "Application" inside flex table with id "---tableID:-:AnnouncementBusinessForms---"
    When I enter value "VD_TestPackage" into field "fieldPackageConfig__c"
    And I click modal button "Save"
    And I click on "Submit For Approval" in the page details
    And I softly see field "Status" as "Submitted for Approval"
    When I "Approve" in the approval decision
    And I click on "Publish" in the page details
    And I softly see field "Status" as "Published"

  @183428 @183433 @183432 @183411 @183409 @183430 @183431 @183408 @183435 @183426 @183427 @183404 @183436 @183437 @183439 @183441 @183442 @183440 @sprint-3 @userStory-182038
  Scenario: Verify that  Program Income Allowed? in Opportunity Specific Settings section
  |Verify that Advance Payment Allowed? in Opportunity Specific Settings section
  |Verify that Are Expense Details Required on Reimbursements? in Opportunity Specific Settings section
  |Verify that Funding Organization Division/Office field in Opportunity Information section
  |Verify that Funding Organization field in Opportunity Information section
  |Verify that Leverage Allowed? in Opportunity Specific Settings section
  |Verify that Pre-Application Required? in Opportunity Specific Settings section
  |Verify that Program field shows the Program Title
  |Verify that Help Text on Federal/NGO Program section
  |Verify that Office field is shown and is read-only in Opportunity Information section
  |Verify that Funding Source field is shown and is read-only in Opportunity Information section
  |Verify that Type field help text
  |Verify that the Contacts sections shows a column for Project Role.
  |Verify that the Allocated Amount section shows the allocations for the organization of the logged in user only
  |Verify that the Allocated Amount table shows the same columns from the Internal view of the section dependent on the Allocation Level
  |Verify that Budget Type field in Budget specific Settings section
  |Verify that Is a Detailed Budget Required on the Application? field in Budget specific Settings section
  |Verify that the Estimated Number of Awards field and this is read-only
    And I logout
    Given I am on "SUBPORTAL" portal
    When I login as "SPI" user
    And I navigate to "Opportunities" tab
    When I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:PublishedOpportunities---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:PublishedOpportunities---"
      #183428
    Then I softly do not see field "Program Income Allowed?" inside "Opportunity Specific Settings" section
      #183433
    Then I softly do not see field "Advance Payment Allowed?" inside "Opportunity Specific Settings" section
      #183432
    Then I softly do not see field "Are Expense Details Required on Reimbursements?" inside "Opportunity Specific Settings" section
    #183411
    Then I softly do not see field "Funding Organization Division/Office" inside "Opportunity Information" section
    #183409
    Then I softly do not see field "Funding Organization" inside "Opportunity Information" section
    #183430
    Then I softly do not see field "Leverage Allowed?" inside "Opportunity Specific Settings" section
    #183431
    Then I softly do not see field "Pre-Application Required?" inside "Opportunity Specific Settings" section
    #183408
    Then I softly see field "Program" as "Automation Permanent Program"
    #183435
    And I hovering mouse on help text icon inside page block detail "Federal/NGO Programs"
    Then I softly see "For Federal programs, the Program Number is the Assistance Listing number." shown as help text
    #183426
    Then I softly cannot see top right button "Edit" in page detail
    Then I softly see field "Office" inside "Opportunity Information" section
    #183427
    Then I softly see field "Funding Source" inside "Opportunity Information" section
    #183404
    And I refresh the page
    And I hovering mouse on help text icon inside page block detail "Type"
    Then I softly see "Type (Competitive or Formula)" shown as help text
    #183436
    Then I softly see "Project Role" in flex table header "---tableID:-:OpportunityContacts---"
    #183437
    Then I softly see value "TEXAS BEAR CREEK STORAGE" for title "Applicant" inside table "---tableID:-:OpportunityAllocatedAmount---"
    #183439
    Then I see only the following ordered headers in table with id "---tableID:-:OpportunityAllocatedAmount---" :
      | Org Code | Applicant | School Code | School Name | Allocation | Program Manager | Last Updated By | Last Updated |
    #183441
    And I navigate to "Financials" sub tab
    Then I softly do not see field "Budget Type" inside "Budget Specific Settings" section
    #183442
    Then I softly do not see field "Is a Detailed Budget Required on the Application?" inside "Budget Specific Settings" section
    #183440
    Then I softly see field "Estimated Number of Awards" inside "Financial Details" section

  @184506 @184510 @184509 @184806 @184502 @184507 @184508 @184501 @184511 @184504 @184505 @184500 @184512 @184809 @184811 @184812 @184810 @sprint-3 @userStory-182040
  Scenario: Verify that  Program Income Allowed? in Opportunity Specific Settings section
  |Verify that Advance Payment Allowed? in Opportunity Specific Settings section
  |Verify that Are Expense Details Required on Reimbursements? in Opportunity Specific Settings section
  |Verify that Funding Organization Unit field in Opportunity Information section
  |Verify that Funding Organization field in Opportunity Information section
  |Verify that Leverage Allowed? in Opportunity Specific Settings section
  |Verify that Pre-Application Required? in Opportunity Specific Settings section
  |Verify that Program field shows the Program Title
  |Verify that Help Text on Federal/NGO Program section
  |Verify that Office field is shown and is read-only in Opportunity Information section
  |Verify that Funding Source field is shown and is read-only in Opportunity Information section
  |Verify that Type field help text
  |Verify that the Allocated Amount section shows the allocations for the organization of the logged in user only
  |Verify that the Allocated Amount table shows the same columns from the Internal view of the section dependent on the Allocation Level
  |Verify that Budget Category Package field is hidden
  |Verify that Is a Detailed Budget Required on the Application? field in Budget specific Settings section
  |Verify that the Estimated Number of Awards field and this is read-only
    And I logout
    Given I am on "SUBPORTAL" portal
    When I login as "SPI" user
    And I navigate to "Opportunities" tab
    When I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:PublishedOpportunities---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:PublishedOpportunities---"
    When I click on "Qualify" in the page details
    And I softly see field "Status" as "Qualified"
      #184506
    Then I softly do not see field "Program Income Allowed?" inside "Opportunity Specific Settings" section
      #184510
    Then I softly do not see field "Advance Payment Allowed?" inside "Opportunity Specific Settings" section
      #184509
    Then I softly do not see field "Are Expense Details Required on Reimbursements?" inside "Opportunity Specific Settings" section
    #184806
    Then I softly do not see field "Funding Organization Unit" inside "Opportunity Information" section
    #184502
    Then I softly do not see field "Funding Organization" inside "Opportunity Information" section
    #184507
    Then I softly do not see field "Leverage Allowed?" inside "Opportunity Specific Settings" section
    #184508
    Then I softly do not see field "Pre-Application Required?" inside "Opportunity Specific Settings" section
    #184501
    Then I softly see field "Program" as "Automation Permanent Program"
    #184511
    And I hovering mouse on help text icon inside page block detail "Federal/NGO Program"
    Then I softly see "For Federal programs, the Program Number is the Assistance Listing number." shown as help text
    #184504
    Then I softly cannot see top right button "Edit" in page detail
    Then I softly see field "Office" inside "Opportunity Information" section
    #184505
    Then I softly see field "Funding Source" inside "Opportunity Information" section
    #184500
    And I refresh the page
    And I hovering mouse on help text icon inside page block detail "Type"
    Then I softly see "Type of funding opportunity (Competitive or Formula)" shown as help text
    #184512
    Then I softly see value "TEXAS BEAR CREEK STORAGE" for title "Applicant" inside table "---tableID:-:QualifiedOpportunityAllocatedAmount---"
    #184809
    Then I see only the following ordered headers in table with id "---tableID:-:QualifiedOpportunityAllocatedAmount---" :
      | Org Code | Applicant | School Code | School Name | Allocation | Program Manager | Last Updated By | Last Updated |
    #184811
    And I navigate to "Financials" sub tab
    Then I softly do not see field "Budget Category Package" inside "Budget Specific Settings" section
    #184812
    Then I softly do not see field "Is a Detailed Budget Required on the Application?" inside "Budget Specific Settings" section
    #184810
    Then I softly see field "Estimated Number of Awards" inside "Financial Details" section