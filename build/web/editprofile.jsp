<%-- 
    Document   : editprofile
    Created on : 23 Mar, 2021, 11:36:06 AM
    Author     : pranavmak
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit profile JSP</title>
    </head>
    <body>
        <%

            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "jawahar", "jawahar123");
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("select * from farmer where username='" + session.getAttribute("username") + "'");

            while (rs.next()) {%>

        <table>
            <tr><strong><td>First Name</strong></td><td><input type="text" name=fn value="<%=rs.getString(1)%>"></td></tr>

    <tr><strong><td>Last Name</strong></td><td><input type="text" name=ln value="<%=rs.getString(2)%>"></td></tr>

<tr><strong><td>gender</strong></td><td>

    <input type="text" name="gender" value="<%=rs.getString(3)%>">        
</td></tr>



<tr><strong><td>Address</strong></td><td><input type="text" name="ad" value="<%=rs.getString(5)%>"></td></tr>


<tr><strong><td>Gat NO.</strong></td><td><input type="text" name =gatno value="<%=rs.getInt(6)%>"></td></tr>
<tr><strong><td>8A</strong></td><td><input type="text" name =aatha value="<%=rs.getString(7)%>"></td></tr>
<tr><strong><td>Name On 7/12</strong></td><td><input type="text" name =satbara value="<%=rs.getString(8)%>"></td></tr>
<tr><strong><td>Area</strong></td><td><input type="text" name=area value="<%=rs.getInt(9)%>"></td></tr>

<tr><strong><td>Type Of Sugarcane</strong></td><td><input type="text" name=typesugar value="<%=rs.getString(10)%>"></td></tr>
<tr><strong><td>Lagvad Date</strong></td><td><input type="text" name=dt value="<%=rs.getString(11)%>"></td></tr>
<tr><strong><td>Expected Harvesting Date</strong></td><td><input type="text" name="dt2" value="<%=rs.getString(12)%>"></td></tr>
<tr><strong><td>Neighbour Sugar Cane Farmer</strong></td><td><input type="text" name="nebr" value="<%=rs.getString(13)%>"></td></tr>
</table>


<%}%>

</body>
</html>
