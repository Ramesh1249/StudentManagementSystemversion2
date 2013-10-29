
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
<%@page import="BusinessObjects.StudView"%>
    

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
	<img src="studentimg.jpg" alt="logo" style="width:205px;height:83px;position:fixed;">
</div>
<div class="adminmenu">
<ul style="list-style: none;">
<li><a href="addstudents.jsp">Add students  </a></li>
<li><a href="updatestudents.jsp">Update student details</a></li>
<li><a href="deletestudents.jsp">Delete student details</a></li>
</ul>
</div>
<div class="mainmenu">
    <div class="label">
        <h3>Student Details</h3>
    </div>
    <div class="recordslist">
    <div class="recordlabels">
    <form method="GET" action="AddStudValid">  
        <table style="text-align: center">
        <tr class="border">
        <th class="border1"> ID</th>
        <th class="border2">UserName</th>
        <th class="border2">First Name</th>
        <th class="border2">Last Name</th>
        <th class="border2">Password</th>
        <th class="border6">Course</th>
        <th class="border2">Mobile</th>
        <th class="border8">Address</th>
    </tr>
            <%
            StudView obj=new StudView();
            ResultSet rs=obj.getRecord();
            ResultSet rs1=obj.getRecord();
            if(rs1.next())
            {
            while(rs.next())
             {
             %>
                <tr>
                    <td><%=rs.getString(1) %></td>
                    <td><%=rs.getString(2) %></td>
                    <td><%=rs.getString(4) %></td>
                    <td><%=rs.getString(5) %></td>
                    <td><%=rs.getString(3) %></td>
                    <td><%=rs.getString(6) %></td>
                    <td><%=rs.getString(7) %></td>
                    <td><%=rs.getString(8) %></td>            
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
    </form>
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