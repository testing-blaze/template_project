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
                password = "test1234";
                break;
            default:
                password = "password1234";
        }
        return password;
    }

    public String getQAEnvironmentUser(String userLevel) {
        String username;
        switch (userLevel.toUpperCase()) {
            case "ADMIN":
                username = "reiadmin@ospi.qa";
                break;
            case "PM":
                username = "pmdanny@yopmail.com";
                break;
            case "IND":
                username = "hannah@yopmail.com";
                break;
            default:
                username = "reiadmin@ospi.qa";
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
            case "SPA":
                username = "";
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
            case "SPI":
                password = "password7890";
                break;
            default:
                password = "GovGrants@2021";
        }
        return password;
    }


}