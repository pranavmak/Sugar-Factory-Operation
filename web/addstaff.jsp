<%-- 
    Document   : addstaff
    Created on : 9 Mar, 2021, 12:41:43 PM
    Author     : pranavmak
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add staff JSP Page</title>
    </head>
    <body>
       <%
        String firstname=request.getParameter("fname");
        String lastname=request.getParameter("lname");
        String gender=request.getParameter("sx");
        String addr=request.getParameter("ad");
        String stafftype=request.getParameter("sfty");
        String jobrole=request.getParameter("jr");
        String joindt=request.getParameter("jd");
        String dept1=request.getParameter("dept");
        String salar=request.getParameter("sal");
        int salary=Integer.parseInt(salar);
        String username=request.getParameter("un");
        String password=request.getParameter("pswd");
        
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","jawahar","jawahar123");
        Statement stmt=con.createStatement();
         int i=stmt.executeUpdate("insert into staff values('"+firstname+"','"+lastname+"','"+gender+"','"+addr+"','"+stafftype+"','"+jobrole+"',TO_DATE('"+joindt+"','YYYY-MM-DD'),'"+dept1+"',"+salary+",'"+username+"','"+password+"',staffid.nextval)");
         if(i>0)
         {
         response.sendRedirect("addstaff.html");
         }
         else
         {
         out.print("FAILED TO ADD");
         }
        %> 
    </body>,
</html>
