<%-- 
    Document   : success
    Created on : 5 Mar, 2021, 1:15:28 PM
    Author     : pranavmak
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        <h1>Login Successful</h1>
        <% if((session.getAttribute("username")==null)||(session.getAttribute("username")==" "))
        {
        %>
        You are not Logged In<br>
        <a href="flogin.html">PLEASE LOGIN</a>
        <% }
         else 
            { %>
        welcome <%= session.getAttribute("username") %>
        <a href="logout.jsp">LOGOUT</a>
        <% } %>
    </center>
    </body>
</html>
