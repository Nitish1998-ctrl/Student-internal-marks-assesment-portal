<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String name=request.getParameter("uname");
String uid= request.getParameter("uid");
long id=Long.parseLong(uid);
String umobilenumber=request.getParameter("umobilenumber");
long mobilenumber=Long.parseLong(umobilenumber);
String email=request.getParameter("uemail");
String subject1= request.getParameter("usubject1");
String subject2= request.getParameter("usubject2");
String subject3= request.getParameter("usubject3");
String uyear=request.getParameter("uyear");
int year=Integer.parseInt(uyear);
String section= request.getParameter("usection");
String usemester=request.getParameter("usemester");
int semester= Integer.parseInt(usemester);
String password=request.getParameter("upassword");
String confirmpassword=request.getParameter("uconfirmpassword");

try
{
	Connection connection = null;
    Class.forName("oracle.jdbc.driver.OracleDriver");
    connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
	Statement statement = connection.createStatement();
	String command = "INSERT into facultyregistrationform(name,id,mobilenumber,email,subject1,subject2,subject3,year,section,semester,password,confirmpassword)values('"+name+"','"+id+"','"+mobilenumber+"','"+email+"','"+subject1+"','"+subject2+"','"+subject3+"','"+year+"','"+section+"','"+semester+"','"+password+"','"+confirmpassword+"')";
    statement.executeUpdate(command);
	out.println("Thank you for register ! Please <a href='teacherlogin.jsp'> Now Login</a> to continue.");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}

%>