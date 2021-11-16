package com.automation.scdc.projectsetup;

import com.testingblaze.controller.TestSetupController;
import com.testingblaze.register.EnvironmentFactory;
import com.testingblaze.register.I;
import io.restassured.response.Response;

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



    private static String getEndPointForAuthToken() {
        String defaultEndPointGetToken = "";
        switch (EnvironmentFactory.getEnvironmentName().toUpperCase()) {
            case "QA":
                defaultEndPointGetToken = "/services/oauth2/token?grant_type=password&client_id=3MVG9BiWFlgZEySViZ28cC3t9qysqBKFzp7Nq8TeIoxDZchfEVjlzCnoTtl8AonVxlgD7YmauV37m8uUr5aym&client_secret=DEC1633D12C25C2D4E1B9C387509720D08575A3E184127D8C06988C735BF8EFE&username=reiadmin@scdoe.org.qa1&password=GovGrants@2021";
                break;
            case "AUTO":
                defaultEndPointGetToken = "/services/oauth2/token?grant_type=password&client_id=3MVG91w9zi214CtXnzIWdn2xPuHAN1XkYAitPT2j.uYialP.IkZPFfvjOR2aOfLI4oD5hkp14UCTxBkhZj_R4&client_secret=577B7DCF8AB585D9076AFF0B5AE8DAAAD39DFEE89F9DAFA15BE824B9A2DF1B91&username=reiadmin@scdoe.org.automation&password=GovGrants@2021";
            break;
        }
        return defaultEndPointGetToken;
    }

    }