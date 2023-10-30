<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin</title>
    <link rel="stylesheet" href="./Style/style.css">
</head>
<body>
    <div class="nav">
        <h2>Admin Page</h2>
        <a href="../SignUp/login.jsp" Style="text-decoration: none;font-weight: 100px">LOG OUT</a>
    </div>
    <div class="content">
        <div class="class1" id="admin" onclick="location.href='./updateAdmin/UpdateAdmin.jsp'">
            <h2>Update Admins</h2>
            <img src="images/admin.png" alt="" width="300" height="250"><br>
            <span class="tooltiptext"><b>Use This Section To Manage Admins</b></span> 
        </div>
        
        <div class="class1" id="users" onclick="location.href='./UpdateUsers/UpdateUsers.jsp'">
            <h2>Update Users</h2>
            <img src="images/users.jpg" alt="" width="300" height="250">
            <span class="tooltiptext"><b>Use This Section To Manage Users</b></span>
        </div> 
        
        <div class="class1" id="users" onclick="location.href='./UpdateTrains/updateTrains.jsp'">
            <h2>Update Trains</h2>
            <img src="images/users.jpg" alt="" width="300" height="250">
            <span class="tooltiptext"><b>Use This Section To Manage Trains</b></span>
        </div>       
    </div>
</body>
</html> 



<!-- Creadted by @Sachin -->