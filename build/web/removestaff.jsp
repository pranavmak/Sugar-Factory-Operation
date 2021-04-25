<%-- 
    Document   : removestaff
    Created on : 9 Mar, 2021, 10:44:44 PM
    Author     : pranavmak
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%
        String id=request.getParameter("id");
        int i=Integer.parseInt(id);
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","jawahar","jawahar123");
        Statement stmt=con.createStatement();
        int i1=stmt.executeUpdate("delete from staff where staffid="+i+"");
        if(i1>0)
 { %>
    <h1><%="Staff remove successfull"%></h1>
    <a href="removestaff.html">Remove staff</a>
 <%
 }
 else
 {%>
   <h1><%="Staff remove Failed"%></h1>
   <a href="removestaff.html">Remove staff</a>
 <%}%>
    </body>
</html>
