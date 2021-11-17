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

}