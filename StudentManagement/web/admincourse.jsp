
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

<%@page import="BusinessObjects.DataView"%>
<%@page import="java.sql.ResultSet"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
    <%@page import ="java.util.*" %>
    <%@page import="javax.servlet.http.HttpSession"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Administrator Course Page</title>
<link rel="stylesheet" type="text/css" href="Admin.css">
</head>
	<body>
		<div class="logo">
			
			<h1>STUDENT MANAGEMENT SYSTEM</h1>
			
		</div>
		<div class="logoimg">
			<img src="studentimg.jpg" alt="logo" style="width:205px;height:83px;">
		</div>
		<div class="adminmenu">
		<ul style="list-style: none;">
			<li><a href="addcourse.jsp">Add Courses  </a></li>
                        <li><a href="AdminHome.jsp">Home  </a></li>
			
		</ul>
		</div>
            <div class="mainmenu">
    <div class="label">
        <h3> <a href="logout.jsp" onclick="sessionvalid(event)">LOG OUT</a></h3>
    </div>
           
    <div class="recordslist">
    <div class="recordlabels">
         <table style="text-align: center" align="center">
        <tr class="border">
        <th class="border1"> Course Details</th>
        
    </tr>
            <%
            DataView obj=new DataView();
            ResultSet rs=obj.getRecord();
        
            if(rs.next())
            {
           while(rs.next())
           {
             %>
                <tr>
                    <td><%=rs.getString(1) %></td>
                    
                </tr>
                <%
           }
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
 
</div>
</div>
</div>
	</body>
</html>
<%
    }
    %>