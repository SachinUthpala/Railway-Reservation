<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
     <%
    
    	String userId = request.getParameter("id");
    	String uname = request.getParameter("name");
    	String password =  request.getParameter("password");
    	String email = request.getParameter("email");
    	String phone = request.getParameter("phone");
    	
    	
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Users</title>
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
			          <a class="nav-link active" aria-current="page" href="../../Cur_train_sev">Current Users</a>
			        </li>
			      </ul>
			    </div>
			  </div>
			</nav>
			<br>

    <h1><center>Update Users</center></h1>
    <br>
    <form method="get" action="../../Update_suv">
    
    	<div >
          <label for="exampleInputEmail1">User Id</label>
          <input type="text" class="form-control"   value="<%=request.getParameter("id") %>" name="id" required>
        </div>
        <div >
          <label for="exampleInputEmail1">User name</label>
          <input type="text" class="form-control"   value="<%=uname %>" name="username" required>
        </div>
        <div class="form-group">
          <label >Password</label>
          <input type="password" class="form-control" value="<%=password %>" name="pass" required>
        </div>
        <div class="form-group">
          <label >Phone Number</label>
          <input type="text" class="form-control" value="<%=phone %>" name="phone" required>
        </div>
        <div class="form-group">
          <label >Email</label>
          <input type="text" class="form-control"  value="<%=email %>" name="mail" required>
        </div> 
          <br>
        <button type="submit" class="btn btn-primary">UPDATE ADMIN</button>
      </form>
      <br><br>
	
	
	
</body>
</html>