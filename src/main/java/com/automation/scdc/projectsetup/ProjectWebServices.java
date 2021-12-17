package com.automation.scdc.projectsetup;

import com.testingblaze.controller.TestSetupController;
import com.testingblaze.register.EnvironmentFactory;
import com.testingblaze.register.I;
import io.restassured.response.Response;
import org.apache.commons.lang.StringUtils;

import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.util.List;
import java.util.stream.Collectors;

public class ProjectWebServices {
    private static String tokenString;
    private static String endPoint = EnvironmentFactory.getEnvironmentUrl();
    private String jobID;
    private String status;

    /**
     * get token for authentication of Delete request
     */

    static {
        getAuthToken();
    }

    public static void getAuthToken() {

        Response response = I.amPerforming().restHttp().postCall(null, null, endPoint + getEndPointForAuthToken(), null, null, null);
        tokenString = response.body().jsonPath().getString("access_token");
    }

    private void assertStatusCode(Response response) {
        response.then().statusCode(200);
        System.out.println("response code is " + response.getStatusCode());
        response.then().statusCode(200);
    }

    /**
     * get the record id
     *
     * @param recordName
     * @param fieldName
     * @param objectType
     * @return
     */
    public Response getRecordId(String recordName, String fieldName, String objectType) {
        var tokenString = getAuthToken("ADMIN");
        String finalEndPoint = endPoint + "/services/apexrest/productAutomationGetFieldValue?objectType=" + objectType
                + "&fieldValue=" + recordName + "&fieldName=" + fieldName;
        Response response = I.amPerforming().restHttp().getCall(finalEndPoint, "Authorization", "Bearer " + tokenString);
        response.prettyPrint();
        assertStatusCode(response);
        return response;
    }

    private static String getEndPointForAuthToken() {
        String defaultEndPointGetToken = "";
        switch (EnvironmentFactory.getEnvironmentName().toUpperCase()) {
            case "QA":
                defaultEndPointGetToken = "/services/oauth2/token?grant_type=password&client_id=3MVG9_I_oWkIqLrl7h.HM0nqegU6Ah0VVUJrwZYSyP_xsfZeV3pjkfxFzj.u5pDZw94PiW0vwsoQrhe8iNm8f&client_secret=253B5F330D34E723F878A4FDA6FF74B771FCBCA5E08806B5772339A36D56E75A&username=reiadmin@scdoe.org.qa1&password=scde@2022";
                break;
            case "AUTO":
                defaultEndPointGetToken = "/services/oauth2/token?grant_type=password&client_id=3MVG91w9zi214CtXnzIWdn2xPuHAN1XkYAitPT2j.uYialP.IkZPFfvjOR2aOfLI4oD5hkp14UCTxBkhZj_R4&client_secret=577B7DCF8AB585D9076AFF0B5AE8DAAAD39DFEE89F9DAFA15BE824B9A2DF1B91&username=reiadmin@scdoe.org.automation&password=GovGrants@2021";
                break;
        }
        return defaultEndPointGetToken;
    }

