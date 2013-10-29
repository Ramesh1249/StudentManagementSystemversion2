
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
<title>Delete Faculty Details</title>
<link rel="stylesheet" type="text/css" href="Admin.css">
</head>

<body>

<div class="logo">
		<header>
			<h1>STUDENT MANAGEMENT SYSTEM</h1>
			</header>
</div>
<div class="logoimg">
	<img src="studentimg.jpg" alt="logo" style="width:205px;height:83px;position:fixed;">
</div>
<div class="adminmenu">
<ul style="list-style: none;">
<li><a href="Addfaculty.jsp">Add faculty Details   </a></li>
<li><a href="Updatefaculty.jsp">Update faculty Details</a></li>
<li><a href="Deletefaculty.jsp">Delete faculty Details</a></li>
</ul>
</div>
		<div class="mainmenu">
			<div class="label">
				 <h3>Delete Faculty Details</h3>
			</div>
                    <div class="recordslist">
                        <div class="recordlabels">
                            <label class="labels">
                                S.NO
                            </label>
                            <label class="labels">
                                UserName
                            </label>
                            <label class="labels">
                                FIrst Name
                            </label>
                            <label class="labels">
                                Last Name
                            </label>
                            <label class="labels">
                                Course
                            </label>
                            <label class="labels">
                                Address
                            </label>
                            <label class="labels">
                                Mobile
                            </label>
                        </div>
                        
                    </div>
		</div>
		<div>
		
		</div>

	
</body>
</html>
<%
    }
    %>