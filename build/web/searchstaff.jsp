<%-- 
    Document   : searchstaff
    Created on : 15 Mar, 2021, 9:11:58 PM
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
        <table border="1">
            <tr>
                <th>First Name 
                </th>

                <th>Last Name 
                </th>
   
                <th>Gender 
                </th>
               
                <th> Address 
               </th>
               
               <th>Staff Type
                </th>

                <th>Job Role 
                </th>
                <th>Join Date 
                </th>
                <th>Department 
                </th>
                <th>Salary 
                </th>
                <th>Staff Id 
                </th>
            </tr>

            <%
                String firstname = request.getParameter("fn");
                String lastname = request.getParameter("ln");
                String gender = request.getParameter("gender");
                String id = request.getParameter("id");
                int id1 = Integer.parseInt(id);
                
                
                
                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","jawahar","jawahar123");
                Statement stmt = con.createStatement();
                ResultSet rs = stmt.executeQuery("select firstname,lastname,gender,address,stafftype,jobrole,joindate,department,salary,staffid from staff where firstname='" + firstname + "'and lastname='" + lastname + "'and gender='" + gender + "'and staffid=" + id1 + "");

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
                
                <td><%=rs.getInt(10)%></td>
                
            </tr>
            <%}
            %>
    </body>
</html>
