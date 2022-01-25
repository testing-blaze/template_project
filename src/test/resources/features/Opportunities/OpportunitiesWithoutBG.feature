@announcement @regression @scdeRegression
Feature: Validate all scenarios related to opportunities

  @191822 @193358 @193360 @193365 @191824 @sprint-6 @userStory-190013
  Scenario: Verify that for subrecipient user  when an applicant is qualifying the opportunity, shows a warning message if the organization type is not matching the eligible applicant types for the announcement. (when announcement type  is competitive)
  |Verify that the warning message displayed shows Yes and No options
  |Verify that the subrecipient user when click on No option then it will dismiss the warning message and not proceed with qualification.
  |Verify that the subrecipient user when click on Yes option then it  YES will qualify the opportunity
  |Verify that for subrecipient user when an applicant is qualifying the opportunity, do not shows a warning message if the organization type is matching the eligible applicant types for the announcement.
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
    When I click on "Qualify" in the page details without processing
    #191822 #193358
    Then I see confirmation box with body "Your organization is not eligible to apply for the selected opportunity. Are you sure you want to continue?" is displayed
    #193360
    When I click "No" on modal confirmation box
    And I softly see field "Status" as "Published"
    #193365 #191824
    When I click on "Qualify" in the page details without processing
    When I click "Yes" on modal confirmation box
    And I softly see field "Status" as "Qualified"

  @191844 @sprint-6 @userStory-190478
  Scenario: Verify external user should not see the Federal/NGO program from the related announcement, in the funding opportunity. (When external program is not added on announcement)
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
    Then I softly see "No records found" inside flex table with id "---tableID:-:AnnouncementFederalNGOProgram---"

  @191834 @sprint-6 @userStory-190478
  Scenario: Verify external user should see the Federal/NGO program from the related announcement, in the funding opportunity. (When external program is added on announcement)
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
    And I click on top right button "Associate" in flex table with id "---tableID:-:AnnouncementFederalNGOProgram---"
    When I click "Associate" after selection of "{StaticRecords:AutomationPermanentExternalProgram}" in the table "SelectAnnCFDA"
    And I close modal by clicking the top right x button
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
    Then I softly see value "Automation Permanent External Program" for title "Program Title" inside table "---tableID:-:AnnouncementFederalNGOProgram---"