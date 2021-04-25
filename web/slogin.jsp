<%-- 
    Document   : slogin
    Created on : 9 Mar, 2021, 7:00:16 PM
    Author     : pranavmak
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>staff JSP Page</title>
    </head>
    <body>
        <%
        String stafftype=request.getParameter("sfty");
        String username=request.getParameter("un");
        String password=request.getParameter("pass");
        
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","jawahar","jawahar123");
        Statement stmt=con.createStatement();
         
        if(stafftype.equals("Staffmanager"))
        { 
         ResultSet rs=stmt.executeQuery("select username,password from staff where username='"+username+"' and password='"+password+"'");
             if(rs.next())
          { 
           session.setAttribute("username",username);
                   
           response.sendRedirect("staffpage.html");
           
          }
          else
          {
          out.print("Wrong Username Password");
          %>
          <a href="slogin.html">Try Agin</a>
          <%
          }%>
        <%}

           else if(stafftype.equals("Chairman"))
        {
            ResultSet rs=stmt.executeQuery("select username,password from staff where username='"+username+"' and password='"+password+"'and stafftype='"+stafftype+"'");
            if(rs.next())
            {
              out.print("LOGIN Success Chairman");
            }
            else
            {
            out.print("Username or password wrong");
            }
        }
        
          else if(stafftype.equals("ChiefEngg"))
        {
            ResultSet rs=stmt.executeQuery("select username,password from staff where username='"+username+"' and password='"+password+"'and stafftype='"+stafftype+"'");
            if(rs.next())
            {
              out.print("LOGIN Success ChiefEngg");
            }
            else
            {
            out.print("Username or password wrong");
            }
        }
        
        else if(stafftype.equals("M.D"))
        {
            ResultSet rs=stmt.executeQuery("select username,password from addstaff where username='"+username+"' and password='"+password+"'and stafftype='"+stafftype+"'");
            if(rs.next())
            {
              out.print("LOGIN Success M.D");
            }
            else
            {
            out.print("Username or password wrong");
            }
        }
        
        else if(stafftype.equals("Engineer"))
        {
            ResultSet rs=stmt.executeQuery("select username,password from addstaff where username='"+username+"' and password='"+password+"'and stafftype='"+stafftype+"'");
            if(rs.next())
            {
              out.print("LOGIN Success Engineer");
            }
            else
            {
            out.print("Username or password wrong");
            }
        }

        else if(stafftype.equals("Accountant"))
        {
            ResultSet rs=stmt.executeQuery("select username,password from addstaff where username='"+username+"' and password='"+password+"'and stafftype='"+stafftype+"'");
            if(rs.next())
            {
              out.print("LOGIN Success Accountant");
            }
            else
            {
            out.print("Username or password wrong");
            }
        }
        
        else
        {
        out.print("Staff type not seletced");
        }
        
         %>
    </body>
</html>
