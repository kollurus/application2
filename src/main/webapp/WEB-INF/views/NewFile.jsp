<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:url var="addAction" value="mycart"></c:url>
<h1>cart</h1>
<form:form action="${addAction}" commandName="cart" enctype="multipart/form-data" method="post">
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
				<td><form:label path="description">
						<spring:message text="description" />
					</form:label></td>
				<td><form:input path="description" required="true" /></td>
			</tr>
			<tr>
				<td><form:label path="price">
						<spring:message text="price" />
					</form:label></td>
				<td><form:input path="price" required="true" /></td>
			</tr>
			<tr>
			<td align ="left"><form:label path ="image">
			<spring:message text ="Image" />
			</form:label></td>
			<td align ="left"><form:input type="file" path="image"/></td>
			
			<tr>
				<td colspan="2"><c:if test="${!empty user.id}">
						<input type="submit"
							value="<spring:message text="Edit cart"/>" />
					</c:if> <c:if test="${empty product.name}">
						<input type="submit" value="<spring:message text="Add cart"/>" />
					</c:if></td>
			</tr>
		</table>
	</form:form>
	<br>
	
	<c:if test="${!empty cart List}">
	<h3>cart List</h3>
		<table class="tg">
			<tr>
				<th >user id</th>
				<th >Product Name</th>
				<th >Product Price</th>
				<th >quantity</th>
				<th >status</th>
				
				
				
				<th >Edit</th>
				<th >Delete</th>
			</tr>
			<c:forEach items="${productList}" var="product">
				<tr>
					<td>${user.id}</td>
					<td>${product.name}</td>
					<td>${product.price}</td>
					<td>${cart.quantity}</td>
					<td>${cart.status}</td>
					
					<td>
					<form action="editproduct/${user.id}"  method="post">
					<input type="submit" value="Edit">
					</form></td>
					<td><form action="removeproduct/${user.id}">
					<input type="submit" value="Delete">
					</form></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
</body>
</html>