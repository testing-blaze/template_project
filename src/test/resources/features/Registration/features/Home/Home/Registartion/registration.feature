@registration @regression @scdeRegression
Feature: Validate all scenarios related to registration

  @179595 @179431 @179596 @179597 @179811 @179812 @sprint-1 @userStory-174754
  Scenario:  Verify Update Registration fields to be SCDE-specific
    Given I am on "SUBPORTAL" portal
    When I click on "Register" button
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
    Then I softly see the text containing :
      | An organization is an entity that submits grant applications. Organizations include, but are not limited to, local education agencies, nonprofit organizations, state agencies, institutions of higher education, and community-based organizations. |
    Then I softly see the text containing :
      | If you have not registered in the EGMS, you will not be able to submit an application. Please discuss with the Point of Contact listed in the grant opportunity if you have further questions. |
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

  @178888 @178899 @179094 @178893 @179820 @179588 @179029 @179014 @sprint-1 @userStory-176573
  Scenario: Verify field label should be Unique Entity Identifier (UEI) on the first registration login page
  |Verify UEI field help text
  |Verify that the SAM.gov check fails, the user should show updated message
  |Verify Unique Entity Identifier (UEI) <12 alphanumeric >numbers.
  |Verify Unique Entity Identifier (UEI) is 12 characters and is alpha-numeric.
  |Verify that SAM Expiration Date  field is read-only
  |Verify that If the UEI is a valid number in SAM.gov, then the organization data from SAM.gov copies to the registration page
    Given I am on "SUBPORTAL" portal
    When I click on "Register" button
    And I click on "Begin Registration" button
      #178888
    Then I softly see "Unique Entity Identifier (UEI)" inside page block detail
    #178899
    And I hovering mouse on help text icon inside page block detail "Unique Entity Identifier"
