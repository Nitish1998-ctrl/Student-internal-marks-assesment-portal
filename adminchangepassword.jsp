<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
/* Style all input fields */
input {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 6px;
  margin-bottom: 16px;
}

/* Style the submit button */
input[type=submit] {
  background-color: #4CAF50;
  color: white;
}

/* Style the container for inputs */
.container {
  background-color: #f1f1f1;
  padding: 20px;
}

/* The message box is shown when the user clicks on the password field */
#message {
  display:none;
  background: #f1f1f1;
  color: #000;
  position: relative;
  padding: 20px;
  margin-top: 10px;
}

#message p {
  padding: 10px 35px;
  font-size: 18px;
}

/* Add a green text color and a checkmark when the requirements are right */
.valid {
  color: green;
}

.valid:before {
  position: relative;
  left: -35px;
  content: "âœ”";
}

/* Add a red text color and an "x" when the requirements are wrong */
.invalid {
  color: red;
}

.invalid:before {
  position: relative;
  left: -35px;
  content: "âœ–";
}
</style>

</head>
<body>
<center>
<h1><i>Change Password</i></h1>
<h4>Try To Change The Password.</h4>
</center>

<div class="container">
  <form name="f1"  action="adminchangepasswordprocess.jsp">
  
  <label for="name">Name</label>
    <input type="text" id="name" name="uname"  placeholder="Enter Your Full Name"required>
  
     <label for="psw">Old Password</label>
    <input type="password" id="psw" name="upassword" placeholder="Enter Your Old Password" required>
	
	 <label for="psw">New Password</label>
    <input type="password" id="cpsw" name="newpassword" placeholder="Enter Your New Passwords"  required>
	
    
    <input type="submit" value="Submit">
  </form>
</div>


</body>
</html>