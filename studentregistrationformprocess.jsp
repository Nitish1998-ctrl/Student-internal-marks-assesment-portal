<%-- -<%@page import="studentregistrationform.RegisterDao"%>  
<jsp:useBean id="obj" class="studentregistrationform.User"/>  
  
<jsp:setProperty property="*" name="obj"/>  
  
<%  
int status=RegisterDao.register(obj);  
if(status>0)  
out.print("You are successfully registered");  
  
%> 

<button type="button" class="cancelbtn" onClick="location.href='studentloginform.jsp'">Now Login</button>
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String uname=request.getParameter("uname");
String ucourse=request.getParameter("ucourse");
String ugender=request.getParameter("ugender");
String umobilenumber=request.getParameter("umobilenumber");
long mobilenumber=Long.parseLong(umobilenumber);
String address=request.getParameter("uaddress");
String email=request.getParameter("uemail");
String password=request.getParameter("upassword");
String confirmpassword=request.getParameter("uconfirmpassword");

try
{
	Connection connection = null;
    Class.forName("oracle.jdbc.driver.OracleDriver");
    connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
	Statement statement = connection.createStatement();
	String command = "INSERT into studentregistrationform(username,course,gender,mobilenumber,address,email,password,confirmpassword)values('"+uname+"','"+ucourse+"','"+ugender+"','"+mobilenumber+"','"+address+"','"+email+"','"+password+"','"+confirmpassword+"')";
    statement.executeUpdate(command);
	out.println("Thank you for register ! Please <a href='studentloginform.jsp'> Now Login</a> to continue.");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}

%>