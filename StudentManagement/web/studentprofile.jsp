
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
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="BusinessObjects.StudProfile,TransferObjects.*"%>
 
 <jsp:useBean id="dao" class="BusinessObjects.StudProfile" scope="application"></jsp:useBean>
 <jsp:useBean id="bean" class="TransferObjects.LoginBean" scope="application"></jsp:useBean>
 
 <jsp:setProperty property="username" name="bean" param="studentname"/>
 
 <jsp:setProperty property="usertype" name="bean" param="usertype"/>
 <jsp:setProperty property="password" name="bean" param="studentpassword"/>
 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>My profile</title>
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
	<a href="studentprofile.jsp">Profile  </a><br></li>
		<li>
		<a href="courseview.jsp">Course Information</a></li>
</ul>
</div>
<div class="mainmenu">
<div class="label">
<h3>My Profile</h3>
</div>
<div class="adding" >
           
    <div class="recordslist">
    <div class="recordlabels">
    <form method="POST" name="form">  
        <table style="text-align: center">
            <div class="tableheader">
                <tr class="border">
                <th class="border1"> ID</th>
                <th class="border2">UserName</th>
                <th class="border2">Password</th>
                <th class="border2">Last Name</th>
                <th class="border2">First Name</th>
                <th class="border6">Course</th>
                <th class="border2">Mobile</th>
                <th class="border8">Address</th>
                </tr>
            </div>
            <%
            StudProfile obj=new StudProfile();
            ResultSet rs1=obj.ProfileRecords(request);
            session = request.getSession(false);
            String uname=(String)session.getAttribute("username");
            out.print("Welcome  "+uname);
            if(rs1.next())
            {
            do
             {
             %>
             
                <tr id="valuser">
                    <td id="free" ><%=rs1.getInt(1) %></td>
                    <td id="users" class="idm"><%=rs1.getString(2) %></td>
                    
                    <td><%=rs1.getString(3) %></td>
                    <td><%=rs1.getString(4) %></td>
                    <td><%=rs1.getString(5) %></td>
                    <td><%=rs1.getString(6) %></td>
                    <td><%=rs1.getString(7) %></td>
                    <td><%=rs1.getString(8) %></td>
                    
                </tr>
                <%
		}while(rs1.next());
             }
		else
		{
		%>
		<tr>
                    <td colspan=10 align="center">No record Found</td>
                </tr>
		<%
		}
		%>
      </table>
    </form>
     
</div>
</body>
</html>
<%
    }
    %>