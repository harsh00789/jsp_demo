<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="o" class="UseBean.UserBean"></jsp:useBean>
<jsp:useBean id="c" class="UseBean.calculator"></jsp:useBean>
<jsp:setProperty property="*" name="o"/>

<jsp:getProperty property="name" name="o"/>
<jsp:getProperty property="age" name="o"/>


<%
int cube = c.cube(5);



%>
<%="cube is : "+cube %>

</body>
</html>