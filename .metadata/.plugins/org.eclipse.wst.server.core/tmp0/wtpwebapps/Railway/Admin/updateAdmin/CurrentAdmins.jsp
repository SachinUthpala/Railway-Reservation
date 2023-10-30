 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@page import = "java.util.ArrayList, UpdateAdmin.Current_users" %>
    
    
    
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
			          <a class="nav-link active" aria-current="page" href="Admin/updateAdmin/UpdateAdmin.jsp">Back</a>
			        </li>
			      </ul>
			    </div>
			  </div>
			</nav>

	<div class="trains" id="trains">
  <h1 style="padding-top: 10px;"><center> Current Admins </center></h1>  
  <br>
  <hr style="border: 2px solid #000000;">
  <br>
  
  <% ArrayList allres = (ArrayList)request.getAttribute("current_emp"); %>
  
  <table class="table table-striped table-hover">
  <thead>
    <tr>
      <th scope="col">Admin No</th>
      <th scope="col">Admin name</th>
      <th scope="col">Admin Password</th>
      <th scope="col">Delete</th>
      <th scope="col">Update</th>
    </tr>
  </thead>
  <tbody>
  
  <%for (int i = 0;i<allres.size();i++){ %>
  <%Current_users cur = (Current_users)allres.get(i); %>
    <tr> 
      <td><%=cur.getUdi() %></td>
      <td><%=cur.getUname() %></td>
      <td><%=cur.getUpassword() %></td>
      <td>
      	<form action="Del_admin_suv" method="get">
      	<input type="hidden" value="<%=cur.getUdi()%>" name="adminId">
      	<button type="submit" class="btn btn-danger">Delete</button>
      	</form>
      </td>
      <td>
      	<form action="Admin/updateAdmin/Update_admin_details.jsp" method="get">
      	<input type="hidden" value="<%=cur.getUdi()%>" name="adi">
      	<input type="hidden" value="<%=cur.getUname()%>" name="aname">
      	<input type="hidden" value="<%=cur.getUpassword()%>" name="apss">
      	<button type="submit" class="btn btn-success">Update</button>
      	</form>
      </td>
    </tr>
    
  <%} %>
  </tbody>
</table>

<br>
  <hr style="border: 2px solid #000000;">
  <br>
</div>
</body>
</html>