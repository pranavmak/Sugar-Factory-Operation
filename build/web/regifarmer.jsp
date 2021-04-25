<%-- 
    Document   : regifarmer
    Created on : 5 Mar, 2021, 11:59:07 AM
    Author     : pranavmak
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>farmer regi JSP Page</title>
    </head>
    <body>
         <% String fn = request.getParameter("fname");
           String ln = request.getParameter("lname");
           String mn = request.getParameter("mname");
           String sex = request.getParameter("sx");
           String addr = request.getParameter("add");
           String gat = request.getParameter("gn");
           int gatn=Integer.parseInt(gat);
           String aa = request.getParameter("8a");
           String sbname = request.getParameter("7/12");
           String ar1 = request.getParameter("ar");
           int area=Integer.parseInt(ar1);
           String tsc=request.getParameter("typs");
           String ldt1= request.getParameter("ldt");
           String ehdt1= request.getParameter("ehdt");
           String bname=request.getParameter("bn");
           String accn= request.getParameter("acn");
           int accno=Integer.parseInt(accn);
           String ifs= request.getParameter("ifsc");
           int ifsc1=Integer.parseInt(ifs);
           String actype=request.getParameter("act");
           String uname=request.getParameter("un");
           String ps=request.getParameter("pass");
           
           Connection con=null;
           Class.forName("oracle.jdbc.driver.OracleDriver");
           con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","jawahar","jawahar123");
           Statement stmt = con.createStatement();
           int i=stmt.executeUpdate("insert into farmer values('"+fn+"','"+ln+"','"+mn+"','"+sex+"','"+addr+"',"+gatn+",'"+aa+"','"+sbname+"',"+area+",'"+tsc+"',TO_DATE('"+ldt1+"','YYYY-MM-DD'),TO_DATE('"+ehdt1+"','YYYY-MM-DD'),'"+bname+"',"+accno+","+ifsc1+",'"+actype+"','"+uname+"','"+ps+"',farid.nextval)");
           if(i>0)
           {
            response.sendRedirect("register.jsp");
           }
           else
           {
            response.sendRedirect("flogin.html");
           }
           %>
    </body>
</html>
