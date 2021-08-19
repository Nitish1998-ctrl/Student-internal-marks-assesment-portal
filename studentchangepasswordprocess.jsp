<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%
String name=request.getParameter("uname");
String oldpass=request.getParameter("upassword");
String newpass=request.getParameter("newpassword");
String connurl =   "jdbc:oracle:thin:@localhost:1521:xe";
Connection con=null;
String pass="";
String id="";
try{
Class.forName("oracle.jdbc.driver.OracleDriver");
con = DriverManager.getConnection(connurl, "system", "system");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from studentregistrationform where password='"+oldpass+"'");
while(rs.next()){
id=rs.getString(1);
pass=rs.getString(3);
}
System.out.println(id+ " " +pass);
if(pass!=oldpass){
Statement st1=con.createStatement();
int i=st1.executeUpdate("update studentregistrationform set password='"+newpass+"',confirmpassword='"+newpass+"' where username='"+id+"'");
out.println("Password changed successfully <a href='studenthome.jsp'> Back to Home Page</a>.");
st1.close();
con.close();
}
else{
out.println("Invalid Current Password");
}
}
catch(Exception e){
out.println(e);
}
%>