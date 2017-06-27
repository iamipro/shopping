package sist.bean;

public class CartBean {
  private int pk;
  private String productName;
  private String productOrigin;
  private int productPrice;
  private String productCategory;
  private String fileName;
  private String regdate;
  private String id;
  private String seller;
  public CartBean(){
	  super();
  }
  
 
  
public CartBean(String productName, String productOrigin, int productPrice, String productCategory, String id) {
	super();
	this.productName = productName;
	this.productOrigin = productOrigin;
	this.productPrice = productPrice;
	this.productCategory = productCategory;
	this.id = id;
}



public CartBean(int pk, String productName, String productOrigin, int price, String productCategory, String fileName,
		String regdate, String id, String seller) {
	super();
	this.pk = pk;
	this.productName = productName;
	this.productOrigin = productOrigin;
	this.productPrice = productPrice;
	this.productCategory = productCategory;
	this.fileName = fileName;
	this.regdate = regdate;
	this.id = id;
	this.seller = seller;
}



public int getPk() {
	return pk;
}
public void setPk(int pk) {
	this.pk = pk;
}
public String getProductName() {
	return productName;
}
public void setProductName(String productName) {
	this.productName = productName;
}
public String getProductOrigin() {
	return productOrigin;
}
public void setProductOrigin(String productOrigin) {
	this.productOrigin = productOrigin;
}

public int getProductPrice() {
	return productPrice;
}



public void setProductPrice(int productPrice) {
	this.productPrice = productPrice;
}



public String getProductCategory() {
	return productCategory;
}
public void setProductCategory(String productCategory) {
	this.productCategory = productCategory;
}
 
public String getFileName() {
	return fileName;
}



public void setFileName(String fileName) {
	this.fileName = fileName;
}



public String getRegdate() {
	return regdate;
}
public void setRegdate(String regdate) {
	this.regdate = regdate;
}
public String getId() {
	return id;
}
public void setId(String id) {
	this.id = id;
}
public String getSeller() {
	return seller;
}
public void setSeller(String seller) {
	this.seller = seller;
}



@Override
public String toString() {
	return "CartBean [pk=" + pk + ", productName=" + productName + ", productOrigin=" + productOrigin
			+ ", productPrice=" + productPrice + ", productCategory=" + productCategory + ", fileName=" + fileName
			+ ", regdate=" + regdate + ", id=" + id + ", seller=" + seller + "]";
}




	
  
	
}
