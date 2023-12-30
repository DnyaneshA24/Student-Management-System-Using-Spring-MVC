<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Management - Sign Up</title>
<style>
body {
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	background-color: #f5f5f5;
	text-align: center;
	margin: 0;
	padding: 0;
}

div {
	margin-top: 50px;
}

h1 {
	color: #3498db;
}

h2 {
	color: #3498db;
	margin-top: 10px;
}

form {
	margin-top: 20px;
}

table {
	border-collapse: collapse;
	width: 50%;
	margin: 0 auto;
	margin-top: 20px;
}

table, td {
	border: 1px solid #3498db;
}

td {
	padding: 10px;
	text-align: left;
}

input[type="text"] {
	width: 100%;
	padding: 8px;
	box-sizing: border-box;
}

input[type="submit"] {
	background-color: #3498db;
	color: #fff;
	padding: 10px 20px;
	border: none;
	border-radius: 5px;
	cursor: pointer;
}

input[type="submit"]:hover {
	background-color: #2980b9;
}
</style>
</head>
<body>
	<div>
		<h1>Welcome to Student Management</h1>
		<h2>Please Sign Up</h2>
		<form action="add_admin" method="post">
			<table>
				<tr>
					<td>USERNAME</td>
					<td><input type="text" name="userName"></td>
				</tr>
				<tr>
					<td>EMAIL</td>
					<td><input type="text" name="email"></td>
				</tr>
				<tr>
					<td>PASSWORD</td>
					<td><input type="text" name="password"></td>
				</tr>
			</table>
			<br> <input type="submit" value="SIGN UP">
		</form>
	</div>
</body>
</html>