<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String name=request.getParameter("uname");
String gender= request.getParameter("ugender");
String email=request.getParameter("uemail");
String password=request.getParameter("upassword");
String confirmpassword=request.getParameter("uconfirmpassword");

try
{
	Connection connection = null;
    Class.forName("oracle.jdbc.driver.OracleDriver");
    connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
	Statement statement = connection.createStatement();
	String command = "INSERT into adminregistrationform(name,gender,email,password,confirmpassword)values('"+name+"','"+gender+"','"+email+"','"+password+"','"+confirmpassword+"')";
    statement.executeUpdate(command);
	out.println("Thank you for register ! Please <a href='adminlogin.jsp'> Now Login</a> to continue.");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}

%>