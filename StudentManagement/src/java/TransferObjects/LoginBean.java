package TransferObjects;

import java.io.Serializable;

public class LoginBean implements Serializable
{
    String username;
    String password;
    String usertype;
    
	public String getusername() {
		return username;
	}
	public void setusername(String username) {
		this.username = username;
                username=username;
	}
	public String getpassword() {
		return password;
	}
	public void setpassword(String password) {
		this.password = password;
                password=password;
	}
	public String getusertype() {
		return usertype;
	}
	public void setusertype(String usertype) {
		this.usertype = usertype;
	}
}
