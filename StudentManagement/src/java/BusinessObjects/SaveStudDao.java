package BusinessObjects;
import java.sql.*;
import DataSourceObjects.*;
import TransferObjects.*;

public class  SaveStudDao
{
    Connection con=null;
    PreparedStatement pstmt=null;
    
    int rowsAffected =0;
    ResultSet rs1=null;
    
    public int addRecords(SaveStudBean bean)throws Exception
    {   
        try
        {
    	con=ConnectionProvider.getInstance().getConnectionDB();
         
        pstmt=con.prepareStatement("update logintable l SET l.username='"+ bean.getuserName() +"',l.password= '"+ bean.getpasword() +"'where l.id='"+bean.getstudId() +"'");    	   
    	rowsAffected=pstmt.executeUpdate();
        
        
        PreparedStatement pstmt1=con.prepareStatement("update userdata u SET u.firstname='"+ bean.getfirstname() +"',u.lastname= '"+ bean.getlastname() +"',u.course='"+ bean.getcourse() +"',u.address= '"+ bean.getaddress() +"',u.mobile= "+ bean.getmobile() +" where u.id='"+bean.getstudId() +"'");
        rowsAffected=pstmt1.executeUpdate();
           
        
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
