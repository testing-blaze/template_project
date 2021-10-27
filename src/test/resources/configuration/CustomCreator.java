package com.framework.automation.steps;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(
        glue = {"setup","com.automation.scdc.steps","com.automation.rei.govgrantsSteps","com.testingblaze.actionsfactory.gherkin","com.testingblaze.register"},
        features = {"target/parallel/features/[CUCABLE:FEATURE].feature"},
        plugin = {"json:target/cucumber-report/[CUCABLE:RUNNER].json","com.testingblaze.controller.ReportingLogsPlugin"},
        tags = {"not @wip"},
        monochrome = true,
        strict = true
)
public class CustomCreator {

}

