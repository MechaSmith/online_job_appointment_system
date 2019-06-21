<%-- 
    Document   : country
    Created on : Feb 1, 2019, 2:46:02 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="row">
            <div>
             
                <div class="col-lg-6 col-md-6">
                    <table class="table table-striped">
                      <center> <h2 class="lead" style="font-size: 20px;  color: #009999; font-size:150%; "> Availabel Country </h2> </center>
                   <hr/>
    <thead>
      <tr>
        <th>Country ID</th>
        <th>Country Name</th>
         
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>01</td>
        <td>India</td>
         
      </tr>
      <tr>
        <td>02</td>
            <td>Katar</td>
         
      </tr>
      <tr>
        <td>03</td>
        <td>Jermen</td>
       
      </tr>
         <tr>
        <td>04</td>
        <td>Kuvait</td>
       
      </tr>    
  <tr>
        <td>05</td>
        <td>Ithali</td>
       
      </tr>
            
    </tbody>
  </table>
              
</div>
                
            <div class="col-lg-6 col-md-6">
                
                   <center> <h2 class="lead" style="font-size: 20px;  color: #009999; font-size:150%; "> Add To Country </h2> </center>
                   <hr/>
                   <div class="form-horizontal">
                            <div class="form-group">
                                <label class="control-label col-lg-3 col-md-3 col-sm-3">Wood Name</label>
                                <div class="col-lg-6 col-md-6 col-sm-6">
                                    <input type="text" class="form-control" id="wn" onclick="m1()">
                                    <span id="err" class="alert-danger"></span>
                                </div>
                                <div class="col-lg-3 col-md-3 col-sm-3">
                                    <button class="btn btn-info btn-block" onclick="woodsve()">Save&nbsp;&nbsp;&nbsp; <span class="glyphicon glyphicon-save"></span></button>

                                </div>
                            </div>
                        </div>
            </div>
            </div>
            
        </div>    
    </body>
</html>
