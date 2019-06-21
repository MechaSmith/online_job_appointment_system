<%-- 
    Document   : Home
    Created on : Jan 26, 2019, 10:07:05 AM
    Author     : User
--%>

<%@page import="Hibernate.Jobs"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.criterion.Restrictions"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="Hibernate.Country"%>
<%@page import="Hibernate.User"%>
<%@page import="org.hibernate.Session"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="boostrap/css/bootstrap.min.css" rel="stylesheet">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <style>
            .hBtn{
                border:2px;border-color: black;   
            }.bxshdw1{
                box-shadow: 0px 2px 50px #ffffff; 

            }.gradient4{
                background-color: #ffffcc;
            }
        </style>
    </head>
    <body onload="jobLoad('0')" style="background: #ffffff  ">
        <%
            Session sh = Hibernate.NewHibernateUtil.getSessionFactory().openSession();
        %> 
        <div class="gradient4" style="padding:20px;margin-top: 0px;color: white">
            <div class="row">

                <div class="col-lg-6 col-md-6">
                    <center> <h2 style="color: #000099">Online Appointment <br> <p style="font-size: 14px">We can find a good job </p> </h2> </center>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="pull-right" style="color:#333333">
                        <br>
                        <%
                            User u = (User) request.getSession().getAttribute("user");
                            if (u != null) {
                        %>

                        <h3>Hi <%=u.getFname() + " " + u.getLname()%></h3>
                        <center><button onclick="logout()" class="btn btn-info bxshdw1">Log out&nbsp;&nbsp;<span class="glyphicon glyphicon-log-out"></span></button></center>
                                <%
                                } else {
                                %><button onclick="Log()" class="btn btn-info bxshdw1">Logout &nbsp;&nbsp;<span class="glyphicon glyphicon-log-in"></span></button><%
                                       }
                            %>   
                    </div>
                </div>
            </div>


            <br> 
            <hr>
            <div class="row">

                <div class="col-lg-4 col-md-4">
                    <h1 style="font-size: 20px; color: #006699; ">Country</h1>
                    <select class="form-control" id="bycntry">
                        <option>All</option>
                        <%
                            Criteria cr = sh.createCriteria(Country.class);
                            cr.add(Restrictions.eq("status", "1"));
                            List<Country> cli = cr.list();
                            for (Country c : cli) {
                        %>
                        <option><%=c.getCountry()%></option>
                        <%
                            }
                        %>
                    </select>
                </div>
                <div class="col-lg-4 col-md-4">
                    <h1 style="font-size: 20px; color: #006699; ">Job Category</h1>
                    <select class="form-control" id="byjob">
                        <option>All</option>
                        <%
                            Criteria crr = sh.createCriteria(Jobs.class);
                            crr.add(Restrictions.eq("status", "1"));
                            List<Jobs> clli = crr.list();
                            for (Jobs c : clli) {
                        %>
                        <option><%=c.getName()%></option>
                        <%
                            }
                        %>
                    </select>
                </div>
                <div class="col-lg-4 col-md-4">

                </div>
            </div>
        </div>

        <div style="margin: 18px;">
            <div class="row"  id="jobs"> </div>

        </div>             
        <script type="text/javascript">
            function Log() {
                window.location = "login.jsp";

            }

            function jobLoad(c) {
                alert("1");
              
                var xml = new XMLHttpRequest();
                  alert("2");
                xml.onreadystatechange = function() {
                      alert("3");
                    if (xml.readyState === 4 && xml.status === 200) {
                     alert("4");  
            var x = xml.responseText;
              alert("5");
                        var y = JSON.parse(x);
                        document.getElementById("jobs").innerHTML = y.a;
                        document.getElementById("jobBtn").innerHTML = y.b;
                           }
                };
   xml.open("POST", "Loadjobvacancy", true);
    xml.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    xml.send("m=" + c);

            }
            
            function viewJob(id) {
    window.location = "jobView.jsp?id=" + id;
}
        </script>            
    </body>
</html>
