<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Student</title>
<style>
body {
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	background-color: #f5f5f5;
	text-align: center;
	margin: 0;
	padding: 0;
}

form {
	margin-top: 20px;
}

table {
	border-collapse: collapse;
	width: 50%;
	margin: 0 auto;
}

table, th, td {
	border: 1px solid #3498db;
}

th, td {
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

h1 {
	color: #3498db;
}
</style>
</head>
<body>
	<div align="center">
		<form action="add_student" method="post">
			<table>
				<tr>
					<td>NAME</td>
					<td><input type="text" name="name"></td>
				</tr>
				<tr>
					<td>EMAIL</td>
					<td><input type="text" name="email"></td>
				</tr>
				<tr>
					<td>MOBILE</td>
					<td><input type="text" name="mobile"></td>
				</tr>
				<tr>
					<td>AGE</td>
					<td><input type="text" name="age"></td>
				</tr>
			</table>
			<br> <input type="submit" value="ADD">
		</form>
	</div>
	<%
	String message = (String) request.getAttribute("message");
	if (message != null) {
	%>
	<div align="center">
		<h1><%=message%></h1>
	</div>
	<%
	}
	%>
</body>
</html>