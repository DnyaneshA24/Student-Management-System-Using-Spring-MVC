<%@page import="com.jspiders.smswithSpringMVC.pojo.StudentPOJO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	StudentPOJO student = (StudentPOJO) request.getAttribute("student");
	if (student != null) {
	%>
	<div align="center">
		<form action="update_student" method="post">
			<table border="1px solid">
				<tr>
					<td>ID</td>
					<td><input type="text" value="<%=student.getId()%>"
						readonly="true" name="id"></td>
				</tr>
				<tr>
					<td>NAME</td>
					<td><input type="text" value="<%=student.getName()%>"
						name="name"></td>
				</tr>
				<tr>
					<td>EMAIL</td>
					<td><input type="text" value="<%=student.getEmail()%>"
						name="email"></td>
				</tr>
				<tr>
					<td>MOBILE</td>
					<td><input type="text" value="<%=student.getMobile()%>"
						name="mobile"></td>
				</tr>
				<tr>
					<td>AGE</td>
					<td><input type="text" value=" <%=student.getAge()%>"
						name="age"></td>
				</tr>
			</table>
			<input type="submit" value="UPDATE">
		</form>
	</div>
	<%
	} else {
	%>
	<div align="center">
		<h1>Student not found.</h1>
	</div>
	<%
	}
	%>

</body>
</html>