<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!-- html5 Declaration -->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html lang="en-US"><head>
<!-- All Meta tags -->
    <meta charset = "utf-8">
    <meta name = "viewport" content = "width = device-width, initial-scale = 1, shrink-to-fit = no">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />


<!-- Bootstrap CSS and other CSS files-->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<!-- Bootstrap JS and other JS files-->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" ></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" ></script> 
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" ></script>



<!--title tag-->
<title>facultydashboard</title>


<style type="text/css">
    
	
	footer {
  text-align: center;
  padding: 3px;
  background-color: grey;
  color: yellow;
  margin-top:1px;
}

* {box-sizing: border-box;}
body {font-family: Verdana, sans-serif;}
.mySlides {display: none;}
img {vertical-align: middle;}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}

.row {  
  display: -ms-flexbox; /* IE10 */
  display: flex;
  -ms-flex-wrap: wrap; /* IE10 */
  flex-wrap: wrap;
  margin-left:5px;
}

/* Create two unequal columns that sits next to each other */
/* Sidebar/left column */
.side {
  -ms-flex: 30%; /* IE10 */
  flex: 30%;
  background-color: #f1f1f1;
  padding: 20px;
}

/* Fake image, just for this example */
.fakeimg {
  background-color: #aaa;
  width: 100%;
  padding: 20px;
}

img {
   display: block;
  height: auto;
  padding: 5px;
  width: 70%;
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
  
  <a href="#" class="navbar-brand text-light">Welcome, Faculties </a>
  
  <button class="navbar-toggler" data-toggle="collapse" data-target="#m">
  <span class="navbar-toggler-icon"></span>
  
  </button>
  <div id="m" class="collapse navbar-collapse ">
  <ul class="navbar-nav ml-auto">
     <li class="nav-item "><a class="nav-link text-dark waves-effect waves-light">Home &nbsp;&nbsp;&nbsp;&nbsp;</a></li>
	 <li class="nav-item"><a class="nav-link text-dark" href="Teacherprofile.jsp">Profile&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
	 <li class="nav-item dropdown"><a class="nav-link dropdown-toggle text-dark" data-toggle="dropdown">Student</a>
	 <!-- desinging dropdown start-->
	  <ul class="dropdown-menu ">
	      <li><a href="Showstudents.jsp" class="dropdown-item text-primary" >Show Student</a> </li>
	       <li><a href="addstudents.jsp" class="dropdown-item text-primary">Add Student</a> </li>
		   <li><a href="deletestudents.jsp" class="dropdown-item text-primary">Delete Student</a> </li>
		    <li><a href="updatestudent.jsp" class="dropdown-item text-primary">Update Student</a> </li>	 
	  </ul>	 
	 <!-- dropdown end-->
	 </li>
	 <li class="nav-item dropdown"><a class="nav-link dropdown-toggle text-dark" data-toggle="dropdown">Marks</a>
	 
	 <!-- desinging dropdown start-->
	  <ul class="dropdown-menu ">
	      <li><a href="Facultyuploadmarks.jsp" class="dropdown-item text-primary" >Upload Marks_Pue</a> </li>
		   <li><a href="facultydeletemarks.jsp" class="dropdown-item text-primary">Delete Marks_Pue</a> </li>
		    <li><a href="facultyupdatemarks.jsp" class="dropdown-item text-primary">Update Marks_Pue</a> </li>
		    
		    <li><a href="facultyuploadmarksst1.jsp" class="dropdown-item text-primary" >Upload Marks_ST1</a> </li>
		   <li><a href="facultydeletemarksst1.jsp" class="dropdown-item text-primary">Delete Marks_ST1</a> </li>
		    <li><a href="facultyupdatemarksst1.jsp" class="dropdown-item text-primary">Update Marks_ST1</a> </li>
		    
		    <li><a href="facultyuploadmarksst2.jsp" class="dropdown-item text-primary" >Upload Marks_ST2</a> </li>
		   <li><a href="facultydeletemarksst2.jsp" class="dropdown-item text-primary">Delete Marks_ST2</a> </li>
		    <li><a href="facultyupdatemarksst2.jsp" class="dropdown-item text-primary">Update Marks_ST2</a> </li>
		    
		    <li><a href="facultyuploadmarksrest.jsp" class="dropdown-item text-primary" >Upload Marks_ReST</a> </li>
		   <li><a href="facultydeletemarksrest.jsp" class="dropdown-item text-primary">Delete Marks_ReST</a> </li>
		    <li><a href="facultyupdatemarksrest.jsp" class="dropdown-item text-primary">Update Marks_ReST</a> </li>
		    
	</ul>	 
	 <!-- dropdown end-->
	 
	 
	 
	 </li>
	 <li class="nav-item "><a class="nav-link text-dark " href="teacherchangepassword.jsp">Change Password&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
	 <li class="nav-item"><a class="nav-link text-dark" href="teacherlogin.jsp">Logout&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
  </ul>
  </div>
</nav>
</div> <br>
<div class="row">
  <div class="side">
    <h2><i><center><u>Home Page</u></center></i></h2><br>
    <h5>Profile:-</h5>
    <div class="fakeimg" style="height:610px;">
	<img src="teachers1.jpg" alt="Paris">
	</div>
	
	
    <p>Some text about me..</p>
    <h3>More Text</h3>
    <p>Hyeee.</p>
    <div class="fakeimg" style="height:670px;">
	<img src="teachers2.jpg" alt="Paris">
	</div><br>
	
	<div class="fakeimg" style="height:710px;">
	<img src="teachers3.jpg" alt="Paris">
	</div><br>
	
	<div class="fakeimg" style="height:710px;">
	<img src="teachers4.jpg" alt="Paris">
	</div><br>
 </div>
 

<!-- Page Header end-->
<!-- Page content start -->



<!-- Page contents end-->
<!-- All script code start -->


</div>
    <!--footer -->
      <footer>
  <p> Copyright2020@Developed by Nitish under Guidance of Mr.Anand Kr.Srivastav</p>
</footer>
<!--Footer end-->
</body>
</html>