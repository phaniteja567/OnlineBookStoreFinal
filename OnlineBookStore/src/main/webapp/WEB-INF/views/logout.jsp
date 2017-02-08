<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="./resources/css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link href="./resources/css/style.css" rel="stylesheet" media="screen">
    <script data-require="angular.js@1.0.x" src="http://code.angularjs.org/1.0.7/angular.min.js" data-semver="1.0.7"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
 
  <style>
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }    
    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: #f2f2f2;
      padding: 25px;
    }
	.carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
  </style>
  <script type="text/javascript">
$(document).ready(function(){
     $("#myCarousel").carousel({
         interval : 1000,
         pause: false
     });
});
</script>
</head>
<title>Logout</title>
</head>
<body>
<header id="fh5co-header" role="banner">
		<nav class="navbar navbar-default" role="navigation">
			<div class="container-fluid">
				<div class="navbar-header"> 
				<!-- Mobile Toggle Menu Button -->
				<a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle" data-toggle="collapse" data-target="#fh5co-navbar" aria-expanded="false" aria-controls="navbar"><i></i></a>
				<img src="resources/images/ani.gif" alt="some_text" style="width:90px;height:70px;;" align="left"><a class="navbar-brand" href="/shoeclue"><b >OnlineBookStore</a>
				</div>
				<div id="fh5co-navbar" class="navbar-collapse collapse">
					<ul class="nav navbar-nav navbar-right">
						<li class="active"><a href="/shoeclue"><span>
<i class="fa fa-home fa-fw"></i>Home <span class="border"></span></span></a></li>
						<!-- <li><a href="contactUs"><span><i class="fa fa-phone fa-fw" ></i>ContactUs <span class="border"></span></span></a></li>
						<li><a href="Services"><span><i class="fa fa-newspaper-o fa-fw" ></i>Services <span class="border"></span></span></a></li>
						<li><a href="customerSignUp"><span><i class="fa fa-user fa-fw"></i>SignUp <span class="border"></span></span></a></li>
						<li><a href="CustomerCheck"><span><i class="fa fa-sign-in fa-fw"></i>Login <span class="border"></span></span></a></li>
			 -->	
			 <li><a href="CustomerCheck"><span><i class="fa fa-sign-in fa-fw"></i>Login <span class="border"></span></span></a></li>
			 	</ul>
				</div>
			</div>
		</nav>
	</header>
<% 
session.invalidate();
%>
<h1 style="text-align:center">Thank You For Shopping</h1>
<h1 style="text-align: center;">Thank You for Using OnlineBookStore</h1>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<center><%@include file="footer.jsp" %></center>
</body>
</html>