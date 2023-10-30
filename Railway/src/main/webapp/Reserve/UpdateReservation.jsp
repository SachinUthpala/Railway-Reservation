<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    
    	String id = request.getParameter("id");
		String name = request.getParameter("name");
    	String from = request.getParameter("id");
    	String to = request.getParameter("to");
    	String phone = request.getParameter("from");
    	String mail = request.getParameter("mail");
    
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Reservation</title>
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">

</head>
<body>



	<nav class="navbar navbar-expand-lg bg-body-tertiary">
			  <div class="container-fluid">
			    <div class="collapse navbar-collapse" id="navbarSupportedContent">
			      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
			        <li class="nav-item">
			          <a class="nav-link active" aria-current="page" href="updateTrains.jsp">Back</a>
			        </li>
			        
			        <li class="nav-item">
			          <a class="nav-link active" aria-current="page" href="myReservation.jsp">Current Reservation</a>
			        </li>
			      </ul>
			    </div>
			  </div>
			</nav>
			<br>
	
	
	
	
	
	<h1><center>Update Reservation</center></h1>
    <br>
    <form method="get" action="../Update_reservation_sev">
    
    	<div >
          <label for="exampleInputEmail1">Reserv Id</label>
          <input type="text" class="form-control"  name="Id" value="<%=id %>" >
        </div>
        <div >
          <label for="exampleInputEmail1">User Name</label>
          <input type="text" class="form-control"  name="name" value="<%=name %>">
        </div>
        <div class="form-group">
          <label >From</label>
          <input type="text" class="form-control" name = "from" value="<%=from %>">
        </div>
        <div class="form-group">
            <label >To</label>
            <input type="text" class="form-control"  name= "to" value="<%=to %>">
          </div>
          <div class="form-group">
            <label>Phone</label>
            <input type="text" class="form-control"  name = "phone" value="<%=phone %>">
          </div> 
          <div class="form-group">
            <label>Email</label>
            <input type="text" class="form-control"  name = "email" value="<%=mail %>">
          </div> 
          <br>
        <button type="submit" class="btn btn-primary">UPDATE Reservation</button>
      </form>
      <br><br>
	
	
	
	
	
	
	
</body>
</html>