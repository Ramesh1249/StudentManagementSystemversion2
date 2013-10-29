
<%
    String uname=(String)session.getAttribute("username");
    if(uname==null)
    {
    %>
    <html>` 
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Management System</title>
<link rel="stylesheet" type="text/css" href="login.css">
</head>
<body onload="valid(event)">
	<div class="logo">
		<header>
			<div>
				<img src="oie_transparent.png" alt="logo" width="230" height="59">
			</div>
		</header>
	</div>
	<div class="logindiv">
            <div id="msg" style="text-align: center">Please Login to access the webpage</b>
            
            <a href="index.jsp">Click Here to Login</a>
            </div>
	</div>
    
    
    
	</body>
</html>
			
  <%    }else
      {
    
%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="BusinessObjects.*,TransferObjects.*"%>
 
 <jsp:useBean id="dao" class="BusinessObjects.SaveStudDao" scope="application"></jsp:useBean>
 <jsp:useBean id="bean" class="TransferObjects.SaveStudBean" scope="application"></jsp:useBean>
 <jsp:setProperty property="studId" name="bean" param="studentId"/>
 <jsp:setProperty property="userName" name="bean" param="studentname"/>
 <jsp:setProperty property="firstname" name="bean" param="firstname"/>
 <jsp:setProperty property="lastname" name="bean" param="studentname"/>
 <jsp:setProperty property="mobile" name="bean" param="mobile"/>
 <jsp:setProperty property="usertype" name="bean" param="usertype"/>
 <jsp:setProperty property="pasword" name="bean" param="studentpassword"/>
 <jsp:setProperty property="course" name="bean" param="studentcourse" />
 <jsp:setProperty property="address" name="bean" param="studentaddress" /> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Adding students</title>
<link rel="stylesheet" type="text/css" href="Admin.css">
</head>
<body>

<div class="logo">
        <header>
            <h1>STUDENT MANAGEMENT SYSTEM</h1>
            </header>
</div>
<div class="logoimg">
    <img src="studentimg.jpg" alt="logo" style="width:205px;height:83px;">
</div>
<div class="adminmenu">
<ul style="list-style: none;">
<li><a href="addstudents.jsp">Add students  </a></li>
<li><a href="updatestudents.jsp">update student details</a></li>
<li><a href="deletestudents.jsp">Delete student details</a></li>
</ul>
</div>
<div class="mainmenu">
<div class="label">
<h3>Add Students</h3>
</div>
<div class="adding" >
           

<%
    int Status=dao.addRecords(bean);
    if(Status>0)
    {
    	out.println("<b>Successfully Added the Data!!!!</b><br>");
    	out.println("<b><a href=updatestudents.jsp>View added details </a></b>");
    }
    else
    {
    	out.println("<b>Data Cannot Added!!!!</b><br>");
    	out.println("<b><a href=updatestudents.jsp>GO BACK</a></b>");
    	
    }
%>
</div>
</body>
</html>
<%
    }
    %>