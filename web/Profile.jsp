<%-- 
    Document   : index
    Created on : Jan 29, 2014, 2:07:43 PM
    Author     : G5
--%>

<%@page import="Connect.Model"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="Style.css" type="text/css"/>
        <link rel="stylesheet" href="Menu.css" type="text/css"/>


    </head>
    <%
        String s1,s2,s3=null;
        HttpSession hs = request.getSession();
        s1 = (String) hs.getAttribute("email");
        s2=(String)hs.getAttribute("user");
        ResultSet rs;
        rs=Model.select("select fname from register where email='"+s1+"'");
        if(rs.next())
        {
             s3=rs.getString(1);
            System.out.println("hi"+s3);
        }
        System.out.println(s1);
    %>
    <body><form action="./Updateprofile" method="post">
        <div id="main">
            <div id="header" align="center"><img src="images/wall.jpg"  width="900px" height="230px" align="center">                               
            </div>
            <div style="">
                <ul class="menu" align="center">

                    <li><a href="index.jsp"><font color="whitesmoke"><img src="images/home.png" width="20px" height="20px" ></font></a></li>
                    <li><a href="Regularvehicle.jsp"><font color="whitesmoke">Find regular Vehicle Pool</font></a><li>
                    <li><a href="Casualvehicle.jsp"><font color="whitesmoke">Find Casual Vehicle Pool</font></a><li>
                    <li><a href="Createvehicle.jsp"><font color="whitesmoke">Create Regular Vehicle Pool</font></a><li>
                    <li><a href="Createvehicle.jsp"><font color="whitesmoke">Create Casual Vehicle Pool</font></a><li>
                        </font> 
                </ul>
            </div>

            <div id="content">
                <font style="font: monospace;size: 6px;color: maroon;" >
                <table border="0" align="center">
                   
                    <tbody>
                        <tr>
                          
                            <td><input type="hidden" name="t3" value="<%=s3%>"></td>
                        </tr>
                        
                        <tr>
                            <td>UserName</td>
                            <td><input type="text" name="t1" value="<%=s2%>"></td>
                        </tr>
                        <tr>
                            <td>E-Mail</td>
                            <td><input type="text" name="t2" value="<%=s1%>"></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><input type="submit" value="Update"></td>
                        </tr>
                        
                    </tbody>
                </table>


            </div> 

            <div id="footer"></div>
        </div></form>
                             
    </body>
</html>
