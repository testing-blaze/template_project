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
    When I enter value "Non-User" into field "fieldUserRole__c"
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
    When I enter value "Non-User" into field "fieldUserRole__c"
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
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    #184128 #184124
    Then I see only the following ordered page blocks :
      | Description | Additional Information | Additional Addresses | Contacts | Organization Roles | Approval Steps by Process | Indirect Rates | System Information |
    #184130
    Then I see only the following ordered headers in table with id "---tableID:-:SubOrgIndirectRates---" :
      | Indirect Cost Rate Type | Approved Indirect Cost Rate (%) | Fiscal Year |
    #184324
    Then I softly cannot see row level action button "Edit" against "2021" in flex table with id "---tableID:-:SubOrgIndirectRates---"

  @189493 @189510 @189499 @189505 @sprint-5 @userStory-188692
  Scenario: Verify that the Organization Files section (External user)
  |Verify that I do not see the Parent/Child Legal Document option (External User)
  |Verify that I see the option to upload a document for 'Neglected and Delinquent Annual Count' in the Classification picklist (External User)
  |Verify that the Classification options are in alphabetical order, except Other Artifacts is listed last (External User)
    Given I am on "SUBPORTAL" portal
    When I login as "SPI" user
    And I navigate to "Home" tab
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I navigate to "Files" sub tab
      #189493
    Then I softly see "Organization Files" page block displayed
      #189510
    And I click on top right button "Add Files" in flex table with id "---tableID:-:ExternalSubOrganizationFiles---"
    Then I softly do not see Classification as "Parent/Child Legal Document" at upload file modal
      #189499
    Then I softly see Classification as "Neglected and Delinquent Annual Count" at upload file modal
    #189505
    Then I softly see Classification as "DAI proof" at upload file modal
    Then I softly see Classification as "Financial Artifacts" at upload file modal
    Then I softly see Classification as "Indirect rate plan" at upload file modal
    Then I softly see Classification as "Neglected and Delinquent Annual Count" at upload file modal
    Then I softly see Classification as "Program Artifacts" at upload file modal
    Then I softly see Classification as "W9" at upload file modal
    Then I softly see Classification as "Other Artifacts" at upload file modal

  @192792 @192777 @192788 @192791 @192779 @sprint-6 @userStory-190633
  Scenario: Verify that  external user see validation on Save for a Document Type of CCNA, document sub-type must be Initial
  |Verify that external user can see the Document version field populates on Save and is ready only
  |Verify that external user see the validation message if it creates a new line with a Five-year period, school year, document type, and document sub-type combination that already exists in a previous 'in-progress'
  |Verify that external user see the validation message if it creates a new line with a Five-year period, school year, document type, and document sub-type combination that already exists in a previous "Approved" entry
  |Verify the external user can see Document Version populates is a computed field showing the subsequent version number when I add a row with the same settings on the four fields below, and the previous entry is in Revision Requested status:
