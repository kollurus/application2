<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">  
   <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  
  
  <!DOCTYPE html>
<html lang="en">
    <head> 
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" type="text/css" href="assets/css/bootstrap.css">

		<!-- Website CSS style -->
		<link rel="stylesheet" type="text/css" href="assets/css/main.css">

		<!-- Website Font style -->
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
		
		<!-- Google Fonts -->
		<link href='https://fonts.googleapis.com/css?family=Passion+One' rel='stylesheet' type='text/css'>
		<link href='https://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>

		<title>registration</title>
	</head>
  <body>
 <!-- <form action = "registration1" method = "post">
		<div class="container">
			<div class="row main">
				<div class="panel-heading">
	               <div class="panel-title text-center">
	               		<h1 class="title">REGISTRATION</h1>
	               		<hr />
	               	</div>
	            </div> 
				<div class="main-login main-center">
						
						<div class="form-group">
							<label for="name" class="cols-sm-2 control-label">Your Name</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="name" id="name"  placeholder="Enter your Name"/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="email" class="cols-sm-2 control-label">Your Email</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="email" id="email"  placeholder="Enter your Email"/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="username" class="cols-sm-2 control-label">Username</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="username" id="username"  placeholder="Enter your Username"/>
								</div>
							</div>
						</div>
						<div class="form-group">
							<label for="date of birth" class="cols-sm-2 control-label">Date of Birth</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-calendar fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="date of birth" id="date of birth"  placeholder="Enter your date of birth"/>
								</div>
							</div>
						</div>
						<div class="form-group">
							<label for="mobile" class="cols-sm-2 control-label">Mobile Number</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-phone fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="mobile number" id="mobile number"  placeholder="Enter your Mobile number"/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="password" class="cols-sm-2 control-label">Password</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<input type="password" class="form-control" name="password" id="password"  placeholder="Enter your Password"/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="confirm" class="cols-sm-2 control-label">Confirm Password</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<input type="password" class="form-control" name="confirm" id="confirm"  placeholder="Confirm your Password"/>
								</div>
							</div>
						</div>
						<form action = "registraion1" method="post"> 
						<div class="form-group ">
							<input type="submit" class="btn btn-primary btn-lg btn-block login-button" value = "Register"/>
						</div>
						<div class="login-register">
				            <a href="index.php">Login Now</a>
				         </div>
					
				</div>
			</div>
		</div>
	

		<script type="text/javascript" src="assets/js/bootstrap.js"></script>
	

<!-- <div class="container">
    <div class="row"> 

        <div class="text-center">
            <h6>follow us  </h6>
            <!-- just add href= for your links, like this: -->
         <!--     <a class="btn btn-social-icon btn-vk"><i class="fa fa-vk"></i></a>
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
    </div> -->
    
    <c:url var="addAction" value="addsupplier"></c:url>

	<form:form action="${addAction}" commandName="supplier">
		<table>
			<tr>
				<td><form:label path="id">
						<spring:message text="ID" />
					</form:label></td>
				<c:choose>
					<c:when test="${!empty user.id}">
						<td><form:input path="id" disabled="true" readonly="true" />
						</td>
					</c:when>

					<c:otherwise>
						<td><form:input path="id" pattern =".{3,10}" required="true" title="id should contains 3 to 10 characters" /></td>
					</c:otherwise>
				</c:choose>
			<tr>
			
				<td><form:label path="name">
						<spring:message text="Name" />
					</form:label></td>
				<td><form:input path="name" required="true" /></td>
			</tr>
			<tr>
				<td><form:label path="email">
						<spring:message text="email" />
					</form:label></td>
				<td><form:input path="email" required="true" /></td>
			</tr>
			<tr>
				<td><form:label path="mobile">
						<spring:message text="mobile" />
					</form:label></td>
				<td><form:input path="mobile" required="true" /></td>
			</tr>
			<tr>
				<td><form:label path="dateofbirth">
						<spring:message text="dateofbirth" />
					</form:label></td>
				<td><form:input path="dateofbirth" required="true" /></td>
			</tr>
			<tr>
				<td><form:label path="password">
						<spring:message text="password" />
					</form:label></td>
				<td><form:input path="password" required="true" /></td>
			</tr>
			<tr>
				<td colspan="2"><c:if test="${!empty user.id}">
						<input type="submit"
							value="<spring:message text="Edit User"/>" />
					</c:if> <c:if test="${empty user.id}">
						<input type="submit" value="<spring:message text="Add User"/>" />
					</c:if></td>
			</tr>
		</table>
	</form:form>
	<br>
	
	<c:if test="${!empty userList}">
	<h3>User List</h3>
		<table class="tg">
			<tr>
				<th >User ID</th>
				<th >User Name</th>
				<th >User Email</th>
				<th >User Mobile</th>
				<th >User date of birth</th>
				<th >User password</th>
				<th >Edit</th>
				<th >Delete</th>
			</tr>
			<c:forEach items="${supplierList}" var="supplier">
				<tr>
					<td>${supplier.id}</td>
					<td>${supplier.name}</td>
					<td>${supplier.address}</td>
					<td>
					<form action="editsupplier/${supplier.id}"  method="post">
					<input type="submit" value="Edit">
					</form></td>
					<td><form action="removesupplier/${supplier.id}">
					<input type="submit" value="Delete">
					</form></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
</body>
</html>