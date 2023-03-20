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
	<%String cardnumber = request.getParameter("cardnumber");
	String cvv= request.getParameter("cvv");
	String cardholderName = request.getParameter("cardholderName");
	%>
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
			
		String insertQuery = "insert into PaymentsDetails values('" +cardholderName+ "',"+cardnumber+ ",'"+cvv+"' )";
		System.out.println(insertQuery);
		int result = statement.executeUpdate(insertQuery);
		if(result == 0) {
			System.out.println("Record not inserted");
		}else {
			System.out.println("Record inserted into PaymentsDetails table");
			response.sendRedirect("thankyou.html");
			
		}
	} catch (ClassNotFoundException | SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		response.sendRedirect("thankyou.html");
	}
	%>

</body>
</html>