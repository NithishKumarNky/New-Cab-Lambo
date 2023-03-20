<%@page import="java.sql.Statement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
<link rel="stylesheet" href="loginstyle.css">

<title>Insert title here</title>

<style>
*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
.update{
    width: 360px;
    /* height: min-content; */
    padding: 20px;
    border-radius: 12px;
    background: #ffffff;
    /* background: transparent; */
}
.update h1{
    font-size: 36px;
    margin-bottom: 25px;
}
.update form .form-group{
    margin-bottom: 15px;
}
.update form input[type="submit"]{
    color: black;
    font-size: 20px;
    margin-top: 15px;
   
}
.btn:hover{
    background-color: deeppink;
   
}
.btn{
    margin-bottom: 10px;
}


#forgotpasswordbtn{
    color: blue;
    margin-top: 15px;
    margin-left: 20px;
}
body{
    height: 100vh;
    display: flex;
    align-items: center;
    justify-content: center;
    /* background-image: url("Images/car.jpg");
    background: url("Images/car.jpg");
    background: rgb(113, 92, 232); */
        background-image: url("https://media.wired.com/photos/61d6487b704a9d4aab6ee7bc/2:1/w_1962,h_981,c_limit/Business_Cadillac-Halo-001.jpg");


    background-size: cover;
   
   
}
</style>
</head>
<body>

<div class="update">
    <h1 class="text-center">Login Page</h1>
<!-- <form action="samplereg.jsp"></form> -->
<!-- <form class="needs- validation" name="myform"  onsubmit="return validateform()">-->
<form class="needs- validation" name="myform"  onsubmit="return validateform()">
    <div class="form-group was-validated" >
        <label class="form-label" for="email">Email Address</label>
        <input class="form-control" type="email" id="email" name="email" required>
        <div class="invalid-feedback">
            Please enter your email address
        </div>
        <div class="valid-feedback">
            Looks good!
          </div>
    </div>
<!--     <div class="form-group was-validated"> -->
<!--         <label class="form-label" for="password">Old Password</label> -->
<!--         <input class="form-control" type="password" name="oldPassword" id="password" required> -->
<!--         <div class="invalid-feedback"> -->
<!--             Please enter your password -->
<!--         </div> -->
<!--         <div class="valid-feedback"> -->
<!--             Looks good! -->
<!--           </div> -->
<!--     </div> -->
    <div class="form-group was-validated">
        <label class="form-label" for="password">New Password</label>
        <input class="form-control" type="password" name="newPassword" id="password" required>
        <div class="invalid-feedback">
            Please enter your password
        </div>
        <div class="valid-feedback">
            Looks good!
          </div>
    </div>
    
   
    <input class="btn btn-success w-100" type="submit" value="Login" >
    
    
 <%   // Establish a database connection

        
 try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		System.out.println("Driver CLASS Example jsp loaded");
		Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:ORCL","scott","tiger");
		if (conn == null) {
			System.out.println("Connection not established with Oracle Data Base");
		}else {
			System.out.println("Success..Connection is established with Oracle DB");
		}
		
		// Establish a database connection
		
		// Retrieve the old password
		
		String email1= request.getParameter("email");
		// Check if the old password is correct
		String check = "SELECT email FROM createsaccount WHERE email='"+email1+"' ";
		System.out.println(check);
		Statement statement = conn.createStatement();
		int result = statement.executeUpdate(check);
		System.out.println(result);
		ResultSet rs=statement.executeQuery(check);
		String email2="sample";
		while(rs.next()){
			
			email2=rs.getString("email");
			System.out.println(email2);}
			

		// Change the password
		String newPassword = request.getParameter("newPassword");
		String update2 = "UPDATE createsaccount SET password ='"+newPassword+"' WHERE email = '"+email1+"' ";
		System.out.println(update2);
		Statement statementupdate = conn.createStatement();
		int rowsAffected = statementupdate.executeUpdate(update2);
		System.out.println(rowsAffected);

		// Display a success message
		if (rowsAffected > 0) {
		    System.out.println("Password changed successfully");
		    response.sendRedirect("passwordchanged.html");
		} else {
		    out.println("Failed to change password");
		    response.sendRedirect("passwordnotchanged.html");
		}

		// Close the database connection
		rs.close();
		
		statementupdate.close();
		conn.close();
				
		
		
	
		
		
	} catch (ClassNotFoundException | SQLException e) {
		// TODO Auto-generated catch block
		System.out.println("Not Executed");
		//e.printStackTrace();
	}
	
%>