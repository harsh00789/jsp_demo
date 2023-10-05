<%@page import="CrudJsp.CrudDao"%>
<%@page import="CrudJsp.CrudBean"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
td{
border: 1px solid black;
}
input{
background-color:#12c9ff;
color: white;
}
</style>
</head>
<body>

<%
List<CrudBean> list = CrudDao.view();
request.setAttribute("list",list);

%>


<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>



<table style="border: 1px solid black">
<tr><td>ID</td><td>NAME</td><td>PASSWORD</td><td>EMAIL</td><td>COUNTRY</td><td>EDIT</td><td>DELETE</td><tr>
 <c:forEach items="${list}" var="u">


 
  <tr><td >${u.getId()}</td><td>${u.getName()}</td><td>${u.getPassword()}</td><td>${u.getEmail()}</td><td>${u.getCountry()}</td><td><form action="crudedit.jsp"><input type="hidden" name="name" value="${u.getName()}"><input type="hidden" name="password" value="${u.getPassword()}"><input type="hidden" name="email" value="${u.getEmail()}"><input type="hidden" name="country" value="${u.getCountry()}"><input type="hidden" name="id" value="${u.getId()}"><input type="submit" value="Edit"></form></td><td><form action="cruddelete.jsp"><input type="hidden" name="id" value="${u.getId()}"><input type="submit" value="Delete"></form></td></tr>
  

</c:forEach> 
<a href="crudformuser9.html">insert new</a>
</table>

 
</body>
</html>