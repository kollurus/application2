<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<nav>

</nav>
<head>
  <title>DEMO WEBPAGE</title>
  
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
   <script src="Scripts/jquery-1.10.2.js"></script>
    <script src="Scripts/jquery.validate.js"></script>
    <script src="Scripts/modernizr-2.6.2.js"></script>
    <script src="Scripts/bootstrap.js"></script>
    <script src="Scripts/respond.js"></script>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/Site.css" rel="stylesheet" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" type="text/css" href="assets/css/bootstrap.css">

		<!-- Website CSS style -->
		<link rel="stylesheet" type="text/css" href="assets/css/main.css">

		<!-- Website Font style -->
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
		
		<!-- Google Fonts -->
		<link href='https://fonts.googleapis.com/css?family=Passion+One' rel='stylesheet' type='text/css'>
		<link href='https://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>
    
  <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 30%;
      margin : auto ;
     
  }
  body
  {
background-color:white;
}
h1
{
color:orange;
text-align:center;
}
p
{
font-family:"Times New Roman";
font-size:20px;
}
  </style>
  
</head>
<body background-color:white>


<!-- Navigation Bar 1 Start -->
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">F!</a>
			</div>
			<!-- <ul class="nav navbar-nav">
				<li class="active"><a href="#">Home</a></li> -->
				<!--  <li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">Clothing <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#">Ethnic wear</a></li>
						<li><a href="#">Western wear</a></li>
				
					</ul></li>
					<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">Accessories <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#">Jewellery</a></li>
						<li><a href="#">HandBags</a></li>
						<li><a href="#">Footwear</a></li>
				
					</ul></li>
			
				<li><a href="#">Giftcards</a></li>
			</ul>
		-->
	<form class="navbar-form navbar-right">
            <input type="text" class="form-control" placeholder="Search...">
          </form>

	<div class="collapse navbar-collapse" >
				<ul class="nav navbar-nav navbar-right">
				<form action ="signin">	<li><a href="#" ><span
							class="glyphicon glyphicon-log-in">
							<input type = "submit" value = "Login" /></span> </a></li></form>
			<form action ="registration"><li><a href="#"> <span
							class="glyphicon glyphicon-user">
							<input type = "submit" value = "Register" /></span> </a></li></form>
				</ul>
			</div>
			</div>
			</nav>
	<!-- Navigation Bar 1 End____________________________________________________________ -->












<div class="container-fluid">
      
      <div class="row row-offcanvas row-offcanvas-left">
        
         <div class="col-sm-3 col-md-2 sidebar-offcanvas" id="sidebar" role="navigation">
           
            <ul class="nav nav-sidebar">
              <li class="active"><a href="#">HOME</a></li>
              
     
                   <li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">CLOTHING <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#">Ethnic wear</a></li>
						<li><a href="#">Western wear</a></li>
				
					</ul></li>
              <li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">ACCESSORIES <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#">Jewellery</a></li>
						<li><a href="#">HandBags</a></li>
						<li><a href="#">Footwear</a></li>
				
					</ul></li>
              <li><a href="#">GIFTCARDS</a></li>
            </ul>
        <!--       <ul class="nav nav-sidebar">
              <li><a href="">Nav item</a></li>
              <li><a href="">Nav item again</a></li>
              <li><a href="">One more nav</a></li>
              <li><a href="">Another nav item</a></li>
              <li><a href="">More navigation</a></li>
            </ul>
            <ul class="nav nav-sidebar">
              <li><a href="">Nav item again</a></li>
              <li><a href="">One more nav</a></li>
              <li><a href="">Another nav item</a></li>
            </ul>-->
          
        </div><!--/span-->
        
        <div class="col-sm-9 col-md-10 main">
          
          <!--toggle sidebar button-->
          <p class="visible-xs">
            <button type="button" class="btn btn-primary btn-xs" data-toggle="offcanvas"><i class="glyphicon glyphicon-chevron-left"></i></button>
          </p>
          
		  <h1 class="page-header">
           FASHIONISTA..!
            <p class="lead">Let being in fashion be a passion!</p>
          </h1>





<div class="container">
 <style>
 p {
    color: red;
}
 </style>
  <p>
 
  </p>
</div>


<div style="background-color:red; color:yellow; padding:0px;">




<div class="container">
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="C:\Users\Sneha\Pictures\Camera Roll\SHAREit\Picture\FB_IMG_1462439721563.jpg" alt="Chania" width="460" height="345">
      </div>

      <div class="item">
        <img src="C:\Users\Sneha\Pictures\Camera Roll\SHAREit\Picture\FB_IMG_1462785589166.jpg" alt="Chania" width="460" height="345">
      </div>
    
      <div class="item">
        <img src="C:\Users\Sneha\Pictures\Camera Roll\SHAREit\Picture\FB_IMG_1461841295691.jpg" alt="Flower" width="460" height="345">
      </div>

      <div class="item">
        <img src="C:\Users\Sneha\Pictures\Camera Roll\SHAREit\Picture\big-lap-western-wear-2015.jpg" alt="Flower" width="460" height="345">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
