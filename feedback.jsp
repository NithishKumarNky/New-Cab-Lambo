<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>feedback</title>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
 
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous"  type="text/css" media='screen' >
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous" ></script>
</head>
</head>
<body>
<div class="container-fluid p-1 bg-black text-white text -left">
        <h4>Uber</h4>
    </div>
    <div class="container-fluid p-1 bg-white text-black text -left border">
        <h4>Help</h4><br>
    </div>
    <div align="center">
   	 	<h3>Driver Ratings</h3><br>
    	<h5 >Please view the ratings given by customers and about there experience</h5> 
    	<img src="E:\HTML\driverpic.jfif" alt="" width="600" ><br>
    
    </div>
    
    
    <div class="container  text-black"> 
        <hr>
        <table class="table">
          <thead>
            <tr>
              <th scope="col">Driver Name</th>
              <th scope="col">Rating</th>
              <th scope="col">Review</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <th scope="row">John Smith</th>
              <td>4.5</td>
              <td>Great driver, very friendly and punctual!</td>
            </tr>
            <tr>
              <th scope="row">Lisa Johnson</th>
              <td>3.8</td>
              <td>Driver was a bit late, but made up for it with good driving skills.</td>
            </tr>
            <tr>
              <th scope="row">Mark Davis</th>
              <td>5.0</td>
              <td>Amazing driver, couldn't have asked for a better ride!</td>
            </tr>
          </tbody>
        </table>
    </div>
    
    
    <div class="container-fluid p-1 bg-cream">
        <hr>  
        <h3 align="center"> Feedback</h3>
        <div align="center"><img src="folder/logo/girl driver.jfif" alt="" width="600"    ></div><br>
        
        <div class="row">
            <div class="col-md-4">
                
                <p>Please rate your driver on a scale of 1-5 stars:</p>
                <div class="rating">
                  <input type="radio" name="rating" id="rating-5" value="5">
                  <label for="rating-5">&#9733;</label>
                  <input type="radio" name="rating" id="rating-4" value="4">
                  <label for="rating-4">&#9733;</label>
                  <input type="radio" name="rating" id="rating-3" value="3">
                  <label for="rating-3">&#9733;</label>
                  <input type="radio" name="rating" id="rating-2" value="2">
                  <label for="rating-2">&#9733;</label>
                  <input type="radio" name="rating" id="rating-1" value="1">
                  <label for="rating-1">&#9733;</label>
                </div>
            </div><br>
            <div class="col-md-8">
               
                <h4>Please provide any feedback or comments about your driver:</h4><h4></h4>
                <form>
                  <div class="form-group">
                    <label for="name" >Driver Name:</label>
                    <input type="text" class="form-control" id="name">
                  </div>
                  <div class="form-group">
                    <label for="rating-5">Rating: </label>
                    <input type="text" class="form-control" id="rating">
                  </div>
                  <div class="form-group">
                    <label for="feedback-message">Review:</label>
                    <textarea class="form-control" id="feedback-message" rows="5"></textarea>
                  </div>
                  <button type="submit" class="btn btn-primary">Submit</button>
                </form>
            </div>
        </div>
    

</body>
</html>