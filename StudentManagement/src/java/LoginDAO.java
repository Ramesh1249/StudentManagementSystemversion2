import java.sql.*;
public class LoginDAO
{
	public static ResultSet validate(String uname,String pwd)
	{
		ResultSet rs=null;
		boolean status=false;
                Connection con;
            
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","hr");
			Statement ps=con.createStatement();
			
			 rs=ps.executeQuery("select * from logintable where username='"+ uname +"' and password='" + pwd +"'");
			
			
		}
		catch(Exception e)
		{
                    
			System.out.println("something got wrong");
			System.out.println(e);
		}
                return rs;
	}
}