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
        String s1 = request.getParameter("t1");
        String s2 = request.getParameter("t2");
        ResultSet rs;
        rs = Model.select("select * from casualpool");

    %>
    <script>
        function Request(creator)
        {
            alert(creator);
            window.location.href="Request.jsp?user="+creator; 
        }
        
    </script>
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
                <center><b><font style="font: monospace;size: 8px;color: maroon;" > <h2>Regular Vehicle Pool </h2>
                        <font style="font: monospace;size: 6px;color: maroon;" >
                        <table border="0">

                            <tbody>
                                <tr><% while (rs.next()) {%>
                                    <td>Name</td>
                                    <td>Driver or Passenger</td>
                                    <td>Source</td>
                                    <td>Destination</td>
                                    <td>Returntrip</td>
                                    <td>Arrival </td>
                                    <td>Departure </td>
                                   
                                </tr>
                                <tr><td><%=rs.getString(1)%></td>
                                    <td><%=rs.getString(2)%></td>
                                    <td><%=rs.getString(3)%></td>
                                    <td><%=rs.getString(4)%></td>
                                    <td><%=rs.getString(5)%></td>
                                    <td><%=rs.getString(6)%></td>
                                    <td><%=rs.getString(7)%></td>
                                    <td><button name="b"  onclick="Request('<%=rs.getString(1)%>')"> Request for a Seat</button></td> 
                                </tr><%}%>
                            </tbody>
                        </table>


                        </font></b></center>

            </div> 

            <div id="footer"></div>
        </div>
    </body>
</html>