    /**
     * get auth token endpoint
     *
     * @param userType
     * @return
     * @throws RuntimeException
     */
    private static String getAuthTokenEndPoint(String userType) throws RuntimeException {
        var tokenEndpoint = "";
        switch (EnvironmentFactory.getEnvironmentName().toUpperCase()) {
            case "QA":
                tokenEndpoint = "/services/oauth2/token?grant_type=password&client_id=3MVG9_I_oWkIqLrl7h.HM0nqegU6Ah0VVUJrwZYSyP_xsfZeV3pjkfxFzj.u5pDZw94PiW0vwsoQrhe8iNm8f&client_secret=253B5F330D34E723F878A4FDA6FF74B771FCBCA5E08806B5772339A36D56E75A&username=" + TestSetupController.usersController.getUserName(userType) + "&password=" + TestSetupController.usersController.getPassword(userType);
                break;
            case "AUTO":
                tokenEndpoint = "/services/oauth2/token?grant_type=password&client_id=3MVG9_I_oWkIqLrl7h.HM0nqegU6Ah0VVUJrwZYSyP_xsfZeV3pjkfxFzj.u5pDZw94PiW0vwsoQrhe8iNm8f&client_secret=253B5F330D34E723F878A4FDA6FF74B771FCBCA5E08806B5772339A36D56E75A&username=" + TestSetupController.usersController.getUserName(userType) + "&password=" + TestSetupController.usersController.getPassword(userType);
                break;
            case "UAT":
                tokenEndpoint = "/services/oauth2/token?grant_type=password&client_id=3MVG9QBLg8QGkFerQYHw49UK1B3PEseO5THZ8WU0.SOyxd1FF9rDx0Ya.UULnQ1dzTcBKvenT4Ew_zt3XJPIP&client_secret=5ACBF7D05114C38007B0CC56BDB7CE85E8255233FA7363D81040C9F21A686CD9&username=" + TestSetupController.usersController.getUserName(userType) + "&password=" + TestSetupController.usersController.getPassword(userType);
                break;
            case "PROD":
                tokenEndpoint = "/services/oauth2/token?grant_type=password&client_id=3MVG9_XwsqeYoueLmRajnV98XSIepsKDJbt0nB9OuYLAtWmxH4BK2YuaM6aNi7.AyOXwMdk09Webp5_XChcOK&client_secret=31333B66F36E74CF4EA117E52AD9BA3C804567411D2E5195B22653C3F45E11C3&username=" + TestSetupController.usersController.getUserName(userType) + "&password=" + TestSetupController.usersController.getPassword(userType);
                break;
        }
        return tokenEndpoint;
    }

    /**
     * get token for authentication of Delete request
     *
     * @return
     */
    private String getAuthToken(String userType) {
        Response response = null;
        response = I.amPerforming().restHttp().postCall(null, null, endPoint + getAuthTokenEndPoint(userType), null, null, null);
        return response.body().jsonPath().getString("access_token");
    }

    /**
     * calls the api to delete test data
     *
     * @param objectType - the object for which test data should be deleted
     * @param recordName - the name or title of the record
     */
    public void deletionApi(String recordName, String objectType) {
        var tokenString = getAuthToken("ADMIN");

        try {
            recordName = URLEncoder.encode(recordName, StandardCharsets.UTF_8.toString());
            objectType = URLEncoder.encode(objectType, StandardCharsets.UTF_8.toString());
        } catch (Exception e) {
        }
        String finalEndPoint = endPoint.trim() + "/services/apexrest/productAutomationDeletionApi?objectType=" + objectType
                + "&recordName=" + recordName;
        Response response = I.amPerforming().restHttp().DeleteCall(null, null, finalEndPoint, "Authorization", "Bearer " + tokenString,
                null);
        System.out.println(finalEndPoint);
        response.prettyPrint();
        System.out.println("Completed. ");
        assertStatusCode(response);
    }

    //////////////////////////////////////// Deletion APIs' ///////////////////////////////////////////////