<br>
<br>
<br>
<br>
<!--  
 <div class="row placeholders">
            <div class="col-xs-6 col-sm-3 placeholder text-center">
              <img src="C:\Users\Sneha\Pictures\Camera Roll\SHAREit\Picture\FB_IMG_1464505940130" class="center-block img-responsive img-circle" alt="Generic placeholder thumbnail">
              <h4>Label</h4>
              <span class="text-muted">Something else</span>
            </div>
            <div class="col-xs-6 col-sm-3 placeholder text-center">
              <img src="C:\Users\Sneha\Pictures\Camera Roll\SHAREit\Picture\FB_IMG_1463036936821" class="center-block img-responsive img-circle" alt="Generic placeholder thumbnail">
              <h4>Label</h4>
              <span class="text-muted">Something else</span>
            </div>
            <div class="col-xs-6 col-sm-3 placeholder text-center">
              <img src="C:\Users\Sneha\Pictures\Camera Roll\SHAREit\Picture\big-lap-western-wear-2015" class="center-block img-responsive img-circle" alt="Generic placeholder thumbnail">
              <h4>Label</h4>
              <span class="text-muted">Something else</span>
            </div>
            <div class="col-xs-6 col-sm-3 placeholder text-center">
              <img src="C:\Users\Sneha\Pictures\Camera Roll\SHAREit\Picture\IMG_20151105_222604" class="center-block img-responsive img-circle" alt="Generic placeholder thumbnail">
              <h4>Label</h4>
              <span class="text-muted">Something else</span>
            </div>
          </div>
          
          <hr>
      </div><!--/row-->
	</div>
</div><!--/.container-->






<div class="container" style="padding-top:20px;">
        <ul class="nav nav-tabs">

            <li class="active col-md-6"><a data-toggle="tab" href="#menu1">GET VERVED WITH FABIC..!</a></li>
            <li class="col-md-6"><a data-toggle="tab" href="#menu2">ADD ON THE LOOK..</a></li>

        </ul>
        <div class="tab-content">
            <div id="menu1" class="tab-pane fade in active">
                <div class="row" style="margin-top:10px;">
                    <div class="col-sm-6 col-md-3">
                        <div class="thumbnail hovereffect">
                            <img class="img-responsive" src="F:\workspace\application\src\main\webapp\images\FB_IMG_1463036686004.jpg" alt="...">
                            <div class="caption">
                                <h3></h3>
                                <p>...</p>
                                <p><a href="#" class="btn btn-primary" role="button">Add To Cart</a></p>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-3">
                        <div class="thumbnail hovereffect">
                            <img class="img-responsive" src="F:\workspace\application\src\main\webapp\images\FB_IMG_1462951936995.jpg" alt="...">
                            <div class="caption">
                                <h3></h3>
                                <p>...</p>
                                <p><a href="#" class="btn btn-primary" role="button">Add To Cart</a></p>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-3">
                        <div class="thumbnail hovereffect">
                            <img class="img-responsive" src="F:\workspace\application\src\main\webapp\images\IMG_20150902_173359.jpg" alt="...">
                            <div class="caption">
                                <h3></h3>
                                <p>...</p>
                                <p><a href="#" class="btn btn-primary" role="button">Add To Cart</a></p>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-3">
                        <div class="thumbnail hovereffect">
                            <img class="img-responsive" src="F:\workspace\application\src\main\webapp\images\FB_IMG_1462338462637.jpg" alt="...">
                            <div class="caption">
                                <h3></h3>
                                <p>...</p>
                                <p><a href="#" class="btn btn-primary" role="button">Add To Cart</a></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="menu2" class="tab-pane fade">
                <div class="row" style="margin-top:10px;">
                    <div class="col-sm-6 col-md-3">
                        <div class="thumbnail hovereffect">
                            <img class="img-responsive" src="F:\workspace\application\src\main\webapp\images\IMG_20151105_222604.jpg" alt="...">
                            <div class="caption">
                                <h3></h3>
                                <p>...</p>
                                <p><a href="#" class="btn btn-primary" role="button">Add To Cart</a></p>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-3">
                        <div class="thumbnail hovereffect">
                            <img class="img-responsive" src="F:\workspace\application\src\main\webapp\images\IMG_20151105_222551.jpg" alt="...">
                            <div class="caption">
                                <h3></h3>
                                <p>...</p>
                                <p><a href="#" class="btn btn-primary" role="button">Add To Cart</a></p>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-3">
                        <div class="thumbnail hovereffect">
                            <img class="img-responsive" src="F:\workspace\application\src\main\webapp\images\IMG_20151006_234944.jpg" alt="...">
                            <div class="caption">
                                <h3></h3>
                                <p>...</p>
                                <p><a href="#" class="btn btn-primary" role="button">Add To Cart</a></p>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-3">
                        <div class="thumbnail hovereffect">
                            <img class="img-responsive" src="F:\workspace\application\src\main\webapp\images\FB_IMG_1464505940130.jpg" alt="...">
                            <div class="caption">
                                <h3></h3>
                                <p>...</p>
                                <p><a href="#" class="btn btn-primary" role="button">Add To Cart</a></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

