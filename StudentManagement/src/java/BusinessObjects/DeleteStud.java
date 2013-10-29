package BusinessObjects;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import DataSourceObjects.ConnectionProvider;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import DataSourceObjects.ConnectionProvider;
import BusinessObjects.StudView;

public class DeleteStud extends HttpServlet {
      Connection connection= null;
	 PreparedStatement statementRs= null;
         HttpServletRequest request1;
	 ResultSet rs= null;
	@SuppressWarnings("finally")
	public ResultSet getRecord(HttpServletRequest req)
	{
            String userid=req.getParameter("id");
		try {
			connection = ConnectionProvider.getInstance().getConnectionDB();
                            statementRs = connection.prepareStatement("select l.id,l.username,l.password,"
                                                                        + "  u.firstname,u.lastname,u.course,u.mobile,"
                                                                        + " u.address from logintable l ,userdata u"
                                                                        + " where l.id = "+userid+" and l.id=u.id");
			rs = statementRs.executeQuery();
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
        return rs;
		
	}

}
