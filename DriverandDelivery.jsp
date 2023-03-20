<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

   <title>Driver and Delivery</title>
	<meta charset="ISO-8859-1">
  
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
   
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous"  type="text/css" media='screen' >
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous" ></script>
    <style>
        /* Style the header */
        header {
            background-color: #f2f2f2;
            padding: 30px;
            text-align: center;
            font-size: 35px;
            color: black;
        }

        /* Style the top navigation bar */
        .topnav {
            overflow: hidden;
            background-color: #333;
        }

        /* Style the topnav links */
        .topnav a {
            float: left;
            display: block;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }

        /* Change color on hover */
        .topnav a:hover {
            background-color: #ddd;
            color: black;
        }

        /* Create a column layout */
        .row {
            display: flex;
            flex-wrap: wrap;
            padding: 0 4px;
        }

        /* Create two equal columns that sits next to each other */
        .column {
            flex: 50%;
            padding: 0 4px;
        }

        /* Style the container */
        .container-fluid{
            background-color: #f2f2f2;
            padding: 20px;
        }

        /* Style the feedback form */
        form {
            padding-top: 10px;
            padding-bottom: 10px;
        }

        input[type=text], input[type=email], textarea {
            width: 100%;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 4px;
            resize: vertical;
        }

        label {
            padding: 12px 12px 12px 0;
            display: inline-block;
        }

        button[type=submit] {
            background-color: #4CAF50;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            float: right;
        }

        button[type=submit]:hover {
            background-color: #45a049;
        }

        .container-.container-fluid {
            content: "";
            clear: both;
            display: table;
        }
    </style>
</head>
</head>
<body>
	<div class="container-fluid p-1 bg-black text-white text -left">
        <h4>Uber</h4>
    </div>
    <div class="container-fluid p-1 bg-white text-black text -left border">
        <h4>Help</h4><br>
    </div>
    <div class="container p-1   text -center">
        <h1 align="center">Driver and Delivery Help Center</h1> 
    </div>
    
    <div class="container-fluid">
       
        
        <h2>Account Issues</h2>
        <p>If you're having issues with your Uber account, don't worry - we're here to help! Some common issues that users experience include:
            <ul>
                <li>Trouble logging in</li>
                <li>with account verification</li> 
                <li>Payment or billing issues</li>
                <li>Account deactivation or suspension</li>    
                <li> Difficulty changing personal information</li>  
            </ul>
            you can contact us with the given contact details we will be happy to resolve your problem
            When contacting support, make sure to provide as much information as possible about the issue you're experiencing. This can help the us diagnose the problem more quickly and provide an appropriate solution.
            Remember, if you're ever having trouble with your account or any aspect of the Uber service, don't hesitate to reach out for help. We're here to ensure that your Uber experience is as smooth and seamless as possible!
        </p>
            
        <p>If you are having issues with your account, please fill out the form below:</p>
           <form>
                <label for="name">Name</label>
                <input type="text" id="name" name="name" placeholder="Enter your name...">

                <label for="email">Email</label>
                <input type="email" id="email" name="email" placeholder="Enter your email...">
          
                <label for="issue">Issue</label>
                <select id="issue" name="issue">
                    <option value="login">Login</option>
                    <option value="account creation">Account Creation</option>
                    <option value="forgot password">Forgot Password</option>
                    <option value="other">Other</option>
                </select>
          
                <label for="description">Description</label>
                <textarea id="description" name="description" placeholder="Please describe the issue..."></textarea>
          
                <button type="submit">Submit</button>
            </form>
  </div>
</div>


<div class="container-fluid">
<h2>App Issues</h2>
<p>If you are experiencing issues with the Uber app, please try the following troubleshooting steps:</p>
    <ul>
        <li>Make sure you have the latest version of the app installed.</li>
        <li>Check your internet connection.</li>
        <li>Try restarting your phone.</li>
        <li>If the problem persists, please contact Uber support.</li>
    </ul>
<p>Still If you are having issues with the app, please fill out the form below:</p>
<form>
    <label for="name">Name</label>
    <input type="text" id="name" name="name" placeholder="Enter your name...">
    
    <label for="email">Email</label>
    <input type="email" id="email" name="email" placeholder="Enter your email...">
    
    <label for="issue">Issue</label>
    <select id="issue" name="issue">
        <option value="login">Login</option>
        <option value="booking">Booking</option>
        <option value="ride cancellation">Ride Cancellation</option>
        <option value="payment">Payment</option>
        <option value="other">Other</option>
    </select>
    
    <label for="description">Description</label>
    <textarea id="description" name="description" placeholder="Please describe the issue..."></textarea>
    
    <button type="submit">Submit</button>
</form>
</div>
</div>

<section class="section earnings">
<div class="container-fluid">
<h2>Earnings</h2>
<p>Here is some information about how earnings work as a driver or delivery partner:</p>
<ul>
    <li>You receive a percentage of the total fare for each ride or delivery you complete.</li>
    <li>Your earnings may vary depending on factors such as distance, time, and demand.</li>
    <li>You can track your earnings and view your payment statements in the Uber driver or delivery partner app.</li>
    <li>If you have any questions about your earnings or payments, please contact Uber support.</li>
</ul>
</div>
</section>

<section class="section payments">
<div class="container-fluid">
<h2>Payments</h2>
<p>Here is some information about how payments work as a driver or delivery partner:</p>
<ul>
    <li>You can choose to be paid either weekly or daily.</li>
    <li>Payments are made directly to your bank account.</li>
    <li>If you have any issues with your payments, please contact Uber support.</li>
</ul>
<p> Still If you have any questions or concerns regarding your earnings or payments, please fill out the form below:</p>
<form>
    <label for="name">Name</label>
    <input type="text" id="name" name="name" placeholder="Enter your name...">
    
    <label for="email">Email</label>
    <input type="email" id="email" name="email" placeholder="Enter your email...">
    
    <label for="issue">Issue</label>
    <select id="issue" name="issue">
        <option value="payment">Payment</option>
        <option value="earning">Earning</option>
        <option value="invoice">Invoice</option>
        <option value="taxes">Taxes</option>
        <option value="other">Other</option>
    </select>
    <label for="description">Description</label>
    <textarea id="description" name="description" placeholder="Please describe the issue..."></textarea>
    
    <button type="submit">Submit</button>
</form>

</div>
</section>

</body>
</html>