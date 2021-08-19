<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%

String name=request.getParameter("uname");
String department=request.getParameter("udepartment");
String email=request.getParameter("uemail");
String umobilenumber=request.getParameter("umobileno");
long mobilenumber=Long.parseLong(umobilenumber);
String uid=request.getParameter("uid");
long id= Long.parseLong(uid);



try
{
	Connection connection = null;
    Class.forName("oracle.jdbc.driver.OracleDriver");
    connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
	Statement statement = connection.createStatement();
	String command = "INSERT into adminaddhod(name,department,email,mobilenumber,id)values('"+name+"','"+department+"','"+email+"','"+mobilenumber+"','"+id+"')";
    statement.executeUpdate(command);
	out.println("Thank you for Adding ! Please <a href='Admin.jsp'> Now back to Homepage</a> to continue.");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}

%>