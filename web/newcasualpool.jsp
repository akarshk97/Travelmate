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
    <%
        String s1, s2;
        HttpSession hs = request.getSession();
        s1 = (String) hs.getAttribute("email");
        s2 = (String) hs.getAttribute("user");
        System.out.println(s1);

    %> 
    <body><form action="./newcasualpool" method="post">
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
                    <h1>_____________________________________________________</h1>
                    <div id="side">

                        <font style="font: monospace;size: 3px;color: black;float: left" >
                        <br><br><center><table border="0">

                                <h3>Create a new Casual Car Pool</h3>

                                <tbody>
                                    <tr>
                                        <td>Iam Looking For:</td>
                                        <td><input type="radio" name="t8" value="both" />Drivers Or Passengers
                                            <input type="radio" name="t8" value="Drivers" />Drivers
                                            <input type="radio" name="t8" value="Passengers" />Passengers only
                                        
                                        </td>
                                        
                                    </tr>
                                    <tr>
                                        <td>Departure City</td>
                                        <td><select name="t1">
                                                <option>Ameerpet</option>
                                                <option>S.R.Nagar</option>
                                                <option>Kukatpally</option>
                                                <option>Secunderabad</option>
                                                <option>Madhapur</option>
                                                <option>Gachibowli</option>
                                                <option>Miyapur</option>
                                                <option>Hi-tech City</option>
                                                <option>Dilsukhnagar</option>
                                                <option>Nampally</option>
                                                <option>A.S.Rao Nagar</option>
                                                <option>Koti</option>
                                                <option>Shamshabad</option> 
                                            </select></td>
                                    </tr>
                                    <tr>
                                        <td>Departure Destination</td>
                                        <td><select name="t2">
                                                <option>Ameerpet</option>
                                                <option>S.R.Nagar</option>
                                                <option>Kukatpally</option>
                                                <option>Secunderabad</option>
                                                <option>Madhapur</option>
                                                <option>Gachibowli</option>
                                                <option>Miyapur</option>
                                                <option>Hi-tech City</option>
                                                <option>Dilsukhnagar</option>
                                                <option>Nampally</option>
                                                <option>A.S.Rao Nagar</option>
                                                <option>Koti</option>
                                                <option>Shamshabad</option> 
                                            </select></td>
                                    </tr>
                                    <tr><div id="trip">
                                    <td>Is it a return trip?</td>
                                    <td><input type="radio" name="t3" value="Yes"  onclick="t5.disabled = false"/>Yes
                                        <input type="radio" name="t3" value="No"  onclick="t5.disabled = true"/>No</td>
                                </div></tr>
                                <tr>
                                    <td>Departure time</td>
                                    <td><input type="time" name="t4"></td>
                                </tr>


                                <tr>
                                    <td>Arrival time</td>
                                    <td><input type="time" name="t5" id="t5"></td>
                                </tr>
                                
                                <tr>
                                    <td></td>
                                    <td><input type="submit" name="Create" value="Create"></td>
                                </tr>

                                </tbody>
                            </table></center>

                    </div>
                    <div id="info">

                        <font style="font: monospace;size: 3px;color: maroon;float: right" >
                        <h5>Hello,<%=s1%>         !<br>
                            <a href="Mypool.jsp" style="text-decoration:none">MyVehiclePools   </a>
                            <a href="Profile.jsp" style="text-decoration:none">|    My Profile</a>
                            <a href="Logout.jsp" style="text-decoration:none">|    Logout</a>
                        </h5>

                        </font></b></center>

                    </div>


                </div> 


            </div></form>
    </body>
</html>
