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
        ResultSet rs;
        rs = Model.select("select * from request");
    %>
    <script>

        function Msg(phone)
        {
            alert(phone);
            window.location.href = "Accept.jsp?phone=" + phone;
        }
        function Reject(phone)
        {
            window.location.href = "Reject.jsp?phone=" + phone;
        }
    </script>
    <body>
        <div id="main">
            <div id="header" align="center"><img src="images/wall.jpg"  width="900px" height="230px" align="center">                               
            </div>
            <div style="">
                <ul class="menu" align="center">

                    <li><a href="index.jsp"><font color="whitesmoke"><img src="images/home.png" width="20px" height="20px" ></font></a></li>
                    <li><a href="Pools.jsp"><font color="whitesmoke">Pools</font></a><li>
                    <li><a href="Requests.jsp"><font color="whitesmoke">Requests</font></a><li>

                    <li><a href="Logout.jsp"><font color="whitesmoke">Logout</font></a></li> 
                    </font> 
                </ul>
            </div>

            <div id="content">
                <b><font style="font: monospace;size:12px;color: maroon;" ><center><h2>Requests from Users </h2>
                        <table border="1">

                            <tbody>
                                <tr>
                                    <td>Pool Creator</td>
                                    <td>Request From</td>                           
                                    <td>Contact No.</td>
                                    <td>Request For</td>
                                    <td>No.of Seats</td>
                                    <td>Source</td>
                                    <td>Admin Choice</td>
                                </tr>
                                <tr><%while (rs.next()) {%>
                                    <td><%=rs.getString(1)%></td>
                                    <td><%=rs.getString(2)%></td>                           
                                    <td><%=rs.getString(3)%></td>
                                    <td><%=rs.getString(4)%></td>
                                    <td><%=rs.getString(5)%></td>
                                    <td><%=rs.getString(6)%></td>
                                    <td><button name="a"  onclick="Msg(<%=rs.getString(3)%>)"> Accept</button> 
                                        <button name="b"  onclick="Reject(<%=rs.getString(3)%>)"> Reject</button></td> 
                                </tr><%}%>

                            </tbody>
                        </table></center>

            </div> 

            <div id="footer"></div>
        </div>
    </body>
</html>
