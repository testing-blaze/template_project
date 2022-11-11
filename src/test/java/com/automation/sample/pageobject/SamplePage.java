package com.automation.sample.pageobject;

import com.automation.sample.projectsetup.ProjectManager;
import com.automation.sample.projectsetup.UsersAndURL;
import org.openqa.selenium.By;

public class SamplePage extends ProjectManager {
    /******* "Variables and Locators" *****************/
    private final By textInsideMiniPageLayout;
    UsersAndURL usersAndURL = new UsersAndURL();

    /**
     * Constructor to handle dependency injection and framework library
     */
    public SamplePage() {
        textInsideMiniPageLayout = By.xpath("//div[@class='tooltipster-base tooltipster-shadow tooltipster-fade tooltipster-fade-show']//div[@class='tooltipster-content']");
    }

    /******* "Key Methods with complete functionality - public" *****************/

    public void iSoftlySeeExpandIcon(String usage, String tableId) {

    }


}