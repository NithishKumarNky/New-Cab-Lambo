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
String emailId=request.getParameter("email");
String Password=request.getParameter("password");

%>
The emailid is: <%=emailId %><%out.println("<br>"); %>
The password is: <%=Password %><%out.println("<br>"); %>
</body>
</html>