<%-- 
    Document   : index
    Created on : Jan 29, 2014, 2:07:43 PM
    Author     : G5
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="Style.css" type="text/css"/>
        <link rel="stylesheet" href="Menu.css" type="text/css"/>


    </head>

    <%  String creator = request.getParameter("user");

    %> 
    <body><form action="./Request" method="post">
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
                        <center><table border="0">
                                <h2>Request for a Pool Creator</h2>
                                <tbody>
                                    <tr>
                                        <td>Pool Created By</td>
                                        <td><input type="text" name="t1" value="<%=creator%>"></td>
                                    </tr>
                                    <tr>
                                        <td>Name</td>
                                        <td><input type="text" name="t2"></td>
                                    </tr>
                                    <tr>
                                        <td>Phone Number</td>
                                        <td><input type="text" name="t3"></td>
                                    </tr>
                                    <tr>
                                        <td>Request for</td>
                                        <td><select name="t4">
                                                <option>Driver</option>
                                                <option>Passenger</option>

                                            </select></td>
                                    </tr>
                                    <tr>
                                        <td>No.Of Seats</td>
                                        <td><input type="text" name="t5"></td>
                                    </tr>
                                    <tr>
                                        <td>Source</td>
                                        <td><input type="text" name="t6"></td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><input type="submit" name="Send" value="Send"></td>
                                    </tr>

                                    </tr>
                                </tbody>
                            </table>
                            <%
                                if (creator.equalsIgnoreCase("a")) {
                            %>

                        <%
                                       out.println("You request has been Received.We will msg a confirmation Soon...");
                                   }%></center>
                </div> 



                <div id="footer"></div></div></form>
    </body>
</html>
