<%--<%@page import="studentforgotpassword.RegisterDao"  
<jsp:useBean id="obj" class="studentforgotpassword.User"/>  
  
<jsp:setProperty property="*" name="obj"/>  
  
<%  
int status=RegisterDao.register(obj);  
if(status>0)  
out.print("You are successfully registered");  
  
%> 

<% 
String newpassword=request.getParameter("newpsw"); 
String repassword=request.getParameter("repsw");
if(newpassword.equals("giri") && repassword.equals("giri")) 
{ 
	session.setAttribute("newpsw",newpassword); 
	response.sendRedirect("studenthome.jsp"); 
	
	
} 
else {
	out.print("Some Error has occured, Please try again later...");
	
}
%>
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%
String username=request.getParameter("uname");
String newpass=request.getParameter("newpsw");
String repass=request.getParameter("repsw");
String connurl =   "jdbc:oracle:thin:@localhost:1521:xe";
Connection con=null;
String pass="";
String id="";
try{
Class.forName("oracle.jdbc.driver.OracleDriver");
con = DriverManager.getConnection(connurl, "system", "system");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from studentregistrationform where username='"+username+"'");
while(rs.next()){
id=rs.getString(1);
pass=rs.getString(3);
}
System.out.println(id+ " " +pass);
if(newpass.equals(repass)){
Statement st1=con.createStatement();
int i=st1.executeUpdate("update studentregistrationform set password='"+newpass+"',confirmpassword='"+newpass+"' where username='"+id+"'");
out.println("Password changed successfully <a href='studentloginform.jsp'> Back to Home Page</a>.");
st1.close();
con.close();
}
else{
out.println("Password Doesn't Change");
}
}
catch(Exception e){
out.println(e);
}
%>