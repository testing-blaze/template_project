@internalProgram @regression
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
    Then I see "Program Type:  Formula Grant, Competitive Grant, State Grant, Direct Grant" shown as help text
    #180216
    Then I softly do not see "Internal Organization" inside page block detail
    #180226
    When I enter value "Automation Runtime Internal Program" into field "fieldProgramName__c"
    When I enter value "Formula Grant" into field "fieldType__c"
    When I enter value "Department of Education" into field "fieldPrimaryFundingOrganization__c"
    When I enter value "No" into field "fieldFocusAreaRequired__c"
    When I enter value "No" into field "fieldIsGoalsRequired__c"
    When I enter value "No" into field "fieldKPIsRequired__c"
    And I click modal button "Save and Continue"
    And I hovering mouse on help text icon inside page block detail "Type"
    Then I see "Program Type:  Formula Grant, Competitive Grant, State Grant, Direct Grant" shown as help text
    #180231
    Then I softly see "--None--:Formula Grant:Competitive Grant:State Grant:Direct Grant" inside selectbox field "fieldType__c"
    #180247
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