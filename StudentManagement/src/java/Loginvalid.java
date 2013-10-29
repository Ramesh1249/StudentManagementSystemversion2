import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



public class Loginvalid extends HttpServlet {
	
	public void doPost(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException
	{
		HttpSession session = request.getSession(false);
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String uname=request.getParameter("username");
		String pwd=request.getParameter("password");
                //session.setAttribute("UserName",uname);

               
		ResultSet rs=LoginDAO.validate(uname,pwd);
		try {
			
			if(rs.next()) //if valid user
			{
				String adm="admin";
				String stu="student";
				String fac="faculty";
				String varb=rs.getString(4);
                                String userName=rs.getString(2);
                                session.setAttribute("username",userName);
					if(varb.equals(adm))
					{
					
				String adminhome= "http://localhost:8084/StudentManagement/AdminHome.jsp";
				response.sendRedirect(adminhome);
					}
					if(varb.equals(stu)){
						String studhome= "http://localhost:8084/StudentManagement/StudentHome.jsp";
						response.sendRedirect(studhome);
					}
					if(varb.equals(fac)){
						String studhome= "http://localhost:8084/StudentManagement/FacultyHome.jsp";
						response.sendRedirect(studhome);
					}
						
			}
                        else //invalid user
			{	
			//	String msg="Hello";
                          //      out.print(msg);
			//	String errorp= "http://localhost:8084/StudentManagement/index.jsp";
			//	response.sendRedirect(errorp);
                          //      {
 String strExpired = (String) session.getAttribute("Login_Expired");
response.sendRedirect("index.jsp");

}
				
				
			
	
		} 
                catch (SQLException e) 
		{
                        String errorp= "http://localhost:8084/StudentManagement/Login.jsp";
			response.sendRedirect(errorp);
			e.printStackTrace();
		}
		
	}
}	
