

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*"%>

<%@ page import="java.sql.*" %>


<%

String name=request.getParameter("uname");
String email=request.getParameter("uemail");
String urollno= request.getParameter("urollno");
long rollno=Long.parseLong(urollno);
String admissionno=request.getParameter("uadmissionno");
String umobilenumber=request.getParameter("umobileno");
long mobilenumber=Long.parseLong(umobilenumber);
String dob=request.getParameter("udob");
String branch=request.getParameter("ubranch");
String uyear=request.getParameter("uyear");
int year=Integer.parseInt(uyear);
String section= request.getParameter("usection");
String usemester=request.getParameter("usemester");
int semester= Integer.parseInt(usemester);

String usubject1= request.getParameter("usubject1");
int subject1=Integer.parseInt(usubject1);

String usubject2= request.getParameter("usubject2");
int subject2=Integer.parseInt(usubject2);

String usubject3= request.getParameter("usubject3");
int subject3=Integer.parseInt(usubject3);

String usubject4= request.getParameter("usubject4");
int subject4=Integer.parseInt(usubject4);

String usubject5= request.getParameter("usubject5");
int subject5=Integer.parseInt(usubject5);

String usubject6= request.getParameter("usubject6");
int subject6=Integer.parseInt(usubject6);

String umaxmarks= request.getParameter("umaxmarks");
int maxmarks=Integer.parseInt(umaxmarks);

String umarks= request.getParameter("umarks");
int marks=Integer.parseInt(umarks);

String remarks= request.getParameter("uremarks");


try{
Connection conn = null;
Class.forName("oracle.jdbc.driver.OracleDriver").newInstance();
conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
Statement st=null;
st=conn.createStatement();
st.executeUpdate("update marksst2 set name='"+name+"',email='"+email+"',admissionnumber='"+admissionno+"',mobilenumber='"+mobilenumber+"',dateofbirth='"+dob+"',branch='"+branch+"',year='"+year+"',section='"+section+"',semester='"+semester+"',subject1='"+subject1+"',subject2='"+subject2+"',subject3='"+subject3+"',subject4='"+subject4+"',subject5='"+subject5+"',subject6='"+subject6+"',maxmarks='"+maxmarks+"',marks='"+marks+"',remarks='"+remarks+"' where rollno='"+rollno+"'");
out.println("Thank you for Updating ! Please <a href='facultydashboard.jsp'> Now back to Homepage</a> to continue.");
}
catch(Exception e){
System.out.println(e);
}
%>