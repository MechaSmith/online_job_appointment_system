<%-- 
    Document   : registration
    Created on : Jan 23, 2019, 4:58:58 PM
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
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-3 col-sm-3" ></div>
                <div class="col-lg-6 col-md-6 col-sm-6" >
                    <center> <h2 class="lead" style="font-size: 30px;  color: #009999; font-size:200%; ">U s e r &nbsp;&nbsp; R e g i s t r a t i o n </h2> </center>
                   <hr/>
                     <div class="form-horizontal">
                     <div class="form-group">
                          <div class="col-lg-6 col-md-6 col-sm-6" >
                            <label style="color: #000099; font: bold; font-size: 20px; font-family: Times New Roman;"  >First Name</label>
                             
                                <input type="text" placeholder="Type your First Name" id="fn" class="form-control">
                          </div>
                         <div class="col-lg-6 col-md-6 col-sm-6" >
                            <label style="color: #000099; font: bold; font-size: 20px; font-family: Times New Roman;">Last Name</label>
                             
                                <input type="text" placeholder="Type your Last Name" id="ln" class="form-control">
                         </div>
                    
                         </div>
                <div class="form-group">
                          <div class="col-lg-6 col-md-6 col-sm-6" >
                          <label style="color: #000099; font: bold; font-size: 20px; font-family: Times New Roman;" >Email</label>
                             
                            <input type="email" placeholder="Type your email" id="em" class="form-control">
                          </div>
                         <div class="col-lg-6 col-md-6 col-sm-6" >
                
                <label style="color: #000099; font: bold; font-size: 20px; font-family: Times New Roman;">Mobile No</label>
                                <input type="number"  placeholder="Type your Mobile No" id="tp" class="form-control">
                        </div>
                     </div>
                <div class="form-group">
                          <div class="col-lg-6 col-md-6 col-sm-6" >
                          <label style="color: #000099; font: bold; font-size: 20px; font-family: Times New Roman;" >Password</label>
                               <input type="password" placeholder="Type your password" id="pw" class="form-control">
                              
                          </div>
                         <div class="col-lg-6 col-md-6 col-sm-6" >
                
                <label style="color: #000099; font: bold; font-size: 20px; font-family: Times New Roman;">Re Enter Password</label>
                           <input type="password" placeholder="Type your Re Enter password" id="pw1" class="form-control">
                           
                         </div>
                     </div>
                    <div class="form-group">
                          <div class="col-lg-6 col-md-6 col-sm-6" >
                          <label style="color: #000099; font: bold; font-size: 20px; font-family: Times New Roman;" >No</label>
                               <input type="text" placeholder="Type your No" id="no" class="form-control">
                                
                          </div>
                         <div class="col-lg-6 col-md-6 col-sm-6" >
                
                <label style="color: #000099; font: bold; font-size: 20px; font-family: Times New Roman;">Street</label>
                            <input type="text" placeholder="Type your Street" id="street" class="form-control">
                            
                         </div>
                     </div>
                         <div class="form-group">
                          <div class="col-lg-6 col-md-6 col-sm-6" >
                          <label style="color: #000099; font: bold; font-size: 20px; font-family: Times New Roman;" >City</label>
                               <input type="text" placeholder="Type your City" id="city" class="form-control">
                                
                          </div>
                         <div class="col-lg-6 col-md-6 col-sm-6" >
                
                <label style="color: #000099; font: bold; font-size: 20px; font-family: Times New Roman;">Town</label>
                             <input type="text" placeholder="Type your Town" id="town" class="form-control">
                           
                         </div>
                     </div>
                        
                       <div class="form-group">
                             <div class="col-lg-5 col-lg-5">
                            <label style="color: #000099; font: bold; font-size: 20px; font-family: Times New Roman;">Gender</label>
                             </div>
                            <div class="col-lg-7 col-lg-7">
                                <div class="radio">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <input type="radio" name="gen" id="male" checked="" value="Male">&nbsp;&nbsp;<span style="color: #000099; font: bold; font-size: 15px; font-family: Times New Roman;">Male</span>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <input type="radio" name="gen" value="Female">&nbsp;&nbsp;<span style="color: #000099; font: bold; font-size:15px; font-family: Times New Roman;">Female</span>
                                </div>
                            </div>
                        </div>
                         
                         
                         
                         
                         
                        <p style="color: red">All must be filled out.</p>
                        <button onclick="usersve()" class="btn btn-danger btn-group-justified">Save&nbsp;&nbsp;<span class="glyphicon glyphicon-save"></span></button>
                        <br><br>
                     </div>
                    </div>
               
                <div class="col-lg-3 col-md-3 col-sm-3" ></div>
            </div>
        </div>
        <script>
           function usersve() {
    var fn = document.getElementById("fn").value;
    var ln = document.getElementById("ln").value;
    var em = document.getElementById("em").value;
    var pw = document.getElementById("pw").value;
    var pw1 = document.getElementById("pw1").value;
    var tp = document.getElementById("tp").value;
    var no = document.getElementById("no").value;
    var street = document.getElementById("street").value;
    var city = document.getElementById("city").value;
    var town = document.getElementById("town").value;
    var gen = document.getElementsByName("gen");

    if (fn === "" || ln === "" || em === "" || pw === "" || pw1 === "" || tp === "" || no === "" || street === "" || city === "" || town === "") {
        alert("Error ! must fill all feilds.....");
    } else {
        if (pw !== pw1) {
            alert("Error ! Password Mismatch");
        } else {
            var gender;
            if (gen[0].checked) {
                gender = "Male";
            } else {
                gender = "Female";
            }
            var obj = {"fn": fn, "ln": ln, "em": em, "pw": pw, "tp": tp, "no": no, "street": street, "city": city, "town": town, "gen": gender};
            var obj_string = JSON.stringify(obj);
alert(fn);
alert(ln);
alert(em);
alert(pw);
alert(pw1);
alert(tp);
alert(no);
alert(street);
alert(city);
alert(town);
alert(gen);



            var xmlhttp = new XMLHttpRequest();
            alert("1");
            xmlhttp.onreadystatechange = function() {
                  alert("2");
                if (xmlhttp.readyState === 4 && xmlhttp.status === 200) {
                      alert("3");
                    var x = xmlhttp.responseText;
                      alert("4");
                    if (x === "Success") {
                          alert("5");
                        alert("Success. You can log now");
                        var fn = document.getElementById("fn").value = '';
                        var ln = document.getElementById("ln").value = '';
                        var em = document.getElementById("em").value = '';
                        var pw = document.getElementById("pw").value = '';
                        var pw1 = document.getElementById("pw1").value = '';
                        var tp = document.getElementById("tp").value = '';
                        var no = document.getElementById("no").value = '';
                        var street = document.getElementById("street").value = '';
                        var city = document.getElementById("city").value = '';
                        var town = document.getElementById("town").value = '';
                        var gen = document.getElementsByName("male").checked = true;
                        window.location = "log.jsp";

                    }  
                }
            };
            xmlhttp.open("GET", "usersave?object=" + obj_string, true);
            xmlhttp.send();
        }
    }
}
        </script>
    </body>
</html>
