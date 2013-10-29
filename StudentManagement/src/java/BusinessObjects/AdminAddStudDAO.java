
package BusinessObjects;
import DataSourceObjects.ConnectionProvider;
import TransferObjects.AddstudBean;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 *
 * @author Sravanthi_Bandaru
 */
public class AdminAddStudDAO extends HttpServlet {

    /**
     *
     * @param userName
     * @param password
     * @return
     */
    Connection con=null;
    PreparedStatement pstmt=null;
    ResultSet rs=null;
    public AddstudBean getUserData(String userName, String password) throws Exception
	{	
		AddstudBean userBean = new AddstudBean();
		con = ConnectionProvider.getInstance().getConnectionDB();
                
	    if (con != null) 
	    {
                
                    try
			{
				String strQuery = "select l.id,l.username,l.password,u.firstname,u.lastname,u.course,u.mobile,u.address from logintable l ,userdata u where l.id=u.id";
					
				pstmt = (PreparedStatement) con.createStatement();
				rs = pstmt.executeQuery( strQuery);
				pstmt = con.prepareStatement(strQuery);
				rs = pstmt.executeQuery();
				
				while(rs.next())
				{
					userBean.setstudId(rs.getString("id"));
					userBean.setuserName(rs.getString("userame"));
                                        userBean.setpasword(rs.getString("password"));
					userBean.setfirstname(rs.getString("firstname"));
					userBean.setlastname(rs.getString("lastname"));
					userBean.setcourse(rs.getString("course"));
					userBean.setMobile(rs.getString("mobile"));
					userBean.setAddress(rs.getString("address"));
					
				}				
			}//end of try
			catch(Exception ex){ex.printStackTrace();}
	    }//end of if
	    return userBean;
	
        }
}
