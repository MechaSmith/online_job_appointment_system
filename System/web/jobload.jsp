<%-- 
    Document   : jobload
    Created on : Jan 29, 2019, 8:31:26 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body onload="load()">
        <div class="row" id="aroundbd">
            
        </div> 
        
        <script>
            function load(){
               aroundload();  
            }
            
            function aroundload(){
          
                var xml = new XMLHttpRequest();
                xml.onreadystatechange = function() {
                    if (xml.readyState === 4 && xml.status === 200) {

                        document.getElementById("aroundbd").innerHTML = xml.responseText;
                    }
                };
                xml.open("POST", "aroundload", true);
                xml.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
                xml.send();      
                
            }
        </script>
    </body>
</html>
