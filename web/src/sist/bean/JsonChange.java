package sist.bean;

public class JsonChange {
	   
	 /*
	  private int pk;
	  private String productName;
	  private String productOrigin;
	  private int productPrice;
	  private String productCategory;
	  private String fileName;
	  private String regdate;
	  private String id;
	  private String seller;*/
	
	  public static String Json(CartBean cartBean){
		  StringBuffer sb = new StringBuffer();
	      
	      sb.append("{")
	      .append("\"pk\":").append(cartBean.getPk()).append(",")
	      .append("\"productName\":").append("\""+cartBean.getProductName()+"\"")
	      .append(",")
	      .append("\"productOrigin\":").append("\""+cartBean.getProductOrigin()+"\"").append(",")
	      .append("\"productPrice\":").append(cartBean.getProductPrice()).append(",")
	      .append("\"productCategory\":").append("\""+cartBean.getProductCategory()+"\"").append(",")
	      .append("\"fileName\":").append("\""+cartBean.getFileName()+"\"").append(",")
	      .append("\"id\":").append("\""+cartBean.getId()+"\"").append(",")
	      .append("\"seller\":").append("\""+cartBean.getSeller()+"\"").append(",")
	      .append("\"regdate\":").append("\""+cartBean.getRegdate()+"\"")
	      .append("}"); 
	      
		      
		  
	      sb.trimToSize();
	      return sb.toString();
	   }

	 
	 
	  
	
}
