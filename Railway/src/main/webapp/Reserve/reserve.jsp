<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

String Username;
Username = (String)session.getAttribute("user_name");
System.out.println("\n Username :"+Username);



%>
<!DOCTYPE html>
<!-- Created By CodingLab - www.codinglabweb.com -->
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <title>Resive</title>
    <link rel="stylesheet" href="style/style.css">
    <link rel="stylesheet" href="./style/boostrap.min.css">
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <!-- Styles of the webpage -->

</head>


<body>

  <div class="nav">
    <h3 style="padding-left:20px ;">User :  <%=Username %></h3>
    <form action="../My_res_sv">
    	<input type="hidden" value="<%=Username %>" name="name">
    	<button type="submit" style="border: none;padding:10px 25px;border-radius: 15px;">My Reservations</button>
    </form>
    <ul>
      <li><a href="#">Home</a></li>
      <li><a href="../Train_res">Trains</a></li>
      <li><a href="#contact">Contact Us</a></li>
      <li><a href="../SignUp/login.jsp">Log Out</a></li>
    </ul>
  </div>
<!-- Resavation Form Start -->
<div class="mainContainer">

  <div class="containers">
    <div class="title">Reserve Now</div>
    <div class="content">
      <form action="../insertReserve" method="post">
        <div class="user-details">
          <div class="input-box">
            <span class="details">Name</span>
            <input type="text" placeholder="Enter your name" required name="uname" value="<%=Username%>">
          </div>
          <div class="input-box">
            <span class="details">Phone Number</span>
            <input type="text" placeholder="Enter your Phone NUmber" required name="phone">
          </div>
          <div class="input-box">
            <span class="details">Email</span>
            <input type="text" placeholder="Enter your email" required name="email">
          </div>
          <div class="input-box">
            <span class="details">Number Of Pasangers</span>
            <input type="text" placeholder="Number of Pax" required name="pax">
          </div>
          <div class="input-box">
            <span class="details">From</span>
            
            
            <select class="form-select" aria-label="Default select example" name="from">
  			<option selected>From</option>
 		 	<option value="Anuradhapura">Anuradhapura</option>
  			<option value="Kurunegala">Kurunegala</option>
  			<option value="Polgahwela">Polgahwela</option>
  			<option value="Meerigama">Meerigama</option>
  			<option value="Petta">Petta</option>
  			<option value="Nuwara">Nuwara</option>
  			<option value="Ella">Ella</option>
			</select>
            
            
          </div>
          <div class="input-box">
            <span class="details">To</span>
            
            <select class="form-select" aria-label="Default select example" name="to">
  			<option selected>To</option>
			<option value="Anuradhapura">Anuradhapura</option>
  			<option value="Kurunegala">Kurunegala</option>
  			<option value="Polgahwela">Polgahwela</option>
  			<option value="Meerigama">Meerigama</option>
  			<option value="Petta">Petta</option>
  			<option value="Nuwara">Nuwara</option>
  			<option value="Ella">Ella</option>
			
			
			</select>
            
            
          </div>
        </div>
        <div class="button">
          <input type="submit" value="Reserve Now">
        </div>
      </form>
    </div>
  </div>
</div>
<!-- resavation form end -->



<!--contact us form-->
<div class="mainContact" id="contact">
<div class="container">
  <div class="content">
    <div class="left-side">
      <div class="address details">
        <i class="fas fa-map-marker-alt"></i>
        <div class="topic">Address</div>
        <div class="text-one">No 39,New Malkaduwawa</div>
        <div class="text-two">Kurunegala</div>
      </div>
      <div class="phone details">
        <i class="fas fa-phone-alt"></i>
        <div class="topic">Phone</div>
        <div class="text-one">+9476 271 200</div>
        <div class="text-two">+9496 3434 5678</div>
      </div>
      <div class="email details">
        <i class="fas fa-envelope"></i>
        <div class="topic">Email</div>
        <div class="text-one">Railway@gmail.com</div>
        <div class="text-two">Sachin@gmail.com</div>
      </div>
    </div>
    <div class="right-side">
      <div class="topic-text">Send us a message</div>
      <p>If you have any kind of a problem on our any thing pleace let us know.</p>
    <form action="#">
      <div class="input-box">
        <input type="text" placeholder="Enter your name">
      </div>
      <div class="input-box">
        <input type="text" placeholder="Enter your email">
      </div>
      <div class="input-box message-box">
        <input type="text" name="" id="" placeholder="Enter Your Massage">
      </div>
      <div class="button">
        <input type="button" value="Send Now" >
      </div>
    </form>
  </div>
  </div>
</div>
</div>


</body>
</html>