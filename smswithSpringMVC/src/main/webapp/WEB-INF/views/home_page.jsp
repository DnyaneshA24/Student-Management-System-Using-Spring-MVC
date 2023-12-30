<%@page import="com.jspiders.smswithSpringMVC.pojo.AdminPOJO"%>
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
	margin-bottom: 20px;
}

nav a {
	color: #3498db;
	text-decoration: none;
	padding: 10px 20px;
	margin: 0 10px;
	font-weight: bold;
	background-color: #fff;
	border: 2px solid #3498db;
	border-radius: 5px;
	transition: color 0.3s ease, background-color 0.3s ease;
	display: inline-block;
}

nav a:hover {
	color: #fff;
	background-color: #3498db;
}
</style>
</head>
<body>

	<nav>
		<div align="center">
			<a href="home_page">HOME</a> <br> <a href="add_student">ADD
				STUDENT</a> <br> <a href="delete_student">DELETE STUDENT</a> <br>
			<a href="get_students">GET ALL STUDENTS</a> <br> <a
				href="edit_student">EDIT STUDENT</a> <br> <a href="search">SEARCH</a>
			<br> <a href="log_out">LOG OUT</a>
		</div>
	</nav>

</body>
</html>