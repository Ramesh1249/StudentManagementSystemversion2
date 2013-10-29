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
import java.sql.SQLException;

public class DataView extends HttpServlet {
    private static Connection connection	= null;
	private static PreparedStatement statement	= null;
	private static ResultSet resultSet	= null;
	@SuppressWarnings("finally")
	public ResultSet getRecord() throws SQLException
	{
		try {
			connection = ConnectionProvider.getInstance().getConnectionDB();
			statement = connection.prepareStatement("select details from coursedata" );
			resultSet = statement.executeQuery();
			
		} catch (Exception e) {
			
                    
                    e.printStackTrace();
		}
		finally
		{
			return resultSet;
                        
		}
                
		
	}

}
