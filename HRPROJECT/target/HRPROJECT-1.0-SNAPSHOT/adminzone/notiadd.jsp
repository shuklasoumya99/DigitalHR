<%-- 
    Document   : notiadd
    Created on : Aug 7, 2021, 10:57:32 AM
    Author     : vicky
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="connect.DbManager"%>
<%
    if(session.getAttribute("userid")==null)
    {
        response.sendRedirect("../login.jsp");
    }
    else
    {
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/adminstyle.css" rel="stylesheet" type="text/css"/>
    </head>
    <body bgcolor="green">
        <div id="outer">
            <div id="header">
                <div id="logo">
                    <img src="images/logo.png" width="150" height="150"/>
                </div>
                <div id="title">
                    Welcome to admin zone.
                </div>
            </div>
            <div id="menu">
                <ul>
                    <li><a href="adminhome.jsp">Home</a></li>
                    <li><a href="notiadd.jsp">AddNotification</a></li>
                    <li><a href="employee.jsp">Employee</a></li>
                    <li><a href="jobseeker.jsp">JobSeeker</a></li>
                    <li><a href="enquirymgmt.jsp">Enquiry</a></li>
                    <li><a href="changepwd.jsp">ChangePassword</a></li>
                    <li><a href="managecity.jsp">City</a></li>
                    <li><a href="managequalification.jsp">Qualification</a></li>
                    <li><a href="logout.jsp">Logout</a></li>
                </ul>
            </div>
            
             <div id="main">
                <h1 style="color:blue;text-align:center;">
                   Manage Notifications 
                </h1>
                <form action="admincode/notiaddcode.jsp" method="post">
                    <table style="width:60%;margin:0 auto;">
                        <tr>
                            <td>Enter Notification</td>
                            <td>
                               <!-- <textarea name="notificationtext" rows="5" cols="30" style="resize:none;"></textarea>-->
                                <input type="text" placeholder="Enter Notification" name="notificationtext">
                                <input type="date" placeholder="dd-mm-yyyy" name="notificationdate">
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                                <input type="submit" value="Add Notification"/>
                            </td>
                        </tr>
                    </table>
                </form>
                    <br/>
                     <div id="footer">
                <div id="lfooter">
                    Copyright &copy; to Digital HR
                </div>
                <div id="rfooter">
                    Developed By: Soumya Shukla
                </div>
            </div>
                    </body>
</html>
<% } %>