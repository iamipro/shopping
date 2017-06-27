package sist.bean;

public class LoginMemberBean {
private String id;
private String pwd;
private String tel;
private String zip;
private String addr;
private String addr2;
private String birth;
private String email;




public String getId() {
	return id;
}

public void setId(String id) {
	this.id = id;
}

public String getPwd() {
	return pwd;
}

public void setPwd(String pwd) {
	this.pwd = pwd;
}

public String getTel() {
	return tel;
}

public void setTel(String tel) {
	this.tel = tel;
}

public String getZip() {
	return zip;
}

public void setZip(String zip) {
	this.zip = zip;
}

public String getAddr() {
	return addr;
}

public void setAddr(String addr) {
	this.addr = addr;
}

public String getAddr2() {
	return addr2;
}

public void setAddr2(String addr2) {
	this.addr2 = addr2;
}

public String getBirth() {
	return birth;
}

public void setBirth(String birth) {
	this.birth = birth;
}

public String getEmail() {
	return email;
}

public void setEmail(String email) {
	this.email = email;
}

public LoginMemberBean(){
	super();
}

public LoginMemberBean(String id, String pwd, String tel, String zip, String addr, String addr2, String birth,
		String email) {
	super();
	this.id = id;
	this.pwd = pwd;
	this.tel = tel;
	this.zip = zip;
	this.addr = addr;
	this.addr2 = addr2;
	this.birth = birth;
	this.email = email;
}



@Override
public String toString() {
	return "LoginMemberBean [id=" + id + ", pwd=" + pwd + ", tel=" + tel + ", zip=" + zip + ", addr=" + addr
			+ ", addr2=" + addr2 + ", birth=" + birth + ", email=" + email + "]";
}



	
	
}
