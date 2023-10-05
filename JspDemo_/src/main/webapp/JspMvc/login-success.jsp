<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>

<html>
<body>
<%@ page import="jspmvc.BeanAsModel" %>

<h3>You have Logged in Successfully</h3>

<%
BeanAsModel bean = (BeanAsModel)request.getAttribute("bean");

out.print("Welcome , "+bean.getName());

%>
</body>
</html>
