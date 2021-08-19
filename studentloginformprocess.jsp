<%-- <%@page import="studentloginform.RegisterDao"%>  
<jsp:useBean id="obj" class="studentloginform.User"/>  
  
<jsp:setProperty property="*" name="obj"/>  
  
<%  
boolean status=RegisterDao.register(obj);  
if(status) 
{
out.print("You r successfuly logged in"); 
session.setAttribute("session","TRUE");
}

else
	out.print("Some Error has occured, Please try again later...");
%>
<%
String username=request.getParameter("username");
session.putValue("userid",username);
			
String password=request.getParameter("password");
			
			
if(("password").equals(password)&&("username").equals(username))
{ 
	response.sendRedirect("studenthome.jsp"); 
}
else{
out.println("Invalid password or username.");
}
%>
<%String username1=request.getParameter("uname"); 
String password2=request.getParameter("psw"); 
if(username.equals("nitish") && password.equals("giri") ) 
{ 
	session.setAttribute("uname",username); 
	response.sendRedirect("studenthome.jsp"); 
	
	
} 
else {
	out.print("Some Error has occured, Please try again later...");
	
}
--%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String username=request.getParameter("uname");
String password=request.getParameter("upassword");
			
			
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
Statement st= con.createStatement();
ResultSet rs=st.executeQuery("select * from studentregistrationform where username='"+username+"' and password='"+password+"' ");
try{
	 if (rs.next()) {
	        session.setAttribute("userid", username);
	      
	        response.sendRedirect("studenthome.jsp");
	    } else {
	        out.println("Invalid Password or Username <a href='studentloginform.jsp'>Try Again</a>");
	    }
}
catch (Exception e) {
e.printStackTrace();
}
%>
