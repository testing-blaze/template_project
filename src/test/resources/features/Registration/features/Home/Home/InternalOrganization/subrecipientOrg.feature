@subrecipientOrg @regression @Organization
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
    And I click toggle button to select "Subrecipient Organizations - Pending"
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

  @180079 @180078 @180072 @180082 @180084 @180085 @180080 @180074 @179301 @180073 @180076 @sprint-1 @userStory-176390
  Scenario: Verify do not see the DUNS field in the header.
  |Verify  do not see the some fields in the Description section of the Overview tab
  |Verify Description section has a field for Vendor ID that is editable,
  |Verify I do not see the Country column in the Additional Addresses section.
  |Verify I see that the section for Active Child Organizations is hidden during edit and view modes.
  |Verify Web Accessibility Coordinator (WAC) in the Additional Information section
  |Verify Description section has a field for Send Claims to SCEIS
  |Verify Description section has a field for UEI that is editable
  |Verify Description section has a field for Organization Code which is editable, optional and is a numeric, 4-digit field.
  |Verify Description section has a field for Maximum Users Allowed which is editable
    When I login to "As a Grantor" app as "Admin" user
    And I navigate to "Home" tab
    When I navigate to "Subrecipients" content inside "Organization" subheader on left panel
    When I perform quick search for "PEACE CANAL" in "---tableID:-:SubrecipientOrganization---" panel
    When I click on "View" icon for "PEACE CANAL" inside flex table with id "---tableID:-:SubrecipientOrganization---"
      #180079
    Then I softly do not see "DUNS" field inside header "Subrecipient Organization"
      #180078
    Then I softly do not see field "Country" inside "Description" section
    Then I softly do not see field "Congressional District" inside "Description" section
    Then I softly do not see field "Cage Code" inside "Description" section
    Then I softly do not see field "Organization DBA" inside "Description" section
    Then I softly do not see field "DUNS Number" inside "Description" section
      #180072
    When I click on "Edit" in the page details
    Then I softly see fields "fieldSupplierId__c" is in edit mode
    Then I softly do not see asterisk mark on "Vendor ID"
    When I enter value "01234567891" into field "fieldSupplierId__c"
    And I click on "Save" in the page details
    Then I softly see field "Vendor ID" as "0123456789"
      #180082
    Then I softly do not see "Country" in flex table header "---tableID:-:AdditionalAddressInternal---"
      #180084
    Then I softly see "Status" field inside header "Subrecipient Organization"
    Then I softly see "Org Code" field inside header "Subrecipient Organization"
    Then I softly see "EIN" field inside header "Subrecipient Organization"
    Then I softly see "UEI" field inside header "Subrecipient Organization"
    And I click on "Edit" in the page details
    Then I softly see field "Org Code" as ""
      #180085
    Then I softly do not see "Active Child Organizations" page block displayed
    And I click on "Save" in the page details
    Then I softly do not see "Active Child Organizations" page block displayed
      #180080
    Then I softly see field "Web Accessibility Coordinator (WAC)" inside "Additional Information" section
    Then I softly see field "Web Accessibility Coordinator (WAC)" as "null Avinash null"
      #180074
    And I click on "Edit" in the page details
    Then I softly see fields "fieldSCDE_Sendclaims__c" is in edit mode
    Then I softly see "--None--:Yes:No" inside selectbox field "fieldSCDE_Sendclaims__c"
    Then I softly see asterisk mark on "Send claims to SCEIS?"
    And I click on "Save" in the page details
    Then I softly see field "Send claims to SCEIS?" inside "Description" section
     #179301
    And I click on "Edit" in the page details
    Then I softly see fields "fieldUEINumber__c" is in edit mode
    Then I softly see asterisk mark on "UEI"
    When I enter values into "Description" page block
      | QGBBG68KN5N567 |
    And I click on "Save" in the page details
    Then I softly see field "UEI" inside "Description" section
    Then I softly see field "UEI" as "QGBBG68KN5N5"
    #180073 (BugId-182138)
    And I click on "Edit" in the page details
    Then I softly see fields "fieldOrgCode__c" is in edit mode
    When I enter value "12345" into field "fieldOrgCode__c"
    Then I softly do not see asterisk mark on "Organization Code"
    And I click on "Save" in the page details
    Then I softly see field "Organization Code" as "1234"
      #180076
    And I click on "Edit" in the page details
    Then I softly see fields "fieldSCDE_MaximumUsersAllowed__c" is in edit mode
    When I enter value "0" into field "fieldSCDE_MaximumUsersAllowed__c"
    And I click on "Save" in the page details
    Then I softly see the following messages in the page details contains:
      | Overview tab - Maximum Users Allowed must be greater than 0. |
    Then I softly see the following messages in the page details contains:
      | Overview Tab - Maximum Users Allowed must be equal to or greater than the number of current active or invited users for the organization. You must deactivate one or more active users to lower the maximum number of users allowed. |
    When I enter value "111" into field "fieldSCDE_MaximumUsersAllowed__c"
    And I click on "Save" in the page details
    Then I softly see the following messages in the page details contains:
      | Maximum Users Allowed : Number is too large. |

  @181881 @181860 @181873 @181871 @181867 @181863 @181874 @181877 @181876 @181862 @181861 @sprint-1 @userStory-176388
  Scenario: Verify an organization with the same EIN or UEI already exists in the system.
  |Verify "Vendor ID" field is optional
  |Verify Maximum Users Allowed field has help text saying, "This is the maximum number of EGMS users allowed for the organization."
  |Verify Maximum Users Allowed field is required before Approve the approval decision.
  |Verify Maximum Users Allowed is a new field
  |Verify the "Send claims to SCEIS?" is a dropdown field with Yes/No options
  |Verify Maximum Users Allowed field can be up to 2 digits
  |Verify that the Maximum Users Allowed field cannot enter zero (0).
  |Verify the number entered cannot exceed the maximum number of licenses allowed for the customer.
  |Verify no validation that the Vendor ID be unique
    When I login to "As a Grantor" app as "Admin" user
    And I navigate to "Home" tab
    When I navigate to "Pending Subrecipient Registrations" content inside "Organization" subheader on left panel
    And I click toggle button to select "Subrecipient Organizations - Pending"
    When I perform quick search for "PEACE CANAL" in "---tableID:-:PendingSubrecipientOrganization---" panel
    When I click on "Start" icon for "PEACE CANAL" inside flex table with id "---tableID:-:PendingSubrecipientOrganization---"
    #181881
    Then I softly see the text :
      | An organization with the same EIN or UEI Number already exists in the system. |
      #181860
    And I click on "Update Organization Fields" in the page details
    Then I softly do not see asterisk mark on "Vendor ID"
      #181873
    And I hovering mouse on help text icon inside page block detail "Maximum Users Allowed"
    Then I see "This is the maximum number of EGMS users allowed for the organization." shown as help text
      #181871
    Then I softly see asterisk mark on "Maximum Users Allowed"
      #181867
    Then I softly see "Office" inside page block detail
      #181863
    Then I softly see "--None--:Yes:No" inside selectbox field "fieldSCDE_Sendclaims__c"
      #181874
    When I enter value "111" into field "fieldSCDE_MaximumUsersAllowed__c"
    And I click modal button "Save And Close"
    Then I softly see the following messages in the page details contains:
      | Maximum Users Allowed : Number is too large. |
      #181877
    When I enter value "20" into field "fieldSCDE_MaximumUsersAllowed__c"
    And I click modal button "Save And Close"
    Then I softly see the following messages in the page details contains:
      | Maximum Users Allowed must be less than available Partner Community licenses. There are 18 available Partner Community licenses. Deactivate Partner Community users to increase the available licenses. |
      #181876
    When I enter value "0" into field "fieldSCDE_MaximumUsersAllowed__c"
    And I click modal button "Save And Close"
    Then I softly see the following messages in the page details contains:
      | Overview tab - Maximum Users Allowed must be greater than 0. |
      #181862
    When I enter value "5" into field "fieldSCDE_MaximumUsersAllowed__c"
    When I enter value "a1234567890" into field "fieldSupplierID__c"
    And I click modal button "Save And Close"
    Then I softly see field "Vendor ID" as "a123456789"
    #181861
    And I click on "Update Organization Fields" in the page details
    When I enter value "12er34" into field "fieldSupplierID__c"
    And I click modal button "Save And Close"
    Then I softly see field "Vendor ID" as "12er34"

  @181864 @181866 @181878 @181872 @181865 @sprint-1 @userStory-176388
  Scenario: Verify "Send claims to SCEIS?" field is required to approve the registration request
  |Verify the Validation message (Before approving the registration request, click the 'Update Organization Fields' button and make a selection for 'Send Claims to SCEIS?' for the organization.)
  |Verify Validation message:  Before approving the registration request, click the 'Update Organization Fields' button to enter the 'Maximum Users Allowed' for the organization.
  |Then I see Maximum Users Allowed field not required if Reject the approval decision
  |Verify "Send claims to SCEIS?" field is not required if I reject the registration request
    When I login to "As a Grantor" app as "PM1" user
    And I navigate to "Home" tab
    When I navigate to "Pending Subrecipient Registrations" content inside "Organization" subheader on left panel
    And I click toggle button to select "Subrecipient Organizations - Pending"
    When I perform quick search for "PEACE CANAL" in "---tableID:-:PendingSubrecipientOrganization---" panel
    When I click on "Start" icon for "PEACE CANAL" inside flex table with id "---tableID:-:PendingSubrecipientOrganization---"
    And I click on "Update Organization Fields" in the page details
      #181872 #181865
    Then I softly see asterisk mark on "Maximum Users Allowed"
    Then I softly see asterisk mark on "Send claims to SCEIS?"
     #181864 #181866 #181878
    And I clear the value from field "fieldSCDE_MaximumUsersAllowed__c"
    And I clear the value from field "fieldSCDE_Sendclaims__c"
    And I click modal button "Save And Close"
    When I "Approve" in the approval decision
    Then I softly see the following messages in the page details contains:
      | Before approving the registration request, click the ‘Update Organization Fields’ button to enter the ‘Maximum Users Allowed and make a selection for ‘Send Claims to SCEIS?’ |

  @179308 @sprint-1 @userStory-176431
  Scenario: Verify Add column for Organization Code to Organizations List page
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Home" tab
    When I navigate to "Subrecipients" content inside "Organization" subheader on left panel
    Then I softly see "Name" in flex table header "---tableID:-:SubrecipientOrganization---"
    Then I softly see "EIN" in flex table header "---tableID:-:SubrecipientOrganization---"
    Then I softly see "UEI" in flex table header "---tableID:-:SubrecipientOrganization---"
    Then I softly see "Org Code" in flex table header "---tableID:-:SubrecipientOrganization---"
    Then I softly see "Type" in flex table header "---tableID:-:SubrecipientOrganization---"
    Then I softly see "Approved Date" in flex table header "---tableID:-:SubrecipientOrganization---"
    Then I softly see "Actions" in flex table header "---tableID:-:SubrecipientOrganization---"

  @181038 @sprint-1 @userStory-178210 @BugId-182451
  Scenario: Verify that the Organization Type does not copy from SAM.gov
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Home" tab
    When I navigate to "Subrecipients" content inside "Organization" subheader on left panel
    When I perform quick search for "PEACE CANAL" in "---tableID:-:SubrecipientOrganization---" panel
    When I click on "View" icon for "PEACE CANAL" inside flex table with id "---tableID:-:SubrecipientOrganization---"
    Then I softly see field "Organization Type" as "Nonprofit Organization"
    And I click on "Verify" in the page details
    Then I softly see field "Organization Type" as "Nonprofit Organization"