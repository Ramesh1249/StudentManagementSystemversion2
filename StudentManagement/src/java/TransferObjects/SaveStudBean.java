package TransferObjects;

import java.io.Serializable;

public class SaveStudBean implements Serializable
{
    String studId;
    String userName;
    String firstname;
    String lastname;
    String pasword;
    String course;
    String usertype;
    String address;
    String mobile;
        
            public String getfirstname() {
        return firstname;
        }

        public void setfirstname(String firstname) {
        this.firstname = firstname;
        }

        public String getlastname() {
            return lastname;
        }

        public void setlastname(String lastname) {
            this.lastname = lastname;
        }

        public String getmobile() {
            return mobile;
        }

        public void setMobile(String mobile) {
            this.mobile = mobile;
        }

        public String getstudId() {
		return studId;
	}
	public void setstudId(String studId) {
		this.studId = studId;
	}
	public String getuserName() {
		return userName;
	}
	public void setuserName(String studname) {
		this.userName = studname;
	}
	public String getpasword() {
		return pasword;
	}
	public void setpasword(String password) {
		this.pasword = password;
	}
        
        public String getusertype() {
            return usertype;
        }

        public void setusertype(String usertype) {
            this.usertype = usertype;
        }
	public String getcourse() {
		return course;
	}
	public void setcourse(String course) {
		this.course = course;
	}
	public String getaddress(){
		return address;
	}
	public void setAddress(String address){
		this.address=address;
	}

    
    
    
}
