@organization @regression
Feature: Validate all scenarios related to organization profile

  @181132 @181127 @sprint-1 @userStory-177832
  Scenario: Verify check against the Maximum Users Allowed limit for contact status Invitation Sent
    Given I am on "SUBPORTAL" portal
    When I login as "SPIWAC" user
    And I navigate to "Home" tab
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    #181132
    And I click on top right button "New" in flex table with id "---tableID:-:OrganizationProfileContacts---"
    When I enter "Contacts" values from "Field_Values.xlsx"
    And I enter email id "testauto" into field "fieldEmail"
    And I click modal button "Save"
    And I close modal by clicking the top right x button
    And I click on "Send Invitation" icon for "New" inside flex table with id "---tableID:-:OrganizationProfileContacts---"
    And I click modal button "Send"
    Then I softly see confirmation box with body "Email sent successfully." is displayed
    And I close modal by clicking the top right x button
    #181127
    Then I softly see value "Status" for title "Invitation Sent" inside table "---tableID:-:OrganizationProfileContacts---"
    Then I softly can see row level action button "Send Invitation" against "test test" in flex table with id "---tableID:-:OrganizationProfileContacts---"

  @181042 @sprint-1 @userStory-178210
  Scenario: Verify the organization type for the sub-recipient organization is retained
    Given I am on "SUBPORTAL" portal
    When I login as "SPI" user
    And I navigate to "Home" tab
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    Then I softly see field "Organization Type" as "Nonprofit Organization"