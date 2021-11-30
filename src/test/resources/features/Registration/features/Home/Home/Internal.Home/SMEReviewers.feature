@SubrecipientContacts @regression @scdeRegression @SMEReviewers
Feature: Validate all scenarios related to SME reviewers

  @179277 @VerifyLegalDisclaimers @sprint-1 @userstory-176429
  Scenario: Verify legal disclaimers during SME registration
    When I login to "As a Grantor" app as "Admin" user
    And I navigate to "Home" tab
    When I navigate to "SME Reviewers" content inside "Contacts" subheader on left panel
    And I click on top right button "New" in flex table with id "{tableID:SMEReviewersPotentialReviewersTableId}"
    When I enter value "Automation1" into field "fieldFirstName"
    When I enter value "Contact" into field "fieldLastName"
    When I enter value "(897) 898-7654" into field "fieldPhone"
    And I enter email id "testmailDrop" into field "fieldEmail"
    When I click modal button "Save"
    When I perform quick search for "testmaildrop" in "{tableID:SMEReviewersPotentialReviewersTableId}" panel
    And I save the value from row "1" for column name "Email" as "emailId" from flex table "{tableID:SMEReviewersPotentialReviewersTableId}"
    And I click on "Send Invitation" icon for "{SavedValue:emailId}" inside flex table with id "{tableID:SMEReviewersPotentialReviewersTableId}"
    When I click modal button "Send"
    And I click "Ok" on modal confirmation box
    And I pause execution for "180" seconds
    And I checkout to maildrop with mailid "{SavedValue:emailId}"
    And I pause execution for "2" seconds
    When I perform operations on mailDropCC with mail "{SavedValue:emailId}" and subject "Sandbox: Notification: You have been Invited to Register in theEnterprise Grants Management System (EGMS)" with link "Reviewer"
    Then I softly see "Subject Matter Expert (SME Reviewer) Profile" page block displayed

  @180663 @sprint-2 @userstory-176432
  Scenario: Verify Area of Expertise section  in View Active SME Reviewers Modal
    When I login to "As a Grantor" app as "Admin" user
    And I navigate to "Home" tab
    When I navigate to "SME Reviewers" content inside "Contacts" subheader on left panel
    When I perform quick search for "Automation SME Reviewer User" in "{tableID:ActiveSMEReviewers}" panel
    And I click on "View" icon for "Automation SME Reviewer User" inside flex table with id "{tableID:ActiveSMEReviewers}"
    Then I softly do not see "Area of Expertise" page block displayed

  @179311 @sprint-2 @userstory-176432
  Scenario: Verify The Area of Expertise dropdown options for SME users
    When I login to "As a Grantor" app as "Admin" user
    And I navigate to "Home" tab
    When I navigate to "SME Reviewers" content inside "Contacts" subheader on left panel
    And I click on top right button "New" in flex table with id "{tableID:SMEReviewersPotentialReviewersTableId}"
    When I enter value "Automation1" into field "fieldFirstName"
    When I enter value "Contact" into field "fieldLastName"
    When I enter value "(897) 898-7654" into field "fieldPhone"
    And I enter email id "testmailDrop" into field "fieldEmail"
    When I click modal button "Save"
    When I perform quick search for "testmaildrop" in "{tableID:SMEReviewersPotentialReviewersTableId}" panel
    And I save the value from row "1" for column name "Email" as "emailId" from flex table "{tableID:SMEReviewersPotentialReviewersTableId}"
    And I click on "Send Invitation" icon for "{SavedValue:emailId}" inside flex table with id "{tableID:SMEReviewersPotentialReviewersTableId}"
    When I click modal button "Send"
    And I click "Ok" on modal confirmation box
    And I pause execution for "180" seconds
    And I checkout to maildrop with mailid "{SavedValue:emailId}"
    And I pause execution for "2" seconds
    When I perform operations on mailDropCC with mail "{SavedValue:emailId}" and subject "Sandbox: Notification: You have been Invited to Register in theEnterprise Grants Management System (EGMS)" with link "Reviewer"
    Then I softly do not see "Area of Expertise" page block displayed
    Then I softly do not see "Primary Area of Expertise" inside page block detail
    Then I softly do not see "Primary Area of Expertise Description" inside page block detail
    Then I softly do not see "Secondary Area of Expertise" inside page block detail
    Then I softly do not see "Tertiary Area of Expertise" inside page block detail