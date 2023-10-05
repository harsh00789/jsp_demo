<%@page import="JspMvc1.Model"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="u" class="JspMvc1.Model"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>
<jsp:getProperty property="age" name="u"/>
<%


boolean s = u.valid();

if(s){
	out.print("adult");
}else{
	out.print("child");
}

%>

</body>
</html>