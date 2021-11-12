@subrecipientOrg @regression
Feature: Validate all scenarios related to subrecipient organization

  @179296 @sprint-1 @userStory-176430
  Scenario: Verify that Individual Subrecipients section on Home tab
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Home" tab
    When I navigate to "Subrecipients" content inside "Organization" subheader on left panel
    Then I softly do not see "Active Individual Subrecipients" page block displayed

  @179961 @179960 @179267 @179273 @179268 @179276 @179284 @179285 @sprint-1 @userStory-176433
  Scenario: Verify that the section label for SAM.GOV is changed to be SAM.gov Information
  |Verify that the Vendor Id field is relabeled to be Vendor ID
  |Verify the DUNS field in the Organization Profile section.
  |Verify the fields in the SAM.gov Information section during registration approval
  |Verify the column on the Additional Addresses table
  |Verify that the section label is updated to say Web Accessibility Coordinator (WAC) Information
  |Verify the field in Web Accessibility Coordinator (WAC) section
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Home" tab
    When I navigate to "Pending Subrecipient Registrations" content inside "Organization" subheader on left panel
    When I perform quick search for "PEACE CANAL" in "---tableID:-:PendingSubrecipientOrganization---" panel
    When I click on "Start" icon for "PEACE CANAL" inside flex table with id "---tableID:-:PendingSubrecipientOrganization---"
      #179961
    Then I softly see "SAM.gov Information" page block displayed
      #179960
    Then I softly see field "Vendor ID" inside "Organization Profile" section
      #179267
    Then I softly do not see field "DUNS" inside "Organization Profile" section
      #179273
    Then I softly do not see field "Cage Code" inside "SAM.gov Information" section
    Then I softly do not see field "Country" inside "SAM.gov Information" section
      #179268
    Then I softly see field "UEI" inside "Organization Profile" section
      #179276
    Then I softly do not see "Country" in flex table header "---tableID:-:AdditionalAddress---"
      #179284
    And I navigate to "User Profile" sub tab
    Then I softly see "Web Accessibility Coordinator (WAC)" page block displayed
      #179285
    Then I softly do not see field "Country" inside "Web Accessibility Coordinator (WAC)" section