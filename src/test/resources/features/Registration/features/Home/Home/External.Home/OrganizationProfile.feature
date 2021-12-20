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

    Then I softly see value "Invitation Sent" for title "Status" inside table "---tableID:-:OrganizationProfileContacts---"
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
    Then I softly see that "Maximum Users Allowed" rendered in view mode only
    Then I softly see field "Maximum Users Allowed" as "9"
      #182057
    Then I softly see field "*Send Claims to SCEIS?" as "No"
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

  @181149 @181147 @181146 @181143 @181151 @181142 @sprint-2 @userStory-178219
  Scenario: Verify  'Profile Description' section on My Profile page
  |Verify 'Country' field on My Profile page
  |Verify 'Affiliated Institution' field on My Profile page
  |Verify 'Accessibility Mode' field on My Profile page
  |Verify editable fields in User Profile for external users
  |Verify non editable fields in User Profile for external users
    Given I am on "SUBPORTAL" portal
    When I login as "SPI" user
    And I navigate to "Home" tab
    When I select "My Profile" from user dropdown
      #181149
    Then I softly do not see "Profile Description" page block displayed
      #181147
    Then I softly do not see field "Country" inside "Contact Information" section
      #181146
    Then I softly do not see "Affiliated Institution" inside page block detail
      #181143
    And I click on "Edit" in the page details
    Then I softly see fields "fieldGNT__Enable508Compliance__c" is in edit mode
    #181151
    Then I softly see fields "fieldPhone" is in edit mode
    Then I softly see fields "fieldMailingStreet" is in edit mode
    Then I softly see fields "fieldMailingCity" is in edit mode
    Then I softly see fields "fieldAddress2__c" is in edit mode
    Then I softly see fields "fieldMailingState" is in edit mode
    Then I softly see fields "fieldMailingPostalCode" is in edit mode
    #181142
    Then I softly see that "fieldFirstName" rendered in view mode only
    Then I softly see that "fieldLastName" rendered in view mode only
    Then I softly see that "fieldUserRole__c" rendered in view mode only
    Then I softly see that "fieldEmail" rendered in view mode only

  @181851 @sprint-2 @userStory-178203
  Scenario: Verify that the Country field in "subrecipient organization layout"
    Given I am on "SUBPORTAL" portal
    When I login as "SPIWAC" user
    And I navigate to "Home" tab
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:OrganizationProfileContacts---"
    Then I softly do not see "Country" inside page block detail

  @181890 @181891 @sprint-2 @userStory-178211
  Scenario: Verify that when I create an additional address, I do not see the Country field.
  |Verify that when I edit an additional address, I do not see the Congressional District and County
    Given I am on "SUBPORTAL" portal
    When I login as "SPIWAC" user
    And I navigate to "Home" tab
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:AdditionalAddressOnSubrecipientOrg---"
        #181890
    Then I softly do not see "Country" inside page block detail
        #181891
    When I enter value "Backup" into field "fieldAddressType__c"
    When I enter value "Street" into field "fieldAddressLine1__c"
    When I enter value "city" into field "fieldCity__c"
    When I enter value "LA" into field "fieldState__c"
    When I enter value "12345" into field "fieldZipCode__c"
    And I click modal button "Save"
    And I click on "Edit" icon for "Backup" inside flex table with id "---tableID:-:AdditionalAddressOnSubrecipientOrg---"
    Then I softly do not see "Country" inside page block detail
    Then I softly do not see "Congressional District" inside page block detail

  @181719 @181722 @sprint-2 @userStory-178205
  Scenario: Verify that as a WAC user, when I create a new external contact, I do not see the Country field
  |Verify that when I view a recipient (external) contact , the Country field is hidden. a. The Country field is set as USA and the field is hidden.
    Given I am on "SUBPORTAL" portal
    When I login as "SPIWAC" user
    And I navigate to "Home" tab
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:OrganizationProfileContacts---"
      #181719
    Then I softly do not see "Country" inside page block detail
    And I close modal by clicking the top right x button
      #181722
    And I click on "View" icon for "Automation Contact" inside flex table with id "---tableID:-:OrganizationProfileContacts---"
    Then I softly do not see "Country" inside page block detail

  @179473 @VerifyLegalDisclaimers @sprint-1 @userstory-176428
  Scenario: Verify legal disclaimers during LEA registration
    Given I am on "SUBPORTAL" portal
    When I login as "SPIWAC" user
    And I navigate to "Home" tab
    And I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    When I navigate to "Overview" tab
    When I click on top right button "New" in flex table with id "{tableID:OrganizationProfileContacts}"
    When I enter value "Automation" into field "fieldFirstName"
    When I enter value "Contact" into field "fieldLastName"
    When I enter value "(111) 222-3333" into field "fieldPhone"
    And I enter email id "testmailDrop" into field "fieldEmail"
    When I enter value "Secondary" into field "fieldUserRole__c"
    When I enter value "1133 Fifteenth St. N.W., Suite 1000" into field "fieldMailingStreet"
    When I enter value "Washington" into field "fieldMailingCity"
    When I enter value "HI" into field "fieldState__c"
    When I enter value "67848" into field "fieldMailingPostalCode"
    And I click modal button "Save"
    And I save the field labeled "Email" as "emailId"
    And I close modal by clicking the top right x button
    When I perform quick search for "{SavedValue:emailId}" in "{tableID:OrganizationProfileContacts}" panel
    And I click on "Send Invitation" icon for "{SavedValue:emailId}" inside flex table with id "{tableID:OrganizationProfileContacts}"
    When I click modal button "Send"
    And I click "Ok" on modal confirmation box
    And I pause execution for "180" seconds
    And I checkout to maildrop with mailid "{SavedValue:emailId}"
    And I pause execution for "2" seconds
    When I perform operations on mailDropCC with mail "{SavedValue:emailId}" and subject "Sandbox: Notification: EGMS User Invitation" with link "AdditionalApplicant"
    Then I softly see "Additional User Detail" page block displayed

  @181419 @sprint-2 @userStory-178214 @UmangParekh
  Scenario: Verify External SPI (primary) user cannot create or edit contacts for organization
    Given I am on "SUBPORTAL" portal
    When I login as "SPI" user
    And I navigate to "Home" tab
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    When I perform quick search for "Active" in "---tableID:-:OrganizationProfileContacts---" panel
    And I pause execution for "2" seconds
    Then I softly cannot see top right button "New" in flex table with id "---tableID:-:OrganizationProfileContacts---"
    Then I softly cannot see row level action button "Edit" against "Active" in flex table with id "---tableID:-:OrganizationProfileContacts---"

  @181420 @sprint-2 @userStory-178214 @UmangParekh
  Scenario: Verify External WAC user can create or edit contacts for organization.
    Given I am on "SUBPORTAL" portal
    When I login as "SPIWAC" user
    And I navigate to "Home" tab
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    Then I softly can see top right button "New" in flex table with id "---tableID:-:OrganizationProfileContacts---"
    When I click on top right button "New" in flex table with id "{tableID:OrganizationProfileContacts}"
    When I enter value "Automation" into field "fieldFirstName"
    When I enter value "Contact" into field "fieldLastName"
    When I enter value "(111) 222-3333" into field "fieldPhone"
    And I enter email id "testmailDrop" into field "fieldEmail"
    When I enter value "Secondary" into field "fieldUserRole__c"
    When I enter value "1133 Fifteenth St. N.W., Suite 1000" into field "fieldMailingStreet"
    When I enter value "Washington" into field "fieldMailingCity"
    When I enter value "HI" into field "fieldState__c"
    When I enter value "67848" into field "fieldMailingPostalCode"
    And I click modal button "Save"
    And I wait for "2" seconds
    Then I softly can see top right button "Edit" in flex table with id "---tableID:-:AdditionalUserModal---"
    And I close modal by clicking the top right x button

  @184128 @184124 @184130 @184324 @sprint-3 @userStory-@176427
  Scenario: Verify that "Indirect Rates" section is located after the Contacts section.
  |Verify that there is a section for "Indirect Rates" on my organization's layout
  |Verify that the "Indirect Rates" section grid has the following columns
  |Verify that the "Indirect Rates" section grid has the following columns and all fields are read-only
    Given I am on "SUBPORTAL" portal
    When I login as "SPIWAC" user
    And I navigate to "Home" tab
    And I navigate to "Overview" sub tab
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    #184128 #184124
    Then I see only the following ordered page blocks :
      | Description | Additional Information | Additional Addresses | Contacts | Indirect Rates | System Information |
    #184130
    Then I see only the following ordered headers in table with id "---tableID:-:SubOrgIndirectRates---" :
      | Indirect Cost Rate Type | Approved Indirect Cost Rate (%) | Fiscal Year |
    #184324
    Then I softly cannot see row level action button "Edit" against "2021" in flex table with id "---tableID:-:SubOrgIndirectRates---"