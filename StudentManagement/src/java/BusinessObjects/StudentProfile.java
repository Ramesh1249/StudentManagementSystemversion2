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



public class StudentProfile extends HttpServlet {
	
	public void doPost(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException
	{
		HttpSession session = request.getSession(true);
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String uname=request.getParameter("username");
		String pwd=request.getParameter("password");
                session.setAttribute("UserName",uname);

               
		ResultSet rs=LoginDAO.validate(uname,pwd);
		try {
			
			if(rs.next())
			{
				String adm="admin";
				String stu="student";
				String fac="faculty";
				String varb=rs.getString(4);
                                
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
			else
			{	
				out.println("<html> <head><title> Error msg</title></head><body>alert('enter correct username and opassword')</body></html>");
				String errorp= "http://localhost:8084/StudentManagement/Login.jsp";
				response.sendRedirect(errorp);
				
				
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
