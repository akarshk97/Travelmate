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
    <body><form action="Casualvehiclepool.jsp" method="post">
            <div id="main">
                <div id="header" align="center"><img src="images/wall.jpg"  width="900px" height="230px" align="center">                               
                </div>
                <div style="">
                    <ul class="menu" align="center">

                        <li><a href="index.jsp"><font color="whitesmoke"><img src="images/home.png" width="20px" height="20px" ></font></a></li>
                        <li><a href="Regularvehicle.jsp"><font color="whitesmoke">Find regular Vehicle Pool</font></a><li>
                        <li><a href="Register.jsp"><font color="whitesmoke">Find Casual Vehicle Pool</font></a><li>
                        <li><a href="Createvehicle.jsp"><font color="whitesmoke">Create Regular Vehicle Pool</font></a><li>
                        <li><a href="Createvehicle.jsp"><font color="whitesmoke">Create Casual Vehicle Pool</font></a><li>
                            </font> 
                    </ul>
                </div>

                <div id="content">
                    <center><b><font style="font: monospace;size: 8px;color: maroon;" > <h2>Find the Casual Vehicle Pool Here</h2>
                            <font style="font: monospace;size: 4px;color: maroon;" >Source     :<select name="t1">
                                <option>Hi-tech City</option>
                                <option>Dilsukhnagar</option>
                                <option>Nampally</option>
                                <option>A.S.Rao Nagar</option>
                                <option>Malakpet</option>
                                <option>Koti</option>
                                <option>Ameerpet</option>
                                <option>S.R.Nagar</option>
                                <option>Shamshabad</option>
                                <option>Kukatpally</option>
                                <option>Secunderabad</option>
                                <option>Madhapur</option>
                                <option>Gachibowli</option>
                                <option>Miyapur</option>
                            </select>                   
                            Destination:<select name="t2">
                                <option>Kukatpally</option>
                                <option>Secunderabad</option>
                                <option>Madhapur</option>
                                <option>Gachibowli</option>
                                <option>Miyapur</option>
                                <option>Hi-tech City</option>
                                <option>Dilsukhnagar</option>
                                <option>Nampally</option>
                                <option>Malakpet</option>
                                <option>A.S.Rao Nagar</option>
                                <option>Ameerpet</option>
                                <option>S.R.Nagar</option>
                                <option>Koti</option>
                                <option>Shamshabad</option>                    </select>

                            <br> <input type="submit" value="Search" size="50" height="15px"></font></b></center>

                </div> 

                <div id="footer"></div>
            </div></form>
    </body>
</html>
