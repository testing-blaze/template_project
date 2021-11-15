@internalProgram @regression
Feature: Validate all scenarios related to internal program

  @179998 @180232 @180226 @180247 @sprint-1 @userStory-177256
  Scenario: Verify fields on internal program create modal
  |Verify new internal program Help text
  |verify Help text is updated to Formula Grant, Competitive Grant, State Grant, Direct Grant
  |Verify Information section field for Office:  This is a new field
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click on top right button "New" in flex table with id "---tableID:-:InternalProgram---"
    #179998
    Then I softly see "--None--:Formula Grant:Competitive Grant:State Grant:Direct Grant" inside selectbox field "fieldType__c"
    #180232
    And I hovering mouse on help text icon inside page block detail "Type"
    Then I see "Program Type:  Formula Grant, Competitive Grant, State Grant, Direct Grant" shown as help text
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
    #180247
    Then I softly see "Office" inside page block detail