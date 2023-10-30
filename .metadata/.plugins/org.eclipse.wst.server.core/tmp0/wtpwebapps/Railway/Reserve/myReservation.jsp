<%@page import="org.apache.catalina.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    String Username;
    Username = (String)session.getAttribute("user_name");
    System.out.println("\n Username :"+Username);
    %>
    
     <%@page import = "java.util.ArrayList, Reservation.My_current_res" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Resavation</title>
<!-- Boostrap linked files -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<!-- Boostrap linked files -->
</head>
<body>
<!-- Nav Bar -->

<div class="container">
  
  
  <nav class="navbar navbar-dark bg-primary" style="display:flex;flex-direction: row;justify-content: space-between;" >
  <a class="navbar-brand" href="#">User : <%=Username %></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">Home</a>
      </li>
      
    </ul>
    
  </div>
</nav>
  
 
</div>

<!-- End of Nav Bar -->
<br>
<div class="container">
<h1> <center>My Reservations</center> </h1>
<br>
<hr style="border: 2px solid #000000;">

 <% ArrayList allres = (ArrayList)request.getAttribute("My_current_res"); %>

<table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">Name</th>
      <th scope="col">Email</th>
      <th scope="col">Phone</th>
      <th scope="col">From</th>
      <th scope="col">To</th>
      <th scope="col">Update</th>
      <th scope="col">Delete</th>
    </tr>
  </thead>
  <tbody>
  <%for(int i = 0 ; i<allres.size();i++){ %>
  <%My_current_res my_c = ( My_current_res)allres.get(i); %>
    <tr>
      <td><%=my_c.getRname() %></td>
      <td><%=my_c.getRemail() %></td>
      <td><%=my_c.getRphone() %></td>
      <td><%=my_c.getRfrom() %></td>
      <td><%=my_c.getRto()   %></td>
      
      <td>
      	<form action="Del_reser_sev" method="get">
      	<input type="hidden" value="<%=my_c.getRid()%>" name="id">
      	<button type="submit" class="btn btn-danger">Delete</button>
      	</form>
      </td>
      <td>
      	<form action="Reserve/UpdateReservation.jsp" method="get">
      	<input type="hidden" value="<%=my_c.getRid()%>" name="id">
      	<input type="hidden" value="<%=my_c.getRname()%>" name="name">
      	<input type="hidden" value="<%=my_c.getRphone()%>" name="phone">
      	<input type="hidden" value="<%=my_c.getRfrom()%>" name="from">
      	<input type="hidden" value="<%=my_c.getRto()%>" name="to">
      	<input type="hidden" value="<%=my_c.getRemail()%>" name="mail">
      	<button type="submit" class="btn btn-success">Update</button>
      	</form>
      </td>
      
    </tr>
    <%} %>
  </tbody>
  
  
</table>



</div>





<!-- Boostrap linked files -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<!-- Boostrap linked files -->
</body>
</html>