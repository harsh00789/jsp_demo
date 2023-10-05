<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String id = request.getParameter("id");
String name = request.getParameter("name");
String password = request.getParameter("password");
String email = request.getParameter("email");
String country = request.getParameter("country");


%>

<form action="crudeditbridge.jsp">
<table>

	<tr><td>Name : </td><td><input type="text" name="name" value="<%=name%>"></td></tr>
	<tr><td>Password : </td><td><input type="password" name="password" value="<%=password%>"></td></tr>
	<tr><td>Email : </td><td><input type="email" name="email" value="<%=email%>"></td></tr>
	<tr><td>Country : </td><td>
		<select name="country" value="<%=country%>">
			<option>india</option>
			<option>canada</option>
			<option>australia</option>
			<option>england</option>
		</select>
		
	</td></tr>
	<tr><td><input type="hidden" value="<%=id%>" name="id"></td></tr>
	<tr><td><input type="submit" value="submit"></td></tr>
	<tr><td><a href="crudview.jsp">view data</a></td></tr>
</table>


</form>





</body>
</html>