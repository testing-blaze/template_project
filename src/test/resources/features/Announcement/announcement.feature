@announcement @regression @scdeRegression
Feature: Validate all scenarios related to announcement

  @182258 @182257 @sprint-2 @userStory-178222 @BugId-184193
  Scenario: Verify that the forms are listed in the ascending order of the sequence numbers listed on the form package (Announcements)
  |Verify the 'Sequence Number' column on the Preview Form Package modal window (Announcements)
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Announcements" tab
    And I click on top right button "New" in flex table with id "---tableID:-:Announcements---"
    When I enter value "Automation Runtime Announcement" into field "fieldAnnouncementName__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    And I click on "Continue" in the page details
    When I enter value "No" into field "fieldIsMatchRequired__c"
    When I enter value "No" into field "fieldRiskAssessment_Required__c"
    When I enter value "N/A" into field "fieldSCDE_Allocation_Level__c"
    And I click modal button "Save and Continue"
    And I click on "Save" in the page details
    #182258
    And I navigate to "Setup" sub tab
    When I click on "Preview" icon for "Application" inside flex table with id "---tableID:-:AnnouncementBusinessForms---"
    Then I softly see content of expected column "Sequence Number" is in "ASC" order of table id "---tableID:-:PreviewPackageForms---"
    #182257
    Then I softly see "Sequence Number" in flex table header "---tableID:-:PreviewPackageForms---"

  @181385 @sprint-2 @userStory-178224
  Scenario: Verify columns in the Preview Form Package modal window for Announcements
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Announcements" tab
    And I click on top right button "New" in flex table with id "---tableID:-:Announcements---"
    When I enter value "Automation Runtime Announcement" into field "fieldAnnouncementName__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    And I click on "Continue" in the page details
    When I enter value "No" into field "fieldIsMatchRequired__c"
    When I enter value "No" into field "fieldRiskAssessment_Required__c"
    When I enter value "N/A" into field "fieldSCDE_Allocation_Level__c"
    And I click modal button "Save and Continue"
    And I click on "Save" in the page details
    And I navigate to "Setup" sub tab
    When I click on "Preview" icon for "Application" inside flex table with id "---tableID:-:AnnouncementBusinessForms---"
    Then I softly do not see "Form Expiration" in flex table header "---tableID:-:PreviewPackageForms---"
    Then I softly do not see "Is Available?" in flex table header "---tableID:-:PreviewPackageForms---"

  @183112 @183108 @183124 @183127 @183114 @183121 @183117 @sprint-3 @userStory-182461
  Scenario: Verify that in the Create Announcement modal, Budget Type is set to Construction on the back-end and the field is hidden (Competitive Announcements)
  |Verify that in the Create Announcement modal, Program ID is relabeled to be Internal Program (from the Competitive Announcements list)
  |Verify that in the Create Announcement modal, Advance Payment Allowed? field is set to No and is hidden (Competitive Announcements)
  |Verify that in the Create Announcement modal, Are Expense Details Required on Reimbursement? field is set to Yes and is hidden (Competitive Announcements)
  |Verify that in the Create Announcement modal, Leverage Allowed is set to No and is hidden (Competitive Announcements)
  |Verify that in the Create Announcement modal, Pre-Application Required? field is set to No and is hidden (Competitive Announcements)
  |Verify that in the Create Announcement modal, Program Income field is set to No and is hidden (Competitive Announcements)
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Announcements" tab
    When I navigate to "Competitive" content inside "Announcements" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:CompetitiveAnnouncements---"
    #183112
    Then I softly do not see "Budget Type" inside page block detail
    #183108
    Then I softly do not see "Program ID" inside page block detail
    Then I softly see "Internal Program" inside page block detail
    #183124
    When I enter value "Automation Runtime Announcement" into field "fieldAnnouncementName__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    And I click on "Continue" in the page details
    Then I softly do not see "Advance Payment Allowed?" inside page block detail
    #183127
    Then I softly do not see "Are Expense Details Required on Reimbursement?" inside page block detail
    #183114
    Then I softly do not see "Leverage Allowed" inside page block detail
    #183121
    Then I softly do not see "Pre-Application Required?" inside page block detail
    #183117
    Then I softly do not see "Program Income" inside page block detail

  @183110 @183106 @183125 @183128 @183115 @183122 @183118 @sprint-3 @userStory-182461
  Scenario: Verify that in the Create Announcement modal, Budget Type is set to Construction on the back-end and the field is hidden (Formula Announcements)
  |Verify that in the Create Announcement modal, Program ID is relabeled to be Internal Program (from the Formula Announcements list)
  |Verify that in the Create Announcement modal, Advance Payment Allowed? field is set to No and is hidden (Formula Announcements)
  |Verify that in the Create Announcement modal, Are Expense Details Required on Reimbursement? field is set to Yes and is hidden (Formula Announcements)
  |Verify that in the Create Announcement modal, Leverage Allowed is set to No and is hidden (Formula Announcements)
  |Verify that in the Create Announcement modal, Pre-Application Required? field is set to No and is hidden (Formula Announcements)
  |Verify that in the Create Announcement modal, Program Income field is set to No and is hidden (Formula Announcements)
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Announcements" tab
    When I navigate to "Formula" content inside "Announcements" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:FormulaAnnouncements---"
    #183110
    Then I softly do not see "Budget Type" inside page block detail
    #183106
    Then I softly do not see "Program ID" inside page block detail
    Then I softly see "Internal Program" inside page block detail
    #183125
    When I enter value "Automation Runtime Announcement" into field "fieldAnnouncementName__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    And I click on "Continue" in the page details
    Then I softly do not see "Advance Payment Allowed?" inside page block detail
    #183128
    Then I softly do not see "Are Expense Details Required on Reimbursement?" inside page block detail
    #183115
    Then I softly do not see "Leverage Allowed" inside page block detail
    #183122
    Then I softly do not see "Pre-Application Required?" inside page block detail
    #183118
    Then I softly do not see "Program Income" inside page block detail

  @183109 @183105 @183123 @183126 @183113 @183119 @183116 @183134 @183132 @sprint-3 @userStory-182461
  Scenario: Verify that in the Create Announcement modal, Budget Type is set to Construction on the back-end and the field is hidden (Landing Page)
  |Verify that in the Create Announcement modal, Program ID is relabeled to be Internal Program (Landing Page)
  |Verify that in the Create Announcement modal, Advance Payment Allowed? field is set to No and is hidden (Landing Page)
  |Verify that in the Create Announcement modal, Are Expense Details Required on Reimbursement? field is set to Yes and is hidden (Landing Page)
  |Verify that in the Create Announcement modal, Leverage Allowed is set to No and is hidden (Landing Page)
  |Verify that in the Create Announcement modal, Pre-Application Required? field is set to No and is hidden (Landing Page)
  |Verify that in the Create Announcement modal, Program Income field is set to No and is hidden (Landing Page)
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Announcements" tab
    And I click on top right button "New" in flex table with id "---tableID:-:Announcements---"
    #183109
    Then I softly do not see "Budget Type" inside page block detail
    #183105
    Then I softly do not see "Program ID" inside page block detail
    Then I softly see "Internal Program" inside page block detail
    #183123
    When I enter value "Automation Runtime Announcement" into field "fieldAnnouncementName__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    And I click on "Continue" in the page details
    Then I softly do not see "Advance Payment Allowed?" inside page block detail
    #183126
    Then I softly do not see "Are Expense Details Required on Reimbursement?" inside page block detail
    #183113
    Then I softly do not see "Leverage Allowed" inside page block detail
    #183119
    Then I softly do not see "Pre-Application Required?" inside page block detail
    #183116
    Then I softly do not see "Program Income" inside page block detail
    #183134
    And I hovering mouse on help text icon inside page block detail "Negotiations Allowed?"
    Then I see "For 'Competitive' announcement types, Negotiations must be allowed." shown as help text
    #183132
    When I enter value "No" into field "fieldIsMatchRequired__c"
    When I enter value "No" into field "fieldRiskAssessment_Required__c"
    When I enter value "N/A" into field "fieldSCDE_Allocation_Level__c"
    And I click modal button "Save and Continue"
    And I click on "Save" in the page details
    Then I softly see field "Negotiations Allowed?" as "Yes"

  @184024 @184098 @184183 @184188 @184175 @184179 @184185 @184180 @184182 @184096 @184138 @184090 @184133 @184134 @184131 @sprint-3 @userStory-175346
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
    When I enter value "N/A" into field "fieldSCDE_Allocation_Level__c"
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

  @183344 @184092 @184093 @sprint-3 @userStory-@179300
    Scenario:  Verify that I should see an edit button in the actions column so that I can edit in-line when my announcement is in state "Created".
    | Verify that I should see an edit button in the actions column so that I can edit in-line when my announcement is in state "Submitted for Review".
    | Verify that I should see an edit button in the actions column so that I can edit in-line when my announcement is in state "Reviewed".
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Announcements" tab
    And I click on top right button "New" in flex table with id "---tableID:-:Announcements---"
    When I enter value "Automation Runtime Announcement" into field "fieldAnnouncementName__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    And I click on "Continue" in the page details
    When I enter value "No" into field "fieldIsMatchRequired__c"
    When I enter value "No" into field "fieldRiskAssessment_Required__c"
    When I enter value "N/A" into field "fieldSCDE_Allocation_Level__c"
    And I click modal button "Save and Continue"
    And I navigate to "Overview" sub tab
    #183344
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementContactsTable---"
    When I click "Associate" after selection of "Automation PM" in the table "---tableID:-:AnnouncementContactsModal---"
    Then I softly can see row level action button "Edit" against "Automation PM" in flex table with id "---tableID:-:AnnouncementContactsTable---"
    #184092
    And I navigate to "Responsibilities" sub tab
    And I click on top right button "New" in flex table with id "---tableID:-:PeerReviewers---"
    When I enter value "Automation PM" into field "s2id_autogen15"
    When I enter value "Test" into field "Responsibility__c"
    When I enter value "200" into field "DueDate__c"
    And I click on "Save" in the page details
    And I click on "Send for Review" icon for "Automation PM" inside flex table with id "---tableID:-:PeerReviewers---"
    And I softly see field "Status" as "Submitted for Review"
    And I navigate to "Overview" sub tab
    Then I softly can see row level action button "Edit" against "Automation PM" in flex table with id "---tableID:-:AnnouncementContactsTable---"
    #184093
    And I navigate to "Responsibilities" sub tab
    And I click on "Enter Review" icon for "Automation PM" inside flex table with id "---tableID:-:PeerReviewers---"
    When I enter value "Passed" into field "fieldRating__c"
    When I enter value "Reviewed" into field "fieldReviewComments__c"
    And I click modal button "Save"
    And I click modal button "Submit Review"
    And I click on "Resend for Review" icon for "Automation PM" inside flex table with id "---tableID:-:PeerReviewers---"
    And I click on "Complete Review" in the page details
    And I softly see field "Status" as "Reviewed"
    And I navigate to "Overview" sub tab
    Then I softly can see row level action button "Edit" against "Automation PM" in flex table with id "---tableID:-:AnnouncementContactsTable---"
    
  @184152 @184163 @184149 @184122 @184083 @184187 @184119 @184162 @184184 @184127 @184099 @sprint-3 @userStory-175346
  Scenario: Verify that the Allocation Level field  is read-only in "Announcement Specific Settings" section under "Overview" tab
  |Verify that the Detailed Budgeting Option field  is read-only in "Announcement Specific Settings" section under "Overview" tab
  |Verify the Eligible Applicant Types under "Eligibility Details" section
  |Verify the Funding Source field has Dropdown with Federal and State options
  |Verify the Internal Program field is read-only in Information section
  |Verify that a new field for Maximum Indirect Cost is user entered currency field
  |Verify the new field for Funding Source in Information section under Overview tab
  |Verify that the Allocation Level field Help text saying:  Specifies how allocations can be apportioned for formula announcements
  |Verify that the "Indirect Cost Type" field is required to Submit
  |Verify the Funding Source field is required on Submit
  |Verify that there is a new field for Office is required on Submit
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Announcements" tab
    When I navigate to "Formula" content inside "Announcements" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:FormulaAnnouncements---"
    When I enter value "Automation Runtime Announcement" into field "fieldAnnouncementName__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    And I click on "Continue" in the page details
    When I enter value "No" into field "fieldIsMatchRequired__c"
    When I enter value "No" into field "fieldRiskAssessment_Required__c"
    When I enter value "N/A" into field "fieldSCDE_Allocation_Level__c"
    And I click modal button "Save and Continue"
      #184152
    Then I softly see field "Allocation Level" as "N/A"
      #184163
    Then I softly see field "Detailed Budgeting Option" as ""
      #184149
    Then I softly see "Local Education Agency:Nonprofit Organization:State Agency:Public Institution of Higher Education:Private Institution of Higher Education:Community-based Organization (CBO):For Profit Organization:Faith-based Organization:Library:Native American tribal Government:Native American tribal organization:Public Housing Authority:Other" inside selectbox field "fieldEligibleApplicantTypes__c"
      #184122
    Then I softly see "--None--:Federal:State" inside selectbox field "fieldSCDE_Funding_Source__c"
      #184083
    Then I softly see field "Internal Program" as "Automation Permanent Program"
    #184187
    And I navigate to "Financials" sub tab
    When I enter value "1000" into field "fieldSCDE_Maximum_Indirect_Cost__c"
    And I click on "Save" in the page details
    Then I softly see field "Maximum Indirect Cost Rate" as "1,000.00%"
    #184119
    And I navigate to "Overview" sub tab
    Then I softly see field "Funding Source" inside "Information" section
    #184162
    And I hovering mouse on help text icon inside page block detail "Allocation Level"
    Then I softly see "Specifies how allocations can be apportioned for formula announcements." shown as help text
    And I pause execution for "4" seconds
    #184184
    And I click on "Submit For Approval" in the page details
    Then I softly see the following messages in the page details contains:
      | Overview Tab - Indirect cost rate field is required for submitting for approval. |
    #184127
    Then I softly see the following messages in the page details contains:
      | Overview Tab - Funding source field is required for submitting for approval. |
    #184099
    Then I softly see the following messages in the page details contains:
      | Overview Tab - Office field is required for submitting for approval. |

  @184171 @sprint-3 @userStory-175346
  Scenario: Verify the Budgeting is Required for field has help text saying "Indicates whether the applicant organization is required to complete a budget for the first budget period or for all budget periods"
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Announcements" tab
    When I navigate to "Formula" content inside "Announcements" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:FormulaAnnouncements---"
    When I enter value "Automation Runtime Announcement" into field "fieldAnnouncementName__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    And I click on "Continue" in the page details
    When I enter value "No" into field "fieldIsMatchRequired__c"
    When I enter value "No" into field "fieldRiskAssessment_Required__c"
    When I enter value "N/A" into field "fieldSCDE_Allocation_Level__c"
    And I click modal button "Save and Continue"
    And I click on "Save" in the page details
    And I navigate to "Financials" sub tab
    And I hovering mouse on help text icon inside page block detail "Budgeting is Required for:"
    Then I softly see "Indicates whether the applicant organization is required to complete a budget for the first budget period or for all budget periods." shown as help text

  @184164 @sprint-3 @userStory-175346
  Scenario: Verify the Detailed Budgeting Option field Help text saying:  Specifies program-related fields for applicants to complete on the budget template
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Announcements" tab
    When I navigate to "Formula" content inside "Announcements" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:FormulaAnnouncements---"
    When I enter value "Automation Runtime Announcement" into field "fieldAnnouncementName__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    And I click on "Continue" in the page details
    When I enter value "No" into field "fieldIsMatchRequired__c"
    When I enter value "No" into field "fieldRiskAssessment_Required__c"
    When I enter value "N/A" into field "fieldSCDE_Allocation_Level__c"
    And I click modal button "Save and Continue"
    And I click on "Save" in the page details
    And I hovering mouse on help text icon inside page block detail "Detailed Budgeting Option"
    Then I softly see "Specifies program-related fields for applicants to complete on the budget template." shown as help text

  @184317 @sprint-3 @userStory-175346
  Scenario: Verify that the help text that says: "For Federal programs, the Program Number is the Assistance Listing number"
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Announcements" tab
    When I navigate to "Formula" content inside "Announcements" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:FormulaAnnouncements---"
    When I enter value "Automation Runtime Announcement" into field "fieldAnnouncementName__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    And I click on "Continue" in the page details
    When I enter value "No" into field "fieldIsMatchRequired__c"
    When I enter value "No" into field "fieldRiskAssessment_Required__c"
    When I enter value "N/A" into field "fieldSCDE_Allocation_Level__c"
    And I click modal button "Save and Continue"
    And I click on "Save" in the page details
    And I hovering mouse on help text icon inside page block detail "Federal/NGO Programs"
    Then I softly see "For Federal programs, the Program Number is the Assistance Listing number." shown as help text

  @184081 @sprint-3 @userStory-175346
  Scenario: Verify the "Type" field help text says: Type of funding announcement (Competitive or Formula)
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Announcements" tab
    When I navigate to "Formula" content inside "Announcements" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:FormulaAnnouncements---"
    When I enter value "Automation Runtime Announcement" into field "fieldAnnouncementName__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    And I click on "Continue" in the page details
    When I enter value "No" into field "fieldIsMatchRequired__c"
    When I enter value "No" into field "fieldRiskAssessment_Required__c"
    When I enter value "N/A" into field "fieldSCDE_Allocation_Level__c"
    And I click modal button "Save and Continue"
    And I click on "Save" in the page details
    And I hovering mouse on help text icon inside page block detail "Type"
    Then I softly see "Funding Announcement Type (Competitive or Formula)" shown as help text

  @184139 @sprint-3 @userStory-175346
  Scenario: Verify the Validation message says, "For 'Competitive' announcement types, 'Negotiations Allowed?' must be set to Yes
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Announcements" tab
    When I navigate to "Competitive" content inside "Announcements" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:CompetitiveAnnouncements---"
    When I enter value "Automation Runtime Announcement" into field "fieldAnnouncementName__c"
    When I enter value "PG-SCDE-0105" into field "fieldProgram__c"
    And I click on "Continue" in the page details
    When I enter value "No" into field "fieldIsMatchRequired__c"
    When I enter value "No" into field "fieldRiskAssessment_Required__c"
    When I enter value "N/A" into field "fieldSCDE_Allocation_Level__c"
    And I click modal button "Save and Continue"
    When I enter value "No" into field "fieldIsNegotiationsAllowed__c"
    And I click on "Save" in the page details
    And I click on "Submit For Approval" in the page details
    Then I softly see the following messages in the page details contains:
      | For 'Competitive' announcement types, 'Negotiations Allowed?' must be set to Yes |

  @184168 @sprint-3 @userStory-175346
  Scenario: Verify the Validation message:  For Formula announcements, the Maximum Applications Allowed must be 1
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
    When I enter value "2" into field "fieldMaxApplicationsAllowed__c"
    And I navigate to "Financials" sub tab
    When I enter value "1000" into field "fieldAwardFloor__c"
    When I enter value "2000" into field "fieldAwardCeiling__c"
    When I enter value "5000" into field "fieldTotalCommittedAmount__c"
    When I enter value "Unrestricted" into field "fieldSCDE_Indirect_Cost_Type__c"
    And I click on "Save" in the page details
    And I click on "Submit For Approval" in the page details
    Then I softly see the following messages in the page details contains:
      | For Formula announcements, the Maximum Applications Allowed must be 1. |