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
	display: flex;
	align-items: center;
	justify-content: center;
	height: 100vh;
	background-color: #f5f5f5;
}

.container {
	width: 350px;
	padding: 20px;
	background-color: #fff;
	box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
	border-radius: 8px;
	text-align: center;
}

h1, h2 {
	color: #333;
}

table {
	width: 100%;
	margin-bottom: 20px;
	border-collapse: collapse;
}

table, th, td {
	border: none;
}

th, td {
	padding: 10px;
	text-align: left;
	border-bottom: 1px solid #ddd;
}

input[type="text"], input[type="password"] {
	width: 100%;
	padding: 10px;
	margin: 8px 0;
	box-sizing: border-box;
	border: 1px solid #ddd;
	border-radius: 4px;
}

input[type="submit"] {
	background-color: #3498db;
	color: white;
	padding: 10px 15px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	transition: background-color 0.3s ease;
}

input[type="submit"]:hover {
	background-color: #2980b9;
}

a {
	color: #3498db;
	text-decoration: none;
	font-weight: bold;
}

a:hover {
	text-decoration: underline;
}

.message {
	color: #e74c3c;
	margin-top: 20px;
}
</style>
</head>
<body>
	<div class="container">
		<h1>Welcome to Student Management</h1>
		<h2>Please login</h2>
		<form action="log_in" method="post">
			<table>
				<tr>
					<td>EMAIL</td>
					<td><input type="text" name="email"></td>
				</tr>
				<tr>
					<td>PASSWORD</td>
					<td><input type="password" name="password"></td>
				</tr>
			</table>
			<input type="submit" value="LOG IN">
		</form>
		<br> <a href="add_admin">New User? Create Account</a>

		<%
		String message = (String) request.getAttribute("message");
		if (message != null) {
		%>
		<div class="message">
			<h1><%=message%></h1>
		</div>
		<%
		}
		%>
	</div>
</body>
</html>
