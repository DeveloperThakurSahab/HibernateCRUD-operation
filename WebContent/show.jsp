<%@page import="com.dao.StudentDao"%>
<%@page import="com.bean.Student"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Details</title>
</head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<style type="text/css">
tr,td{
	padding:10px;
}
</style>
<body>
	<table border="5" width="100%">
		<tr>
			<th>ID</th>
			<th>Fname</th>
			<th>Lname</th>
			<th>Email</th>
			<th>Mobile</th>
			<th>Gender</th>
			<th>Address</th>
			<th>Edit</th>
			<th>Delete</th>
		</tr>
		<%
			List<Student> list=StudentDao.getAllStudents();
			for(Student s: list)
			{
		%>
					<tr>
						<td><%=s.getId() %></td>
						<td><%=s.getFname() %></td>
						<td><%=s.getLname() %></td>
						<td><%=s.getEmail() %></td>
						<td><%=s.getMobile() %></td>
						<td><%=s.getGender() %></td>
						<td><%=s.getAddress() %></td>
						<td>
							<form name="edit" method="post" action="StudentController">
								<input type="hidden" name="id" value="<%=s.getId() %>">
								<input type="submit" name="action" value="EDIT" class="btn btn-primary">
							</form>
						</td>
						<td>
							<form name="delete" method="post" action="StudentController">
								<input type="hidden" name="id" value="<%=s.getId() %>">
								<input type="submit" name="action" value="DELETE" class="btn btn-danger">
							</form>
						</td>
					</tr>
				<%
			}
		%>
	</table>
</body>
</html>