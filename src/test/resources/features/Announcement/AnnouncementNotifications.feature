@AnnouncementNotifications @regression @scdeRegression
Feature: Validate scenarios related to announcement

@200818 @200821 @200820 @UserStory:198078 @Sprint:10
Scenario: Verify that newly added organization in allocations table should get notofied and see funding opportunity for announcement by applicant with school
Given I am on "SUBPORTAL" portal
When I login as "SPIWAC" user
When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
When I enter value "Program Coordinator" into field "fieldRole__c"
When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
When I enter value "SPI Automation" into field "fieldAssignedTo__c"
When I enter value "Inactive" into field "fieldAssignmentStatus__c"
And I click modal button "Save"
And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
When I enter value "Fiscal Coordinator" into field "fieldRole__c"
When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
When I enter value "SPI Automation" into field "fieldAssignedTo__c"
When I enter value "Inactive" into field "fieldAssignmentStatus__c"
And I click modal button "Save"
And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
When I enter value "Program Approver" into field "fieldRole__c"
When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
When I enter value "SPI Automation" into field "fieldAssignedTo__c"
When I enter value "Inactive" into field "fieldAssignmentStatus__c"
And I click modal button "Save"
When I re-login to "As a Grantor" app as "PM" user on "INTERNAL" portal
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
And I pause execution for "2" seconds
And I navigate to "Setup" sub tab
When I click on "Edit" icon for "Application" inside flex table with id "---tableID:-:AnnouncementBusinessForms---"
When I enter value "VD_TestPackage" into field "fieldPackageConfig__c"
And I click modal button "Save"
And I navigate to "Allocations" sub tab
And I click on top right button "Upload Excel" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
When I switch to iframe with id "SoleSourceAwardOrganizationsiframeContentId"
When I upload file "AppWithSchool.xlsx" into library
And I click modal button "Upload File"
And I wait for "3" seconds
And I click on "Submit For Approval" in the page details
And I softly see field "Status" as "Submitted for Approval"
When I "Approve" in the approval decision
And I click on "Publish" in the page details
And I softly see field "Status" as "Published"
And I save the field containing "EGMS ID" as "ANNID"
And I navigate to "Allocations" sub tab
And I click on top right button "Upload Excel" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
When I switch to iframe with id "SoleSourceAwardOrganizationsiframeContentId"
When I upload file "AppWithSchoolCode.xlsx" into library
And I click modal button "Upload File"
And I wait for "3" seconds
And I checkout to yopmail with mailid "automationspi@yopmail.com"
And I pause execution for "180" seconds
And I refresh the page
And I wait for "2" seconds
And I refresh the page
And I refresh the page
And I refresh the page
    #200818 #200821 #200820
Then I see the mail text is as follows :
"""
   Hello,

A funding opportunity has been published in the Enterprise Grants Management System (EGMS). Details are as follows:

Opportunity Details
Program Name: Automation Permanent Program
Funding Opportunity EGMS ID: {SavedValue:ANNID}
Funding Opportunity Name: {SavedValue:Automation Runtime Announcement}

Please login to the Enterprise Grants Management System (EGMS) to access this funding opportunity.

Please do not reply to this system-generated email. You may contact the South Carolina Department of Education at EGMS@ed.sc.gov if you have any questions or need assistance.
   """

