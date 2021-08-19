<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete Data</title>
</head>
<body>
<form action="facultydeletemarksst2.jsp">
<table>
<tr>
<td>Enter Roll_No To Delete</td>
<td><input type="text" name="id"/></td>
</tr>
<tr>
<td></td>
<td><input type="submit" value="Delete" style="background-color:#ff0000;font-weight:bold;color:#ffffff;"/></td>
</tr>
</table>
</form>
<%! String driverName =  "oracle.jdbc.driver.OracleDriver";%>
<%!String url =   "jdbc:oracle:thin:@localhost:1521:xe";%>
<%!String user = "system";%>
<%!String psw = "system";%>
<%
String id = request.getParameter("id");
if(id != null)
{
Connection con = null;
PreparedStatement ps = null;
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql = "DELETE FROM marksst2 WHERE rollno="+id;
ps = con.prepareStatement(sql);
int i = ps.executeUpdate();
if(i > 0)
{%>
<%
out.println("Record Deleted Successfully ! Please <a href='facultydashboard.jsp'> Go Back</a> to Home.");
%>
<% 
}
else
{%>
<%
out.println("There is a problem in Deleting Record."); 
out.print("Check Manually in your Database");
} %>
<%
}
catch(SQLException sqe)
{
request.setAttribute("error", sqe);
out.println(sqe);
}
}
%>
</body>
</html>