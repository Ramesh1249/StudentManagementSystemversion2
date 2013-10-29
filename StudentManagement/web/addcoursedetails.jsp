
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
 
 <jsp:useBean id="dao" class="BusinessObjects.Addcoursedao" scope="application"></jsp:useBean>
 <jsp:useBean id="bean" class="TransferObjects.AddstudBean" scope="application"></jsp:useBean>
 <jsp:setProperty property="coursetxt" name="bean" param="coursetxt"/>
 
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
<li><a href="addstudents.jsp">Add Courses  </a></li>

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
    	out.println("<b><a href=admincourse.jsp>View added details </a></b>");
    }
    else
    {
    	out.println("<b>Data Cannot Added!!!!</b><br>");
    	out.println("<b><a href=addcourse.jsp>GO BACK</a></b>");
    	
    }
%>
</div>
</body>
</html>
<%
    }
    %>