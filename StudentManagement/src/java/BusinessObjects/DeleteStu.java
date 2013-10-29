

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import DataSourceObjects.ConnectionProvider;

public class DeleteStu {
	Connection connection	= null;
	 PreparedStatement statement	= null;
	 ResultSet resultSet=null;
	 int count=0,temp=0;
	public int removeStuRec(String stuid)
	{
		try {
			connection = ConnectionProvider.getInstance().getConnectionDB();
			statement = connection
					.prepareStatement("select * from userdata where userid='" + stuid +  "'");
			
			resultSet = statement.executeQuery();
			
			if (resultSet.next()) {
				String str="DELETE FROM userdetail WHERE userid='"+stuid+"'";
				statement=connection.prepareStatement(str);
				count=statement.executeUpdate();
				if(count>0)
				{
					
					temp= count;
				}
				else
				{
					temp= 0;
				}
				
			}
			else
			{
				temp= -1;
			}
			connection.close();
		}
		catch (Exception e) {
			//request.setAttribute("message", message);
			e.printStackTrace();
		}		
		return temp;
	}
}
