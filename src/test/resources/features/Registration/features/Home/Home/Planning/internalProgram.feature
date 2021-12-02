@internalProgram @regression @scdeRegression @programs
Feature: Validate all scenarios related to internal program

  @179998 @180232 @180216 @180226 @180231 @180247 @180227 @180249 @180248 @sprint-1 @userStory-177256
  Scenario: Verify fields on internal program create modal
  |Verify new internal program Help text
  |Verify create modal does not have a field for Internal Organization
  |verify Help text is updated to Formula Grant, Competitive Grant, State Grant, Direct Grant
  |Verify Information section field for Office:  This is a new field
  |Verify Information section of the internal program layout has a field for Type
  |Verify Information section of the internal program layout does not have the Internal Organization, Authorized Signatory, Organization Level
  |Verify Information section field for Office: This field is required to submit
  |Verify Information section field for Office: This is a fort text field
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:InternalProgram---"
    #179998
    Then I softly see "--None--:Formula Grant:Competitive Grant:State Grant:Direct Grant" inside selectbox field "fieldType__c"
    #180232
    And I hovering mouse on help text icon inside page block detail "Type"
    Then I softly see "Program Type:  Formula Grant, Competitive Grant, State Grant, Direct Grant" shown as help text
    #180216
    Then I see only the following ordered page blocks :
      | Information | Program Specific Settings |
    #180226
    When I enter value "Automation Runtime Internal Program" into field "fieldProgramName__c"
    When I enter value "Formula Grant" into field "fieldType__c"
    When I enter value "Department of Education" into field "fieldPrimaryFundingOrganization__c"
    When I enter value "No" into field "fieldFocusAreaRequired__c"
    When I enter value "No" into field "fieldIsGoalsRequired__c"
    When I enter value "No" into field "fieldKPIsRequired__c"
    And I click modal button "Save and Continue"
    And I hovering mouse on help text icon inside page block detail "Type"
    Then I softly see "Program Type:  Formula Grant, Competitive Grant, State Grant, Direct Grant" shown as help text
    #180231
    Then I softly see "--None--:Formula Grant:Competitive Grant:State Grant:Direct Grant" inside selectbox field "fieldType__c"
    #180247
    When I enter value "description" into field "fieldObjectives__c"
    And I click on "Save" in the page details
    Then I softly see "Office" inside page block detail
    #180227
    Then I softly do not see field "Internal Organization" inside "Information" section
    Then I softly do not see field "Authorized Signatory" inside "Information" section
    Then I softly do not see field "Organization Level" inside "Information" section
    #180249 (Bug Id-182162)
    And I click on "Submit For Approval" in the page details
    Then I softly see the following messages in the page details contains:
      | Overview Tab - Provide the Office. |
    #180248
    And I click on "Edit" in the page details
    When I enter value "test" into field "fieldSCDE_Office__c"
    And I click on "Save" in the page details
    Then I softly see field "Office" as "test"

  @179640 @179642 @sprint-1 @userStory-177257
  Scenario: Verify that Project Role field do not see while create a contact in Internal program
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:InternalProgram---"
      #179640
    Then I softly do not see "Project Role" inside page block detail
      #179642
    When I enter value "Automation Runtime Internal Program" into field "fieldProgramName__c"
    When I enter value "Formula Grant" into field "fieldType__c"
    When I enter value "Department of Education" into field "fieldPrimaryFundingOrganization__c"
    When I enter value "No" into field "fieldFocusAreaRequired__c"
    When I enter value "No" into field "fieldIsGoalsRequired__c"
    When I enter value "No" into field "fieldKPIsRequired__c"
    And I click modal button "Save and Continue"
    And I click on "Save" in the page details
    And I click on top right button "Associate" in flex table with id "---tableID:-:InternalProgramContacs---"
    When I click "Associate" after selection of "Automation PM" in the table "---tableID:-:Modal---"
    And I click on "Edit" icon for "Automation PM" inside flex table with id "---tableID:-:InternalProgramContacs---"
    Then I softly see "--None--:State Coordinator" inside selectbox field "ProjectRole__c"

  @181188 @181199 @181198 @181193 @sprint-2 @userStory-178202
  Scenario: Verify 'Primary Funding Organization' field on the create program modal window
  |Verify that 'Organization Type' column in Primary Funding Organization lookup modal
  |Verify that the 'Primary Funding Organization' lookup modal does not shows internal organization (e.g. SCDE) or an external sub-recipient organization
  |Verify that the 'Primary Funding Organization' lookup modal shows only Federal, State, and NGO organizations
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:InternalProgram---"
      #181188
    Then I softly see "Primary Funding Organization" inside page block detail
      #181199
    When I click search icon for look up field "Primary Funding Organization Lookup (New Window)" with clearing
    Then I softly do not see "Organization Type" in flex table header "---tableID:-:Modal---"
      #181198
    When I perform quick search for "South Carolina Department of Education" in "---tableID:-:OrganizationModalSearch---" panel
    Then I softly see "No Records Found" inside flex table with id "---tableID:-:OrganizationModalSearch---"
      #181193
    When I perform quick search for "Test NGO Org" in "---tableID:-:OrganizationModalSearch---" panel
    Then I softly see value "Test NGO Org" for title "Organization Name" inside table "---tableID:-:OrganizationModalSearch---"
    When I perform quick search for "Federal Assistance" in "---tableID:-:OrganizationModalSearch---" panel
    Then I softly see value "Federal Assistance" for title "Organization Name" inside table "---tableID:-:OrganizationModalSearch---"
    When I perform quick search for "Department of State" in "---tableID:-:OrganizationModalSearch---" panel
    Then I softly see value "Department of State" for title "Organization Name" inside table "---tableID:-:OrganizationModalSearch---"

  @181350 @181351 @181353 @181349 @181356 @sprint-2 @userStory-178202
  Scenario Outline: Verify the Grantee module for EXE user profile
  |Verify the Grantee module for FD user profile
  |Verify the Grantee module for FO user profile
  |Verify the Grantee module for PM user profile
  |Verify the Grantee module for PO user profile
    When I login to "As a Grantor" app as "<userType>" user
    And I navigate to "Home" tab
    Then I see "As a Grantee" inside CustomApp dropDown not displayed
    Examples:
      | userType |
      | EXE      |
      | FD       |
      | FO       |
      | PM       |
      | PO       |

  @181358 @sprint-2 @userStory-178202
  Scenario: Verify the Grantee module for System Admin user profile
    When I login to "As a Grantor" app as "Admin" user
    And I navigate to "Home" tab
    Then I see "As a Grantee" inside CustomApp dropDown

  @182248 @182250 @sprint-2 @userStory-178222
  Scenario: Verify the 'Sequence Number' column on the Preview Form Package modal window (Programs)
  |Verify the forms are listed in the ascending order of the sequence numbers listed on the form package (Programs)
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:InternalProgram---"
    When I enter value "Automation Runtime Internal Program" into field "fieldProgramName__c"
    When I enter value "Formula Grant" into field "fieldType__c"
    When I enter value "Department of Education" into field "fieldPrimaryFundingOrganization__c"
    When I enter value "No" into field "fieldFocusAreaRequired__c"
    When I enter value "No" into field "fieldIsGoalsRequired__c"
    When I enter value "No" into field "fieldKPIsRequired__c"
    And I click modal button "Save and Continue"
    When I enter value "description" into field "fieldObjectives__c"
    And I click on "Save" in the page details
      #182248
    And I navigate to "Setup" sub tab
    When I click on "Preview" icon for "Application" inside flex table with id "---tableID:-:ProgramsBusinessForms---"
    Then I softly see "Sequence Number" in flex table header "---tableID:-:PreviewPackageForms---"
      #182250
    Then I softly see content of expected column "Sequence Number" is in "ASC" order of table id "---tableID:-:PreviewPackageForms---"

  @181384 @sprint-2 @userStory-178224
  Scenario: Verify columns in the Preview Form Package modal window for Internal Programs
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:InternalProgram---"
    When I enter value "Automation Runtime Internal Program" into field "fieldProgramName__c"
    When I enter value "Formula Grant" into field "fieldType__c"
    When I enter value "Department of Education" into field "fieldPrimaryFundingOrganization__c"
    When I enter value "No" into field "fieldFocusAreaRequired__c"
    When I enter value "No" into field "fieldIsGoalsRequired__c"
    When I enter value "No" into field "fieldKPIsRequired__c"
    And I click modal button "Save and Continue"
    When I enter value "description" into field "fieldObjectives__c"
    And I click on "Save" in the page details
    And I navigate to "Setup" sub tab
    When I click on "Preview" icon for "Application" inside flex table with id "---tableID:-:ProgramsBusinessForms---"
    Then I softly do not see "Form Expiration" in flex table header "---tableID:-:PreviewPackageForms---"
    Then I softly do not see "Is Available?" in flex table header "---tableID:-:PreviewPackageForms---"

  @179226 @sprint-2 @userStory-178214
  Scenario: Verify Library for Files to match with organization hierarchy on Pograms
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:InternalProgram---"
    When I enter value "Automation Runtime Internal Program" into field "fieldProgramName__c"
    When I enter value "Formula Grant" into field "fieldType__c"
    When I enter value "Department of Education" into field "fieldPrimaryFundingOrganization__c"
    When I enter value "No" into field "fieldFocusAreaRequired__c"
    When I enter value "No" into field "fieldIsGoalsRequired__c"
    When I enter value "No" into field "fieldKPIsRequired__c"
    And I click modal button "Save and Continue"
    When I enter value "description" into field "fieldObjectives__c"
    And I click on "Save" in the page details
    And I navigate to "Files" sub tab
    And I click on top right button "Add Files" in flex table with id "---tableID:-:InternalProgramFilesTable---"
    When I click on SelectChange Folder in add file modal
    Then I softly see library/folder/file "SCDE" is displayed under files library