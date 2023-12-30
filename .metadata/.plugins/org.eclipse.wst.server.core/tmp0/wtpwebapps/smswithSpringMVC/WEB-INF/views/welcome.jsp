<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Student Management System</title>
<style>
body {
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	margin: 0;
	padding: 0;
	background-color: #f5f5f5;
	text-align: center;
}

nav {
	background-color: #3498db;
	padding: 10px 0;
	box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
}

nav a {
	color: white;
	text-decoration: none;
	padding: 10px 20px;
	margin: 0 10px;
	font-weight: bold;
	transition: background-color 0.3s ease;
}

nav a:hover {
	background-color: #2980b9;
}

h1 {
	color: #333;
	margin-top: 50px;
}
</style>
</head>
<body>
	<%
	String email = (String) request.getAttribute("admin");
	%>
	<nav>
		<a href="home_page">HOME</a> <a href="delete_admin?email=<%=email%>">DELETE
			ADMIN</a>
	</nav>
	<div>
		<h1>WELCOME TO STUDENT MANAGEMENT SYSTEM</h1>
	</div>
</body>
</html>
