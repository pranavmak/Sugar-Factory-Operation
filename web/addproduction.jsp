<%-- 
    Document   : addproduction
    Created on : 18 Mar, 2021, 10:50:53 PM
    Author     : pranavmak
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     
    <head>
        <script>
            var request;  
function sendInfo()  
{  
var v=document.f1.fid.value;  
var url="afteraddingprod.jsp?val="+v;  
  
if(window.XMLHttpRequest){  
request=new XMLHttpRequest();  
}  
else if(window.ActiveXObject){  
request=new ActiveXObject("Microsoft.XMLHTTP");  
}  
  
try{  
request.onreadystatechange=getInfo;  
request.open("GET",url,true);  
request.send();  
}catch(e){alert("Unable to connect to server");}  
}  
  
function getInfo(){  
if(request.readyState==4){  
var val=request.responseText;  
document.getElementById('rhushi').innerHTML=val;  
}  
}  
  
        </script>
    </head>
    
    <body bgcolor="#a6f0c6">
        <a href="production.html"><input type="button" value="BACK"></a>

        <form name="f1" action="insertproduction.jsp">
            <center>
                <h1>Add Production Details</h1>

                <table>
                    <tr><strong><td>Farmer Id </strong></td><td><input type="text" name=fid onkeyup="sendInfo()"</td></tr>
                     <tr><strong><td>Totle Weight</strong></td><td><input type="text" name=weight></td></tr>
                     YOUR FARMERID & SUGAR_CANE_TYPE=<span id="rhushi" > </span> 
                    <tr><strong><td>gadino</strong></td><td><input type="text" name="gadino" ></td></tr>

                

                </table>
                <br>
                <input type=submit value=submit>
                <input type=reset value=reset>
            </center>
        </form>
       
    </body>
   
</html>
