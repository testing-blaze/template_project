package com.automation.scdc.pageobject;

import com.automation.scdc.projectsetup.ProjectManager;
import com.automation.scdc.projectsetup.UsersAndURL;
import com.automation.rei.handlers.govgrants;
import com.testingblaze.actionsfactory.api.ByUsing;
import com.testingblaze.controller.TestingBlazeGlobal;
import com.testingblaze.misclib.Emails;
import com.testingblaze.objects.Elements;
import com.testingblaze.register.I;
import com.testingblaze.report.LogLevel;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;

import javax.mail.Message;
import javax.mail.MessagingException;
import java.text.MessageFormat;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

public class InternalOrganizationPage extends ProjectManager {
    /******* "Variables and Locators" *****************/
    private final By textInsideMiniPageLayout;
    UsersAndURL usersAndURL = new UsersAndURL();

    /**
     * Constructor to handle dependency injection and framework library
     */
    public InternalOrganizationPage() {
        textInsideMiniPageLayout = By.xpath("//div[@class='tooltipster-base tooltipster-shadow tooltipster-fade tooltipster-fade-show']//div[@class='tooltipster-content']");
    }

    /******* "Key Methods with complete functionality - public" *****************/

    public void iSoftlySeeExpandIcon(String usage, String tableId) {
        if (usage.equalsIgnoreCase("softly see")) {
            I.amPerforming().assertionsTo().assertThat(assertExpandIcon(tableId)).isTrue();
        } else if (usage.equalsIgnoreCase("softly do not see")) {
            I.amPerforming().assertionsTo().assertThat(assertExpandIcon(tableId)).isFalse();
        }
    }

    /**
     * @param userType e.g (INTERNAL,EXTERNAL)
     * @param subject  e.g Subject of mail that needs to be verified
     * @return true if we get expected Subject in mail notification
     * @throws MessagingException
     */
    public boolean validateMailSubject(String userType, String subject) throws MessagingException {
        Map<String, String> credentials = usersAndURL.getUserCredentialsForMailNotification(userType);


        if (subject.toLowerCase().contains("<award id>")) {
            subject = subject.replace("<award id>", getRecordId("Automation Permanent Award", "GrantAwardName__c", "Award__c").asString().replaceAll("^\"|\"$", ""));
        }

        if (subject.toLowerCase().contains("<payment id>")) {
            subject = subject.replace("<payment id>", I.amPerforming().propertiesFileOperationsTo().getValue("PaymentId"));
        }

        if (subject.contains("SavedValue")) {
            String expected = subject.split(">")[0].split("<")[1];
            subject = subject.replace("<" + expected + ">", I.amPerforming().propertiesFileOperationsTo().getValue(expected.split(":")[1]));
        }

        if (subject.toLowerCase().contains("<subrecipient name>")) {
            if (System.getProperty("env").equalsIgnoreCase("auto")) {
                subject = subject.replace("<subrecipient name>", "Automation SPI");
            }
        }
        return govgrants.perform().email().isSubjectEmailReceived(credentials.get("username"), credentials.get("password"), "GMAIL", 5, subject);
    }


    /*********
     * "Local Methods with complete functionality - private"
     *****************/

    private boolean assertExpandIcon(String tableId) {
        try {
            return I.amPerforming().checkToSee().isDisplayed(By.xpath("//div[@id='" + tableId + "']//i[contains(@class,'fa fa-plus-square-o')]"));
        } catch (Exception e) {
            return false;
        }
    }

    public void getHelpTextAtPageBlockOrInsideTable(String tableId, String toolTipId) {
        I.amPerforming().scroll().toMoveToElement(By.xpath("//div[@id='" + tableId + "']//a[@id='" + toolTipId + "']//span[contains(@class,'fa-info')]"));
    }
}