<footer>
 <section id="conatcat-info">
        <div class="container">
            <div class="row">
                <div class="col-sm-8">
                    <div class="media contact-info wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
                        <div class="pull-left">
                            <i class="fa fa-phone"></i>
                        </div>
                        <div class="media-body">
                            <h2>Have a Question or Need a Custom Quote?</h2>
                            <p>We are grateful for your concern, love to hear from you and just phone call away to serve you. 
                            Do reach us at: +0123 456 70 80</p>
                        </div>
                    </div>
                </div>
            </div>
        </div><!--/.container-->    
    </section><!--/#conatcat-info-->
    <section id="bottom">
        <div class="container wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
            <div class="row">
                <div class="col-md-3 col-sm-6">
                    <div class="widget">
                        <h3>Here is FASHIONISTA</h3>
                        <ul>
                            <li><a href="#">About us</a></li>
                            <li><a href="#">We are hiring</a></li>
                            <li><a href="#">Meet the team</a></li>
                            <li><a href="#">Copyright</a></li>
                            <li><a href="#">Terms of use</a></li>
                            <li><a href="#">Privacy policy</a></li>
                            <li><a href="#">Contact us</a></li>
                        </ul>
                    </div>    
                </div><!--/.col-md-3-->

                <div class="col-md-3 col-sm-6">
                    <div class="widget">
                        <h3>At Your service</h3>
                        <ul>
                            <li><a href="#">Faq</a></li>
                            <li><a href="#">Blog</a></li>
                            <li><a href="#">Forum</a></li>
                            <li><a href="#">Documentation</a></li>
                            <li><a href="#">Refund policy</a></li>
                            <li><a href="#">Ticket system</a></li>
                            <li><a href="#">Billing system</a></li>
                        </ul>
                    </div>    
                </div><!--/.col-md-3-->

                <div class="col-md-3 col-sm-6">
                    <div class="widget">
                        <h3>We do Develop!</h3>
                        <ul>
                            <li><a href="#">Web Development</a></li>
                            <li><a href="#">SEO Marketing</a></li>
                            <li><a href="#">Theme</a></li>
                            <li><a href="#">Development</a></li>
                            <li><a href="#">Email Marketing</a></li>
                            <li><a href="#">Plugin Development</a></li>
                            <li><a href="#">Article Writing</a></li>
                        </ul>
                    </div>    
                </div><!--/.col-md-3-->

                <div class="col-md-3 col-sm-6">
                    <div class="widget">
                        <h3>Our Partners</h3>
                        <ul>
                            <li><a href="#">Issa</a></li>
                            <li><a href="#">Neeru's</a></li>
                            <li><a href="#">Mugdha</a></li>
                            <li><a href="#">One Touch</a></li>
                            <li><a href="#">Blush</a></li>
                            <li><a href="#">Kashish</a></li>
                            <li><a href="#">Rangoli</a></li>
                        </ul>
                    </div>    
                </div><!--/.col-md-3-->
            </div>
        </div>
    </section><!--/#bottom-->
<div class="container">
    <div class="row">

        <div class="text-center">
            <h6>follow us  </h6>
            <!-- just add href= for your links, like this: -->
            <a class="btn btn-social-icon btn-vk"><i class="fa fa-vk"></i></a>
            <a class="btn btn-social-icon btn-instagram"><i class="fa fa-instagram"></i></a>
            <a href="http://facebook.com" class="btn btn-social-icon btn-facebook"><i class="fa fa-facebook"></i></a>
            <a href="http://youtube.com" class="btn btn-social-icon btn-youtube"><i class="fa fa-youtube"></i></a>
            <a class="btn btn-social-icon btn-bitbucket"><i class="fa fa-bitbucket"></i></a>
            <a class="btn btn-social-icon btn-dropbox"><i class="fa fa-dropbox"></i></a>
            <a class="btn btn-social-icon btn-flickr"><i class="fa fa-flickr"></i></a>
            <a class="btn btn-social-icon btn-foursquare"><i class="fa fa-foursquare"></i></a>
            <a class="btn btn-social-icon btn-github"><i class="fa fa-github"></i></a>
            <a class="btn btn-social-icon btn-google-plus"><i class="fa fa-google-plus"></i></a>
            <a class="btn btn-social-icon btn-linkedin"><i class="fa fa-linkedin"></i></a>
            <a class="btn btn-social-icon btn-tumblr"><i class="fa fa-tumblr"></i></a>
            <a class="btn btn-social-icon btn-twitter"><i class="fa fa-twitter"></i></a>
            
            
        </div>
    </div>
    </div>
    
</body>
</html>