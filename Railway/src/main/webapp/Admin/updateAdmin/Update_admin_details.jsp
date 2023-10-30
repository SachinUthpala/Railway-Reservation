<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    
    	String adminId = request.getParameter("adi");
    	String uname = request.getParameter("aname");
    	String password = request.getParameter("apss");
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Admin</title>
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
    <form method="get" action="../../Update_admin_data_sev">
    
    	<div >
          <label for="exampleInputEmail1">Admin Id</label>
          <input type="text" class="form-control"  name="Id" value="<%=adminId %>" >
        </div>
        <div >
          <label for="exampleInputEmail1">Admin name</label>
          <input type="text" class="form-control"  name="name" value="<%=uname %>">
        </div>
        <div class="form-group">
          <label >Admin Password</label>
          <input type="text" class="form-control" name = "password" value="<%=password %>">
        </div> 
          <br>
        <button type="submit" class="btn btn-primary">UPDATE ADMIN</button>
      </form>
      <br><br>
	
	
	
</body>
</html>