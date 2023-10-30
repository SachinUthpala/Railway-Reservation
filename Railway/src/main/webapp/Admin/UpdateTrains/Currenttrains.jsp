<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@page import = "java.util.ArrayList, UpdateTrains.Current_trains" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Current Trains</title>
<!-- Boostrapp CDN link -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
</head>
<body>
	
	 <nav class="navbar navbar-expand-lg bg-body-tertiary">
			  <div class="container-fluid">
			    <div class="collapse navbar-collapse" id="navbarSupportedContent">
			      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
			        <li class="nav-item">
			          <a class="nav-link active" aria-current="page" href="Admin/UpdateTrains/updateTrains.jsp">Back</a>
			        </li>
			      </ul>
			    </div>
			  </div>
			</nav>

	<div class="trains" id="trains">
  <h1 style="padding-top: 10px;"><center> Current Trains </center></h1>  
  <br>
  <hr style="border: 2px solid #000000;">
  <br>
  
  <% ArrayList allres = (ArrayList)request.getAttribute("trainres"); %>
  
  <table class="table table-striped table-hover">
  <thead>
    <tr>
      <th scope="col">Train No</th>
      <th scope="col">Train name</th>
      <th scope="col">From</th>
      <th scope="col">To</th>
      <th scope="col">Price</th>
      <th scope="col">Delete</th>
      <th scope="col">Update</th>
    </tr>
  </thead>
  <tbody>
  
  <%for (int i = 0;i<allres.size();i++){ %>
  <%Current_trains cur = (Current_trains)allres.get(i); %>
    <tr> 
      <td><%=cur.gettId() %></td>
      <td><%=cur.getTname() %></td>
      <td><%=cur.getT_from() %></td>
      <td><%=cur.getT_to() %></td>
      <td><%=cur.getPrice() %></td>
      
      <td>
      	<form action="Deleter_train_sev" method="get">
      	<input type="hidden" value="<%=cur.gettId()%>" name="trid">
      	<button type="submit" class="btn btn-danger">Delete</button>
      	</form>
      </td>
      <td>
      	<form action="Admin/UpdateTrains/Update_train_details.jsp">
      	<input type="hidden" value="<%=cur.gettId()%>"  name="id">
      	<input type="hidden" value="<%=cur.getTname()%>"  name="name">
      	<input type="hidden" value="<%=cur.getT_from()%>"  name="from">
      	<input type="hidden" value="<%=cur.getT_to()%>"  name="to">
      	<input type="hidden" value="<%=cur.getPrice()%>"  name="price">
      	<button type="submit" class="btn btn-success" >Update</button>
      	</form>
      </td>
    </tr>
    
  <%} %>
  </tbody>
</table>
	
	
</body>
</html>