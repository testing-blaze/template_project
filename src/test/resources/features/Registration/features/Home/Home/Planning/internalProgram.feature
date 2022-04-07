@internalProgram @regression @scdeRegression @programs
Feature: Validate all scenarios related to internal program

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
#      | EXE      |
      | FD       |
#      | FO       |
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

  @179226 @sprint-2 @userStory-178540 @UmangParekh
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

  @188600 @188589 @188548 @188607 @188576 @sprint-5 @userStory-187905 @UmangParekh
  Scenario: Verify internal user (program owner) should see a new column "Review Response shared" in the Review Forms nested table under Review steps section on Setup tab
  | Verify internal user (program owner) should see the default value is set to "YES" for all review forms in all review steps that are inserted in a new program.
  | Verify internal user (program owner) should see a info icon in the header of the 'Review Response Shared' column
  | Verify the text mentioned on the mouse hover of info icon in the header of the 'Review Response Shared' column
  | Verify internal user (program owner) should see a Yes/No dropdown in the new column "Review Response shared" in the Review Forms nested table under Review steps section on Setup tab
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
    And I expand nested table containing column value "Pre-Screen Review"
    #188548
    Then I softly see "Review Response Shared" in flex table header "---tableID:-:InternalProgramReviewForms---"
    #188589
    Then I softly see value "Yes" for title "Review Response Shared" inside table "---tableID:-:InternalProgramReviewForms---"
    #188600 #188607
    When I hovering mouse on page block help text icon inside table "---tableID:-:InternalProgramReviewForms---" with tooltip id "ReviewResponseShared__ca0R3R000000hf91UAAFlexGridtooltip"
    Then I softly see "Select 'No' to allow only the assigned reviewer and the announcement record owner (for any announcement created for this program) to view the review response provided for an application in this review step. To share the review response with all SCDE users, select 'YES'." shown as help text
    #188576
    When I click on "Edit" icon for "Pre-Screen" inside flex table with id "---tableID:-:InternalProgramReviewForms---"
    Then I see the following options in dropdown field "ReviewResponseShared__c" :
      | Yes | No |