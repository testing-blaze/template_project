@scdesanity @scdeRegression @regression
Feature: scde sanity business flow

  @182263 @182264 @sprint-2 @userStory-178222 @Sanity
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

  @184024 @184098 @184183 @184188 @184175 @184179 @184185 @184180 @184182 @184096 @184138 @184090 @184133 @184134 @184131 @sprint-3 @userStory-175346 @sanity
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
    When I enter value "No" into field "fieldIsBudgetNarrativeRequired__c"
    When I enter value "By Applicant and School" into field "fieldSCDE_Allocation_Level__c"
    When I enter value "School" into field "fieldSCDE_Detailed_Budgeting_Options__c"
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

  @194269 @194271 @194274 @sprint-7 @userStory-189874 @sanity
  Scenario: Verify that the field for 'Pre-Award Risk Assessment Required?'
  |Verify that the field for 'Pre-Award Risk Assessment Required?' is read only
  |Verify that the field has help text for external users saying:  "Indicates whether a pre-award risk assessment (i.e. audit) is required as part of the application."
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
    When I login as "SPI" user
    And I navigate to "Opportunities" tab
    When I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:PublishedOpportunities---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:PublishedOpportunities---"
      #194269
    Then I softly see field "Pre-Award Risk Assessment Required?" inside "Opportunity Specific Settings" section
      #194271
    Then I softly cannot see top right button "Edit" in page detail
      #194274
    And I hovering mouse on help text icon inside page block detail "Pre-Award Risk Assessment Required?"
    Then I softly see "Indicates whether a pre-award risk assessment (i.e. audit) is required as part of the application." shown as help text

  @182058 @182057 @182062 @182065 @182061 @182055 @182051 @182053 @182052 @182056 @182059 @182063 @182054 @sprint-2 @userStory-178204 @sanity
  Scenario: Verify Description section has added  Maximum Users Allowed field
  |Verify Description section has added  Send Claims to SCEIS? field
  |Verify Last Audit Year is hidden on Additional Information section
  |Verify the Active Child Organizations section is hidden
  |Verify the Additional Information section
  |Verify the Description Section has not shown Country, Congressional District. Cage Code, Organization DBA
  |Verify the DUNS is not shown and is replaced with the UEI on header
  |Verify the header should have four fields in the second row in the order of Status, Org Code, EIN, UEI
  |Verify the Org Code is added to the header
  |Verify Vendor Id is relabeled to be Vendor ID
  |Verify the Description layout are according to the attached mockup.
  |Verify the Additional Addresses section does not show a column for Country
  |Verify the Associate Parent Organization is disabled and hidden on the UI.
    Given I am on "SUBPORTAL" portal
    When I login as "SPI" user
    And I navigate to "Home" tab
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
      #182058
    Then I softly see field "Maximum Users Allowed" as "9"
      #182057
    Then I softly see field "Send Claims to SCEIS?" as "No"
      #182062
    Then I softly do not see field "Last Audit Year" inside "Additional Information" section
      #182065
    Then I softly do not see "Active Child Organizations" page block displayed
      #182061
    Then I softly see field "Web-Access Coordinator (WAC)" inside "Additional Information" section
      #182055
    Then I softly do not see field "Country" inside "Description" section
    Then I softly do not see field "Congressional District" inside "Description" section
    Then I softly do not see field "Cage Code" inside "Description" section
    Then I softly do not see field "Organization DBA" inside "Description" section
      #182051
    Then I softly do not see "DUNS" field inside header "Subrecipient Organization"
      #182053 #182052
    Then I softly see "Status" field inside header "Subrecipient Organization"
    Then I softly see "Org Code" field inside header "Subrecipient Organization"
    Then I softly see "EIN" field inside header "Subrecipient Organization"
    Then I softly see "UEI" field inside header "Subrecipient Organization"
      #182056
    Then I softly see field "Vendor ID" inside "Description" section
      #182059
    Then I softly see field "Address Line 1" inside "Description" section
    Then I softly see field "Address Line 2" inside "Description" section
    Then I softly see field "City" inside "Description" section
    Then I softly see field "State" inside "Description" section
    Then I softly see field "Zip Code" inside "Description" section
    Then I softly see field "4-Digit Zip Code Extension" inside "Description" section
    Then I softly see field "Website" inside "Description" section
    Then I softly see field "Phone" inside "Description" section
    Then I softly see field "Organization Type" inside "Description" section
    Then I softly see field "SAM.Gov Expiration Date" inside "Description" section
    Then I softly see field "Send Claims to SCEIS?" inside "Description" section
    Then I softly see field "Maximum Users Allowed" inside "Description" section
      #182063
    Then I softly do not see "Country" in flex table header "---tableID:-:AdditionalAddressInternal---"
      #182054
    Then I softly cannot see top right button "Associate Parent Organization" in page detail
    
  @181764 @sprint-2 @userStory-179997
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
    When I login as "SPI" user
    And I navigate to "Opportunities" tab
    When I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:PublishedOpportunities---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:PublishedOpportunities---"
    When I click on "Qualify" in the page details
    And I softly see field "Status" as "Qualified"
    And I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    And I navigate to "Budget" sub tab
    And I expand nested table containing column value "BP01"
    When I click on "Add" icon for "110 - General Instruction" inside flex table with id "---tableID:-:ApplicationBudgetPeriod---"
    When I enter value "100 - Salaries" into field "fieldMST_Budget_Category__c"
    When I enter value "1" into field "fieldQuantity__c"
    When I enter value "2000" into field "fieldUnitPrice__c"
    When I enter value "Schoolwide" into field "fieldSCDE_BudgetFor__c"
    When I enter value "Wright Middle" into field "fieldSchool__c"
    When I enter value "test" into field "fieldNarrative__c"
    And I click modal button "Save"
    And I save the field containing "EGMS ID" as "APPID"
    And I navigate to "Forms and Files" sub tab
    When I click on "Edit" icon for "No" inside flex table with id "---tableID:-:ApplicationForms---"
    When I enter the following values into flex table with id "---tableID:-:StakeholderParticipants---" by clicking "Add" :
      | Participant’s Name | School Name | Role    | Stakeholder Representation |
      | Automation         | Dixie High  | Teacher | School within District     |
    And I click on "Save" in the page details
    And I wait for "3" seconds
    And I click on "Validate" in the page details
    And I wait for "3" seconds
    And I click on "Submit for Approval" in the page details
    And I wait for "5" seconds
    And I logout
    Given I am on "SUBPORTAL" portal
    When I login as "SPA" user
    And I navigate to "Applications" tab
    When I navigate to "Pending Tasks" content inside "Tasks" subheader on left panel
    And I perform quick search for "{SavedValue:APPID}" in "---tableID:-:ApplicationPendingTask---" panel
    And I click on "Start" icon for "{SavedValue:APPID}" inside flex table with id "---tableID:-:ApplicationPendingTask---"
    When I "Approve" in the approval decision
    And I softly see field "Status" as "Approved for Submission"
    And I click on "Complete Acknowledgement" in the page details
    And I enter value "Checked" into field "selectCheckBoxDiv"
    And I click modal button "Save And Close"
    And I click on "Submit Application" in the page details
    When I re-login to "As a Grantor" app as "PM" user on "INTERNAL" portal
    And I navigate to "Applications" tab
    When I navigate to "Reviews" content inside "Application Reviews" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement}" in "---tableID:-:ApplicationReviews---" panel
    And I click on "View" icon for "{SavedValue:Automation Runtime Announcement}" inside flex table with id "---tableID:-:AppReviewGranterAppSearchID---"
    And I navigate to "Related Log" sub tab
    #Pre-screen Review
    And I click on "View" icon for "Pre-Screen Review" inside flex table with id "---tableID:-:AnnouncementReviewSteps---"
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
    When I check "{SavedValue:APPID}" boxes in flex table with id "---tableID:-:Reviews---"
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
    And I click on "View" icon for "Pre-Screen Review" inside flex table with id "---tableID:-:AnnouncementReviewSteps---"
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
#    And I check "Select All" boxes in flex table with id "---tableID:-:AssignApplicationToUser---"
    And I click on top right button "Assign" in flex table with id "---tableID:-:AssignApplicationToUser---"
    And I pause execution for "5" seconds
    And I refresh the page
    When I check "{SavedValue:APPID}" boxes in flex table with id "---tableID:-:Reviews---"
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

  @183979 @183946 @183968 @183973 @183969 @183944 @183975 @183976 @sprint-3 @userStory-180376
  Scenario: Verify the field "4-Digit Zip Code Extension" is read-only in the "Organization Address " section
  | Verify the field "Address Line 1" is read-only in the "Organization Address " section
  | Verify the field "Address Line 2" is read-only in the "Organization Address " section
  | Verify the field "City" is read-only in the "Organization Address " section
  | Verify the field "County" is read-only in the "Organization Address " section
  | Verify the field "Organization Name" is read-only
  | Verify the field "State" is read-only in the "Organization Address " section
  | Verify the field "Zip Code" is read-only in the "Organization Address " section
    Given I am on "SUBPORTAL" portal
    When I click on "Register" button
    And I click on "Begin Registration" button
    When I enter value as "ZLP4KVER3S75" into "Unique Entity Identifier (UEI)" on old form
    When I enter value as "123456807" into "Employer Identification Number (EIN)" on old form
    When I click on "Verify Information" in the page details
    And I pause execution for "5" seconds
    When I click on "Save and Continue" in the page details
    #183979
    Then I softly see that "4-Digit Zip Code Extension" rendered in view mode only
    #183946
    Then I softly see that "Address Line 1" rendered in view mode only
    #183968
    Then I softly see that "Address Line 2" rendered in view mode only
    #183973
    Then I softly see that "City" rendered in view mode only
    #183969
    Then I softly see that "County" rendered in view mode only
    #183944
    Then I softly see that "Organization Name" rendered in view mode only
    And I pause execution for "3" seconds
    #183975
    Then I softly see that "State" rendered in view mode only
    #183976
    Then I softly see that "Zip Code" rendered in view mode only

  @179998 @180232 @180216 @180226 @180231 @180247 @180227 @180249 @180248 @sprint-1 @userStory-177256
  Scenario: Verify fields on internal program create modal
  |Verify new internal program Help text
  |Verify create modal does not have a field for Internal Organization
  |verify Help text is updated to Formula Grant, Competitive Grant, State Grant, Direct Grant
  |Verify Information section field for Office:  This is a new field
  |Verify Information section of the internal program layout has a field for Type
  |Verify Information section of the internal program layout does not have the Internal Organization, Authorized Signatory, Organization Level
  |Verify Information section field for Office: This field is required to submit
  |Verify Information section field for Office: This is a fort text field
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:InternalProgram---"
    #179998
    Then I softly see "--None--:Formula Grant:Competitive Grant:State Grant:Direct Grant" inside selectbox field "fieldType__c"
    #180232
    And I hovering mouse on help text icon inside page block detail "Type"
    Then I softly see "Program Type: Formula Grant, Competitive Grant, State Grant, Direct Grant" shown as help text
    #180216
    Then I see only the following ordered page blocks :
      | Information | Program Specific Settings |
    #180226
    When I enter value "Automation Runtime Internal Program" into field "fieldProgramName__c"
    When I enter value "Formula Grant" into field "fieldType__c"
    When I enter value "Department of Education" into field "fieldPrimaryFundingOrganization__c"
    When I enter value "No" into field "fieldFocusAreaRequired__c"
    When I enter value "No" into field "fieldIsGoalsRequired__c"
    When I enter value "No" into field "fieldKPIsRequired__c"
    And I click modal button "Save and Continue"
    And I hovering mouse on help text icon inside page block detail "Type"
    Then I softly see "Program Type: Formula Grant, Competitive Grant, State Grant, Direct Grant" shown as help text
    #180231
    Then I softly see "--None--:Formula Grant:Competitive Grant:State Grant:Direct Grant" inside selectbox field "fieldType__c"
    #180247
    When I enter value "description" into field "fieldObjectives__c"
    And I click on "Save" in the page details
    Then I softly see "Office" inside page block detail
    #180227
    Then I softly do not see field "Internal Organization" inside "Information" section
    Then I softly do not see field "Authorized Signatory" inside "Information" section
    Then I softly do not see field "Organization Level" inside "Information" section
    #180249
    And I click on "Submit For Approval" in the page details
    Then I softly see the following messages in the page details contains:
      | Overview Tab - Provide the Office. |
    #180248
    And I click on "Edit" in the page details
    When I enter value "test" into field "fieldSCDE_Office__c"
    And I click on "Save" in the page details
    Then I softly see field "Office" as "test"