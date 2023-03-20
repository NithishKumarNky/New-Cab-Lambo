<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.Scanner"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
<link rel="stylesheet" href="loginstyle.css">

<title>Login Page</title>

<style>
*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
.login{
    width: 360px;
    /* height: min-content; */
    padding: 20px;
    border-radius: 12px;
    background: #ffffff;
    /* background: transparent; */
}
.login h1{
    font-size: 36px;
    margin-bottom: 25px;
}
.login form .form-group{
    margin-bottom: 10px;
}
.login form input[type="submit"]{
    color: black;
    font-size: 20px;
    margin-top: 1px;
   
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
/*         background-image: url("https://media.wired.com/photos/61d6487b704a9d4aab6ee7bc/2:1/w_1962,h_981,c_limit/Business_Cadillac-Halo-001.jpg"); */
	background:rgb(113,92,232);

    background-size: cover;
   
   
}
</style>
</head>
<body>

<div class="login">
    <h1 class="text-center">Login Page</h1>
<!-- <form action="samplereg.jsp"></form> -->
<!-- <form class="needs- validation" name="myform"  onsubmit="return validateform()">-->
<form class="needs- validation" name="myform" action="finalsamplereg.jsp" onsubmit="return validateform()">
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
    <div class="form-group was-validated">
        <label class="form-label" for="password">Password</label>
        <input class="form-control" type="password" name="password" id="password" required>
        <div class="invalid-feedback">
            Please enter your password
        </div>
        <div class="valid-feedback">
            Looks good!
          </div>
    </div>
    <div>
        <div class="form-group form-check" >
            <input class="form-check-input" type="checkbox" id="check">
            <label class="form-check-label" for="check">Remember me</label>
            <button id="forgotpasswordbtn" class="btn " type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasWithBothOptions" aria-controls="offcanvasWithBothOptions">Forgot Password?</button>


        </div>
    </div>
   
    <input class="btn btn-success w-100" type="submit" value="Login" >
    <%
	//2.String username = request.getParameter("email");
	String email1= request.getParameter("email");
	String password1 = request.getParameter("password");
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
		
		/*String insertQuery = "insert into createsaccount values('" +username+ "','"+email1+ "','"+password1 +"' )";
		System.out.println(insertQuery);*/
		//1.String check = "SELECT username FROM createsaccount WHERE username='"+username+"' AND password='"+password1+"'";
		
		String check = "SELECT email FROM createsaccount WHERE email='"+email1+"' AND password='"+password1+"'";
		System.out.println(check);
	
		int result = statement.executeUpdate(check);
		System.out.println(result);
		ResultSet rs=statement.executeQuery(check);
		String email2="sample";
		//3.String username2="sample";
		boolean isValid=false;
		while(rs.next()){
		
			email2=rs.getString("email");
			System.out.println(email2);}
			isValid=email2.equals(email1);
// 4.		username2=rs.getString("username");
// 4.		System.out.println(username2);}
			
		
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
		
// 		if(username2.equals(username)){
// 			System.out.println(username);
			if(isValid){
				System.out.println(email1);
				
			response.sendRedirect("mapping.html");
		
			
		}
		else{
			
			%>  
			<p style="color:red;">Username and Password not matched</p>
			<% 
			
			//response.sendRedirect("login.jsp");


			//response.sendRedirect("signup.html");
		}
		
	} catch (ClassNotFoundException | SQLException e) {
		// TODO Auto-generated catch block
		System.out.println("Not Executed");
		//e.printStackTrace();
	}
	
	%>
	
	
    <!-- <h4 align="center"  >or</h2> -->
<!--         <p align="center" style="font-size: 20px; ">or</p> -->
<!--         <div class="signupclass" align="center"> -->
<!--         <a href="signup.html">New User?Sign Up -->
    <!-- <input class="btn  w-100" type="submit" value="Sign in"> -->
    
    
</a>
<i class="fa-solid fa-right-to-bracket"></i>
 <p align="center" style="font-size: 20px; ">or</p>
        <div class="signupclass" align="center">
        <a href="signup.html">Sign Up

</div>


    <!-- <button class="btn btn-primary" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasWithBothOptions" aria-controls="offcanvasWithBothOptions">Forgot Password</button> -->
    <div class="offcanvas offcanvas-start" data-bs-scroll="true" tabindex="-1" id="offcanvasWithBothOptions" aria-labelledby="offcanvasWithBothOptionsLabel">
        <div class="offcanvas-header">
          <h5 class="offcanvas-title" id="offcanvasWithBothOptionsLabel">Forgot Password?</h5>
          <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
        </div>
        <div class="offcanvas-body">
          <p>
            <h1>To Retreive Password</h1>
            <a href="recoverpage.html">Click here </a>
           
           <h5>Here are a few tips to ensure proper security for your data and tips to never forget a password again</h5>


             <ol>
                <li>Password Managers <a href="https://thesecmaster.com/12-tips-to-never-forget-a-password/">Learn more</a></li>
                <li>Digital Lockbox and Their Valuable Services</li>
                <li>Use a memorable song or phrase</li>
                <li>Use your favourite TV character</li>
                <li>Avoid using the same password more than once</li>
                <li>Use strong security questions for remembering a password</li>
             </ol>
          </p>
        </div>


      </div>






</form>
</div>

</body>


<script>
    boolean validateform(){  
    var name=document.myform.name.value;  
    var password=document.myform.password.value;  
    if (email==null || email==""){  
      alert("Name can't be blank");  
      return false;  
    }else if(password.length<6){  
      alert("Password must be at least 6 characters long.");  
      return false;  
      }  
      else if(password="1234567" && email=="nky@gmail.com"){
alert("Name and pass matched");
return false;
      }
    
      
    } 
    </script>  
    
    <!-- <script type="text/javascript">
int isvalid(){
		
		
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
			
			String check = "SELECT count(*)FROM createsaccount WHERE username='"+username+"' AND password2='"+password1+"'";
			System.out.println(check);
			int result = statement.executeUpdate(check);
			System.out.println(result);
			if(result == 0) {
				System.out.println("Record not inserted");
			}else {
				System.out.println("Record inserted into createAccount table");
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return 0;
	}</script> -->


</html>