#    When I delete the record "" from the object "ANNUAL PLAN"
    Given I am on "SUBPORTAL" portal
    When I login as "SPI" user
    And I navigate to "Home" tab
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I navigate to "Annual Plans" sub tab
    #192792
    When I enter the following values into flex table with id "---tableID:-:AnnualPlans---" by clicking "Add" :
      | Status      | Five-Year Period  | School Year | Document Type | Document Sub-Type |
      | In-Progress | 2016/17 - 2020/21 | 2016/17     | CCNA          | Update 1          |
    Then I softly see the following messages in the page details contains:
      | CCNA entries must have the 'Document Sub-Type' as Initial. |
    #192777
    And I refresh the page
    When I enter the following values into flex table with id "---tableID:-:AnnualPlans---" by clicking "Add" :
      | Status      | Five-Year Period  | School Year | Document Type | Document Sub-Type |
      | In-Progress | 2016/17 - 2020/21 | 2016/17     | One Plan      | Initial           |
    Then I softly see value "1" for title "Document Version" inside table "---tableID:-:AnnualPlans---"
   #192788 #192791
    When I enter the following values into flex table with id "---tableID:-:AnnualPlans---" by clicking "Add" :
      | Status      | Five-Year Period  | School Year | Document Type | Document Sub-Type |
      | In-Progress | 2016/17 - 2020/21 | 2016/17     | One Plan      | Initial           |
    Then I softly see the following messages in the page details contains:
      | An entry with the same Five-Year Period, School Year, Document Type, and Document Sub-Type combination already exists. |
    #192779
    And I refresh the page
    And I click on "Upload" icon for "In-Progress" inside flex table with id "---tableID:-:AnnualPlans---"
    And I switch to iframe with id "AnnualPlansExternaliframeContentId"
    When I upload file "EmptyFile.xlsx" into library
    And I click modal button "Save"
    And I close modal by clicking the top right x button
    And I click on "Submit" icon for "In-Progress" inside flex table with id "---tableID:-:AnnualPlans---"
    When I re-login to "As a Grantor" app as "Admin" user on "INTERNAL" portal
    And I navigate to "Home" tab
    When I navigate to "Subrecipients" content inside "Organization" subheader on left panel
    When I perform quick search for "123456765" in "---tableID:-:SubrecipientOrganization---" panel
    When I click on "View" icon for "123456765" inside flex table with id "---tableID:-:SubrecipientOrganization---"
    And I navigate to "Annual Plans" sub tab
    And I click on "Request Revisions" icon for "Submitted" inside flex table with id "---tableID:-:AnnualPlansInternal---"
    And I logout
    Given I am on "SUBPORTAL" portal
    When I login as "SPI" user
    And I navigate to "Home" tab
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I navigate to "Annual Plans" sub tab
    When I enter the following values into flex table with id "---tableID:-:AnnualPlans---" by clicking "Add" :
      | Status      | Five-Year Period  | School Year | Document Type | Document Sub-Type |
      | In-Progress | 2016/17 - 2020/21 | 2016/17     | One Plan      | Initial           |
    Then I softly see value "2" for title "Document Version" against the value "One Plan" inside table "---tableID:-:AnnualPlans---"

  @192789 @192790 @sprint-6 @userStory-190633
  Scenario: Verify that external user see the validation message if it creates a new line with a Five-year period, school year, document type, and document sub-type combination that already exists in a previous "Submitted" entry
  |Verify that the external user see the validation message if it creates a new line with a Five-year period, school year, document type, and document sub-type combination that already exists in a previous "Retracted" entry
    When I delete the record "" from the object "ANNUAL PLAN"
    Given I am on "SUBPORTAL" portal
    When I login as "SPI" user
    And I navigate to "Home" tab
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I navigate to "Annual Plans" sub tab
    When I enter the following values into flex table with id "---tableID:-:AnnualPlans---" by clicking "Add" :
      | Status      | Five-Year Period  | School Year | Document Type | Document Sub-Type |
      | In-Progress | 2016/17 - 2020/21 | 2016/17     | One Plan      | Initial           |
    And I click on "Upload" icon for "In-Progress" inside flex table with id "---tableID:-:AnnualPlans---"
    And I switch to iframe with id "AnnualPlansExternaliframeContentId"
    When I upload file "EmptyFile.xlsx" into library
    And I click modal button "Save"
    And I close modal by clicking the top right x button
    And I click on "Submit" icon for "In-Progress" inside flex table with id "---tableID:-:AnnualPlans---"
    When I enter the following values into flex table with id "---tableID:-:AnnualPlans---" by clicking "Add" :
      | Status      | Five-Year Period  | School Year | Document Type | Document Sub-Type |
      | In-Progress | 2016/17 - 2020/21 | 2016/17     | One Plan      | Initial           |
    Then I softly see the following messages in the page details contains:
      | An entry with the same Five-Year Period, School Year, Document Type, and Document Sub-Type combination already exists. |
      #192790
    And I refresh the page
    And I click on "Retract" icon for "Submitted" inside flex table with id "---tableID:-:AnnualPlans---"
    When I enter the following values into flex table with id "---tableID:-:AnnualPlans---" by clicking "Add" :
      | Status      | Five-Year Period  | School Year | Document Type | Document Sub-Type |
      | In-Progress | 2016/17 - 2020/21 | 2016/17     | One Plan      | Initial           |
    Then I softly see the following messages in the page details contains:
      | An entry with the same Five-Year Period, School Year, Document Type, and Document Sub-Type combination already exists. |

  @192583 @192586 @192585 @192587 @192588 @192589 @192584 @sprint-6 @userStory-190317
  Scenario: Verify that  for external user if an entry is in progress then the Submit action is displayed
  |Verify that external user can see message if it tries to Submit and there is no document uploaded
  |Verify that external user can see message is displayed when  click on Submit action
  |Verify that the external user can see status  'Submitted' on Submit action
  |Verify that external user can see the 'Last Submitted By' field is populated
  |Verify  that external user can see 'Last Submitted On' field is populated
  |Verify that  external user can see if an entry is in Retracted status then the Submit action is displayed
    When I delete the record "" from the object "ANNUAL PLAN"
    Given I am on "SUBPORTAL" portal
    When I login as "SPI" user
    And I navigate to "Home" tab
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I navigate to "Annual Plans" sub tab
      #192583
    When I enter the following values into flex table with id "---tableID:-:AnnualPlans---" by clicking "Add" :
      | Status      | Five-Year Period  | School Year | Document Type | Document Sub-Type |
      | In-Progress | 2016/17 - 2020/21 | 2016/17     | One Plan      | Initial           |
    Then I softly see value "In-Progress" for title "Status" inside table "---tableID:-:AnnualPlans---"
    Then I softly can see row level action button "Submit" against "In-Progress" in flex table with id "---tableID:-:AnnualPlans---"
     #192586
    And I click on "Submit" icon for "In-Progress" inside flex table with id "---tableID:-:AnnualPlans---"
    Then I softly see the following messages in the page details contains:
      | There is no document uploaded. Ensure a document is uploaded before submitting the entry. |
     #192585
    And I click on "Upload" icon for "In-Progress" inside flex table with id "---tableID:-:AnnualPlans---"
    And I switch to iframe with id "AnnualPlansExternaliframeContentId"
    When I upload file "EmptyFile.xlsx" into library
    And I click modal button "Save"
    And I close modal by clicking the top right x button
    And I click on "Submit" icon for "In-Progress" inside table with table id "---tableID:-:AnnualPlans---" without processing
    Then I see confirmation box with body "Are you sure you want to submit the entry?" is displayed
     #192587
    When I click "Yes" on modal confirmation box
    Then I softly see value "Submitted" for title "Status" inside table "---tableID:-:AnnualPlans---"
     #192588
    Then I softly see value "SPI Automation" for title "Last Submitted By" inside table "---tableID:-:AnnualPlans---"
     #192589
    And I save the value from row "1" for column name "Last Submitted On" as "LastSubmittedOn" from flex table "---tableID:-:AnnualPlans---"
    Then I softly see value "{SavedValue:LastSubmittedOn}" for title "Last Submitted On" inside table "---tableID:-:AnnualPlans---"
     #192584
    And I click on "Retract" icon for "Submitted" inside flex table with id "---tableID:-:AnnualPlans---"
    Then I softly can see row level action button "Submit" against "Retracted" in flex table with id "---tableID:-:AnnualPlans---"

  @192612 @192593 @192596 @192594 @192604 @192609 @192597 @192592 @192611 @192591 @sprint-6 @userStory-190319
  Scenario: Verify that internal user can see quick search
  |Verify that internal user can see  "Five-Year Period" column
  |Verify that internal user can see the  Document Sub-Type column displayed in table
  |Verify that internal user can see the  School Year column displayed in table
  |Verify that internal user can see the Decision On field column on table
  |Verify that internal user can see the Document Link is displayed on table
  |Verify that internal user can see the Document Version column  is displayed
  |Verify that internal user should see a table with columns in the Annual Plan tab
  |Verify that internal user can see the entries are sorted by Last Submitted On column
  |Verify that internal user see the Annual Plans tab after the Risk Assessment  tab  on the Subrecipient Organization's profile
    When I login to "As a Grantor" app as "Admin" user
    And I navigate to "Home" tab
    When I navigate to "Subrecipients" content inside "Organization" subheader on left panel
    When I perform quick search for "123456765" in "---tableID:-:SubrecipientOrganization---" panel
    When I click on "View" icon for "123456765" inside flex table with id "---tableID:-:SubrecipientOrganization---"
    And I navigate to "Annual Plans" sub tab
       #192612
    Then I softly see quick search inside table id "---tableID:-:AnnualPlansInternal---"
       #192593
    Then I softly see "Five-Year Period" in flex table header "---tableID:-:AnnualPlansInternal---"
       #192596
    Then I softly see "Document Sub-Type" in flex table header "---tableID:-:AnnualPlansInternal---"
       #192594
    Then I softly see "School Year" in flex table header "---tableID:-:AnnualPlansInternal---"
       #192604
    Then I softly see "Decision On" in flex table header "---tableID:-:AnnualPlansInternal---"
       #192609
    Then I softly see "Document Link" in flex table header "---tableID:-:AnnualPlansInternal---"
       #192597
    Then I softly see "Document Version" in flex table header "---tableID:-:AnnualPlansInternal---"
       #192592
    Then I see only the following ordered headers in table with id "---tableID:-:AnnualPlansInternal---" :
      | Five-Year Period | School Year | Document Type | Document Sub-Type | Document Version | Status | Last Submitted By | Last Submitted On | Decision By | Decision On | Document Link |
       #192611
    Then I softly see content of expected column "Last Submitted On" is in "DESC" order of table id "---tableID:-:AnnualPlansInternal---"
       #192591
    And I softly can see "Annual Plans" sub tab at view detail page

  @192610 @192598 @192603 @192600 @192601 @sprint-6 @userStory-190319
  Scenario: Verify that internal user can see the  Actions column on table
  |Verify the internal user can see the column Status  having field status = Submitted
  |Verify the internal user can see the Decision By  field is displayed
  |Verify the internal user can see the Last Submitted by field
  |Verify the internal user can see the Last Submitted On field
    When I delete the record "" from the object "ANNUAL PLAN"
    Given I am on "SUBPORTAL" portal
    When I login as "SPI" user
    And I navigate to "Home" tab
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I navigate to "Annual Plans" sub tab
    When I enter the following values into flex table with id "---tableID:-:AnnualPlans---" by clicking "Add" :
      | Status      | Five-Year Period  | School Year | Document Type | Document Sub-Type |
      | In-Progress | 2016/17 - 2020/21 | 2016/17     | One Plan      | Initial           |
    And I click on "Upload" icon for "In-Progress" inside flex table with id "---tableID:-:AnnualPlans---"
    And I switch to iframe with id "AnnualPlansExternaliframeContentId"
    When I upload file "EmptyFile.xlsx" into library
    And I click modal button "Save"
    And I close modal by clicking the top right x button
    And I click on "Submit" icon for "In-Progress" inside flex table with id "---tableID:-:AnnualPlans---"
    When I re-login to "As a Grantor" app as "Admin" user on "INTERNAL" portal
    And I navigate to "Home" tab
    When I navigate to "Subrecipients" content inside "Organization" subheader on left panel
    When I perform quick search for "123456765" in "---tableID:-:SubrecipientOrganization---" panel
    When I click on "View" icon for "123456765" inside flex table with id "---tableID:-:SubrecipientOrganization---"
    And I navigate to "Annual Plans" sub tab
    #192610
    Then I softly see "Actions" in flex table header "---tableID:-:AnnualPlansInternal---"
    #192598
    Then I softly see value "Submitted" for title "Status" inside table "---tableID:-:AnnualPlansInternal---"
    #192603
    Then I softly see value "" for title "Decision By" inside table "---tableID:-:AnnualPlansInternal---"
    #192600
    Then I softly see value "SPI Automation" for title "Last Submitted By" inside table "---tableID:-:AnnualPlansInternal---"
    #192601
    And I save the value from row "1" for column name "Last Submitted On" as "LastSubmittedOn" from flex table "---tableID:-:AnnualPlansInternal---"
    Then I softly see value "{SavedValue:LastSubmittedOn}" for title "Last Submitted On" inside table "---tableID:-:AnnualPlansInternal---"

  @193220 @193380 @sprint-6 @userStory-190590
  Scenario: Verify that button to the report in the Annual Plans section header, called 'Annual Plans Report'is displayed
    When I login to "As a Grantor" app as "Admin" user
    And I navigate to "Home" tab
    When I navigate to "Subrecipients" content inside "Organization" subheader on left panel
    When I perform quick search for "123456765" in "---tableID:-:SubrecipientOrganization---" panel
    When I click on "View" icon for "123456765" inside flex table with id "---tableID:-:SubrecipientOrganization---"
    And I navigate to "Annual Plans" sub tab
      #193220
    Then I softly can see top right button "Annual Plans Report" in flex table with id "---tableID:-:AnnualPlansInternal---"
      #193380
    And I click on top right button "Annual Plans Report" in flex table with id "---tableID:-:AnnualPlansInternal---"
    Then I softly see the text :
      | Annual Plans For All Organizations |

  @193222 @193224 @193223 @sprint-6 @userStory-190591
  Scenario: Verify that as internal Admin user can see can add a COM Team Reviewer
  |Verify that the field is located as the last field on the Overview tab's Description section, which is after the Maximum Users Allowed field.
  |Verify that COM Team reviewer is a lookup to all active internal user
    When I login to "As a Grantor" app as "Admin" user
    And I navigate to "Home" tab
    When I navigate to "Subrecipients" content inside "Organization" subheader on left panel
    When I perform quick search for "123456765" in "---tableID:-:SubrecipientOrganization---" panel
    When I click on "View" icon for "123456765" inside flex table with id "---tableID:-:SubrecipientOrganization---"
      #193222
    Then I softly see "COM Team Reviewer" inside page block detail
      #193224
    Then I see "Maximum Users Allowed" shown at number "14" inside "Description" page block detail
    Then I see "COM Team Reviewer" shown at number "15" inside "Description" page block detail
      #193223
    And I click on "Edit" in the page details
    When I click search icon for look up field "COM Team Reviewer Lookup (New Window)" with clearing
    When I perform quick search for "Automation PM" in "---tableID:-:Modal---" panel
    Then I softly see value "Automation PM" for title "Full Name" inside table "---tableID:-:Modal---"

  @193154 @193155 @193157 @193158 @sprint-6 @userStory-190320 @wip
  Scenario: Verify that for internal user 'Request Revision' shown with a blue back arrow icon when an entry is in Submitted status
  |Verify that internal user when click on  the 'Request Revision' icon, the status updates to 'Revision Requested'
  |Verify that internal user can see the Decision By field populated who requested the revision
  |Verify the internal user can see the Decision On field populates with the date and time for when the revision was requested.
    When I delete the record "" from the object "ANNUAL PLAN"
    Given I am on "SUBPORTAL" portal
    When I login as "SPI" user
    And I navigate to "Home" tab
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I navigate to "Annual Plans" sub tab
    When I enter the following values into flex table with id "---tableID:-:AnnualPlans---" by clicking "Add" :
      | Status      | Five-Year Period  | School Year | Document Type | Document Sub-Type |
      | In-Progress | 2016/17 - 2020/21 | 2016/17     | One Plan      | Initial           |
    And I click on "Upload" icon for "In-Progress" inside flex table with id "---tableID:-:AnnualPlans---"
    And I switch to iframe with id "AnnualPlansExternaliframeContentId"
    When I upload file "EmptyFile.xlsx" into library
    And I click modal button "Save"
    And I close modal by clicking the top right x button
    And I click on "Submit" icon for "In-Progress" inside flex table with id "---tableID:-:AnnualPlans---"
    When I re-login to "As a Grantor" app as "Admin" user on "INTERNAL" portal
    And I navigate to "Home" tab
    When I navigate to "Subrecipients" content inside "Organization" subheader on left panel
    When I perform quick search for "123456765" in "---tableID:-:SubrecipientOrganization---" panel
    When I click on "View" icon for "123456765" inside flex table with id "---tableID:-:SubrecipientOrganization---"
    And I navigate to "Annual Plans" sub tab
     #193154
    Then I softly can see row level action button "Request Revisions" against "Submitted" in flex table with id "---tableID:-:AnnualPlansInternal---"
     #193155
    And I click on "Request Revisions" icon for "Submitted" inside flex table with id "---tableID:-:AnnualPlansInternal---"
    Then I softly see value "Revision Requested" for title "Status" inside table "---tableID:-:AnnualPlansInternal---"
     #193157
    Then I softly see value "REI Admin" for title "Decision By" inside table "---tableID:-:AnnualPlansInternal---"
     #193158
    And I save the value from row "1" for column name "Decision On" as "DecisionOn" from flex table "---tableID:-:AnnualPlansInternal---"
    Then I softly see value "{SavedValue:DecisionOn}" for title "Decision On" inside table "---tableID:-:AnnualPlansInternal---"
    #193156
    Then I softly can see mail notification for "INTERNAL" user with following subject:
      | Sandbox: Revisions Requested for One Plan |

  @193173 @193175 @193177 @193178 @193176 @sprint-6 @userStory-190576 @wip
  Scenario: Verify that internal user can see the row -level action Approve when the status is submitted
  |Verify that internal user can see the status as Approved when click on Approve icon
  |Verify that internal user see the Decision By field populates user who approved the submission.
  |Verify that internal user see the "Decision On" field populates with the date for when the submission was approved.
  |Verify that  system sends an email to the subrecipient organization user who last submitted the entry.
    When I delete the record "" from the object "ANNUAL PLAN"
    Given I am on "SUBPORTAL" portal
    When I login as "SPI" user
    And I navigate to "Home" tab
    When I navigate to "Organization Profile" content inside "Organization" subheader on left panel
    And I navigate to "Annual Plans" sub tab
    When I enter the following values into flex table with id "---tableID:-:AnnualPlans---" by clicking "Add" :
      | Status      | Five-Year Period  | School Year | Document Type | Document Sub-Type |
      | In-Progress | 2016/17 - 2020/21 | 2016/17     | One Plan      | Initial           |
    And I click on "Upload" icon for "In-Progress" inside flex table with id "---tableID:-:AnnualPlans---"
    And I switch to iframe with id "AnnualPlansExternaliframeContentId"
    When I upload file "EmptyFile.xlsx" into library
    And I click modal button "Save"
    And I close modal by clicking the top right x button
    And I click on "Submit" icon for "In-Progress" inside flex table with id "---tableID:-:AnnualPlans---"
    When I re-login to "As a Grantor" app as "Admin" user on "INTERNAL" portal
    And I navigate to "Home" tab
    When I navigate to "Subrecipients" content inside "Organization" subheader on left panel
    When I perform quick search for "123456765" in "---tableID:-:SubrecipientOrganization---" panel
    When I click on "View" icon for "123456765" inside flex table with id "---tableID:-:SubrecipientOrganization---"
    And I navigate to "Annual Plans" sub tab
     #193173
    Then I softly can see row level action button "Approve" against "Submitted" in flex table with id "---tableID:-:AnnualPlansInternal---"
     #193175
    And I click on "Approve" icon for "Submitted" inside flex table with id "---tableID:-:AnnualPlansInternal---"
    Then I softly see value "Approved" for title "Status" inside table "---tableID:-:AnnualPlansInternal---"
     #193177
    Then I softly see value "REI Admin" for title "Decision By" inside table "---tableID:-:AnnualPlansInternal---"
     #193178
    And I save the value from row "1" for column name "Decision On" as "DecisionOn" from flex table "---tableID:-:AnnualPlansInternal---"
    Then I softly see value "{SavedValue:DecisionOn}" for title "Decision On" inside table "---tableID:-:AnnualPlansInternal---"
    #193176
    Then I softly can see mail notification for "INTERNAL" user with following subject:
      | Sandbox: One Plan is Approved |