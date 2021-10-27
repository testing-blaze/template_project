package com.automation.scdc.steps;

import com.automation.scdc.pageobject.LoginPage;
import com.testingblaze.register.I;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import org.junit.Assert;
import org.springframework.context.annotation.Description;

import java.util.List;

public class LoginSteps {
    private LoginPage loginPage;

    public LoginSteps() {
        loginPage = new LoginPage();
    }

    @Description("Header button display or not on login page")
    @Then("^I (softly see|see) \"([^\"]*)\" header buttons$")
    public void iSeeHeaderButtons(String usage, String buttonName) {
        if (usage.contains("softly")) {
            I.amPerforming().assertionsTo().assertThat(loginPage.isButtonPresentOrNot(buttonName)).isTrue();
        } else {
            Assert.assertTrue(loginPage.isButtonPresentOrNot(buttonName));
        }
    }

    @Description("To check different content of login header displying or not")
    @Then("^I (see|softly see) following content on Login header page:$")
    public void iSeeFollowingContentOnLoginHeaderPage(String usage, List<String> content) {
        for (String temp : content) {
            if (usage.contains("softly")) {
                I.amPerforming().assertionsTo().assertThat(loginPage.isButtonPresentOrNot(temp)).isTrue();
            } else {
                Assert.assertTrue(loginPage.isButtonPresentOrNot(temp));
            }
        }
    }

    @Description("To click on login header button")
    @And("I click on {string} header button")
    public void iClickOnHeaderButton(String buttonName) {
        loginPage.clickOnHeaderButton(buttonName);
    }
}