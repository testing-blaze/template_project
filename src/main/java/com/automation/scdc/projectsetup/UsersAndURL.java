package com.automation.scdc.projectsetup;


import com.testingblaze.controller.UsersController;
import com.testingblaze.register.EnvironmentFactory;

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
                password = "GovGrants@2021";
                break;
            case "FD":
                password = "GovGrants@2022";
                break;
            case "FO":
                password = "GovGrants@2022";
                break;
            case "PM":
                password = "GovGrants@2022";
                break;
            case "PO":
                password = "GovGrants@2022";
                break;
            case "EXE":
                password = "GovGrants@2021";
                break;
            default:
                password = "GovGrants@2021";
        }
        return password;
    }

    public String getQAEnvironmentUser(String userLevel) {
        String username;
        switch (userLevel.toUpperCase()) {
            case "ADMIN":
                username = "reiadmin@scdoe.org.qa1";
                break;
            case "PM":
                username = "automationpm@scdoe.org.qa1";
                break;
            case "PM1":
                username = "simon.pm@yopmail.com.qa1";
                break;
            case "PO":
                username = "test.user.po@yopmail.com.qa1";
                break;
            case "FD":
                username = "automationfd@scdoe.org.qa1";
                break;
            case "FO":
                username = "test.user.fo@yopmail.com.qa1";
                break;
            case "EXE":
                username = "test.user.exe@yopmail.com.qa1";
                break;
            case "SPI":
                username = "automationspi@scde.org.qa1";
                break;
            case "SPA":
                username = "automationspa@scde.org.qa1";
                break;
            case "SPIWAC":
                username = "automationspiwac@scde.org.qa1";
                break;
            case "SME":
                username = "smeautomation@scde.org.qa1";
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
            case "PM":
                username = "automationpm@scdoe.org.automation";
                break;
            case "EXE":
                username = "test.user.exe@yopmail.com.automation";
                break;
            case "PO":
                username = "test.user.po@yopmail.com.automation";
                break;
            case "FO":
                username = "test.user.fo@yopmail.com.automation";
                break;
            case "FD":
                username = "automationfd@scde.org.automation";
                break;
            case "SPI":
                username = "";
                break;
            case "SPIWAC":
                username = "jerrypowell5567@yahoo.com.automation";
                break;
            case "SME":
                username = "";
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
            case "SPIWAC":
                password = "GovGrants@2021";
                break;
            default:
                password = "GovGrants@2021";
        }
        return password;
    }

}