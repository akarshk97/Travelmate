

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;

public class SendSMS {

//Register in site2sms site and provide the credential
    static String userID="9700646592";
    static String password="19891987";
    static String sender="";
    static String msg="Testing new sms";
    
    static String SMSApi = "https://site2sms.p.mashape.com/index.php?uid='9700646592'&pwd='19891987'&phone='9030244670'&msg='hi'";
    static String head = "";

    public static void main(String[] args) {
        try {
            String url = SMSApi;
            String smsApiResponse = sendMySMS(url);
            System.out.println(smsApiResponse);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private static String sendMySMS(String url) {
        StringBuilder output = new StringBuilder();
        try {
            URL hp = new URL(url);
            System.out.println(url);
            URLConnection hpCon = hp.openConnection();
            hpCon.setRequestProperty("X-Mashape-Authorization", "aVi7utR6ZUkGLFkGRwXxd4wLsXz7c1QQ");
            BufferedReader in = new BufferedReader(new InputStreamReader(hpCon.getInputStream()));
            String inputLine;
            while ((inputLine = in.readLine()) != null) {
                output.append(inputLine);
            }
            in.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return output.toString();
    }
}
