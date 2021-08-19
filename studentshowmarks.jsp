<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String username=request.getParameter("uname");

String driver = "oracle.jdbc.driver.OracleDriver";
String connectionUrl = "jdbc:oracle:thin:@localhost:1521:xe";
String userid = "system";
String password = "system";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html class="supernova"><head>
<meta charset="ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="alternate" type="application/json+oembed" href="https://www.jotform.com/oembed/?format=json&amp;url=https%3A%2F%2Fform.jotform.com%2F202504866498465" title="oEmbed Form">
<link rel="alternate" type="text/xml+oembed" href="https://www.jotform.com/oembed/?format=xml&amp;url=https%3A%2F%2Fform.jotform.com%2F202504866498465" title="oEmbed Form">
<meta property="og:title" content="New User Request Form" >
<meta property="og:url" content="https://form.jotform.com/202504866498465" >
<meta property="og:description" content="Please click the link to complete this form.">
<meta name="slack-app-id" content="AHNMASS8M">
<link rel="shortcut icon" href="https://cdn.jotfor.ms/favicon.ico">
<link rel="canonical" href="https://form.jotform.com/202504866498465" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=2.0, user-scalable=1" />
<meta name="HandheldFriendly" content="true" />
<title>Student_Marksheet</title>
<link href="https://cdn.jotfor.ms/static/formCss.css?3.3.20098" rel="stylesheet" type="text/css" />
<link type="text/css" media="print" rel="stylesheet" href="https://cdn.jotfor.ms/css/printForm.css?3.3.20098" />
<link type="text/css" rel="stylesheet" href="https://cdn.jotfor.ms/css/styles/nova.css?3.3.20098" />
<link type="text/css" rel="stylesheet" href="https://cdn.jotfor.ms/themes/CSS/54be8d1c700cc4d5368b4567.css?themeRevisionID=5cf3a162dd9c567eaf536421"/>
<link type="text/css" rel="stylesheet" href="https://cdn.jotfor.ms/css/styles/payment/payment_feature.css?3.3.20098" />
<style type="text/css">
    .form-label-left{
        width:150px;
    }
    .form-line{
        padding-top:2px;
        padding-bottom:2px;
    }
    .form-label-right{
        width:150px;
    }
    body, html{
        margin:0;
        padding:0;
        background:rgb(207, 204, 200);
    }

    .form-all{
        margin:0px auto;
        padding-top:0px;
        width:690px;
        color:#555 !important;
        font-family:'Tahoma';
        font-size:14px;
    }
</style>

<script src="https://cdn.jotfor.ms/static/prototype.forms.js" type="text/javascript"></script>
<script src="https://cdn.jotfor.ms/static/jotform.forms.js?3.3.20098" type="text/javascript"></script>
<script type="text/javascript">
	JotForm.init(function(){
	JotForm.newDefaultTheme = false;
	JotForm.newPaymentUIForNewCreatedForms = false;
    /*INIT-END*/
	});

   JotForm.prepareCalculationsOnTheFly([null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,{"name":"heading","qid":"80","text":"Subject Marks_ST1","type":"control_head"},{"name":"heading81","qid":"81","text":"Subject Marks_ST2","type":"control_head"},null,{"name":"heading83","qid":"83","text":"Subject Marks_PUE","type":"control_head"},{"name":"heading84","qid":"84","text":"Subject Marks_ReST","type":"control_head"}]);
   setTimeout(function() {
JotForm.paymentExtrasOnTheFly([null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,{"name":"heading","qid":"80","text":"Subject Marks_ST1","type":"control_head"},{"name":"heading81","qid":"81","text":"Subject Marks_ST2","type":"control_head"},null,{"name":"heading83","qid":"83","text":"Subject Marks_PUE","type":"control_head"},{"name":"heading84","qid":"84","text":"Subject Marks_ReST","type":"control_head"}]);}, 20); 
</script>
</head>
<body>
<form class="jotform-form" action="https://submit.jotform.com/submit/202504866498465/" method="post" name="form_202504866498465" id="202504866498465" accept-charset="utf-8" autocomplete="on">
<center><h1><u><i>Welcome To Your Marksheet</i></u></h1></center><br>
  <input type="hidden" name="formID" value="202504866498465" />
  <input type="hidden" id="JWTContainer" value="" />
  <input type="hidden" id="cardinalOrderNumber" value="" />
  <div role="main" class="form-all">
    <ul class="form-section page-section">
      <li id="cid_80" class="form-input-wide" data-type="control_head">
        <div class="form-header-group  header-default">
          <div class="header-text httac htvam">
            <h2 id="header_80" class="form-header" data-component="header">
              Subject Marks_ST1
            </h2>
          </div>
        </div>
		  <div> 
      </li>
	  </ul>
	  </div><br>
	  <div> 
   <table border="1" width="100%">  
    <tr>
    <th>Name</th><th>Email</th><th>Roll_no</th><th>Admission_no</th>  
    <th>mobile_number</th><th>Date_Of_Birth</th><th>Branch</th><th>year</th><th>Section</th><th>Semester</th><th>Subject1</th>
    <th>subject2</th><th>subject3</th><th>subject4</th><th>subject5</th><th>Subject6</th><th>Max_marks</th><th>Marks</th><th>Remarks</th>
    </tr>    
    
