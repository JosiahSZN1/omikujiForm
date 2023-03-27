<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- YOUR own local CSS -->
<link rel="stylesheet" href="/css/style.css"/>
<title>Omikuji Form - Fortune</title>
</head>

<body>
	<div class="container">
		<h1>Here's Your Omikuji!</h1>
		
<!-- 		renders a page with a blue box with a message... -->
		<div style="border: 2px solid black; background-color: rgb(159,197,248)" >
			<h3 style="width: 50%;">
				<c:out value="${fortune}"/>
			</h3>
		</div>
		
<!-- 		Include an anchor tag that goes back to /omikuji. -->
		<a class="btn btn-link" href="/omikuji">Go Back</a>
	</div>
	
</body>
</html>