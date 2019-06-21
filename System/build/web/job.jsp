<%-- 
    Document   : job
    Created on : Feb 1, 2019, 8:32:25 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
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
                      <center> <h2 class="lead" style="font-size: 20px;  color: #009999; font-size:150%; "> Availabel Job </h2> </center>
                   <hr/>
    <thead>
      <tr>
        <th>Job ID</th>
        <th>Job Name</th>
        <th>Salary</th> 
        <th>Country</th>
        <th>Status</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>01</td>
        <td>House clearner</td>
        <td>$300</td>
        <td>India</td>
        <td>1</td>
      </tr>
      <tr>
        <td>02</td>
        <td>Room boy</td>
        <td>$350</td>
        <td>Kanada</td>
        <td>1</td>
      </tr>
      
         <tr>
        <td>03</td>
        <td>Accounting</td>
        <td>$350</td>
        <td>Kuvait</td>
        <td>1</td>
      </tr>    
  <tr>
        <td>03</td>
         <td>Engineer</td> 
        <td>$350</td>
        <td>Kuvait</td>
        <td>1</td>
      </tr>
            
    </tbody>
  </table>
              
</div>
                
            <div class="col-lg-6 col-md-6">
                <div class="row">
                    <div class="col-lg-1 col-md-1"></div>
                   <div class="col-lg-10 col-md-10">
                   <center> <h2 class="lead" style="font-size: 20px;  color: #009999; font-size:150%; "> Add To Job </h2> </center>
                   <hr/>
                   <div class="form-horizontal">
                            <div class="form-group">
                                <label class="control-label col-lg-3 col-md-3 col-sm-3">Job Name</label>
                                <div class="col-lg-9 col-md-9 col-sm-9">
                                    <input type="text" class="form-control" id="wn" onclick="m1()">
                                    <span id="err" class="alert-danger"></span>
                                </div>
                             </div>
                        
                        <div class="form-group">
                        <label class="control-label col-lg-3 col-md-3 col-sm-3">Country</label>
                          <div class="col-lg-9 col-md-9 col-sm-9">
                            <select class="form-control" id="itmmc" onchange="lol()">
                                <option>India</option>
                                   <option>Katar</option>
                                   <option>Jerman</option>
                                   <option>Kuvait</option>
                                   <option>Ithali</option>
                            </select>
                            <span class="alert-danger" id="itemmcer"></span>

                        </div>
                    </div>
                        <div class="form-group">
                                <label class="control-label col-lg-3 col-md-3 col-sm-3">Salary</label>
                                   <div class="col-lg-9 col-md-9 col-sm-9">
                                    <input type="text" class="form-control" id="wn" onclick="m1()">
                                    <span id="err" class="alert-danger"></span>
                                </div>
                             </div>
                       
                       <div class="form-group">
                                <label class="control-label col-lg-3 col-md-3 col-sm-3">Qualification</label>
                                <div class="col-lg-9 col-md-9 col-sm-9">
                                    <input type="text" class="form-control" id="wn" onclick="m1()">
                                    <span id="err" class="alert-danger"></span>
                                </div>
                             </div>
                        </div>
                   </div>
                        <div class="col-lg-1 col-md-1"></div>
            </div>
                <div class="row">
                    <div class="col-lg-4 col-md-4 col-sm-4"></div>
                    <div class="col-lg-4 col-md-4 col-sm-4">
                         <button onclick="login();" class="btn btn-danger btn-group-justified">Login&nbsp;&nbsp;<span class="glyphicon glyphicon-save"></span></button>
                </div>
                        <div class="col-lg-4 col-md-4 col-sm-4"></div>
                       
            </div>
            </div>
            
        </div> 
    </body>
</html>
