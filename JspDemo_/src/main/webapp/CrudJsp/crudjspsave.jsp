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

%>

<jsp:useBean id="u" class="CrudJsp.CrudBean"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%

int status = CrudDao.save(u);

if(status>0){
	
	out.print("your data successfully inserted");
	
%>	

<jsp:include page="crudformuser9.html"/>

<% 	
}


else{
	out.print("sorry ! fail to insert");

	
	%>
	<jsp:include page="crudformuser9.html"></jsp:include>
	
	<%
}

%>

</body>
</html>