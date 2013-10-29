package BusinessObjects;
import java.sql.*;
import DataSourceObjects.*;
import TransferObjects.*;
import BusinessObjects.*;
import javax.servlet.http.HttpServletRequest;

public class  DeleteStudDao
{
    Connection con=null;
    PreparedStatement pstmt=null;
    
    int rowsAffected =0;
    ResultSet rs1=null;
    
    public int deleteRecords(HttpServletRequest request) throws SQLException
    {   

       DeleteStud obj=new DeleteStud();
       ResultSet delrs=obj.getRecord(request);
       if(delrs.next())
       {
        
        try
        {
    	con=ConnectionProvider.getInstance().getConnectionDB();
         
        pstmt=con.prepareStatement("delete from userdata where id='"+delrs.getString(1)+"'");    	   
    	rowsAffected=pstmt.executeUpdate();
        
        
        PreparedStatement pstmt1=con.prepareStatement("delete from logintable where id='"+delrs.getString(1)+"'");
        rowsAffected=pstmt1.executeUpdate();
           
        
    	return rowsAffected;
        }catch(Exception e){
            System.out.println("exception occured");
           
            
        }
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
