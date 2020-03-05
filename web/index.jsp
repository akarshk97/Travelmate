<%-- 
    Document   : index
    Created on : june 23, 2017, 2:07:43 PM
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
    <body>
        <div id="main">
            
            <div id="header" align="center"><img src="images/wall.jpg"  width="900px" height="230px" align="center">                               
            </div>
            <div style="">
                <ul class="menu" align="center">

                    <li><a href="index.jsp"><font color="whitesmoke"><img src="images/home.png" width="20px" height="20px" ></font></a></li>
                    <li><a href="Regularvehicle.jsp"><font color="whitesmoke">Find regularVehiclePool</font></a><li>
                    <li><a href="Casualvehicle.jsp"><font color="whitesmoke">Find CasualVehiclePool</font></a><li>
                    <li><a href="Createvehicle.jsp"><font color="whitesmoke">Create RegularVehiclePool</font></a><li>
                    <li><a href="Createvehicle.jsp"><font color="whitesmoke">Create CasualVehiclePool</font></a><li>
                    <li><a href="Admin.jsp"><font color="whitesmoke">Admin</font></a></li> 
                        </font> 
                </ul>
            </div>

            <div id="content">
                <b><font style="font: monospace;size:12px;color: maroon;" ><center><h1>Welcome to TravelMate</h1><sub>Makes Ur Travelling More Comfortable</sub></center>

            </div> 

            <div id="footer"></div>
        </div>
    </body>
</html>
