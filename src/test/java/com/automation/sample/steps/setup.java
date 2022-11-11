package com.automation.sample.steps;

import com.automation.sample.projectsetup.ProjectWebServices;
import com.automation.sample.projectsetup.UsersAndURL;
import com.testingblaze.controller.TestSetupController;
import com.testingblaze.register.EnvironmentFactory;
import com.testingblaze.report.CSS;
import io.cucumber.java.After;
import io.cucumber.java.Before;

import java.awt.*;
import java.io.IOException;

/**
 * @author nauman.shahid
 * @for REI-Systems
 * @category Handle browser initialization , appium , hooks and environments
 */

public class setup {
    private TestSetupController userController;
    private static CSS report;
    ProjectWebServices projectWebServices;

    public setup(TestSetupController userController, ProjectWebServices projectWebServices) {
        this.userController = userController;
        this.projectWebServices = projectWebServices;
        if (report == null) {
            this.report = new CSS();
            EnvironmentFactory.setProjectName("Your Project naME");
            EnvironmentFactory.setOrgName("Mention Your Company Name");
            EnvironmentFactory.setProjectPath(System.getProperty("user.dir"));
            report.reportConfigWriteUp();
        }
    }

    @Before(order = 2)
    public void setUpUsers() throws IOException, AWTException {
        userController.usersController(new UsersAndURL());
    }

}
