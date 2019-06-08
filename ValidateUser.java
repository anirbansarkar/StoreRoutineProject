package Anirban;
import java.io.Serializable;

public class ValidateUser implements Serializable {
	private String uname,pass,role;
	public ValidateUser() {

	}
	public void setUname(String u1) {
		this.uname = u1;
	}
	public void setPass(String p1) {
		this.pass = p1;
	}
	public void setRole(String r1) {
		this.role = r1;
	}
	public String getUname() {
		return uname;
	}
	public String getPass() {
		return pass;
	}
	public String getRole() {
		return role;
	}
	public boolean validate(String u,String p,String r) {
		if(u.equals(uname) && p.equals(pass) && r.equals(role)) {
			return true;
		}
		else {
			return false;
		}
	}
}