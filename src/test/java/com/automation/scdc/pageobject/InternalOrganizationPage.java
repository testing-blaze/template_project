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

    public void enterValueInSendEmailModalFields(String value, String fieldLabel) {
        if (fieldLabel.equalsIgnoreCase("Body Content")) {
            By fieldWrapperLocator = ByUsing.xpath("//label[contains(text(),'" + fieldLabel + "')]//following-sibling::div");
            WebElement fieldWrapper = I.amPerforming().getElementReference().of(fieldWrapperLocator);

            By inputBoxSelector = By.xpath("//html//body[@contenteditable='true']");
            I.amPerforming().waitFor().makeThreadSleep(1000);
            I.amPerforming().switchTo().frame(I.amPerforming().getElementReference().ofNested(fieldWrapper, (By.xpath(".//iframe"))));
            try {
                I.amPerforming().textInput().toClear(I.amPerforming().getElementReference().ofNested(fieldWrapper, inputBoxSelector));
            } catch (Exception e) {
            }
            I.amPerforming().textInput().in(inputBoxSelector, value);
            I.amPerforming().switchTo().parentFrame();
        } else {
            WebElement fieldOnSendEmailModal = I.amPerforming().getElementReference().of(By.xpath("//label[contains(text(),'" + fieldLabel + "')]/following-sibling::div//input[@type='text']" +
                    "| //label[contains(text(),'" + fieldLabel + "')]/parent::th/following-sibling::td//input[@type='text']"));
            I.amPerforming().textInput().toClear(fieldOnSendEmailModal);
            fieldOnSendEmailModal.sendKeys(value);
        }
    }

    public void assertTextAtMyFeedSectionWithId(String usage, String text, String sectionId) {
        if (usage.equalsIgnoreCase("see")) {
            I.amPerforming().assertionsTo().assertThat(isExpectedTextDisabledAtMyFeedSection(text, sectionId)).isTrue();
        } else if (usage.equalsIgnoreCase("do not see")) {
            I.amPerforming().assertionsTo().assertThat(isExpectedTextDisabledAtMyFeedSection(text, sectionId)).isFalse();

        }
    }

    public Boolean isExpectedTextDisabledAtMyFeedSection(String text, String sectionId) {
        boolean flag = false;
        try {
            if (I.amPerforming().checkToSee().isDisplayed(ByUsing.xpath("//div[@id='" + sectionId + "']//*[" + I.amPerforming().sanityOfXpathTo().contains("text()", text) + "]"))) {
                flag = true;
            }
        } catch (Exception e) {
            flag = false;
        }
        return flag;
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