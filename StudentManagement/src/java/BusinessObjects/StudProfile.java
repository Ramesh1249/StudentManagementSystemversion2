package BusinessObjects;
import java.sql.*;
import DataSourceObjects.*;
import TransferObjects.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class  StudProfile
{
    Connection con=null;
    PreparedStatement pstmt=null;
    
    ResultSet rs1=null;
    
    public ResultSet ProfileRecords(HttpServletRequest request)throws Exception
    {   
        try
        {
    	con=ConnectionProvider.getInstance().getConnectionDB();
         HttpSession session = request.getSession(false);
            String uname=(String)session.getAttribute("username");
         
        pstmt=con.prepareStatement("select * from  logintable l,userdata u where l.username='"+ uname +"'and l.id=u.id");    	   
    	 rs1=pstmt.executeQuery();
        
    	return rs1;
        }catch(Exception e){
            System.out.println("exception occured");
           
            
        }
        return rs1;
    }

    private static class Resultset {

        public Resultset() {
        }

        private void executeQuery(String i) {
            throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        }
    }
}
