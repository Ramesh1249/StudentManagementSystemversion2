package DataSourceObjects;

import java.sql.*;
public class ConnectionProvider 
{
   Connection connectionDB=null;
   public static ConnectionProvider connectionProvider=null;
   
   public ConnectionProvider()
   {
	   try
	   {
		   Class.forName("oracle.jdbc.driver.OracleDriver");
	   }
	   catch(Exception e)
	   {
		   e.printStackTrace();
	   }
   }
   public Connection getConnectionDB()throws Exception
   {
	   connectionDB=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","hr");
	   return connectionDB;
   }
   public static ConnectionProvider getInstance()throws Exception
   {
	   if(connectionProvider==null)
	   {
		   connectionProvider=new ConnectionProvider();
	   }
	   return connectionProvider;
   }
}
