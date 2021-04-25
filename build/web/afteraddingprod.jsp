<%-- 
    Document   : afteraddingprod
    Created on : 18 Mar, 2021, 11:04:28 PM
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
String s=request.getParameter("val"); 
if(s==null || s.trim().equals("")){  
out.print("Please enter id");  
}else{  
int id=Integer.parseInt(s);  
 
  
out.print(id);  
try{  
Class.forName("oracle.jdbc.driver.OracleDriver");  
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");  
Statement stmt=con.createStatement();  
  
ResultSet rs=stmt.executeQuery("select typeofsugarcane from fregister where fid1="+id+"");  
while(rs.next()){ %> 

   <input type="text" name=st value="<%out.print(rs.getString(1));%>">   
<%}  
con.close();  
}catch(Exception e){e.printStackTrace();}  
}  
%>  

    </body>
</html>
