
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
    	<div id="loginid">
    		<h1><b>Log In</b></h1>	
    	</div>		
    	<div id="msg"> Welcome. Enter your Username and Password</b>
    	
		</div>
           
		<form  method="post" action="Loginvalid" name="loginform">
                    
			<div class="user">
			<label for="Username">Username 	:</label>
                        
			<input type="text" id="uname" name="username" >			
		</div>
		<div class="user">
			<label for="Passowrd">Password 	:</label>
		    <input type="password" id="pwd" name="password" >
		</div>
		<div class="loginbutton">
		  	<button type="submit" value="LOGIN" >LOG IN</button>
	 	</div>
                    
	 	</form>	
	</div>
    <script>
        
        <% String strExpired = (String) session.getAttribute("Login_Expired");
        %>
            function valid(event)
            {
             
            }
        </script>
    
    
    
    
	</body>
</html>
