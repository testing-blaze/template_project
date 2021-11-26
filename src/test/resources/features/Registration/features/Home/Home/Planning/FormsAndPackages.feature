@formsAndPackages @regression @scdeRegression @programs
Feature: Validate all scenarios related to forms and packages

  @181925 @181926 @182136 @182133 @sprint-2 @userStory-178221
  Scenario: Verify the Custom App field is hidden from the UI
  |Verify that the 'Sequence Number' column on the Package modal window.
  |Verify that enter a Sequence Number is not required field or unique field
  |Verify Sequence Number can enter in the column of view modal window
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Planning" tab
    When I navigate to "Forms and Packages" content inside "Setup" subheader on left panel
    #181925
    And I click on top right button "New Package" in flex table with id "---tableID:-:Packages---"
    Then I softly do not see "Custom App" inside page block detail
    And I close modal by clicking the top right x button
    #181926
    And I pause execution for "3" seconds
    When I perform quick search for "Title II Part A Application Package" in "---tableID:-:Packages---" panel
    When I click on "View" icon for "Title II Part A Application Package" inside flex table with id "---tableID:-:Packages---"
    Then I softly see "Sequence Number" in flex table header "---tableID:-:AssociateFormsModal---"
    #182136
    Then I softly do not see asterisk mark on "Sequence Number"
    #182133
    And I click on "Edit" icon for "JSTestForm1" inside flex table with id "---tableID:-:AssociateFormsModal---"
    When I enter value "2" into field "SCDE_SequenceNumber__c"
    And I click on top right button "Save" in flex table with id "---tableID:-:AssociateFormsModal---"
    Then I softly see value "2" for title "Sequence Number" inside table "---tableID:-:AssociateFormsModal---"