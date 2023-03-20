<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException" %>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%String username = request.getParameter("email");
	String email1= request.getParameter("email");
	String password1 = request.getParameter("password");
	%>
	username <% %>
	<%
	try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		System.out.println("Driver CLASS loaded");
		Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:ORCL","scott","tiger");
		if (connection == null) {
			System.out.println("Connection not established with Oracle Data Base");
		}else {
			System.out.println("Success..Connection is established with Oracle DB");
		}
		Statement statement = connection.createStatement();
		
		/*String insertQuery = "insert into createsaccount values('" +username+ "','"+email1+ "','"+password1 +"' )";
		System.out.println(insertQuery);*/
		String check = "SELECT username FROM createsaccount WHERE username='"+username+"' AND password='"+password1+"'";
		System.out.println(check);
	
		int result = statement.executeUpdate(check);
		System.out.println(result);
		ResultSet rs=statement.executeQuery(check);
		String username2="sample";
		while(rs.next()){
		
			username2=rs.getString("username");
			System.out.println(username2);}
			
		
		/*int result = statement.executeUpdate(insertQuery);*/
// 		if(result == 0) {
// 			System.out.println("Record not inserted");
// 		}else {
// 			System.out.println("Record inserted into createAccount table");
// 		}
		/* if(result==0){
			response.sendRedirect("https://github.com/codewithbala/Angular-BootStrap1");
		}
		else{
			response.sendRedirect("https://www.google.com/search?client=firefox-b-d&q=gmail");
		} */
		
		if(username2.equals(username)){
			System.out.println(username);
			response.sendRedirect("travel.html");
		
			
		}
		else{
			response.sendRedirect("signup.html");
		}
		
	} catch (ClassNotFoundException | SQLException e) {
		// TODO Auto-generated catch block
		System.out.println("Not Executed");
		//e.printStackTrace();
	}
	
	%>
	
	
	
	
</body>
</html>
