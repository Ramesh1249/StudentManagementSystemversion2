package BusinessObjects;
import java.sql.*;
import DataSourceObjects.*;
import TransferObjects.*;

public class AddstudDAO 
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
         pstmt=con.prepareStatement("select id_seq.nextval from dual");
         rs1=pstmt.executeQuery();
         int id = 0;
         if(rs1.next())
         {
             //System.out.print("hello");
            id = rs1.getInt("NextVal");
         
    	pstmt=con.prepareStatement("Insert into logintable(id,username,password,usertype) values(" + id + ", '"+ bean.getuserName() +"', '"+ bean.getpasword() +"', '"+ bean.getusertype() +"')");    	   
    	rowsAffected=pstmt.executeUpdate();
        
        
        PreparedStatement pstmt1=con.prepareStatement("Insert into userdata(id,firstname,lastname,course,address,mobile) values("+id+",'"+ bean.getfirstname() +"', '"+ bean.getlastname() +"', '"+ bean.getcourse() +"', '"+ bean.getaddress() +"', "+ bean.getmobile() +")");
        rowsAffected=pstmt1.executeUpdate();
           
        
    	return rowsAffected;
        }
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
