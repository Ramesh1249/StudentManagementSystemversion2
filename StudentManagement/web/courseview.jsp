
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
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
   <%-- heloodsfdsfdsfdsfdsfdsffdsfdsfdffsdd--%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Student Home Page</title>
		<link rel="stylesheet" type="text/css" href="Admin.css">
	</head>
	<body>
		<div class="logo">
				<header>
					<h1>STUDENT MANAGEMENT SYSTEM</h1>
		</div>
		<div class="logoimg">
			<img src="studentimg.jpg" alt="logo" style="width:208px;height:83px; border-radius: 5px 0px 0px 5px; ">
		</div>
		<div class="adminmenu" align="left">
		<ul>
		<li>
		<a href="studentprofile.jsp">Profile  </a><br></li>
		<li>
		<a href="courseview.jsp">Course Information</a></li>
		
		</ul>	
		</div>
		<div class="mainmenu">
			<div class="label">
				 <h3> <a href="logout.jsp" onclick="sessionvalid(event)">LOG OUT</a></h3>
                        </div>
                    <div class="recordlabels">
         <table style="text-align: center" align="center">
        <tr class="border">
        <th class="border1"> Course Details</th>
        
    </tr>
                    <%
                        Connection con=null;
                        ResultSet rs1;
			  Class.forName("oracle.jdbc.driver.OracleDriver");
		con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","hr");
			Statement ps=con.createStatement();
			
			 rs1=ps.executeQuery("select * from coursedata");
                                     while(rs1.next())
                                     {
                                         %>
                                         
                                        <tr>
                    <td><%=rs1.getString(1) %></td>
                    
                </tr>
                                         <%
                                     }
                                         %>
		</div>	
	</body>
</html>
<%
    }
    %>