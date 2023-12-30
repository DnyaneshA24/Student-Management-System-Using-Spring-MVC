<%@page import="com.jspiders.smswithSpringMVC.pojo.StudentPOJO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Student</title>
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
	margin-top: 20px;
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
	background-color: #2ecc71;
	color: #fff;
	padding: 10px 20px;
	border: none;
	border-radius: 5px;
	cursor: pointer;
}

input[type="submit"]:hover {
	background-color: #27ae60;
}

h1 {
	color: #3498db;
}
</style>
</head>
<body>
	<div align="center">
		<form action="edit_student" method="post">
			<table>
				<tr>
					<td>ID</td>
					<td><input type="text" name="id"></td>
				</tr>
			</table>
			<br> <input type="submit" value="EDIT">
		</form>
	</div>
	<%
	@SuppressWarnings("unchecked")
	List<StudentPOJO> students = (List<StudentPOJO>) request.getAttribute("students");
	if (students != null && students.size() > 0) {
	%>
	<div align="center">
		<table>
			<tr>
				<th>ID</th>
				<th>NAME</th>
				<th>EMAIL</th>
				<th>MOBILE</th>
				<th>AGE</th>
			</tr>
			<%
			for (StudentPOJO student : students) {
			%>
			<tr>
				<td><%=student.getId()%></td>
				<td><%=student.getName()%></td>
				<td><%=student.getEmail()%></td>
				<td><%=student.getMobile()%></td>
				<td><%=student.getAge()%></td>
			</tr>
			<%
			}
			%>
		</table>
	</div>
	<%
	} else {
	%>
	<div align="center">
		<h1>Student not found.</h1>
	</div>
	<%
	}
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