@200830 @200801 @200815 @200814 @UserStory:198078 @Sprint:10
Scenario: Verify that newly added organization in allocations table should get notofied and see funding opportunity for announcement By applicant
Given I am on "SUBPORTAL" portal
When I login as "SPIWAC" user
When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
When I enter value "Program Coordinator" into field "fieldRole__c"
When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
When I enter value "SPI Automation" into field "fieldAssignedTo__c"
When I enter value "Inactive" into field "fieldAssignmentStatus__c"
And I click modal button "Save"
And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
When I enter value "Fiscal Coordinator" into field "fieldRole__c"
When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
When I enter value "SPI Automation" into field "fieldAssignedTo__c"
When I enter value "Inactive" into field "fieldAssignmentStatus__c"
And I click modal button "Save"
And I click on top right button "New" in flex table with id "---tableID:-:ApplicationOrganizationRoles---"
When I enter value "Program Approver" into field "fieldRole__c"
When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
When I enter value "SPI Automation" into field "fieldAssignedTo__c"
When I enter value "Inactive" into field "fieldAssignmentStatus__c"
And I click modal button "Save"
When I re-login to "As a Grantor" app as "PM" user on "INTERNAL" portal
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
And I pause execution for "2" seconds
And I navigate to "Setup" sub tab
When I click on "Edit" icon for "Application" inside flex table with id "---tableID:-:AnnouncementBusinessForms---"
When I enter value "VD_TestPackage" into field "fieldPackageConfig__c"
And I click modal button "Save"
And I navigate to "Allocations" sub tab
And I click on top right button "Upload Excel" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
When I switch to iframe with id "SoleSourceAwardOrganizationsiframeContentId"
When I upload file "ByApplicant.xlsx" into library
And I click modal button "Upload File"
And I wait for "3" seconds
And I click on "Submit For Approval" in the page details
And I softly see field "Status" as "Submitted for Approval"
When I "Approve" in the approval decision
And I click on "Publish" in the page details
And I softly see field "Status" as "Published"
And I save the field containing "EGMS ID" as "ANNID"
And I navigate to "Allocations" sub tab
And I click on top right button "Upload Excel" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
When I switch to iframe with id "SoleSourceAwardOrganizationsiframeContentId"
When I upload file "ApplicantCode.xlsx" into library
And I click modal button "Upload File"
And I wait for "3" seconds
Given I am on "SUBPORTAL" portal
When I login as "SPA" user
And I navigate to "Opportunities" tab
And I perform quick search for "{SavedValue:ANNID}" in "---tableID:-:PublishAnnouncementTableID---" panel
Then I see the following rows under the following columns in table with id "{tableID:PublishAnnouncementTableID}" :
| EGMS ID            |
| {SavedValue:ANNID} |
#200801 #200815 #200814
And I checkout to yopmail with mailid "automationspi@yopmail.com"
And I pause execution for "180" seconds
And I refresh the page
And I wait for "2" seconds
And I refresh the page
And I refresh the page
And I refresh the page
Then I see the mail text is as follows :
"""
   Hello,

A funding opportunity has been published in the Enterprise Grants Management System (EGMS). Details are as follows:

Opportunity Details
Program Name: Automation Permanent Program
Funding Opportunity EGMS ID: {SavedValue:ANNID}
Funding Opportunity Name: {SavedValue:Automation Runtime Announcement}

Please login to the Enterprise Grants Management System (EGMS) to access this funding opportunity.

Please do not reply to this system-generated email. You may contact the South Carolina Department of Education at EGMS@ed.sc.gov if you have any questions or need assistance.
   """

