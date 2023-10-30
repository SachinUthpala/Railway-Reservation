<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login</title>
<link rel="stylesheet" href="Style/boostrap.min.css">
</head>
<body>
	
	<nav class="navbar navbar-expand-lg bg-body-tertiary">
			  <div class="container-fluid">
			    <div class="collapse navbar-collapse" id="navbarSupportedContent">
			      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
			        <li class="nav-item">
			          <a class="nav-link active" aria-current="page" href="../Home/home.jsp">Home</a>
			        </li>
			        
			        <li class="nav-item">
			          <a class="nav-link active" aria-current="page" href="../SignUp/login.jsp">Back</a>
			        </li>
			      </ul>
			    </div>
			  </div>
			</nav>
			<br>
	

	<form method="post" action="../LOGINADMIN" >
        <div class="form-group">
            <label >Username</label>
            <input type="text" class="form-control" name="adminname" required>
          </div>
          <div class="form-group">
            <label>Password</label>
            <input type="password" class="form-control"  name="adminpassword" required>
          </div> 
          <br>
        <button type="submit" class="btn btn-primary" >Login</button>
      </form>
</body>
</html>