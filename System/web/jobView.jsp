<%-- 
    Document   : jobView
    Created on : Jan 29, 2019, 10:48:57 AM
    Author     : User
--%>

<%@page import="java.util.List"%>
<%@page import="org.hibernate.criterion.Restrictions"%>
<%@page import="Hibernate.JobsHasQualification"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="Hibernate.Jobs"%>
<%@page import="org.hibernate.Session"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Session sh =  Hibernate.NewHibernateUtil.getSessionFactory().openSession();
            Jobs job = (Jobs) request.getSession().getAttribute("joba");
            if(job!=null){
        %>
          <div class="container"><br><br>
            <div class="panel panel-warning bxshdw1">
                <div class="panel-heading">
                     <center><h3><b><%=job.getCountry().getCountry()%> :&nbsp;&nbsp;</b><%=job.getName()%> for <%=job.getGender().getGen() %></h3></center>
                </div>
                <div class="panel-body">
                    <center>
                         <table style="font-size: 20px">
                        <tr><td>Job </td><td>: <%=job.getName()%></td></tr>
                        <tr><td>Country&nbsp;&nbsp;&nbsp;</td><td>: <%=job.getCountry().getCountry()%></td></tr>
                        <tr><td>Gender</td><td>: <%=job.getGender().getGen()%></td></tr>
                        <tr><td>Salary</td><td>: $<%=job.getSalary() %></td></tr>
                    </table>
                    
                    <h3><b>We need this qualification for this job. If you have this qualification you can apply to us</b></h3><hr/></center>
                    <div class="row">
                        <div class="col-lg-6 col-md-6">
                            <table class="table table-bordered table-hover">
                        <%
                         Criteria cr=sh.createCriteria(JobsHasQualification.class );
                         cr.add(Restrictions.eq("jobs", job));
                         List<JobsHasQualification> qli=cr.list();
                         for(JobsHasQualification j:qli){
                             %>
                             <tr><td><b> <%=j.getQualification().getQulification()%></b>&nbsp;&nbsp;</td><td><%=j.getQualification().getValue()%></td></tr>
                        <%
                         }%>
                    </table>
                        </div> 
                    <div class="col-lg-6 col-md-6">
                        <h4><%=job.getDes()%></h4>
                    </div>
                    </div>
                    <center>
                        <button class="btn btn-primary" onclick="goAppointment()">Create Appointment&nbsp;&nbsp;<span class="glyphicon glyphicon-export"></span></button>
                    </center>
                </div>
            </div>
            
        </div>
                     <%}%>
    </body>
</html>
