@organizationProfile @Organization @regression @scdeRegression
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

  @182058 @182057 @182062 @182065 @182061 @182055 @182051 @182053 @182052 @182056 @182059 @182063 @182054 @sprint-2 @userStory-178204
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
    And I click on "Edit" in the page details
    Then I softly see field "Maximum Users Allowed" as "5"
      #182057
    Then I softly see field "*Send Claims to SCEIS?" as ""
    And I click on "Save" in the page details
      #182062
    Then I softly do not see field "Last Audit Year" inside "Additional Information" section
      #182065
    Then I softly do not see "Active Child Organizations" page block displayed
      #182061
    Then I softly see field "Web Accessibility Coordinator (WAC)" inside "Additional Information" section
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