<%-- 
    Document   : task
    Created on : Jan 28, 2019, 10:08:00 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/smp14.css" rel="stylesheet" type="text/css" />
<link href="css/smp15.css" rel="stylesheet" type="text/css" />
  <link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="design/css/bootstrap.min.css" rel="stylesheet">
	<link rel="design/stylesheet" href="css/font-awesome.min.css">
	<link href="design/css/animate.min.css" rel="stylesheet"> 
	<link href="design/css/animate.css" rel="stylesheet" />
	<link href="design/css/prettyPhoto.css" rel="stylesheet"> 
	<link href="design/css/style.css" rel="stylesheet">
       </head>
       
       <style type="text/css">
           .main{
               margin-top: -50px;
           }
       </style>
    <body>
         <div class="row">
      <header>
     <h1>  Online Appointment </h1>
</header>
<div class="container teal borderYtoX">
 
<a href="Home.jsp">HOME</a>

 <a href="registration.jsp">REGISTRATION</a>
  <a href="login.jsp">LOGIN</a>
 <a href="country.jsp">COUNTRY</a>
  <a href="job.jsp">JOB</a>
 <a href="login.jsp">Contact</a>
</div>
         </div>
          
        <div class="main">
               <div class="slider">
			<div id="about-slider">
				<div id="carousel-slider" class="carousel slide" data-ride="carousel">
					<!-- Indicators -->
					<ol class="carousel-indicators visible-xs">
						<li data-target="#carousel-slider" data-slide-to="0" class="active"></li>
						<li data-target="#carousel-slider" data-slide-to="1"></li>
						<li data-target="#carousel-slider" data-slide-to="2"></li>
					</ol>

					<div class="carousel-inner">
						<div class="item active">
							<img src="design/images/6.jpg" class="img-responsive" alt=""> 
						</div>
					   <div class="item">
							<img src="design/images/7.jpg" class="img-responsive" alt=""> 
					   </div> 
					   <div class="item">
							<img src="design/images/5.jpg" class="img-responsive" alt=""> 
					   </div> 
					</div>
					
					<a class="left carousel-control hidden-xs" href="#carousel-slider" data-slide="prev">
						<i class="fa fa-angle-left"></i> 
					</a>
					
					<a class=" right carousel-control hidden-xs"href="#carousel-slider" data-slide="next">
						<i class="fa fa-angle-right"></i> 
					</a>
				</div> <!--/#carousel-slider-->
			</div><!--/#about-slider-->
		</div>
        </div>    
        <script src="design/js/jquery.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="design/js/bootstrap.min.js"></script>
	<script src="design/js/jquery.prettyPhoto.js"></script>
    <script src="design/js/jquery.isotope.min.js"></script> 
	<script src="design/js/wow.min.js"></script>
	<script src="design/js/jquery.easing.min.js"></script>	
	<script src="design/js/main.js"></script>
    </body>
</html>
