<%-- 
    Document   : permanant
    Created on : 23 Mar, 2021, 8:23:23 AM
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
    <center>
        <table border="1">
            <tr>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Gender</th>
                <th>Address</th>
                <th>Staff Type</th>
                <th>Job Role</th>
                <th>Join Date</th>
                <th>department</th>
                <th>salary</th>
                <th>Username</th>
                <th>Password</th>
                <th>Staff ID</th>

            </tr>

            <%

                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "jawahar", "jawahar123");
                Statement stmt = con.createStatement();
                ResultSet rs = stmt.executeQuery("select firstname,lastname,gender,address,stafftype,jobrole,joindate,department,salary,username,password,staffid from staff where jobrole='permanant'");

                while (rs.next()) {%>
            <tr>
                <td><%=rs.getString(1)%></td>


                <td><%=rs.getString(2)%></td>


                <td><%=rs.getString(3)%></td>


                <td><%=rs.getString(4)%></td>


                <td><%=rs.getString(5)%></td>

                <td><%=rs.getString(6)%></td>

                <td><%=rs.getString(7)%></td>
                <td><%=rs.getString(8)%></td>

                <td><%=rs.getInt(9)%></td>
                <td><%=rs.getString(10)%></td>
                <td><%=rs.getString(11)%></td>
                <td><%=rs.getInt(12)%></td>



            </tr>
            <%}
            %>
        </table>
    </center>
    </body>

</html>
