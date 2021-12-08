@internalProgram @programs @regression @scdeRegression
Feature: Validate all scenarios related to internal program with background

  Background: To setup data

    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Planning" tab
    When I navigate to "Internal Programs" content inside "Programs" subheader on left panel
    And I click on top right button "New" in flex table with id "{tableID:InternalProgram}"
    When I enter value "Automation Runtime Internal Program" into field "fieldProgramName__c"
    When I enter value "Formula Grant" into field "fieldType__c"
    When I enter value "Department of Education" into field "fieldPrimaryFundingOrganization__c"
    When I enter value "No" into field "fieldFocusAreaRequired__c"
    When I enter value "No" into field "fieldIsGoalsRequired__c"
    When I enter value "No" into field "fieldKPIsRequired__c"
    And I click modal button "Save and Continue"
    And I pause execution for "2" seconds
    And I navigate to "Overview" sub tab
    When I enter value "test" into field "fieldSCDE_Office__c"
    When I enter value "Description" into field "Objectives__c"
    And I click on "Save" in the page details
    And I navigate to "Overview" sub tab
    And I click on top right button "Associate" in flex table with id "{tableID:InternalProgramContacs}"
    And I perform quick search for "Automation PM" in "{tableID:InternalProgramContacs}" panel
    And I check "Automation PM" boxes in flex table with id "{tableID:InternalProgramContacs}"
    And I click on top right button "Associate" in flex table with id "{tableID:InternalProgramContacs}"
    When I click on "Edit" icon for "Automation PM" inside flex table with id "{tableID:InternalProgramContacs}"
    When I enter value "State Coordinator" into field "ProjectRole__c"
    And I click on top right button "Save" in flex table with id "{tableID:InternalProgramContacs}"
    And I save the field labeled "EGMS ID" as "programId"

  @180930 @181580 @181583 @181585 @sprint-1 @userStory-177259 @Vaishali
  Scenario: Verify Review task subject for Internal program
  |Verify Approve task subject for Internal program
  |Verify Approve task subject for forwarded Internal program
  |Verify Activate task subject for Internal program
    #180930
    And I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "{tableID:InternalProgramPeerReview}" by clicking "New" :
      | Reviewer Name | Responsibility  | Description | Due Date | Allow Record Editing |
      | Automation PM | Fiscal Reviewer | aaaaaaa     | 1        | No                   |
    And I click on "Send for Review" icon for "Automation PM" inside flex table with id "{tableID:InternalProgramPeerReview}"
    And I softly see field "Status" as "Submitted for Review"
    When I navigate to "Home" tab
    When I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:programId}" in "{tableID:PendingTask}" panel
    Then I softly see value "Review Program {SavedValue:programId}" for title "Subject" inside table "{tableID:PendingTask}"
      #181580
    And I click on "Start" icon for "{SavedValue:programId}" inside flex table with id "{tableID:PendingTask}"
    And I navigate to "Responsibilities" sub tab
    When I enter the following values into flex table with id "{tableID:InternalProgramApprovers}" by clicking "New" :
      | Name          | Program | Announcement |
      | Automation PM | Step 1  | Step 1       |
    When I click on "Complete Review" in the page details
    When I click on "Submit For Approval" in the page details
    When I navigate to "Home" tab
    When I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:programId}" in "{tableID:PendingTask}" panel
    Then I softly see value "Approve Program {SavedValue:programId}" for title "Subject" inside table "{tableID:PendingTask}"
     #181583
    And I click on "Start" icon for "{SavedValue:programId}" inside flex table with id "{tableID:PendingTask}"
    When I select radio button "Forward" in the approval decision
    And I select user "Test User FO" in the approval decision
    When I enter comment "Automation testing" in the approval decision
    And I submit the approval in the approval decision without processing
    When I re-login to "As a Grantor" app as "FO" user on "INTERNAL" portal
    When I navigate to "Home" tab
    When I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:programId}" in "{tableId:PendingTask}" panel
    Then I softly see value "Approve Program {SavedValue:programId}" for title "Subject" inside table "{tableID:PendingTask}"
     #181585
    And I click on "Start" icon for "{SavedValue:programId}" inside flex table with id "{tableID:PendingTask}"
    When I "Approve" in the approval decision
    When I re-login to "As a Grantor" app as "PM" user on "INTERNAL" portal
    When I navigate to "Home" tab
    When I navigate to "Pending Tasks" content inside "My Tasks" subheader on left panel
    When I perform quick search for "{SavedValue:programId}" in "{tableID:PendingTask}" panel
    Then I softly see value "Activate Internal Program {SavedValue:programId}" for title "Subject" inside table "{tableID:PendingTask}"