@ApplicationCorrectionValidation @regression @scdeRegression
Feature: Validate all scenarios related to application

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
And I pause execution for "180" seconds
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

    @201032 @201035 @201037 @201038 @201039 @UserStory:188354 @Sprint:10
    Scenario: Verify different Application list filters for Internal user
        Given I login to "As a Grantor" app as "PM" user
        And I navigate to "Applications" tab
        And I perform quick search for "Created" in "{tableID:ApplicationToggleTableId}" panel
        #201032
        Then I softly see value "Created" for title "Status" inside table "---tableID:-:ApplicationToggleTableId---"
        #201035
        When I navigate to "Applications" content inside "Applications" subheader on left panel
        When I perform quick search for "Created" in "---tableID:-:ApplicationQuickSearchGranter---" panel
        Then I softly see value "Created" for title "Status" inside table "---tableID:-:ApplicationQuickSearchGranter---"
        #201037
        Then I see toggle option "Applications - All" inside flex table id "---tableID:-:ApplicationQuickSearchGranter---"
        Then I see toggle option "Applications - Submitted" inside flex table id "---tableID:-:ApplicationQuickSearchGranter---"
        Then I see toggle option "Applications - Pending Submission" inside flex table id "---ApplicationQuickSearchGranter---"
        #201038
        And I click toggle button to select "Applications - Pending Submission"
        And I perform quick search for "Created" in "{tableID:ApplicationQuickSearchGranter}" panel
        Then I softly see value "Created" for title "Status" inside table "---tableID:-:ApplicationQuickSearchGranter---"
        And I perform quick search for "Submitted for SR Approval" in "{tableID:ApplicationQuickSearchGranter}" panel
        Then I softly see value "Submitted for SR Approval" for title "Status" inside table "---tableID:-:ApplicationQuickSearchGranter---"
        And I perform quick search for "Approved for Submission" in "{tableID:ApplicationQuickSearchGranter}" panel
        Then I softly see value "Approved for Submission" for title "Status" inside table "---tableID:-:ApplicationQuickSearchGranter---"
        And I perform quick search for "Revision Initiated" in "{tableID:ApplicationQuickSearchGranter}" panel
        Then I softly see value "Revision Initiated" for title "Status" inside table "---tableID:-:ApplicationQuickSearchGranter---"
        #201039
        And I click toggle button to select "Applications - Submitted"
        And I perform quick search for "Submitted to Grantor" in "{tableID:ApplicationQuickSearchGranter}" panel
        Then I softly see value "Submitted to Grantor" for title "Status" inside table "---tableID:-:ApplicationQuickSearchGranter---"
        And I perform quick search for "Reviewed" in "{tableID:ApplicationQuickSearchGranter}" panel
        Then I softly see value "Reviewed" for title "Status" inside table "---tableID:-:ApplicationQuickSearchGranter---"
        And I perform quick search for "Revision Submitted" in "{tableID:ApplicationQuickSearchGranter}" panel
        Then I softly see value "Revision Submitted" for title "Status" inside table "---tableID:-:ApplicationQuickSearchGranter---"
        And I perform quick search for "Converted to Award" in "{tableID:ApplicationQuickSearchGranter}" panel
        Then I softly see value "Converted to Award" for title "Status" inside table "---tableID:-:ApplicationQuickSearchGranter---"
