<%-- 
    Document   : Accept
    Created on : Aug 13, 2014, 10:46:15 AM
    Author     : G5
--%>

<%@page import="java.io.InputStreamReader"%>
<%@page import="java.net.URL"%>
<%@page import="java.net.URLConnection"%>
<%@page import="java.io.BufferedReader"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
     <% 
         String s=request.getParameter("phone");
         System.out.println(s);
         String s1="Request_Acccepted";
    
      try {
                    String smsApiResponse = sendMySMS("https://site2sms.p.mashape.com/index.php?uid=8121302872&pwd=4883079&phone="+s+"&msg="+s1+"");
//        
                    System.out.println(smsApiResponse+"sent");
                  

                } catch (Exception e) {
                   
                }%>
     
     <%! private static String sendMySMS(String url) {
        StringBuilder output = new StringBuilder();
        try {
            System.out.println("hi");
            URL hp = new URL(url);
            System.out.println(url);
            URLConnection hpCon = hp.openConnection();
            System.out.println(hpCon);
            hpCon.setRequestProperty("X-Mashape-Authorization", "aVi7utR6ZUkGLFkGRwXxd4wLsXz7c1QQ");
            BufferedReader in = new BufferedReader(new InputStreamReader(hpCon.getInputStream()));
            System.out.println(in);
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

     %>
    </body>
</html>