@200864 @200862 @200863 @200865 @Sprint:10 @UserStory:196741
Scenario: Test internal view on communications through collab tab of an announcement
   Given I login to "As a Grantor" app as "PM" user
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
   When I enter value "School" into field "fieldSCDE_Detailed_Budgeting_Options__c"
   And I click modal button "Save and Continue"
   And I navigate to "Collab" sub tab
   And I click on top right button "Send Email" in flex table with id "---tableID:-:Messages---"
   When I enter value "automation.pm@yopmail.com" into field "To" on send email modal
   When I enter value "Testing" into field "Subject" on send email modal
   And I click modal button "Send"
   And I close modal by clicking the top right x button
   #200864
   Then I softly see value "automation.pm@yopmail.com" for title "From Address" inside table "---tableID:-:Messages---"
   #200862 #200863
   And I enter value "@Automation PM" in my feed section and share the post
   Then I softly see "Automation PM to South Carolina Department of Education Only" at my feed container with id "---tableID:-:MyFeedId---"
   #200865
   And I click on "Reply" icon for "automation.pm@yopmail.com" inside flex table with id "{tableID:Messages}" without waiting for record
   When I enter value "automation.pm@yopmail.com" into field "To" on send email modal
   When I enter value "Automation Testing" into field "Subject" on send email modal
   And I click modal button "Send"
   And I close modal by clicking the top right x button
   And I navigate to "Home" tab
   When I click on "Messages" button
   Then I softly see value "automation.pm@yopmail.com" for title "To Address" inside table "{tableID:HomeTabMessages}"

   @203331 @203343 @203346 @203345 @203695 @203358 @203357 @203351 @203696 @Sprint:11 @UserStory:199224
   Scenario: Allow announcement owner to 'Generate Assignment Matrix' for 'Reviewer Assignments'
   |Verify that a peer reviewer with edit access can see 'Generate Assignment Matrix' button can see 'Generate Assignment Matrix' button|
   |Verify that if invited applicants are not added on the announcement, then the announcement owner cannot generate the assignment matrix|
   |Verify that Generated Assignment Matrix table columns values|
   |Verify that if review forms are not created for the announcement, then the announcement owner cannot generate the assignment matrix|
   |Verify that an announcement record owner can see 'Generate Assignment Matrix' button (Announcement is in Submitted for Review state)|
   |Verify that if review forms are not created for the announcement, then a peer reviewer with edit access cannot generate the assignment matrix|
   |Verify that if invited applicants are not added on the announcement, then a peer reviewer with edit access cannot generate the assignment matrix|
   |Verify that a peer reviewer with edit access can see 'Generate Assignment Matrix' button can see 'Generate Assignment Matrix' button |
   |Verify that an announcement record owner can see 'Generate Assignment Matrix' button (Announcement is in Reviewed state)|
      Given I login to "As a Grantor" app as "PM" user
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
      And I softly see field "Status" as "Created"
      And I navigate to "Setup" sub tab
      When I click on "Edit" icon for "Application" inside flex table with id "---tableID:-:AnnouncementBusinessForms---"
      When I enter value "VD_TestPackage" into field "fieldPackageConfig__c"
      And I click modal button "Save"
      And I wait for "2" seconds
      #203331
      And I refresh the page
      And I navigate to "Setup" sub tab
      Then I softly can see top right button "Generate Assignment Matrix" in flex table with id "---tableID:-:AnnSetUpReviewerAssignTableID---"
      #203343
      And I click on top right button "Generate Assignment Matrix" in flex table with id "---tableID:-:AnnSetUpReviewerAssignTableID---"
      Then I softly see the following messages in the page details contains:
         | The 'Assignment Matrix' cannot be generated because there are not any applicant organizations listed in the 'Invited Applicants and Allocations' table. At least one applicant organization must be listed to generate the assignment matrix. |
      #203346
      And I navigate to "Allocations" sub tab
      And I click on top right button "Upload Excel" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
      When I switch to iframe with id "SoleSourceAwardOrganizationsiframeContentId"
      When I upload file "AppWithSchoolCode.xlsx" into library
      And I click modal button "Upload File"
      And I pause execution for "2" seconds
      And I navigate to "Setup" sub tab
      And I click on top right button "Generate Assignment Matrix" in flex table with id "---tableID:-:AnnSetUpReviewerAssignTableID---"
      Then I see the following rows under the following headers in table with id "---tableID:-:AnnSetUpReviewerAssignTableID---" :
         | Applicant                | Org Code | Step Name         | Form Name         | Last Modified By |
         | TEXAS BEAR CREEK STORAGE | 1212     | Pre-Screen Review | Pre-Screen        | Automation PM    |
         | TEXAS BEAR CREEK STORAGE | 1212     | SME Review        | Program Review    | Automation PM    |
         | TEXAS BEAR CREEK STORAGE | 1212     | SME Review        | Fiscal Review     | Automation PM    |
         | TEXAS BEAR CREEK STORAGE | 1212     | SME Review        | Compliance Review | Automation PM    |
         | TEXAS BEAR CREEK STORAGE | 1212     | Management Review | Management Review | Automation PM    |
      And I wait for "2" seconds
      #203345
      And I click on "Delete" icon for "Pre-Screen Review" inside flex table with id "---tableID:-:AnnSetUpReviewStepsTableId---"
      And I wait for "2" seconds
      And I refresh the page
      And I click on "Delete" icon for "SME Review" inside flex table with id "---tableID:-:AnnSetUpReviewStepsTableId---"
      And I wait for "3" seconds
      And I refresh the page
      And I click on "Delete" icon for "Management Review" inside flex table with id "---tableID:-:AnnSetUpReviewStepsTableId---"
      And I wait for "3" seconds
      And I refresh the page
      And I click on top right button "Generate Assignment Matrix" in flex table with id "---tableID:-:AnnSetUpReviewerAssignTableID---"
      Then I softly see the following messages in the page details contains:
         | The 'Assignment Matrix' cannot be generated because either there are not any review steps created for the announcement or there are not any review forms created for a review step. At least one review step and form must be created for the announcement to generate the assignment matrix. |
      #203695
      And I navigate to "Responsibilities" sub tab
      When I enter the following values into flex table with id "---tableID:-:AnnPeerReviewerTableID---" by clicking "New" :
         | Name     | Responsibility   | Description | Due Date | Allow Record Editing |
         | Simon PM | Program Reviewer | SCDE        | 30       | Yes                  |
      When I click on "Send for Review" icon for "Simon PM" inside flex table with id "---tableID:-:AnnPeerReviewerTableID---"
      And I softly see field "Status" as "Submitted for Review"
      And I navigate to "Setup" sub tab
      Then I softly can see top right button "Generate Assignment Matrix" in flex table with id "---tableID:-:AnnSetUpReviewerAssignTableID---"
      #203358
      And I click on top right button "Generate Assignment Matrix" in flex table with id "---tableID:-:AnnSetUpReviewerAssignTableID---"
      Then I softly see the following messages in the page details contains:
         | The 'Assignment Matrix' cannot be generated because either there are not any review steps created for the announcement or there are not any review forms created for a review step. At least one review step and form must be created for the announcement to generate the assignment matrix. |
      #203357
      And I navigate to "Allocations" sub tab
      And I click on "Remove" icon for "1212" inside flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
      And I navigate to "Setup" sub tab
      And I click on top right button "Generate Assignment Matrix" in flex table with id "---tableID:-:AnnSetUpReviewerAssignTableID---"
      Then I softly see the following messages in the page details contains:
         | The 'Assignment Matrix' cannot be generated because there are not any applicant organizations listed in the 'Invited Applicants and Allocations' table. At least one applicant organization must be listed to generate the assignment matrix. |
      #203351
      When I re-login to "As a Grantor" app as "PM1" user on "INTERNAL" portal
      And I navigate to "Announcements" tab
      When I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:AnnouncementQuickSearchTableId---" panel
      When I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:AnnouncementQuickSearchTableId---"
      And I navigate to "Setup" sub tab
      Then I softly can see top right button "Generate Assignment Matrix" in flex table with id "---tableID:-:AnnSetUpReviewerAssignTableID---"
      #203696
      And I navigate to "Responsibilities" sub tab
      When I click on "Enter Review" icon for "Simon PM" inside flex table with id "---tableID:-:AnnPeerReviewerTableID---"
      When I enter value "Passed" into field "fieldRating__c"
      When I enter value "Test" into field "fieldReviewComments__c"
      And I click modal button "Save"
      And I click modal button "Submit Review"
      When I re-login to "As a Grantor" app as "PM" user on "INTERNAL" portal
      And I navigate to "Announcements" tab
      When I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:AnnouncementQuickSearchTableId---" panel
      When I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:AnnouncementQuickSearchTableId---"
      And I click on "Complete Review" in the page details
      And I softly see field "Status" as "Reviewed"
      And I navigate to "Setup" sub tab
      Then I softly can see top right button "Generate Assignment Matrix" in flex table with id "---tableID:-:AnnSetUpReviewerAssignTableID---"

   @203359 @203334 @203335 @203333 @Sprint:11 @UserStory:199224
   Scenario: Allow announcement owner to 'Generate Assignment Matrix' for 'Reviewer Assignments'
   |Verify that Generated Assignment Matrix table columns values ( peer reviewer with edit access)|
   |Verify that an announcement record owner do not see 'Generate Assignment Matrix' button (Announcement is in  'Submitted for Approval' state)|
   |Verify that an announcement record owner do not see 'Generate Assignment Matrix' button (Announcement is in  'Approved' state)|
   |Verify that an announcement record owner can see 'Generate Assignment Matrix' button (Announcement is in Published state)|
      Given I login to "As a Grantor" app as "PM" user
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
      And I softly see field "Status" as "Created"
      And I navigate to "Setup" sub tab
      When I click on "Edit" icon for "Application" inside flex table with id "---tableID:-:AnnouncementBusinessForms---"
      When I enter value "VD_TestPackage" into field "fieldPackageConfig__c"
      And I click modal button "Save"
      And I wait for "2" seconds
      And I navigate to "Allocations" sub tab
      And I click on top right button "Upload Excel" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
      When I switch to iframe with id "SoleSourceAwardOrganizationsiframeContentId"
      When I upload file "AppWithSchoolCode.xlsx" into library
      And I click modal button "Upload File"
      And I pause execution for "2" seconds
      And I navigate to "Responsibilities" sub tab
      When I enter the following values into flex table with id "---tableID:-:AnnPeerReviewerTableID---" by clicking "New" :
         | Name     | Responsibility   | Description | Due Date | Allow Record Editing |
         | Simon PM | Program Reviewer | SCDE        | 30       | Yes                  |
      When I click on "Send for Review" icon for "Simon PM" inside flex table with id "---tableID:-:AnnPeerReviewerTableID---"
      And I softly see field "Status" as "Submitted for Review"
      When I re-login to "As a Grantor" app as "PM1" user on "INTERNAL" portal
      And I navigate to "Announcements" tab
      When I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:AnnouncementQuickSearchTableId---" panel
      When I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:AnnouncementQuickSearchTableId---"
      #203359
      And I navigate to "Setup" sub tab
      And I click on top right button "Generate Assignment Matrix" in flex table with id "---tableID:-:AnnSetUpReviewerAssignTableID---"
      And I refresh the page
      Then I see the following rows under the following headers in table with id "---tableID:-:AnnSetUpReviewerAssignTableID---" :
         | Applicant                | Org Code | Step Name         | Form Name         | Last Modified By |
         | TEXAS BEAR CREEK STORAGE | 1212     | Pre-Screen Review | Pre-Screen        | Simon PM         |
         | TEXAS BEAR CREEK STORAGE | 1212     | SME Review        | Program Review    | Simon PM         |
         | TEXAS BEAR CREEK STORAGE | 1212     | SME Review        | Fiscal Review     | Simon PM         |
         | TEXAS BEAR CREEK STORAGE | 1212     | SME Review        | Compliance Review | Simon PM         |
         | TEXAS BEAR CREEK STORAGE | 1212     | Management Review | Management Review | Simon PM         |
      And I wait for "2" seconds
      And I navigate to "Responsibilities" sub tab
      When I click on "Enter Review" icon for "Simon PM" inside flex table with id "---tableID:-:AnnPeerReviewerTableID---"
      When I enter value "Passed" into field "fieldRating__c"
      When I enter value "Test" into field "fieldReviewComments__c"
      And I click modal button "Save"
      And I click modal button "Submit Review"
      When I re-login to "As a Grantor" app as "PM" user on "INTERNAL" portal
      And I navigate to "Announcements" tab
      When I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:AnnouncementQuickSearchTableId---" panel
      When I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:AnnouncementQuickSearchTableId---"
      And I click on "Complete Review" in the page details
      And I softly see field "Status" as "Reviewed"
      #203334
      And I click on "Submit For Approval" in the page details
      And I softly see field "Status" as "Submitted for Approval"
      And I navigate to "Setup" sub tab
      Then I softly cannot see top right button "Generate Assignment Matrix" in flex table with id "---tableID:-:AnnSetUpReviewerAssignTableID---"
      #203335
      And I navigate to "Overview" sub tab
      When I "Approve" in the approval decision
      And I softly see field "Status" as "Approved"
      And I navigate to "Setup" sub tab
      Then I softly cannot see top right button "Generate Assignment Matrix" in flex table with id "---tableID:-:AnnSetUpReviewerAssignTableID---"
      #203333
      And I click on "Publish" in the page details
      And I softly see field "Status" as "Published"
      And I navigate to "Setup" sub tab
      Then I softly can see top right button "Generate Assignment Matrix" in flex table with id "---tableID:-:AnnSetUpReviewerAssignTableID---"

   @203355 @Sprint:11 @UserStory:199224
   Scenario: Allow announcement owner to 'Generate Assignment Matrix' for 'Reviewer Assignments'
   |Verify that a peer reviewer with no edit access do not see 'Generate Assignment Matrix' button|
      Given I login to "As a Grantor" app as "PM" user
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
      And I softly see field "Status" as "Created"
      And I navigate to "Setup" sub tab
      When I click on "Edit" icon for "Application" inside flex table with id "---tableID:-:AnnouncementBusinessForms---"
      When I enter value "VD_TestPackage" into field "fieldPackageConfig__c"
      And I click modal button "Save"
      And I wait for "2" seconds
      And I refresh the page
      And I navigate to "Allocations" sub tab
      And I click on top right button "Upload Excel" in flex table with id "---tableID:-:AnnouncementInvitedApplicants---"
      When I switch to iframe with id "SoleSourceAwardOrganizationsiframeContentId"
      When I upload file "AppWithSchoolCode.xlsx" into library
      And I click modal button "Upload File"
      And I pause execution for "2" seconds
      And I navigate to "Responsibilities" sub tab
      When I enter the following values into flex table with id "---tableID:-:AnnPeerReviewerTableID---" by clicking "New" :
         | Name     | Responsibility   | Description | Due Date | Allow Record Editing |
         | Simon PM | Program Reviewer | SCDE        | 30       | No                   |
      When I click on "Send for Review" icon for "Simon PM" inside flex table with id "---tableID:-:AnnPeerReviewerTableID---"
      And I softly see field "Status" as "Submitted for Review"
      When I re-login to "As a Grantor" app as "PM1" user on "INTERNAL" portal
      And I navigate to "Announcements" tab
      When I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:AnnouncementQuickSearchTableId---" panel
      When I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:AnnouncementQuickSearchTableId---"
      And I navigate to "Setup" sub tab
      Then I softly cannot see top right button "Generate Assignment Matrix" in flex table with id "---tableID:-:AnnSetUpReviewerAssignTableID---"
