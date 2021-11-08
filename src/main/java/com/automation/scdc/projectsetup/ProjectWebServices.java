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
                defaultEndPointGetToken = "/services/oauth2/token?grant_type=password&client_id=3MVG9sLbBxQYwWqshy35zWOkobcTcCuQqTPfoTqT.nfLl5Vrh6yymLpnp1.fURC5XMfXprTY7c.NeUtXDI796&client_secret=57B54A7AC41CDBB9A8DF0BFBA1C94C2B98D3D56CF9DE1F1DA7E525A15B376199&username=manu.admin@lsc.org.automation&password=SALESF0RCE2020";
                break;
            case "AUTO":
                defaultEndPointGetToken = "/services/oauth2/token?grant_type=password&client_id=3MVG91w9zi214CtXnzIWdn2xPuHAN1XkYAitPT2j.uYialP.IkZPFfvjOR2aOfLI4oD5hkp14UCTxBkhZj_R4&client_secret=577B7DCF8AB585D9076AFF0B5AE8DAAAD39DFEE89F9DAFA15BE824B9A2DF1B91&username=reiadmin@scdoe.org.automation&password=GovGrants@2021";
            break;
        }
        return defaultEndPointGetToken;
    }

    }