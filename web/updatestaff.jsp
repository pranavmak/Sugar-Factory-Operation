<%-- 
    Document   : updatestaff
    Created on : 16 Mar, 2021, 2:52:23 PM
    Author     : pranavmak
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>update staff</title>
    </head>
    <body>
        <a href="updatestaff.html">BACK</a>


        <%
            String choice = request.getParameter("choice");
            String id = request.getParameter("id");
            int id1 = Integer.parseInt(id);
            String val = request.getParameter("value");

            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "jawahar", "jawahar123");
            Statement stmt = con.createStatement();

            if (choice.equals(null) || choice.equals("")) {
                out.print("SELECT The Field  FIRST");
            } else if (choice.equals("firstname")) {%>


        <%  if (val.equals(null) || val.equals("")) {
                out.print("Cant insert EMPTY VALUE");
            } else {
                int i = stmt.executeUpdate("update staff set firstname='" + val + "'where staffid=" + id1 + "");

                if (i > 0) {
                    out.print(" First Name Updated");
                } else {
                    out.print("FAILED TO UPDATE");
                }
            }
        } else if (choice.equals("lastname")) {%>
        <%
            if (val.equals(null) || val.equals("")) {
                out.print("Can't insert EMPTY VALUE");
            } else {
                int i = stmt.executeUpdate("update staff set lastname='" + val + "'where staffid=" + id1 + "");
                if (i > 0) {
                    out.print(" Last Name Updated");
                } else {
                    out.print("FAILED TO UPDATE");
                }
            }
        }  else if (choice.equals("stafftype")) {%>
        <% if (val.equals(null) || val.equals("")) {
                out.print("Cant insert EMPTY VALUE");
            } else {
                int i = stmt.executeUpdate("update staff set stafftype='" + val + "'where staffid=" + id1 + "");
                if (i > 0) {
                    out.print(" stafftype Updated");
                } else {
                    out.print("FAILED TO UPDATE");
                }
            }
        }  else if (choice.equals("jobrole")) {%>
        <% if (val.equals(null) || val.equals("")) {
                    out.print("Cant insert EMPTY VALUE");
                } else {
                    int i = stmt.executeUpdate("update staff set jobrole='" + val + "'where staffid=" + id1 + "");
                    if (i > 0) {
                        out.print(" jobrole Updated");
                    } else {
                        out.print("FAILED TO UPDATE");
                    }
                }
            }


        %>
    </body>
</html>
