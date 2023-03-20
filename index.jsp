<%@page import="java.util.Date"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
<link rel="stylesheet" href="loginstyle.css">

<title>index.jsp</title>
</head>
<body>
<a href="https://www.google.com/search?q=google&sxsrf=AJOqlzUFoNRhhHJC38LtloAsS9zSgPpPkA%3A1678373937986&source=hp&ei=MfQJZKfmNpD6hwObsb6IAg&iflsig=AK50M_UAAAAAZAoCQfhR3xCGReHNFp9jxVZKbvubKcOT&oq=&gs_lcp=Cgdnd3Mtd2l6EAEYADIHCCMQ6gIQJzIHCCMQ6gIQJzIHCCMQ6gIQJzIHCCMQ6gIQJzIHCCMQ6gIQJzIHCCMQ6gIQJzIHCCMQ6gIQJzIHCCMQ6gIQJzIHCC4Q6gIQJzIHCCMQ6gIQJ1AAWABg7g9oAXAAeACAAQCIAQCSAQCYAQCwAQo&sclient=gws-wiz">Google</a>
  <h1>Hello world from index.jsp</h1>
  today date and time is:
  <jsp:scriptlet>
  Date date=new Date();
  double x=10;
  </jsp:scriptlet>
  <% int num2=2000; %>
  <jsp:expression>date</jsp:expression><br> 
  the value of x is :
  <jsp:expression>x</jsp:expression><br>
  <p>the value of num2 is </p>
  <%=num2 %>
  
</body>
</html>