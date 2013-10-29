package BusinessObjects;
import java.sql.*;
import DataSourceObjects.*;
import TransferObjects.*;

public class Addcoursedao
{
    Connection con=null;
    PreparedStatement pstmt=null;
    int rowsAffected1=0;
    int rowsAffected =0;
    ResultSet rs1=null;
    
    public int addRecords(AddstudBean bean)throws Exception
    {   
        try
        {
    	con=ConnectionProvider.getInstance().getConnectionDB();
                 
    	pstmt=con.prepareStatement("Insert into coursedata(details) values( '"+ bean.getcoursetxt() +"')");    	   
    	rowsAffected=pstmt.executeUpdate();
        return rowsAffected;
        
        }catch(Exception e){
            System.out.println("exception occured");
           
            
        }
        return rowsAffected;
    }

    private static class Resultset {

        public Resultset() {
        }

        private void executeQuery(String i) {
            throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        }
    }
}
