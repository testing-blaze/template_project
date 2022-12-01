package com.automation.sample.steps;

import com.automation.sample.pageobject.SamplePage;
import com.testingblaze.actionsfactory.api.ByUsing;
import com.testingblaze.register.I;
import io.cucumber.java.en.Given;

public class SampleSteps {

    SamplePage samplePage;

    public SampleSteps(SamplePage samplePage) {
        this.samplePage = samplePage;
    }

    @Given("I sign in")
    public void i_sign_in() {
        I.amPerforming().click().on(ByUsing.healingXpathName("navigateLogin"));
    }


}