<%-- 
    Document   : notiaddcode
    Created on : Aug 7, 2021, 11:03:07 AM
    Author     : vicky
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="connect.DbManager"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%
      //Here we write code to add new notification
        String notificationtext=request.getParameter("notificationtext");
         String notificationdate=request.getParameter("notificationdate");
        //Date dt=new Date();
        //SimpleDateFormat df=new SimpleDateFormat("dd/MM/yyyy");
        //String notificationdate=df.format(dt);
        DbManager db=new DbManager();
        String query="insert into notification(notificationtext,notificationdate) values('"+notificationtext+"','"+notificationdate+"')";
        boolean res=db.insertUpdateDelete(query);
        //System.out.print(res);
        //System.out.print(notificationdate);
        if(res==true)
        {
        out.print("<script>alert('Notification is added');window.location.href='../adminhome.jsp';</script>");
        }
        else
       {
        out.print("<script>alert('Notification is not added');window.location.href='../adminhome.jsp';</script>");
       }
     
   %>
     