<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String name = request.getParameter("name");
out.print("welcome , "+name);

session.setAttribute("name", name);
out.print("<p><a href='hello.jsp'>click here</a> for going to hello file</p>");
	
%>


</body>
</html>