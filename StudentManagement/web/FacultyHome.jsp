
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
		</div>
		<div class="logoimg">
			<img src="adminimg.jpg" alt="logo" style="width:205px;height:83px;">
		</div>
		<div class="adminmenu">
		<ul>
		<li>
		<a href="studentprofile.jsp">Profile  </a><br></li>
		<li>
		<a href="studentlist.jsp">Students Details  </a></li>
		</ul>
			
		</div>
		<div class="mainmenu">
			<div class="label">
				 <h3>about us</h3>
			</div>
			<div class="niitimage">
				<img alt="niitimg" src="niitimg.jpg">
			</div>
			<p align="justify">
					NIIT is a leading Global Talent Development Corporation,
			building skilled manpower pool for global industry 
			requirements. The company which was set up in 1981, to 
			help the nascent IT industry overcome its human resource 
			challenges, has today grown to be amongst world's leading 
			talent development companies offering learning solutions to
			Individuals, Enterprises and Institutions across 40 countries.
			Leading IT journal Dataquest has conferred upon NIIT the "Top 
			IT Training Company" award successively for the past 20 years, 
			since the inception of this category.<br><br>
			NIIT's training solutions in IT, Banking, Finance and Insurance, 
			Knowledge Process Outsourcing (KPO), Business Process Management(BPM),
			Executive Management Education, Vocational Skills, School Learning 
			Solutions and Communication and Professional Life Skills has impacted 
			over 35 million learners since inception. NIIT's  expertise in learning 
			content development, training delivery and education process management 
			make it the most preferred training partner, worldwide.
			</p>
		
		</div>	
	</body>
</html>
<%
    }
    %>