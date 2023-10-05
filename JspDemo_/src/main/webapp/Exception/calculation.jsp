<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@ page errorPage="errorpage.jsp" %>

<%
String no1 = request.getParameter("no1");
String no2 = request.getParameter("no2");

float a = Integer.parseInt(no1);
float b = Integer.parseInt(no2);

double c = a/b;

out.print("division is : "+c);

%>


</body>
</html>