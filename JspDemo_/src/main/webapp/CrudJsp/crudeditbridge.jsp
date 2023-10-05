<%@page import="CrudJsp.CrudDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="u" class="CrudJsp.CrudBean"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>



<%
int status = CrudDao.edit(u); 

if(status>0){
	out.print("<h1>updated successfully</h1>");
	%>
	<jsp:include page="crudview.jsp"/>
	<% 
	
}
else{
	out.print("<h1>fail to update</h1>");
	
	
	%>
		<jsp:include page="crudview.jsp"/>
	<%
}

%>



</body>
</html>