    public void deleteRecordInHooks() {
        List<String> recordNameList = I.amPerforming().propertiesFileOperationsTo().getAllSavedKeys().stream()
                .filter(Keys -> Keys.startsWith("AUTOMATION RUNTIME")).collect(Collectors.toList());

        for (String record : recordNameList) {
            if (StringUtils.containsIgnoreCase(record, "focus area")) {
                deletionApi(I.amPerforming().propertiesFileOperationsTo().getValue(record), "Focus Area");
            }
            if (StringUtils.containsIgnoreCase(record, "DemoLead")) {
                deletionApi(I.amPerforming().propertiesFileOperationsTo().getValue(record), "APPLICATION");
                deletionApi(I.amPerforming().propertiesFileOperationsTo().getValue(record), "PREAPPLICATION");
                deletionApi(I.amPerforming().propertiesFileOperationsTo().getValue(record), "AWARD");
                deletionApi(I.amPerforming().propertiesFileOperationsTo().getValue(record), "GRANT");
                deletionApi(I.amPerforming().propertiesFileOperationsTo().getValue(record), "FOA LEAD");
                deletionApi(I.amPerforming().propertiesFileOperationsTo().getValue(record), "ANNOUNCEMENT");
                deletionApi(I.amPerforming().propertiesFileOperationsTo().getValue(record), "Contact");
            }
            if (StringUtils.containsIgnoreCase(record, "Internal Program")) {
                deletionApi(I.amPerforming().propertiesFileOperationsTo().getValue(record), "PROGRAM");
            }
            if (StringUtils.containsIgnoreCase(record, "Federal Program")) {
                deletionApi(I.amPerforming().propertiesFileOperationsTo().getValue(record), "PROGRAM");
            }
            if (StringUtils.containsIgnoreCase(record, "Grant")) {
                deletionApi(I.amPerforming().propertiesFileOperationsTo().getValue(record), "Contact");
                deletionApi(I.amPerforming().propertiesFileOperationsTo().getValue(record), "PROGRESS REPORT");
                deletionApi(I.amPerforming().propertiesFileOperationsTo().getValue(record), "GRANT");
                deletionApi(I.amPerforming().propertiesFileOperationsTo().getValue(record), "AMENDMENT REQUEST");
            }
            if (StringUtils.containsIgnoreCase(record, "Contact")) {
                deletionApi(I.amPerforming().propertiesFileOperationsTo().getValue(record), "Contact");
            }
            if (StringUtils.containsIgnoreCase(record, "Federal Organization")) {
                deletionApi(I.amPerforming().propertiesFileOperationsTo().getValue(record), "Account");
            }
            if (StringUtils.containsIgnoreCase(record, "Non-Federal Organization")) {
                deletionApi(I.amPerforming().propertiesFileOperationsTo().getValue(record), "Account");
            }
            if (StringUtils.containsIgnoreCase(record, "Funding Source")) {
                deletionApi(I.amPerforming().propertiesFileOperationsTo().getValue(record), "Funding Source");
            }
            if (StringUtils.containsIgnoreCase(record, "Announcement")) {
                deletionApi(I.amPerforming().propertiesFileOperationsTo().getValue(record), "Qualified Announcement");
                deletionApi(I.amPerforming().propertiesFileOperationsTo().getValue(record), "Announcement");
            }
            if (StringUtils.containsIgnoreCase(record, "Formula Announcement")) {
                deletionApi(I.amPerforming().propertiesFileOperationsTo().getValue(record), "Application reviews");
                deletionApi(I.amPerforming().propertiesFileOperationsTo().getValue(record), "Application");
                deletionApi(I.amPerforming().propertiesFileOperationsTo().getValue(record), "Qualified Announcement");
                deletionApi(I.amPerforming().propertiesFileOperationsTo().getValue(record), "Announcement");
            }
        }
    }
    public void recaptchaChange(boolean shouldBeDisabled) {
        String finalEndPoint = endPoint + "/services/apexrest/recaptcha?shouldBeDisabled=" + shouldBeDisabled;
        Response response = I.amPerforming().restHttp().postCall(null, null, finalEndPoint, "Authorization", "Bearer " + tokenString, null);
        assertStatusCode(response);
    }
    public void callAPItoChangetheStatusOfAnnouncement() {
        I.amPerforming().waitFor().makeThreadSleep(3000);
        String URL = I.amPerforming().browserOperationsTo().getCurrentUrl();
        String[] a = URL.split("\\#|=");
        String id = a[1];
        getAuthToken();
        String finalEndPoint = endPoint + "/services/apexrest/SetAnnouncementStatusToClosedService?id=" + id;
        Response response = I.amPerforming().restHttp().getCall(finalEndPoint, "Authorization", "Bearer " + tokenString);
        assertStatusCode(response);
    }
}