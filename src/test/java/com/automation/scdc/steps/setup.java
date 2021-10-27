package com.automation.scdc.steps;

import com.automation.scdc.projectsetup.ProjectWebServices;
import com.automation.scdc.projectsetup.UsersAndURL;
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

    public setup(TestSetupController userController,ProjectWebServices projectWebServices) {
        this.userController = userController;
        this.projectWebServices = projectWebServices;
        if(report == null) {
            this.report = new CSS();
            EnvironmentFactory.setProjectName("GovGrants SCDC Test Automation");
            EnvironmentFactory.setOrgName("REI Systems [Saas Business Unit]");
            EnvironmentFactory.setProjectPath(System.getProperty("user.dir"));
            report.reportConfigWriteUp();
        }
    }

    @Before(order = 2)
    public void setUpUsers() throws IOException, AWTException {
        userController.usersController(new UsersAndURL());
    }

}
