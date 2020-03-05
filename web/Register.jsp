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
    <body><form action="./Register" method="post">
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
                <center><b><font style="font: monospace;size: 8px;color: maroon;" > <h2>Create Your Vehicle Pool Here</h2>
                        <font style="font: monospace;size: 6px;color: maroon;" >
                                           <table border="0">
                            <tbody>
                                <tr>
                                    <td>First Name*</td>
                                    <td><input type="text" name="t1" required></td>
                                </tr>
                                <tr>
                                    <td>Last Name</td>
                                    <td><input type="text" name="t2" required></td>
                                </tr>
                                <tr>
                                    <td>E-Mail*</td>
                                    <td><input type="email" name="t3" required></td>
                                </tr>
                                <tr>
                                    <td>UserName*</td>
                                    <td><input type="text" name="t4" required></td>
                                </tr>
                                <tr>
                                    <td>Password*</td>
                                    <td><input type="password" name="t5" required></td>
                                </tr>
                                <tr>
                                    <td>Confirm Password*</td>
                                    <td><input type="password" name="t6" required></td>
                                </tr>
                                <tr>
                                  <td></td>
                                  <td><input type="submit" value="Register"></td>
                              </tr>
                            </tbody>
                        </table>


                        </font></b></center>

            </div> 

            <div id="footer"></div>
        </div>
        </form>
    </body>
</html>