#    Then I see "The UEI is a unique 12-character identifier assigned to all entities who register in SAM.gov." shown as help text
    Then I see the header is "Registration" in the page details
    Then I see the sub-header is "Step 1 of 3" in the page details
      #179094
    When I enter value as "QGBBG68KN5N6" into "Unique Entity Identifier (UEI)" on old form
    When I enter value as "123456789" into "Employer Identification Number (EIN)" on old form
    When I click on "Verify Information" in the page details
    Then I softly see the text :
      | The SAM.gov validation did not pass. Please provide a valid UEI. If the UEI you provided is valid, then contact the SCDE help desk for assistance. |
      #178893
    When I enter value as "QGBBG68KN5N" into "Unique Entity Identifier (UEI)" on old form
    When I enter value as "123456807" into "Employer Identification Number (EIN)" on old form
    Then I softly see the text :
      | Please enter a valid 12-character UEI. Do not enter commas or blank spaces. |
    #179820
    When I enter value as "QGBBG68KN5N5" into "Unique Entity Identifier (UEI)" on old form
    When I enter value as "123456789" into "Employer Identification Number (EIN)" on old form
    When I click on "Verify Information" in the page details
    And I pause execution for "3" seconds
    Then I softly can see top right button "Save and Continue" in page detail
    When I click on "Save and Continue" in the page details
    And I pause execution for "5" seconds
    Then I softly see the following messages in the page details contains:
      | An organization with the same EIN or UEI already exists in the EGMS. For any questions, contact SCDE. You can continue with the registration if you think that there is a need to register the organization again. SCDE may not approve this registration. |
    #179588
    Then I see the header is "Registration" in the page details
    Then I see the sub-header is "Step 2 of 3" in the page details
    #179029
    Then I softly see field "SAM Expiration Date (MM/DD/YYYY)" as "11/1/2022"
    #179014
    Then I softly see field "Unique Entity Identifier (UEI)" as "QGBBG68KN5N5"

  @179821 @sprint-1 @userStory-176573
  Scenario: Verify that the system allows two organizations to register with the same EIN but different UEI number
    Given I am on "SUBPORTAL" portal
    When I click on "Register" button
    And I click on "Begin Registration" button
    When I enter value as "PC65G3A1WNY9" into "Unique Entity Identifier (UEI)" on old form
    When I enter value as "234567889" into "Employer Identification Number (EIN)" on old form
    When I click on "Verify Information" in the page details
    And I pause execution for "2" seconds
    When I click on "Save and Continue" in the page details
    And I pause execution for "5" seconds
    Then I softly see the following messages in the page details contains:
      | An organization with the same EIN or UEI already exists in the EGMS. For any questions, contact SCDE. You can continue with the registration if you think that there is a need to register the organization again. SCDE may not approve this registration. |

  @179095 @sprint-1 @userStory-176573
  Scenario: Verify that the system allows two organizations to register with the same EIN and same UEI number
    Given I am on "SUBPORTAL" portal
    When I click on "Register" button
    And I click on "Begin Registration" button
    When I enter value as "QGBBG68KN5N5" into "Unique Entity Identifier (UEI)" on old form
    When I enter value as "989995208" into "Employer Identification Number (EIN)" on old form
    When I click on "Verify Information" in the page details
    And I pause execution for "2" seconds
    When I click on "Save and Continue" in the page details
    And I pause execution for "5" seconds
    Then I softly see the following messages in the page details contains:
      | An organization with the same EIN or UEI already exists in the EGMS. For any questions, contact SCDE. You can continue with the registration if you think that there is a need to register the organization again. SCDE may not approve this registration. |

  @179912 @179913 @179294 @179911 @sprint-1 @userStory-176387
  Scenario: Verify Authorized Representative Information section has the updated label Web Accessibility Coordinator Information (WAC)
  |Verify do not see the Country field in the Web Accessibility Coordinator Information section
  |Verify Organization Representative section label
  |Verify the instructional text in the Organization Representative section.
    Given I am on "SUBPORTAL" portal
    When I click on "Register" button
    And I click on "Begin Registration" button
    When I enter value as "ZLP4KVER3S75" into "Unique Entity Identifier (UEI)" on old form
    When I enter value as "123456807" into "Employer Identification Number (EIN)" on old form
    When I click on "Verify Information" in the page details
    And I pause execution for "2" seconds
    When I click on "Save and Continue" in the page details
    And I enter value "Local Education Agency" into field "fieldOrganizationTypeSInglePicklist__c"
    And I enter value "0123456789" into field "fieldOrgnizationPhoneNumber__c"
    And I enter value "address" into field "fieldPaymentAddressLine1__c"
    And I enter value "city" into field "fieldPaymentAddressCity__c"
    And I enter value "LA" into field "fieldPaymentAddressState__c"
    And I enter value "12345" into field "fieldPaymentAddressZipCode__c"
    When I click on "Save" in the page details
      #179912
    Then I softly see "Web Accessibility Coordinator Information (WAC)" page block displayed
      #179913
    Then I softly do not see field "Country" inside "Web Accessibility Coordinator Information (WAC)" section
      #179294
    Then I softly see "Organization Representative:" page block displayed
      #179911
    Then I softly see the text containing :
      | To continue this registration, the following user profile information is required.  Upon approval of this registration request, the account information will be sent through email to the Web Accessibility Coordinator (WAC). |
      | The WAC is the authorized representative for the organization and is responsible for adding additional users and assigning roles.                                                                                              |

  @181689 @179289 @sprint-1 @userStory-176381
  Scenario: Verify Remove Legal Disclaimers during registration ( Conflict of Interest )
  |Verify Remove Legal Disclaimers during registration (Non-Disclosure Agreement)
    Given I am on "SUBPORTAL" portal
    When I click on "Register" button
    And I click on "Begin Registration" button
    Then I see the header is "Registration" in the page details
    Then I see the sub-header is "Step 1 of 3" in the page details

  @179470 @sprint-1 @userStory-178200
  Scenario: Verify That the note on the subrecipient registration page
    Given I am on "SUBPORTAL" portal
    When I click on "Register" button
    Then I softly do not see the Instruction text in the page
      | NOTE:  Passwords expire every 90 days.  For more account management information, review the Applicant FAQs. |

  @183979 @183946 @183968 @183973 @183969 @183944 @183975 @183976 @sprint-3 @userStory-180376 @UmangParekh
  Scenario: Verify the field "4-Digit Zip Code Extension" is read-only in the "Organization Address " section
  | Verify the field "Address Line 1" is read-only in the "Organization Address " section
  | Verify the field "Address Line 2" is read-only in the "Organization Address " section
  | Verify the field "City" is read-only in the "Organization Address " section
  | Verify the field "County" is read-only in the "Organization Address " section
  | Verify the field "Organization Name" is read-only
  | Verify the field "State" is read-only in the "Organization Address " section
  | Verify the field "Zip Code" is read-only in the "Organization Address " section
    Given I am on "SUBPORTAL" portal
    When I click on "Register" button
    And I click on "Begin Registration" button
    When I enter value as "ZLP4KVER3S75" into "Unique Entity Identifier (UEI)" on old form
    When I enter value as "123456807" into "Employer Identification Number (EIN)" on old form
    When I click on "Verify Information" in the page details
    And I pause execution for "2" seconds
    When I click on "Save and Continue" in the page details
    #183979
    Then I softly see that "4-Digit Zip Code Extension" rendered in view mode only
    #183946
    Then I softly see that "Address Line 1" rendered in view mode only
    #183968
    Then I softly see that "Address Line 2" rendered in view mode only
    #183973
    Then I softly see that "City" rendered in view mode only
    #183969
    Then I softly see that "County" rendered in view mode only
    #183944
    Then I softly see that "Organization Name" rendered in view mode only
    And I pause execution for "3" seconds
    #183975
    Then I softly see that "State" rendered in view mode only
    #183976
    Then I softly see that "Zip Code" rendered in view mode only