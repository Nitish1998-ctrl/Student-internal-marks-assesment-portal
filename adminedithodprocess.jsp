

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*"%>

<%@ page import="java.sql.*" %>


<%

String name=request.getParameter("uname");
String department=request.getParameter("udepartment");
String email=request.getParameter("uemail");
String umobilenumber=request.getParameter("umobileno");
long mobilenumber=Long.parseLong(umobilenumber);
String uid=request.getParameter("uid");
long id= Long.parseLong(uid);



try{
Connection conn = null;
Class.forName("oracle.jdbc.driver.OracleDriver").newInstance();
conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
Statement st=null;
st=conn.createStatement();
st.executeUpdate("update adminaddhod set name='"+name+"',department='"+department+"',email='"+email+"',mobilenumber='"+mobilenumber+"' where id='"+id+"'");
out.println("Thank you for Updating ! Please <a href='Admin.jsp'> Now back to Homepage</a> to continue.");
}
catch(Exception e){
System.out.println(e);
}
%>