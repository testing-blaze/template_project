@SubrecipientContacts @regression @scdeRegression
Feature: Validate all scenarios related to subrecipient contacts

  @181743 @sprint-2 @userStory-178203
    Scenario: Verify that the Country field in "Create Subrecipient Contact" modal
    When I login to "As a Grantor" app as "Admin" user
    And I navigate to "Home" tab
    When I navigate to "Subrecipients" content inside "Contacts" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:SubrecipientContacts---"
    Then I softly do not see "Country" inside page block detail