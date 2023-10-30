<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Users</title>
    <link rel="stylesheet" href="../Style/boostrap.min.css">
</head>
<body>
	
	<nav class="navbar navbar-expand-lg bg-body-tertiary">
			  <div class="container-fluid">
			    <div class="collapse navbar-collapse" id="navbarSupportedContent">
			      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
			        <li class="nav-item">
			          <a class="nav-link active" aria-current="page" href="../admin.jsp">Home</a>
			        </li>
			        
			        <li class="nav-item">
			          <a class="nav-link active" aria-current="page" href="../../Curent_servlet">Current Users</a>
			        </li>
			      </ul>
			    </div>
			  </div>
			</nav>

    <h1><center>Add A User</center></h1>
    <br>
    <form method="post" action="../../AddUser_servlet">
        <div >
          <label for="exampleInputEmail1">user name</label>
          <input type="text" class="form-control"  name="name">
        </div>
        <div class="form-group">
          <label >User Password</label>
          <input type="text" class="form-control" name = "password" >
        </div>
        <div class="form-group">
            <label >Re Enter Password</label>
            <input type="text" class="form-control"  name= "repassword">
          </div>
         
         <div class="form-group">
            <label >Email</label>
            <input type="text" class="form-control"  name= "email">
          </div>
          <div class="form-group">
            <label >Phone</label>
            <input type="text" class="form-control"  name= "phone">
          </div>
          <br>
        <button type="submit" class="btn btn-primary">ADD A User</button>
      </form>
      <br><br>
     
</body>
</html>