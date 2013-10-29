
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

<%@page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
    <%@page import ="java.util.*" %>
    <%@page import="javax.servlet.http.HttpSession"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Administrator Home Page</title>
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
			<li><a href="addcourse.jsp">Add Courses  </a></li>
			
		</ul>
		</div>
<div class="mainmenu">
<div class="label">
<h3>Add Course</h3>
</div>
     <form action="addcoursedetails.jsp" method="post">
	<div class="addcourse" >
            <p>Add Course :</p>
            <textarea  rows="8" cols="50" name="coursetxt">
		</textarea>
</div>
   
<div class="addbutton">
<input type="submit" value="Add" style="cursor:pointer">
<input type="reset" style="cursor:pointer">
</div>
    </form>
</body>
</html>
<%
    }
    %>