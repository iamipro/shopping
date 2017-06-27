package sist.bean;

public class ParamBean {
	private String id;
	private String email;
	private String address;
	private String hobby;	
	public ParamBean() {
		super();
	}
	
	

	public ParamBean(String id, String email, String address, String hobby) {
		super();
		this.id = id;
		this.email = email;
		this.address = address;
		this.hobby = hobby;
	}



	public String getHobby() {
		return hobby;
	}



	public void setHobby(String hobby) {
		this.hobby = hobby;
	}



	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	@Override
	public String toString() {
		return "ParamBean [id=" + id + ", email=" + email + ", address=" + address + "]";
	}
	
	

}
