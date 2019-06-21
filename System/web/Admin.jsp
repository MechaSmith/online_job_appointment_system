<%-- 
    Document   : Admin
    Created on : Jan 20, 2019, 10:00:28 AM
    Author     : User
--%>

 
 
<%@page import="Hibernate.Times"%>
<%@page import="Hibernate.Address"%>
<%@page import="Hibernate.User"%>
<%@page import="Hibernate.Appointment"%>
<%@page import="Hibernate.Contact"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.criterion.Restrictions"%>
<%@page import="org.hibernate.Criteria"%>
 
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
                box-shadow: 0px 2px 50px #333333; 

            }.gradient4{
                background-color: #650006;
                background: #650006 -webkit-gradient(linear, left top, left bottom, from(#BFB4A0), to(#650006)) no-repeat;
                background: #650006 -moz-linear-gradient(top, #BFB4A0, #FFFFFF) no-repeat;
                filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#BFB4A0, endColorstr=#650006) no-repeat;
                -ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#BFB4A0, endColorstr=#BFB4A0)" no-repeat;
            }
        </style>
    </head>
    <body>
            <%
            Session sh = Hibernate.NewHibernateUtil.getSessionFactory().openSession();
            
            User u = (User) request.getSession().getAttribute("user");
        %>
        <div class="container"><br>
            <div class="jumbotron gradient4" style="color: white">
                <h2>Hi <%=u.getFname()+" "+u.getLname()%> </h2>
                <h4>Appointment For You</h4>
                <hr/>
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Client Name</th>
                            <th>Applied Date</th>
                            <th>Hope Day</th>
                            <th>Hope Time</th>
                            <th>Client Contact NO</th>
                            <th>Client Address</th>
                            <th>Client Email</th>
                        </tr>
                    </thead>
                    <tbody>
                     
                      
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>
