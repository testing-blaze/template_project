package com.automation.sample.projectsetup;


import com.testingblaze.controller.UsersController;
import com.testingblaze.misclib.Properties_Logs;
import com.testingblaze.register.EnvironmentFactory;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

public class UsersAndURL implements UsersController {

    /**
     * @REI-Systems
     * @author nauman.shahid
     * @category Handles users based on different environments
     */

    @Override
    public String getUserName(String userLevel) {
        String userName = null;
        if (EnvironmentFactory.getEnvironmentName().equalsIgnoreCase("QA")) {
            userName = getQAEnvironmentUser(userLevel);
        } else if (EnvironmentFactory.getEnvironmentName().contains("AUTO")) {
            userName = getAutoEnvironmentUser(userLevel);
        }
        return userName;
    }

    @Override
    public String getPassword(String userLevel) {
        String password = null;
        if (EnvironmentFactory.getEnvironmentName().equalsIgnoreCase("QA")) {
            password = getQAEnvironmentPassword(userLevel);
        } else if (EnvironmentFactory.getEnvironmentName().contains("AUTO")) {
            password = getAutoEnvironmentPassword(userLevel);
        }
        return password;
    }

    public String getQAEnvironmentPassword(String userLevel) {
        String password;
        switch (userLevel.toUpperCase()) {
            case "ADMIN":
                password = "GovGrants@2023";
                break;
            default:
                password = "GovGrants@2022";
        }
        return password;
    }

    public String getQAEnvironmentUser(String userLevel) {
        String username;
        switch (userLevel.toUpperCase()) {
            case "ADMIN":
                username = "qa_admin@scdoe.org.qa1";
                break;
            default:
                username = "reiadmin@scdoe.org.qa1";
        }
        return username;
    }

    public String getAutoEnvironmentUser(String userLevel) {
        String username;
        switch (userLevel.toUpperCase()) {
            case "ADMIN":
                username = "reiadmin@scdoe.org.automation";
                break;
            default:
                username = "reiadmin@scdoe.org.automation";
        }
        return username;
    }

    public String getAutoEnvironmentPassword(String userLevel) {
        String password;
        switch (userLevel.toUpperCase()) {
            case "ADMIN":
                password = "GovGrants@2021";
                break;
            default:
                password = "GovGrants@2021";
        }
        return password;
    }
}
