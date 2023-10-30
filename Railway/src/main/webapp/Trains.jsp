<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%

String Username;
Username = (String)session.getAttribute("user_name");
System.out.println("\n Username :"+Username);

%>

   <%@page import = "java.util.ArrayList, Reservation.Trains" %>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trains</title>
<!-- Boostrapp CDN link -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
</head>
<body>

    <nav class="navbar navbar-expand-lg bg-body-tertiary">
			  <div class="container-fluid">
			    <div class="collapse navbar-collapse" id="navbarSupportedContent">
			      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
			        <li class="nav-item">
			          <a class="nav-link active" aria-current="page" href="Reserve/reserve.jsp">Home</a>
			        </li>
			      </ul>
			    </div>
			  </div>
			</nav>

	<div class="trains" id="trains">
  <h1 style="padding-top: 10px;"><center> Daily Trains </center></h1>  
  <br>
  <hr style="border: 2px solid #000000;">
  <br>
  <% ArrayList allRess = (ArrayList)request.getAttribute("trainRes"); %>
  
  <table class="table table-striped table-hover">
  <thead>
    <tr>
      <th scope="col">Train Name</th>
      <th scope="col">From</th>
      <th scope="col">To</th>
      <th scope="col">Ticket Price</th>
    </tr>
  </thead>
  <tbody>
  
  <%for(int i = 0;i<allRess.size();i++){ %>
  <% Trains tri = (Trains)allRess.get(i); %>
    <tr> 
      <td><%= tri.getTname() %></td>
      <td><%= tri.getT_from() %></td>
      <td><%= tri.getT_to() %></td>
      <td><%= tri.getPrice() %></td>
    </tr>
    
    <% } %>
  </tbody>
</table>

<br>
  <hr style="border: 2px solid #000000;">
  <br>
</div>
</body>
</html>