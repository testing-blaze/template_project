package com.automation.scdc.steps;

import com.automation.scdc.pageobject.InternalOrganizationPage;
import com.automation.scdc.projectsetup.ProjectWebServices;
import com.testingblaze.register.I;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import jdk.jfr.Description;
import org.junit.Assert;

import javax.mail.MessagingException;
import java.util.List;
import java.util.Map;

public class InternalOrganizatioSteps extends ProjectWebServices {

    InternalOrganizationPage internalOrganizationPage;

    public InternalOrganizatioSteps(InternalOrganizationPage internalOrganizationPage) {
        this.internalOrganizationPage = internalOrganizationPage;
    }

    @Then("^I (softly see|softly do not see) expand icon inside table \"([^\"]*)\"$")
    public void iSoftlySeeExpandIcon(String usage, String tableId) {
        internalOrganizationPage.iSoftlySeeExpandIcon(usage, tableId);
    }

    @Given("^I (softly can see|can see) mail notification for \"([^\"]*)\" user with following subject:$")
    public void iSeeMailSubject(String usage, String userType, List<String> subjectList) throws MessagingException {
        String subject = subjectList.get(0);
        if (usage.contains("softly")) {
            I.amPerforming().assertionsTo().assertThat(internalOrganizationPage.validateMailSubject(userType, subject)).isTrue();
        } else {
            Assert.assertTrue(internalOrganizationPage.validateMailSubject(userType, subject));
        }
    }
    @And("I call API to change the status of Announcement")
    public void iCallApitoChangeStatusOfAnnouncement() {
        internalOrganizationPage.callAPItoChangetheStatusOfAnnouncement();
    }

    @Given("^I delete the record \"([^\"]*)\" from the object \"([^\"]*)\"$")
    public void deleteTestData(String recordName, String objectType) {
        internalOrganizationPage.deletionApi(recordName, objectType);
    }

    @When("^I hovering mouse on page block help text icon inside table \"([^\"]*)\" with tooltip id \"([^\"]*)\"$")
    public void getHelpTextAtPageBlock(String tableId, String toolTipId) {
        internalOrganizationPage.getHelpTextAtPageBlockOrInsideTable(tableId, toolTipId);
    }

    @When("I enter value {string} into field {string} on send email modal")
    public void iEnterValueIntoFieldOnSendEmailModal(String value, String fieldLabel) {
        internalOrganizationPage.enterValueInSendEmailModalFields(value, fieldLabel);
    }

    @Then("^I (softly see|softly do not see) \"([^\"]*)\" at my feed container with id \"([^\"]*)\"$")
    public void iDoNotSeeAtMyFeedSectionContainerWithId(String usage,String text, String sectionId) {
        internalOrganizationPage.assertTextAtMyFeedSectionWithId(usage,text,sectionId);
    }
}