<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String rollno=request.getParameter("urollno");

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
<title>Show_Students</title>
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

   JotForm.prepareCalculationsOnTheFly([null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,{"name":"heading","qid":"77","text":"Student's List","type":"control_head"}]);
   setTimeout(function() {
JotForm.paymentExtrasOnTheFly([null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,{"name":"heading","qid":"77","text":"Student's List","type":"control_head"}]);}, 20); 
</script>
</head>
<body>
<form class="jotform-form" action="https://submit.jotform.com/submit/202504866498465/" method="post" name="form_202504866498465" id="202504866498465" accept-charset="utf-8" autocomplete="on">
  <input type="hidden" name="formID" value="202504866498465" />
  <input type="hidden" id="JWTContainer" value="" />
  <input type="hidden" id="cardinalOrderNumber" value="" />
  <div role="main" class="form-all">
    <ul class="form-section page-section">
      <li id="cid_77" class="form-input-wide" data-type="control_head">
        <div class="form-header-group  header-default">
          <div class="header-text httac htvam">
            <h2 id="header_77" class="form-header" data-component="header">
              Student&#x27;s List
            </h2>
            <div id="subHeader_77" class="form-subHeader">
              View
            </div>
          </div>
        </div>
      </li>
      <li style="display:none">
        Should be Empty:
        <input type="text" name="website" value="" />
      </li>
    </ul>
  </div><br><br>
  
<div> 
   <table border="1" width="100%">  
    <tr><td>Roll_No</td><td>Name</td><td>Admission_No</td><td>Email</td>  
    <td>Mob_No</td><td>D_O_B</td><td>Branch</td><td>Year</td><td>Section</td><td>Semester</td><td>Subject1</td>
     <td>Subject2</td><td>Subject3</td><td>Subject4</td><td>Subject5</td><td>Subject6</td>
     </tr>    
<%-- <!DOCTYPE html>
<html>
<body>

<h1>Student's List</h1>
<table border="1">
<tr>
<td>Roll no</td>
<td>name</td>
<td>admission number</td>
<td>Email</td>
<td>mobile number</td>
<td>date of birth</td>
<td>branch</td>
<td>year</td>
<td>section</td>
<td>semester</td>
<td>subject1</td>
<td>subject2</td>
<td>subject3</td>
<td>subject4</td>
<td>subject5</td>
<td>subject6</td>


</tr>

--%>
<%
try{
connection = DriverManager.getConnection(connectionUrl, userid, password);
statement=connection.createStatement();
String sql ="select * from students";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getLong(1) %></td>
<td><%=resultSet.getString(2) %></td>
<td><%=resultSet.getString(3) %></td>
<td><%=resultSet.getString(4) %></td>
<td><%=resultSet.getLong(5) %></td>
<td><%=resultSet.getString(6) %></td>
<td><%=resultSet.getString(7) %></td>
<td><%=resultSet.getInt(8) %></td>
<td><%=resultSet.getString(9) %></td>
<td><%=resultSet.getInt(10) %></td>
<td><%=resultSet.getString(11) %></td>
<td><%=resultSet.getString(12) %></td>
<td><%=resultSet.getString(13) %></td>
<td><%=resultSet.getString(14) %></td>
<td><%=resultSet.getString(15) %></td>
<td><%=resultSet.getString(16) %></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
</html>