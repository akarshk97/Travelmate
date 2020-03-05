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
        String s1,s2;
        HttpSession hs = request.getSession();
        s1 = (String) hs.getAttribute("email");
        s2=(String)hs.getAttribute("user");
        

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
                <h1>_____________________________________________________</h1>
                <div id="side">
                     <font style="font: monospace;size: 5px;color: maroon;" >
                            <h2>   Welcome,<%=s2%>         !</h2>
                                <h3>What do you want to do today?</h3></font>
                                <ul>
                                    <li>Create<a href="newregularpool.jsp" style="text-decoration: none">a Regular Pool</a></li>
                                    <li>Create<a href="newcasualpool.jsp" style="text-decoration: none">a Casual Pool</a></li>
                                </ul>
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

            <div id="footer"></div>
        </div>
    </body>
</html>
