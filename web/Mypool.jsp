<%-- 
    Document   : index
    Created on : Jan 29, 2014, 2:07:43 PM
    Author     : G5
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="Connect.Model"%>
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
        String s1;
         HttpSession hs = request.getSession();
         s1 = (String) hs.getAttribute("user");
         ResultSet rs;
         rs=Model.select("select * from newpool where user='"+s1+"'");
    
    %>
    <body>
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
                <b><font style="font: monospace;size:12px;color: maroon;" >
                    <table border="0">
                        <center>
                            <tbody>
                                <tr>
                                    <td>Name</td>
                                    <td>Driver or Passenger</td>
                                    <td>Source</td>
                                    <td>Destination</td>
                                    <td>Returntrip</td>
                                    <td>Arrival </td>
                                    <td>Departure </td>
                                    <td>Frequency</td>
                                    <td>Vehicle Type</td>
                                    <td>Total Seats</td>
                                   
                                </tr>
                                <tr>
                                    <% while (rs.next()) {%>
                                    <td><%=rs.getString(1)%></td>
                                    <td><%=rs.getString(2)%></td>
                                    <td><%=rs.getString(3)%></td>
                                    <td><%=rs.getString(4)%></td>
                                    <td><%=rs.getString(5)%></td>
                                    <td><%=rs.getString(6)%></td>
                                    <td><%=rs.getString(7)%></td>
                                    <td><%=rs.getString(8)%></td> 
                                     <td><%=rs.getString(9)%></td>
                                      <td><%=rs.getString(10)%></td> 
                                </tr><%}%>
                            </tbody></center>
                        </table>

            </div> 

            <div id="footer"></div>
        </div>
    </body>
</html>
