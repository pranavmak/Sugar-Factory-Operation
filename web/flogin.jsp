<%-- 
    Document   : farmer
    Created on : 5 Mar, 2021, 12:35:14 PM
    Author     : pranavmak
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>farmer JSP Page</title>
    </head>
    <body>
        <% String username =request.getParameter("un");
           String password =request.getParameter("ps");
           
           Class.forName("oracle.jdbc.driver.OracleDriver");
           Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","jawahar","jawahar123");
           Statement stmt = con.createStatement();
           ResultSet rs =stmt.executeQuery("select username,password from farmer where username='"+username+"'and password='"+password+"'");
           
           if(rs.next() )
           {
            session.setAttribute("username",username);   
            response.sendRedirect("fpage.jsp");
           }
           else
           {
            out.print("Invalid ID and Password <br> <a href=flogin.html>Try again</a>");
           }

           %>
    </body>
</html>
