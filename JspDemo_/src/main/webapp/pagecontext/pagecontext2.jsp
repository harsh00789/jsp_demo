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
String nam = (String)pageContext.getAttribute("user",PageContext.SESSION_SCOPE);
out.println("hello , "+nam);
%>

</body>
</html>