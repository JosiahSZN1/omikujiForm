<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- YOUR own local CSS -->
<link rel="stylesheet" href="/css/style.css"/>
<title>Omikuji - Omikuji Form</title>
</head>
<body>
	<div class="container">
		<h1>Send an Omikuji!</h1>
		<form action="/submit" method="POST">
			<div>
				<label class="form-label">Pick any number from 5 to 25</label>
				<input class="form-control" type="number" min="5" max="25" name="number">
			</div>
			<div>
				<label class="form-label">Enter the name of any city.</label>
				<input class="form-control" type="text" name="city">
			</div>
			<div>
				<label class="form-label">Enter the name of any real person</label>
				<input class="form-control" type="text" name="person">
			</div>
			<div>
				<label class="form-label">Enter professional endeavor or hobby: </label>
				<input class="form-control" type="text" name="profession">
			</div>
			<div>
				<label class="form-label">Enter any type of living thing.</label>
				<input class="form-control" type="text" name="thing">
			</div>
			<div>
				<label class="form-label">Say something nice to someone: </label>
				<textarea class="form-control" name="nicety" cols="30" rows="10"></textarea>
			</div>
			<div class="d-flex justify-content-end">
				<label class="form-label">Send and show a friend</label>
				<input class="btn btn-primary" type="submit" value="Send">
			</div>
		</form>
	</div>
</body>
</html>