<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
   <meta charset="ISO-8859-1">
   <title>complaint</title>
   <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
   
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous"  type="text/css" media='screen' >
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous" ></script>
</head>
<body>
  
  <div class="container bg-black text-white text -center">


    <div class="jumbotron">

      <h1 class="display-4">Welcome to Uber Help</h1>

      <p class="lead">We're here to help you with any questions or issues you may have.</p>
    </div>     
    <h2>Submit a Complaint</h2> 
    <form>

      <div class="form-group">

        <label for="name">Name:</label>

        <input type="text" class="form-control" id="name" name="name">

      </div>

      <div class="form-group">

        <label for="email">Email:</label>
        <input type="email" class="form-control" id="email" name="email">
      </div><br>

      <div class="form-group">

        <div> <label for="complaint_type" >Complaint Type:</label>

          <select id="complaint_type" name="complaint_type" required>

            <option value="">Select Complaint Type</option>
            <option value="Driver">Driver</option>
            <option value="Vehicle">Vehicle</option>
            <option value="Payment">Payment</option>
            <option value="Other">Other</option>
          </select></div>

        </div><br>

        <div class="form-group">

          <label for="complaint">Complaint:</label>
          <textarea class="form-control" id="complaint" name="complaint"></textarea>
        </div><br>

        <button type="submit" class="btn btn-primary">Submit</button>
        </form>
        
  </div>

</body>
</html>