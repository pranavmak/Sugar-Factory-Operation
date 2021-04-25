<%-- 
    Document   : insertproduction
    Created on : 18 Mar, 2021, 10:59:39 PM
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
         <%
       String sugartype=request.getParameter("st");
       String id=request.getParameter("fid");
       int fid=Integer.parseInt(id);
       String wt=request.getParameter("weight");
       int weight=Integer.parseInt(wt);
       String gno=request.getParameter("gadino");
       Class.forName("oracle.jdbc.driver.OracleDriver");
       Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
       Statement stmt=con.createStatement();
       int i=stmt.executeUpdate("insert into productions values('"+sugartype+"',"+fid+",sysdate,"+weight+",'"+gno+"',productionid.nextval)");
       if(i>0)
       {
       out.print("ADDED SUCCESSFULLY");
       }
       else
       {
       out.print("FAILED TO ADD");
       }
       %>
    </body>
</html>
