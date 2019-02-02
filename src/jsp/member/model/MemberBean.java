package jsp.member.model;

import com.sun.jmx.snmp.Timestamp;

public class MemberBean {
	private String id;
	private String password;
	private String name;
	private String gender;
	private String birth_yy;
	private String birth_mm;
	private String birth_dd;
	private String email_1;
	private String email_2;
	private String phone;
	private String address;
	private Timestamp reg;
	
	
	public String getId() { return id; }
	public void setId(String id) {this.id = id;}
	
	public String getPassword() {return password;}
	public void setPassword(String password) {this.password = password;}
	
	public String getName() {return name;}
	public void setName(String name) {this.name = name;}
	
	public String getGender() {return gender;}
	public void setGender(String gender) {this.gender = gender;}
	
	public String getBirth_yy() {return birth_yy;}
	public void setBirth_yy(String birth_yy) {this.birth_yy = birth_yy;}
	
	public String getBirth_mm() {return birth_mm;}
	public void setBirth_mm(String birth_mm) {this.birth_mm = birth_mm;}
	
	public String getBirth_dd() {return birth_dd;}
	public void setBirth_dd(String birth_dd) {this.birth_dd = birth_dd;}
	
	public String getEmail_1() {return email_1;}
	public void setEmail_1(String email_1) {this.email_1 = email_1;}
	
	public String getEmail_2() {return email_2;}
	public void setEmail_2(String email_2) {this.email_2 = email_2;}
	
	public String getPhone() {return phone;}
	public void setPhone(String phone) {this.phone = phone;}
	
	public String getAddress() {return address;}
	public void setAddress(String address) {this.address = address;}
	
	public Timestamp getReg() {return reg;}
	public void setReg(Timestamp reg) {this.reg = reg;}
	
}
