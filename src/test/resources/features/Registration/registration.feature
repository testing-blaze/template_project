@registration @regression
Feature: Validate all scenarios related to registration

  @179595 @179431 @179596 @179597 @179811 @179812 @sprint-1 @userStory-174754
  Scenario:  Verify Update Registration fields to be SCDE-specific
    Given I am on "SUBPORTAL" portal
    When I click on "Register" button
    And I click on "Organization" button
    And I click on "Begin Registration" button
    When I enter value as "ZLP4KVER3S75" into "Unique Entity Identifier (UEI)" on old form
    When I enter value as "123456807" into "Employer Identification Number (EIN)" on old form
    When I click on "Verify Information" in the page details
    And I pause execution for "2" seconds
    When I click on "Save and Continue" in the page details
    #179595
    Then I softly see "--None--:Local Education Agency:Nonprofit Organization:State Agency:Public Institutions of Higher Education:Private Institutions of Higher Education:Community-based Organization (CBO):For Profit Organization:Faith-based Organization:Library:Native American Tribal Government:Native American Tribal Organization:Public Housing Authority:Other" inside selectbox field "fieldOrganizationTypeSInglePicklist__c"
    #179431
    Then I softly do not see "Vendor ID" inside page block detail
    #179596
    Then I softly do not see field "Cage Code" inside "Organization Information" section
    Then I softly do not see field "Organization DBA" inside "Organization Information" section
    Then I softly do not see field "Parent Organization" inside "Organization Information" section
    #179597
    Then I softly do not see field "Site Number" inside "Payment Address" section
    #179811
    Then I softly do not see field "Country" inside "Organization Address" section
    Then I softly do not see field "Congressional District" inside "Organization Address" section
    #179812
    Then I softly see "Unique Entity Identifier (UEI)" inside page block detail
    Then I softly do not see "Data Universal Number System (DUNS)" inside page block detail

  @179221 @sprint-1 @userStory-176385
  Scenario:  Verify registration instructions to be SCDE-specific
    Given I am on "SUBPORTAL" portal
    When I click on "Register" button
    And I click on "Organization" button
    Then I softly see the text :
      | An organization is an entity that submits grant applications. Organizations include, but are not limited to, local education agencies, nonprofit organizations, state agencies, institutions of higher education, and community-based organizations. |
      | If you have not registered, you will not be able to submit an application. Please discuss with the Point of Contact listed in the grant opportunity                                                                                                  |
    Then I softly see the Instruction text in the page
      | 1. Register for your Employer Identification Number (EIN):                                                                                                                                                                                                                                                                                                                                                      |
      | https://www.irs.gov/businesses/small-businesses-self-employed/apply-for-an-employer-identification-number-ein-online                                                                                                                                                                                                                                                                                            |
      | 2. Register for your Unique Entity Number (UEI) number:                                                                                                                                                                                                                                                                                                                                                         |
      | https://sam.gov/content/entity-registration                                                                                                                                                                                                                                                                                                                                                                     |
      | 3. Register with SAM.gov:                                                                                                                                                                                                                                                                                                                                                                                       |
      | https://www.sam.gov/SAM/                                                                                                                                                                                                                                                                                                                                                                                        |
      | 4. Register with EGMS:                                                                                                                                                                                                                                                                                                                                                                                          |
      | The Electronic Grants Management System (EGMS) must validate the EIN and UEI numbers in order to complete registration. The UEI number is used to retrieve information from SAM.gov. Registration can only be completed if the organization has a valid EIN, valid UEI, and valid SAM.gov account. Once complete, the Organization's Authorized Representative can submit the registration for an EGMS account. |
      | 5. First Organizational Registration                                                                                                                                                                                                                                                                                                                                                                            |
      | 1. The first registration for any organization is the WAC.                                                                                                                                                                                                                                                                                                                                                      |
      | 2. Additional users for the organization are created by the WAC.                                                                                                                                                                                                                                                                                                                                                |
      | 3. If you are NOT the WAC for this organization, please stop and identify the proper individual to complete this initial registration, OR, have the WAC send you an invitation.                                                                                                                                                                                                                                 |