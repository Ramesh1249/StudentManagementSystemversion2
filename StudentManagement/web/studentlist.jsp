
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
<%@page import="java.io.PrintWriter"%>
<%@page import="BusinessObjects.StudProfile"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
    <%@page import ="java.util.*" %>
    <%@page import="DataSourceObjects.ConnectionProvider,javax.servlet.http.HttpSession"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Student list</title>
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
				 <h3>List of students</h3>
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
                                     Connection con=null;
            
                              StudProfile obj=new StudProfile();
            ResultSet rs=obj.ProfileRecords(request);
            rs.next();
            String course=rs.getString(8);
            
            
                   
   out.print(course);
    
    ResultSet rs1;
                                     Class.forName("oracle.jdbc.driver.OracleDriver");
		con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","hr");
			Statement ps=con.createStatement();
			
			 rs1=ps.executeQuery("select * from userdata u,logintable l where u.course='"+course+"'and l.id=u.id and usertype='student' ");
                                     if(rs1.next())
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
                                     }else
                                     {
                                         out.println("no record found");
                                     }
                                     %>
			
                                     </div> </Table>           </form>
                        
                        
	</body>
</html>
<%
    }
    %>