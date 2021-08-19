<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!-- html5 Declaration -->
<!DOCTYPE>
<html>
<head>
<!-- All Meta tags -->
    <meta charset = "utf-8">
    <meta charset="ISO-8859-1">
    <meta name = "viewport" content = "width = device-width, initial-scale = 1, shrink-to-fit = no">

<!-- Bootstrap CSS and other CSS files-->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<!-- Bootstrap JS and other JS files-->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" ></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" ></script> 
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" ></script>

<!--title tag-->
<title>Admin Page</title>
<style>
footer {
  text-align: center;
  padding: 3px;
  background-color: grey;
  color: yellow;
  margin-top:600px;
}
body{
 background-image: url("hodimage.jpg");
}
</style>
</head>
<body>
<!-- Page Header start-->
<div class="container-fluid">
<div class="row">
<div class="col-md-12 text-center text-white bg-dark" ><h1 id="h">Internal Assesment Portal</h1></div>
</div>
<!--start navbar-->
<nav class="navbar navbar-expand-sm navbar-dark bg-info">
  
  <a href="#" class="navbar-brand text-light">Welcome, Admin</a>
  
  <button class="navbar-toggler" data-toggle="collapse" data-target="#m">
  <span class="navbar-toggler-icon"></span>
  
  </button>
  <div id="m" class="collapse navbar-collapse ">
  <ul class="navbar-nav ml-auto">
     <li class="nav-item "><a class="nav-link text-dark waves-effect waves-light">Home &nbsp;&nbsp;&nbsp;&nbsp;</a></li>
	 <li class="nav-item"><a class="nav-link text-dark" href="adminprofile.jsp">Profile&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
	 <li class="nav-item dropdown"><a class="nav-link dropdown-toggle text-dark" data-toggle="dropdown">Hod</a>
	 <!-- desinging dropdown start-->
	  <ul class="dropdown-menu ">
	      <li><a href="adminaddhod.jsp" class="dropdown-item text-primary" >Add Hod</a> </li>
		   <li><a href="adminedithod.jsp" class="dropdown-item text-primary">Edit Hod</a> </li>
		    <li><a href="admindeletehod.jsp" class="dropdown-item text-primary">Delete Hod</a> </li>	 
	  </ul>	 
	 <!-- dropdown end-->
	 </li>
	 
	 <li class="nav-item "><a class="nav-link text-dark " href="adminchangepassword.jsp">Change Password&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
	 <li class="nav-item"><a class="nav-link text-dark" href="adminlogin.jsp">Logout&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
  </ul>
  </div>
</nav>
</div>
</div>


    <!--footer -->
	   <footer>
  <p> Copyright2020@Developed by Nitish under Guidance of Mr.Anand Kr.Srivastav</p>
</footer>
<!--Footer end-->
</body>
</html>
