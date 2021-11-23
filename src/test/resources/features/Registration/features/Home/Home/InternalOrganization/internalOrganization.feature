@internalOrganization @regression @Organization @scdeRegression
Feature: Validate all scenarios related to internal organization

  @179218 @179223 @179224 @179219 @sprint-1 @userStory-178208
  Scenario: Verify Operational Unit is "South Carolina Department of Education"
  |Verify there is no other Operational Unit other than "South Carolina Department of Education"
  |Verify there is no children organizations for SCDE
  |Verify Operational Unit is "South Carolina Department of Education" with code SCDE
    When I login to "As a Grantor" app as "Admin" user
    And I navigate to "Home" tab
    When I navigate to "Internal" content inside "Organization" subheader on left panel
    #179218
    Then I softly see value "South Carolina Department of Education" for title "Internal Organization" inside table "---tableID:-:InternalOrganization---"
    #179223
    Then I see "Total Records:1" inside flex table with id "---tableID:-:InternalOrganization---"
    #179224
    Then I softly do not see expand icon inside table "---tableID:-:InternalOrganization---"
    #179219
    When I click on "View" icon for "South Carolina Department of Education" inside flex table with id "---tableID:-:InternalOrganization---"
    Then I softly see field "Agency Abbreviation" as "SCDE"