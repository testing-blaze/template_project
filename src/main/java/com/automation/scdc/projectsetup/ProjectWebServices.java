package com.automation.scdc.projectsetup;

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
                defaultEndPointGetToken = "/services/oauth2/token?grant_type=password&client_id=3MVG9Kip4IKAZQEV9oYdpI5E_Q9Gwfy8ZMV95pjrHjO4rnVdSjQ7HwvPEY60lRG4FyzBsoxSIVWILA1e5kfAl&client_secret=B764AE3AFB5475B9BEC1F177A4222F0F4DE423AA100DDF5E918D3C6FC7670381&username=reiadmin@ospi.org.automation&password=test12345";
                break;
            case "DEV":
                defaultEndPointGetToken = "/services/oauth2/token?grant_type=password&client_id=3MVG9ic.6IFhNpPo.QpwyKCHMrw6s8vtgXc_oLgo17qg26ShpahUQE.f9jubz7c.yjVr2tLdOWahcfeB_q4zw&client_secret=2AFB5BE723E580AFBFE400EF93A4850A04C0BC1D7783F9C4C5F36F37FDD6C0C8&username=reiadmin@ospi.org.dev1&password=test1234";
                break;
            case "QA1":
                defaultEndPointGetToken = "/services/oauth2/token?grant_type=password&client_id=3MVG9ic.6IFhNpPpl4rB4t2aE73S_fWpOTvQwvAWiCjKZUqx4OBqmzRKvvC15TR9nScB9Gyoiv9sP2844EVTl&client_secret=2474FE748E0504981C747C4414D434C7CCB74EB0E1FB30DA0B68238E921A26D7&username=qaadmin@ospi.qa1&password=test1234";
                break;
        }
        return defaultEndPointGetToken;
    }

    }