package com.automation.sample.runner;


import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(
        glue = {"setup","com.automation.sample.steps","com.automation.rei.govgrantsSteps","com.testingblaze.actionsfactory.gherkin","com.testingblaze.register"},
        features = {"src/test/resources/features"},
        plugin = {"json:target/cucumber-report/cucumber.json","html:target/cucumber-html","com.testingblaze.controller.ReportingLogsPlugin"},
        tags = {"@testOrganization"},
        monochrome = true
)

public class IDERunner {

}

