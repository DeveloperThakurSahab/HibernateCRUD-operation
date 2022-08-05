<%@page import="com.bean.Student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Details</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<style type="text/css">
tr,td{
	padding:10px;
}
</style>
</head>
<body>
	<%
	Student s=(Student)request.getAttribute("s");
	%>
	<form name="update" method="post" action="StudentController">
		<table>
			<tr>
				<td><input type="hidden" name="id" value="<%=s.getId() %>"></td>
			</tr>
			<tr>
				<td>First Name</td>
				<td><input type="text" name="fname" value="<%=s.getFname() %>"></td>
			</tr>
			<tr>
				<td>Last Name</td>
				<td><input type="text" name="lname" value="<%=s.getLname() %>"></td>
			</tr>
			<tr>
				<td>Email</td>
				<td><input type="text" name="email" value="<%=s.getEmail() %>"></td>
			</tr>
			<tr>
				<td>Mobile</td>
				<td><input type="text" name="mobile" value="<%=s.getMobile() %>"></td>
			</tr>
			<tr>
				<td>Address</td>
				<td><textarea name="address" rows="5" cols="20"><%=s.getAddress() %></textarea></td>
			</tr>
			<tr>
				<td>Gender</td>
				<%
					if(s.getGender().equals("male"))
					{
						%>
						<td>
							<input type="radio" name="gender" value="male" checked="checked">Male
							<input type="radio" name="gender" value="female">Female
						</td>
						<%
					}
					else if(s.getGender().equals("female"))
					{
						%>
						<td>
							<input type="radio" name="gender" value="male">Male
							<input type="radio" name="gender" value="female" checked="checked">Female
						</td>	
						<%
					}
					else
					{
						%>
						<td>
							<input type="radio" name="gender" value="male">Male
							<input type="radio" name="gender" value="female">Female
						</td>	
						<%
					}
				%>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" name="action" value="Update" class="btn btn-primary">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>