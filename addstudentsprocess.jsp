<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%

String urollno= request.getParameter("urollno");
long rollno=Long.parseLong(urollno);
String name=request.getParameter("uname");
String admissionno=request.getParameter("uadmissionno");
String email=request.getParameter("uemail");
String umobilenumber=request.getParameter("umobileno");
long mobilenumber=Long.parseLong(umobilenumber);
String dob=request.getParameter("udob");
String branch=request.getParameter("ubranch");
String uyear=request.getParameter("uyear");
int year=Integer.parseInt(uyear);
String section= request.getParameter("usection");
String usemester=request.getParameter("usemester");
int semester= Integer.parseInt(usemester);
String subject1= request.getParameter("usubject1");
String subject2= request.getParameter("usubject2");
String subject3= request.getParameter("usubject3");
String subject4= request.getParameter("usubject4");
String subject5= request.getParameter("usubject5");
String subject6= request.getParameter("usubject6");


try
{
	Connection connection = null;
    Class.forName("oracle.jdbc.driver.OracleDriver");
    connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
	Statement statement = connection.createStatement();
	String command = "INSERT into students(rollno,name,admissionnumber,email,mobilenumber,dateofbirth,branch,year,section,semester,subject1,subject2,subject3,subject4,subject5,subject6)values('"+rollno+"','"+name+"','"+admissionno+"','"+email+"','"+mobilenumber+"','"+dob+"','"+branch+"','"+year+"','"+section+"','"+semester+"','"+subject1+"','"+subject2+"','"+subject3+"','"+subject4+"','"+subject5+"','"+subject6+"')";
    statement.executeUpdate(command);
	out.println("Thank you for Adding ! Please <a href='facultydashboard.jsp'> Now back to Homepage</a> to continue.");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}

%>