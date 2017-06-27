package sist.bean;

public class ShoppingMember {
private int no;
private String id;
private String name;
private String birth;
private String gender;
private String email;
private String phone;
private String zip;
private String addr1;
private String addr2;
private String pw;
private String regdate;



public int getNo() {
	return no;
}
public void setNo(int no) {
	this.no = no;
}
public String getId() {
	return id;
}
public void setId(String id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getBirth() {
	return birth;
}
public void setBirth(String birth) {
	this.birth = birth;
}
public String getGender() {
	return gender;
}
public void setGender(String gender) {
	this.gender = gender;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getPhone() {
	return phone;
}
public void setPhone(String phone) {
	this.phone = phone;
}
public String getZip() {
	return zip;
}
public void setZip(String zip) {
	this.zip = zip;
}
public String getAddr1() {
	return addr1;
}
public void setAddr1(String addr1) {
	this.addr1 = addr1;
}
public String getAddr2() {
	return addr2;
}
public void setAddr2(String addr2) {
	this.addr2 = addr2;
}
public String getPw() {
	return pw;
}
public void setPw(String pw) {
	this.pw = pw;
}
public String getRegdate() {
	return regdate;
}
public void setRegdate(String regdate) {
	this.regdate = regdate;
}
public ShoppingMember(){
	super();
}
public ShoppingMember(int no, String id, String name, String birth, String gender, String email, String phone,
		String zip, String addr1, String addr2, String pw, String regdate) {
	super();
	this.no = no;
	this.id = id;
	this.name = name;
	this.birth = birth;
	this.gender = gender;
	this.email = email;
	this.phone = phone;
	this.zip = zip;
	this.addr1 = addr1;
	this.addr2 = addr2;
	this.pw = pw;
	this.regdate = regdate;
}
@Override
public String toString() {
	return "ShoppingMember [no=" + no + ", id=" + id + ", name=" + name + ", birth=" + birth + ", gender=" + gender
			+ ", email=" + email + ", phone=" + phone + ", zip=" + zip + ", addr1=" + addr1 + ", addr2=" + addr2
			+ ", pw=" + pw + ", regdate=" + regdate + "]";
}
	


	
	
}
 