<%
try{
connection = DriverManager.getConnection(connectionUrl, userid, password);
statement=connection.createStatement();
String sql ="select * from marksst1";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString(1) %></td>
<td><%=resultSet.getString(2) %></td>
<td><%=resultSet.getLong(3) %></td>
<td><%=resultSet.getString(4) %></td>
<td><%=resultSet.getLong(5) %></td>
<td><%=resultSet.getString(6) %></td>
<td><%=resultSet.getString(7) %></td>
<td><%=resultSet.getInt(8) %></td>
<td><%=resultSet.getString(9) %></td>
<td><%=resultSet.getInt(10) %></td>
<td><%=resultSet.getInt(11) %></td>
<td><%=resultSet.getInt(12) %></td>
<td><%=resultSet.getInt(13) %></td>
<td><%=resultSet.getInt(14) %></td>
<td><%=resultSet.getInt(15) %></td>
<td><%=resultSet.getInt(16) %></td>
<td><%=resultSet.getInt(17) %></td>
<td><%=resultSet.getInt(18) %></td>
<td><%=resultSet.getString(19)%></td>

</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%> 
    
     </table>  
   <br/>
 </div><br>
	
	  
	  <div role="main" class="form-all">
    <ul class="form-section page-section">
      <li id="cid_81" class="form-input-wide" data-type="control_head">
        <div class="form-header-group  header-default">
          <div class="header-text httac htvam">
            <h2 id="header_81" class="form-header" data-component="header">
              Subject Marks_ST2
            </h2>
          </div>
        </div>
      </li>
	  </ul>
	  </div><br>
	    <div> 
   <table border="1" width="100%">  
    <tr>
    
    <th>Name</th><th>Email</th><th>Roll_no</th><th>Admission_no</th>  
    <th>mobile_number</th><th>Date_Of_Birth</th><th>Branch</th><th>year</th><th>Section</th><th>Semester</th><th>Subject1</th>
    <th>subject2</th><th>subject3</th><th>subject4</th><th>subject5</th><th>Subject6</th><th>Max_marks</th><th>Marks</th><th>Remarks</th>
    </tr> 
    
    
<%
try{
connection = DriverManager.getConnection(connectionUrl, userid, password);
statement=connection.createStatement();
String sql ="select * from marksst2 ";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString(1) %></td>
<td><%=resultSet.getString(2) %></td>
<td><%=resultSet.getLong(3) %></td>
<td><%=resultSet.getString(4) %></td>
<td><%=resultSet.getLong(5) %></td>
<td><%=resultSet.getString(6) %></td>
<td><%=resultSet.getString(7) %></td>
<td><%=resultSet.getInt(8) %></td>
<td><%=resultSet.getString(9) %></td>
<td><%=resultSet.getInt(10) %></td>
<td><%=resultSet.getInt(11) %></td>
<td><%=resultSet.getInt(12) %></td>
<td><%=resultSet.getInt(13) %></td>
<td><%=resultSet.getInt(14) %></td>
<td><%=resultSet.getInt(15) %></td>
<td><%=resultSet.getInt(16) %></td>
<td><%=resultSet.getInt(17) %></td>
<td><%=resultSet.getInt(18) %></td>
<td><%=resultSet.getString(19)%></td>

</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>    
     </table>  
   <br/>
 </div><br>
	  
	  
    <div role="main" class="form-all">
    <ul class="form-section page-section">
      <li id="cid_83" class="form-input-wide" data-type="control_head">
        <div class="form-header-group  header-default">
          <div class="header-text httac htvam">
            <h2 id="header_83" class="form-header" data-component="header">
              Subject Marks_PUE
            </h2>
          </div>
        </div>
      </li>
	  </ul>
	</div><br>
	  <div> 
   <table border="1" width="100%">  
    <tr>
    <th>Name</th><th>Email</th><th>Roll_no</th><th>Admission_no</th>  
    <th>mobile_number</th><th>Date_Of_Birth</th><th>Branch</th><th>year</th><th>Section</th><th>Semester</th><th>Subject1</th>
    <th>subject2</th><th>subject3</th><th>subject4</th><th>subject5</th><th>Subject6</th><th>Max_marks</th><th>Marks</th><th>Remarks</th>
    </tr> 
    
    <%
try{
connection = DriverManager.getConnection(connectionUrl, userid, password);
statement=connection.createStatement();
String sql ="select * from marks ";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString(1) %></td>
<td><%=resultSet.getString(2) %></td>
<td><%=resultSet.getLong(3) %></td>
<td><%=resultSet.getString(4) %></td>
<td><%=resultSet.getLong(5) %></td>
<td><%=resultSet.getString(6) %></td>
<td><%=resultSet.getString(7) %></td>
<td><%=resultSet.getInt(8) %></td>
<td><%=resultSet.getString(9) %></td>
<td><%=resultSet.getInt(10) %></td>
<td><%=resultSet.getInt(11) %></td>
<td><%=resultSet.getInt(12) %></td>
<td><%=resultSet.getInt(13) %></td>
<td><%=resultSet.getInt(14) %></td>
<td><%=resultSet.getInt(15) %></td>
<td><%=resultSet.getInt(16) %></td>
<td><%=resultSet.getInt(17) %></td>
<td><%=resultSet.getInt(18) %></td>
<td><%=resultSet.getString(19)%></td>

</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>   
     </table>  
   <br/>
 </div><br>
	
	
	<div role="main" class="form-all">
    <ul class="form-section page-section">
      <li id="cid_84" class="form-input-wide" data-type="control_head">
        <div class="form-header-group  header-default">
          <div class="header-text httac htvam">
            <h2 id="header_84" class="form-header" data-component="header">
              Subject Marks_ReST
            </h2>
          </div>
        </div>
      </li>
      <li style="display:none">
        Should be Empty:
        <input type="text" name="website" value="" />
      </li>
    </ul>
  </div><br>
    <div> 
   <table border="1" width="100%">  
    <tr>
        <th>Name</th><th>Email</th><th>Roll_no</th><th>Admission_no</th>  
    <th>mobile_number</th><th>Date_Of_Birth</th><th>Branch</th><th>year</th><th>Section</th><th>Semester</th><th>Subject1</th>
    <th>subject2</th><th>subject3</th><th>subject4</th><th>subject5</th><th>Subject6</th><th>Max_marks</th><th>Marks</th><th>Remarks</th>
    
    </tr>   
    
<%
try{
connection = DriverManager.getConnection(connectionUrl, userid, password);
statement=connection.createStatement();
String sql ="select * from marksrest ";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString(1) %></td>
<td><%=resultSet.getString(2) %></td>
<td><%=resultSet.getLong(3) %></td>
<td><%=resultSet.getString(4) %></td>
<td><%=resultSet.getLong(5) %></td>
<td><%=resultSet.getString(6) %></td>
<td><%=resultSet.getString(7) %></td>
<td><%=resultSet.getInt(8) %></td>
<td><%=resultSet.getString(9) %></td>
<td><%=resultSet.getInt(10) %></td>
<td><%=resultSet.getInt(11) %></td>
<td><%=resultSet.getInt(12) %></td>
<td><%=resultSet.getInt(13) %></td>
<td><%=resultSet.getInt(14) %></td>
<td><%=resultSet.getInt(15) %></td>
<td><%=resultSet.getInt(16) %></td>
<td><%=resultSet.getInt(17) %></td>
<td><%=resultSet.getInt(18) %></td>
<td><%=resultSet.getString(19)%></td>

</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%> 
     
     </table>  
   <br/>
 </div><br>
  
  <script>
  JotForm.showJotFormPowered = "new_footer";
  </script>
  <script>
  JotForm.poweredByText = "Powered by JotForm";
  </script>
  <input type="hidden" id="simple_spc" name="simple_spc" value="202504866498465" />
  <script type="text/javascript">
  document.getElementById("si" + "mple" + "_spc").value = "202504866498465-202504866498465";
  </script>
  
</form></body>
</html>
<script type="text/javascript">JotForm.ownerView=true;</script>
