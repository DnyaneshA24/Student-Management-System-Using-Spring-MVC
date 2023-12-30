<%@page import="com.jspiders.smswithSpringMVC.pojo.StudentPOJO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student List</title>
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

table {
	border-collapse: collapse;
	width: 80%;
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

th {
	background-color: #3498db;
	color: #fff;
}

td {
	background-color: #fff;
}

h1 {
	color: #3498db;
}
</style>
</head>
<body>
	<div>
		<%
		@SuppressWarnings("unchecked")
		List<StudentPOJO> students = (List<StudentPOJO>) request.getAttribute("students");
		if (students != null && students.size() > 0) {
		%>
		<table>
			<tr>
				<th>ID</th>
				<th>NAME</th>
				<th>EMAIL</th>
				<th>MOBILE</th>
				<th>AGE</th>
			</tr>
			<%
			for (StudentPOJO studentPOJO : students) {
			%>
			<tr>
				<td><%=studentPOJO.getId()%></td>
				<td><%=studentPOJO.getName()%></td>
				<td><%=studentPOJO.getEmail()%></td>
				<td><%=studentPOJO.getMobile()%></td>
				<td><%=studentPOJO.getAge()%></td>
			</tr>
			<%
			}
			%>
		</table>
		<%
		} else {
		%>
		<div>
			<h1>Students Not Found</h1>
		</div>
		<%
		}
		%>
	</div>
</body>
</html>