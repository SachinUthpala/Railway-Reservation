<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	String trainId = request.getParameter("id");
    	String name = request.getParameter("name");
    	String from = request.getParameter("from");
    	String to = request.getParameter("to");
    	String price = request.getParameter("price");
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Train</title>
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
			          <a class="nav-link active" aria-current="page" href="../../Cur_train_sev">Current Trains</a>
			        </li>
			      </ul>
			    </div>
			  </div>
			</nav>
			<br>

    <h1><center>Update train</center></h1>
    <br>
    <form method="get" action="../../Update_trains_sev">
    
    	<div >
          <label for="exampleInputEmail1">Train Id</label>
          <input type="text" class="form-control"  name="Id" value="<%=trainId %>" >
        </div>
        <div >
          <label for="exampleInputEmail1">Train name</label>
          <input type="text" class="form-control"  name="name" value="<%=name %>">
        </div>
        <div class="form-group">
          <label >Train Starts From</label>
          <input type="text" class="form-control" name = "from" value="<%=from %>">
        </div>
        <div class="form-group">
            <label >Train Ens From</label>
            <input type="text" class="form-control"  name= "to" value="<%=to %>">
          </div>
          <div class="form-group">
            <label>Ticket Price</label>
            <input type="text" class="form-control"  name = "price" value="<%=price %>">
          </div> 
          <br>
        <button type="submit" class="btn btn-primary">UPDATE TRAIN</button>
      </form>
      <br><br>
      
</body>
</html>