<!-- adding JSTL Core Tag Library (allows us to use things such as a forEach loop) -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>List Customers</title>
	<!-- Reference our CSS files -->
	<!-- href="${pageContext.request.contextPath} gives us the root/name of our Application
	by using that, we will have a working app even if we change its name  -->
	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/style.css"/>
</head>
<body>
	
	<div id="wrapper">
	
		<div id=header>
			<h2>CRM - Customer Relationship Manager</h2>
		</div>
		<br>
		<div id="container">
			<!-- add our HTML Table here -->
			<table>
				<!-- <tr> - HTML element defines a table row -->
				<tr>
				<!-- <th> - HTML element defines a cell as header of a group of table cells. -->
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email</th>
				</tr>
				
				<!-- loop over and print our customers -->
				<c:forEach var="tempCustomer" items="${customers}">
					
					<tr>
						<!-- <td> - HTML element defines a table cell -->
						<td> ${tempCustomer.firstName} </td>
						<td> ${tempCustomer.lastName} </td>
						<td> ${tempCustomer.email} </td>
					</tr>
					
				</c:forEach>
				
			</table>
		</div>
	
	</div>
	
</body>
</html>