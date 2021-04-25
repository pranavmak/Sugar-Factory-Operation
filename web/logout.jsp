<%-- 
    Document   : logout
    Created on : 5 Mar, 2021, 2:25:02 PM
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
        <% session.setAttribute("username", null);
           session.invalidate();
           response.sendRedirect("index.html");
           %>
    </body>
</html>
