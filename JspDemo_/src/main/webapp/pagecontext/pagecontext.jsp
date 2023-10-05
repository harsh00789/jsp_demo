<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<body>
<%


String name = request.getParameter("uname");

out.print("welcome , "+name);


 pageContext.setAttribute("user",name,PageContext.SESSION_SCOPE);


%>

<a href="pagecontext2.jsp">visit second jsp</a>

</body>
</html>

