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
  <title>HOME PAGE</title>
  
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



<!-- cart -->


<c:if test="${!empty categoryList}">
				<div>
					<ul
						class="w3-navbar w3-light-grey w3-round w3-small menu w3-card-4 "
						Style="width: 70%; margin-left: 15%; margin-top: -10px">
						<c:forEach items="${categoryList}" var="category">
							<li><a href="${category.name}" class="w3-hover-none">${category.name}</a></li>
						</c:forEach>
						<li style="float: right"><a href="${id}/viewcart" class="w3-hover-none"><i
								class="fa fa-shopping-cart"></i> View Cart</a></li>
						<li style="float: right"><a href="#" class="w3-hover-none"><i
								class="fa fa-user"></i> Hi,${name}</a></li>
					</ul>
				</div>
			</c:if>

				
<c:if test="${!empty productList}">
		<div>
			<ul>
				<c:forEach items="${productList}" var="product">
					<li><a href="#${product.name}" class="w3-hover-none"><img alt="${product.id}" src="<c:url value ="/resources/images/product/${product.id}.jpg"></c:url>"></a></li>
<li><a href="${id}/addtoCart/${product.id}" class ="w3-hover-none">ADD TO CART</a></li>
</c:forEach>
</ul>
</div>
</c:if>
<!-- cart -->





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
    
    <!-- chat code starts-->
		<script type='text/javascript'>var fc_CSS=document.createElement('link');fc_CSS.setAttribute('rel','stylesheet');var isSecured = (window.location && window.location.protocol == 'https:');var lang = document.getElementsByTagName('html')[0].getAttribute('lang'); var rtlLanguages = ['ar','he']; var rtlSuffix = (rtlLanguages.indexOf(lang) >= 0) ? '-rtl' : '';fc_CSS.setAttribute('type','text/css');fc_CSS.setAttribute('href',((isSecured)? 'https://d36mpcpuzc4ztk.cloudfront.net':'http://assets1.chat.freshdesk.com')+'/css/visitor'+rtlSuffix+'.css');document.getElementsByTagName('head')[0].appendChild(fc_CSS);var fc_JS=document.createElement('script'); fc_JS.type='text/javascript';fc_JS.src=((isSecured)?'https://d36mpcpuzc4ztk.cloudfront.net':'http://assets.chat.freshdesk.com')+'/js/visitor.js';(document.body?document.body:document.getElementsByTagName('head')[0]).appendChild(fc_JS);window.freshchat_setting= 'eyJ3aWRnZXRfc2l0ZV91cmwiOiJjYXJlZXIuZnJlc2hkZXNrLmNvbSIsInByb2R1Y3RfaWQiOm51bGwsIm5hbWUiOiJIdWIgSVQgTGltaXRlZCIsIndpZGdldF9leHRlcm5hbF9pZCI6bnVsbCwid2lkZ2V0X2lkIjoiNDQ3ZDU3YjgtNDM0YS00YjlmLTg3OWMtMTNmMjAwYmQ5ZTQxIiwic2hvd19vbl9wb3J0YWwiOnRydWUsInBvcnRhbF9sb2dpbl9yZXF1aXJlZCI6ZmFsc2UsImlkIjo0MDAwMDA2NTU2LCJtYWluX3dpZGdldCI6dHJ1ZSwiZmNfaWQiOiJmMGYyODkwNjYzNDJiNGVlYTQzN2ZlYTYwNGU2MzUyMSIsInNob3ciOjEsInJlcXVpcmVkIjoyLCJoZWxwZGVza25hbWUiOiJDYXJlZXIgTGF1bmNoZXIgSW5kaWEgTHRkIiwibmFtZV9sYWJlbCI6Ik5hbWUiLCJtYWlsX2xhYmVsIjoiRW1haWwiLCJtZXNzYWdlX2xhYmVsIjoiTWVzc2FnZSIsInBob25lX2xhYmVsIjoiUGhvbmUgTnVtYmVyIiwidGV4dGZpZWxkX2xhYmVsIjoiVGV4dGZpZWxkIiwiZHJvcGRvd25fbGFiZWwiOiJEcm9wZG93biIsIndlYnVybCI6ImNhcmVlci5mcmVzaGRlc2suY29tIiwibm9kZXVybCI6ImNoYXQuZnJlc2hkZXNrLmNvbSIsImRlYnVnIjoxLCJtZSI6Ik1lIiwiZXhwaXJ5IjowLCJlbnZpcm9ubWVudCI6InByb2R1Y3Rpb24iLCJkZWZhdWx0X3dpbmRvd19vZmZzZXQiOjMwLCJkZWZhdWx0X21heGltaXplZF90aXRsZSI6IkNoYXQgaW4gcHJvZ3Jlc3MiLCJkZWZhdWx0X21pbmltaXplZF90aXRsZSI6IkxldCdzIHRhbGshIiwiZGVmYXVsdF90ZXh0X3BsYWNlIjoiWW91ciBNZXNzYWdlIiwiZGVmYXVsdF9jb25uZWN0aW5nX21zZyI6IldhaXRpbmcgZm9yIGFuIGFnZW50IiwiZGVmYXVsdF93ZWxjb21lX21lc3NhZ2UiOiJIaSEgSG93IGNhbiB3ZSBoZWxwIHlvdSB0b2RheT8iLCJkZWZhdWx0X3dhaXRfbWVzc2FnZSI6Ik9uZSBvZiB1cyB3aWxsIGJlIHdpdGggeW91IHJpZ2h0IGF3YXksIHBsZWFzZSB3YWl0LiIsImRlZmF1bHRfYWdlbnRfam9pbmVkX21zZyI6Int7YWdlbnRfbmFtZX19IGhhcyBqb2luZWQgdGhlIGNoYXQiLCJkZWZhdWx0X2FnZW50X2xlZnRfbXNnIjoie3thZ2VudF9uYW1lfX0gaGFzIGxlZnQgdGhlIGNoYXQiLCJkZWZhdWx0X2FnZW50X3RyYW5zZmVyX21zZ190b192aXNpdG9yIjoiWW91ciBjaGF0IGhhcyBiZWVuIHRyYW5zZmVycmVkIHRvIHt7YWdlbnRfbmFtZX19IiwiZGVmYXVsdF90aGFua19tZXNzYWdlIjoiVGhhbmsgeW91IGZvciBjaGF0dGluZyB3aXRoIHVzLiBJZiB5b3UgaGF2ZSBhZGRpdGlvbmFsIHF1ZXN0aW9ucywgZmVlbCBmcmVlIHRvIHBpbmcgdXMhIiwiZGVmYXVsdF9ub25fYXZhaWxhYmlsaXR5X21lc3NhZ2UiOiJPdXIgYWdlbnRzIGFyZSB1bmF2YWlsYWJsZSByaWdodCBub3cuIFNvcnJ5IGFib3V0IHRoYXQsIGJ1dCBwbGVhc2UgbGVhdmUgdXMgYSBtZXNzYWdlIGFuZCB3ZSdsbCBnZXQgcmlnaHQgYmFjay4iLCJkZWZhdWx0X3ByZWNoYXRfbWVzc2FnZSI6IldlIGNhbid0IHdhaXQgdG8gdGFsayB0byB5b3UuIEJ1dCBmaXJzdCwgcGxlYXNlIHRlbGwgdXMgYSBiaXQgYWJvdXQgeW91cnNlbGYuIiwiYWdlbnRfdHJhbnNmZXJlZF9tc2ciOiJZb3VyIGNoYXQgaGFzIGJlZW4gdHJhbnNmZXJyZWQgdG8ge3thZ2VudF9uYW1lfX0iLCJhZ2VudF9yZW9wZW5fY2hhdF9tc2ciOiJ7e2FnZW50X25hbWV9fSByZW9wZW5lZCB0aGUgY2hhdCIsInZpc2l0b3Jfc2lkZV9pbmFjdGl2ZV9tc2ciOiJUaGlzIGNoYXQgaGFzIGJlZW4gaW5hY3RpdmUgZm9yIHRoZSBwYXN0IDIwIG1pbnV0ZXMuIiwiYWdlbnRfZGlzY29ubmVjdF9tc2ciOiJ7e2FnZW50X25hbWV9fSBoYXMgYmVlbiBkaXNjb25uZWN0ZWQiLCJzaXRlX2lkIjoiZjBmMjg5MDY2MzQyYjRlZWE0MzdmZWE2MDRlNjM1MjEiLCJhY3RpdmUiOmZhbHNlLCJ3aWRnZXRfcHJlZmVyZW5jZXMiOnsid2luZG93X2NvbG9yIjoiIzc3Nzc3NyIsIndpbmRvd19vZmZzZXQiOjMwLCJ3aW5kb3dfcG9zaXRpb24iOiJCb3R0b20gUmlnaHQiLCJtYXhpbWl6ZWRfdGl0bGUiOiJUaGlzIGNoYXQgaXMgc28gb24hIiwibWluaW1pemVkX3RpdGxlIjoiTGV0J3MgdGFsayEiLCJ3ZWxjb21lX21lc3NhZ2UiOiJIaSEgSG93IGNhbiB3ZSBoZWxwIHlvdSB0b2RheT8iLCJ0aGFua19tZXNzYWdlIjoiVGhhbmsgeW91IGZvciBjaGF0dGluZyB3aXRoIHVzLiBJZiB5b3UgaGF2ZSBhZGRpdGlvbmFsIHF1ZXN0aW9ucywgZmVlbCBmcmVlIHRvIHBpbmcgdXMhIiwid2FpdF9tZXNzYWdlIjoiQWxsIG91ciBhZ2VudHMgYXJlIGJ1c3kgY2hhdHRpbmcgcmlnaHQgbm93LiBQbGVhc2UgaGFuZyBvbiBmb3IgYSBjb3VwbGUgb2YgbWludXRlcy4iLCJ0ZXh0X3BsYWNlIjoiWW91ciBNZXNzYWdlIiwiY29ubmVjdGluZ19tc2ciOiJXYWl0aW5nIGZvciBhbiBhZ2VudCIsImFnZW50X2pvaW5lZF9tc2ciOiIkIGhhcyBqb2luZWQgdGhlIGNoYXQiLCJhZ2VudF9sZWZ0X21zZyI6IiQgaGFzIGxlZnQgdGhlIGNoYXQifSwicm91dGluZyI6bnVsbCwicHJlY2hhdF9mb3JtIjp0cnVlLCJwcmVjaGF0X21lc3NhZ2UiOiJXZSBjYW4ndCB3YWl0IHRvIHRhbGsgdG8geW91LiBCdXQgZmlyc3QsIHBsZWFzZSB0YWtlIGEgY291cGxlIG9mIG1vbWVudHMgdG8gdGVsbCB1cyBhIGJpdCBhYm91dCB5b3Vyc2VsZi4iLCJwcmVjaGF0X2ZpZWxkcyI6eyJuYW1lIjp7InRpdGxlIjoiTmFtZSIsInNob3ciOiIyIn0sInBob25lIjp7InRpdGxlIjoiUGhvbmUiLCJzaG93IjoiMCJ9LCJlbWFpbCI6eyJ0aXRsZSI6IkVtYWlsIiwic2hvdyI6IjAifSwidGV4dGZpZWxkIjp7InRpdGxlIjoiTWVzc2FnZSIsInNob3ciOiIwIn0sImRyb3Bkb3duIjp7InRpdGxlIjoiRHJvcERvd24iLCJzaG93IjoiMCIsImxpc3QiOlsiIl19fSwiYnVzaW5lc3NfY2FsZW5kYXIiOm51bGwsIm5vbl9hdmFpbGFiaWxpdHlfbWVzc2FnZSI6bnVsbCwicHJvYWN0aXZlX2NoYXQiOmZhbHNlLCJwcm9hY3RpdmVfdGltZSI6MTUsInNpdGVfdXJsIjoiaHViaXQuZnJlc2hkZXNrLmNvbSIsImV4dGVybmFsX2lkIjpudWxsLCJkZWxldGVkIjpmYWxzZSwib2ZmbGluZV9jaGF0Ijp7InNob3ciOiIxIiwiZm9ybSI6eyJuYW1lIjoiTmFtZSIsImVtYWlsIjoiRW1haWwiLCJtZXNzYWdlIjoiTWVzc2FnZSJ9LCJtZXNzYWdlcyI6eyJ0aXRsZSI6IkxlYXZlIHVzIGEgbWVzc2FnZSEiLCJ0aGFuayI6IlRoYW5rIHlvdSBmb3Igd3JpdGluZyB0byB1cy4gV2Ugd2lsbCBnZXQgYmFjayB0byB5b3Ugc2hvcnRseS4iLCJ0aGFua19oZWFkZXIiOiJUaGFuayB5b3UhIn19LCJtb2JpbGUiOnRydWUsImNyZWF0ZWRfYXQiOiIyMDE0LTA5LTExVDA3OjEwOjE5LjAwMFoiLCJ1cGRhdGVkX2F0IjoiMjAxNC0xMC0xOFQxMDo0NjoxOC4wMDBaIn0=';</script>
		<!-- chat code end -->
    
</body>
</html>