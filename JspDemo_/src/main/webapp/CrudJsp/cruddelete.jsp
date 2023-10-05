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



<%
String id = request.getParameter("id");
int status = CrudDao.delete(id);
if(status>0){
	out.print("<h1>Record deleted successfully ! </h1> ");
%>
	<jsp:include page="crudview.jsp"/>
<%	
}else{
	out.print("<h1>sorry ! not deleted </h1>");
	%>	
	<jsp:include page="crudview.jsp"/>	
	<%	
}
%>

</body>
</html>