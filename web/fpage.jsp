<%-- 
    Document   : fpage
    Created on : 8 Mar, 2021, 8:11:22 PM
    Author     : pranavmak
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            div{
                background-color: lightgreen;
                width: 500px;
                position:relative;
                            }
        </style>
    </head>
    <body>
        <div>
    <center>
        <% if((session.getAttribute("username")==null)||(session.getAttribute("username")==" "))
        {
        %>
        You are not Logged In<br>
        <a href="flogin.html">PLEASE LOGIN</a>
        <% }
         else 
            { %>
            <h1> **** WELCOME<i> <%= session.getAttribute("username") %></i> ****</h1>
        <% } %>
        
    </center>
        </div>
    <jsp:include page="fpage.html"></jsp:include>
</body>
</html>
