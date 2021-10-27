package com.automation.scdc.pageobject;

import com.automation.scdc.projectsetup.ProjectManager;
import com.testingblaze.register.I;
import org.openqa.selenium.By;

/**
 * Handles all login based methods and locators for Project
 */
public class LoginPage extends ProjectManager {
    /**
     * To verify button available or not on LoginPage
     * To Check the other content of header on loginpage
     *
     * @param buttonName
     */
    public boolean isButtonPresentOrNot(String buttonName) {
        boolean result = false;
        By lbutton = By.xpath("//*[@value='" + buttonName + "' or @placeholder='" + buttonName + "' or contains(text(),'" + buttonName + "')]");
        try {
            if (I.amPerforming().checkToSee().isDisplayed(lbutton)) {
                result = true;
            }
        } catch (Exception e) {
            return false;
        }
        return result;
    }

    /**
     * To click on header button
     *
     * @param buttonName
     */
    public void clickOnHeaderButton(String buttonName) {
        I.amPerforming().click().on(By.xpath("//div[@class='external-login-btn']//input[@value='" + buttonName + "'] | //input[contains(@class,'customBtn') and @value='" + buttonName + "']"));
    }
}