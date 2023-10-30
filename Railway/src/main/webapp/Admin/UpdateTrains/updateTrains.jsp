<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Trains</title>
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
			          <a class="nav-link active" aria-current="page" href="../../Cur_train_sev">Current Trains</a>
			        </li>
			      </ul>
			    </div>
			  </div>
			</nav>
			<br>

    <h1><center>Add A train</center></h1>
    <br>
    <form method="post" action="../../InsertTrainServlet">
        <div >
          <label for="exampleInputEmail1">Train name</label>
          <input type="text" class="form-control"  name="name">
        </div>
        <div class="form-group">
          <label >Train Starts From</label>
          <input type="text" class="form-control" name = "from" >
        </div>
        <div class="form-group">
            <label >Train Ens From</label>
            <input type="text" class="form-control"  name= "to">
          </div>
          <div class="form-group">
            <label>Ticket Price</label>
            <input type="text" class="form-control"  name = "price">
          </div> 
          <br>
        <button type="submit" class="btn btn-primary">ADD A TRAIN</button>
      </form>
      <br><br>
      
</body>
</html>





<!-- Creadted by @Sachin -->