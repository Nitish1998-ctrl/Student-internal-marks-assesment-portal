<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String name=request.getParameter("uname");
String password=request.getParameter("upassword");
			
			
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
Statement st= con.createStatement();
ResultSet rs=st.executeQuery("select * from adminregistrationform where name='"+name+"' and password='"+password+"' ");
try{
	 if (rs.next()) {
	        session.setAttribute("userid", name);
	      
	        response.sendRedirect("Admin.jsp");
	    } else {
	        out.println("Invalid Password or Username <a href='adminlogin.jsp'>Try Again</a>");
	    }
}
catch (Exception e) {
e.printStackTrace();
}
%>