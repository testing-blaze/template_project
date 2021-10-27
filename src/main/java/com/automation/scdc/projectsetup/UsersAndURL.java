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
                username = "reiadmin@ospi.org.automation";
                break;
            case "PM":
                username = "automation.pm.ospi@yopmail.com.automation";
                break;
            case "EXE":
                username = "automation.exe.ospi@yopmail.com.automation";
                break;
            case "PO":
                username = "automation.po.ospi@yopmail.com.automation";
                break;
            case "IND":
                username = "hannah@yopmail.com.automation";
                break;
            case "SPI":
                username = "db@yopmail.com";
                break;
            case "FO":
                username = "automation.fo.ospi@yopmail.com.automation";
                break;
            case "FD":
                username = "automation.fd.ospi@yopmail.com.automation";
                break;
            case "SPI3":
                username = "roger03test@yopmail.com.automation";
                break;
            case "SPA":
                username = "barnotest04@yopmail.com.automation";
                break;
            case "SME":
                username = "test13peter@yopmail.com.automation";
                break;
            case "SPIADMIN":
                username = "ospitestpeter@yopmail.com.automation";
                break;
            default:
                username = "reiadmin@ospi.automation";
        }
        return username;
    }

    public String getAutoEnvironmentPassword(String userLevel) {
        String password;
        switch (userLevel.toUpperCase()) {
            case "ADMIN":
                password = "test12345";
                break;
            case "SPI3":
                password = "password7890";
                break;
            case "FD":
                password = "password2021";
                break;
            case "SPIADMIN":
                password = "password1234";
                break;
            case "PO":
                password = "test1234567";
                break;
            default:
                password = "password1234";
        }
        return password;
    }


}