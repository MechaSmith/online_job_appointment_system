<%-- 
    Document   : login
    Created on : Jan 27, 2019, 11:32:07 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
          <link href="boostrap/css/bootstrap.min.css" rel="stylesheet">
        <meta charset="utf-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script type="text/javascript">

        </script>
    </head>
    <body>
        <br><br><br>
        <div class="row">
           <div class="col-lg-4 col-md-4 col-sm-4" ></div>
           <div class="col-lg-4 col-md-4 col-sm-4" >
                <center> <h2 class="lead" style="font-size: 30px;  color: #000099; font-size:200%; ">U s e r &nbsp;&nbsp; Login </h2> </center>
                   <hr/>
                     <div class="form-horizontal">
                         <div class="form-group">
                             <label style="color: #ff6633; font: bold; font-size: 20px; font-family: Times New Roman;"  >User Name</label>
                               <input type="text" placeholder="Type your User Name" id="uname" class="form-control">
                          </div>
                           <div class="form-group">
                           <label style="color: #ff6633; font: bold; font-size: 20px; font-family: Times New Roman;"  >Password</label>
                               <input type="Password" placeholder="Type your Password" id="password" class="form-control">
                          </div>
                     </div>
                   <center>

             <button onclick="login();" class="btn btn-info btn-group-justified">Login&nbsp;&nbsp;<span class="glyphicon glyphicon-save"></span></button>
                       <br>
                   </center>
               
           </div>
              <div class="col-lg-4 col-md-4 col-sm-4" ></div>              
        </div>
        
        <script type="text/javascript">
           function login(){
         var un = document.getElementById("uname").value;
         var pass = document.getElementById("password").value;
         alert("1");
        var http = new XMLHttpRequest();
        alert("2");
        http.onreadystatechange = function (){
          alert("3");  
            if(http.readyState === 4 && http.status === 200){
               var x = http.responseText;
               alert("4");
            if(x === "1"){
                alert("5");
                window.location = "Admin.jpg"; 
             }else if(x === "2"){
                 alert("6");
                window.location = "task.jsp";
               
             }else{
         alert("Errr ! Wrong User Name Or Password");
                   
             }   
            }
        };
            http.open("POST", "login", true);
    http.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    http.send("un=" + un + "&pass=" + pass);
    } 
        </script>
    </body>
</html>
