package sist.action;

import java.util.List;
import java.io.File;
import javax.servlet.http.HttpServletRequest;

import sist.bean.CartBean;
import sist.control.ActionForWard;
import sist.dao.CartDao;

import org.apache.commons.fileupload.DiskFileUpload;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUpload;
import org.apache.commons.fileupload.FileUploadException;
//import org.apache.tomcat.jni.File;

public class ProductInsertAction implements Action {
	private String path;
	private boolean redirect;
	private CartDao dao = new CartDao();

	public ProductInsertAction() {
		super();
	}

	public ProductInsertAction(String path, boolean redirect) {
		super();
		this.path = path;
		this.redirect = redirect;
	}

	// bean --> enctype , change, encode, upload, valuecheck, insert
	@Override
	public ActionForWard execute(HttpServletRequest request)  {
		// TODO Auto-generated method stub
	      
		/*String productName= request.getParameter("productName");
		String productOrigin= request.getParameter("productOrigin");
		String t = request.getParameter("productPrice");
		if(t == null || t.length() == 0 || t.equals("null")) {
			t = "-1";
		}
		int productPrice=  Integer.parseInt(t);
     	String productCategory=request.getParameter("productCategory");
     	String id= (String)request.getSession().getAttribute("id");
     	CartBean bean = new CartBean();
     	bean.setProductName(productName);
     	bean.setProductOrigin(productOrigin);
     	bean.setProductPrice(productPrice);
     	bean.setProductCategory(productCategory);
     	bean.setId(id);

     	System.out.println(bean);*/
		
		 
 		try {
				
				String pathUpload = "C:\\Users\\user\\mvcCart\\web\\WebContent\\upload\\";
				CartBean bean = new CartBean();
				String job = request.getParameter("job");
				//bean.setPk(job!=null&&job.equals("mod")?Integer.parseInt(request.getParameter("pk")):0);
				
				int pk =(job!=null&&job.equals("mod"))?Integer.parseInt(request.getParameter("pk")):0;
				System.out.println(pk);
				bean.setPk(pk);
				if(FileUpload.isMultipartContent(request)){
					DiskFileUpload fileUpload = new DiskFileUpload();
					fileUpload.setSizeMax(1048576*5);
					List<FileItem> list = fileUpload.parseRequest(request);
					String fileName="";
				    
					  for(FileItem file : list){
						  String name = file.getFieldName();
						  if(name.equals("productName")){
							  bean.setProductName(file.getString("EUC-KR"));
						  }
						  if(name.equals("productOrigin")){
							  bean.setProductOrigin(file.getString("EUC-KR"));
						  }
						  if(name.equals("productPrice")){
							  bean.setProductPrice(Integer.parseInt(file.getString("EUC-KR")));
						  }
						  if(name.equals("productCategory")){
							  bean.setProductCategory(file.getString("EUC-KR"));
						  }
						 /* if(name.equals("fileName")){
							  bean.setFileName(file.getString("EUC-KR"));
						  }*/
						  
						  if(!file.isFormField()&&file.getName().length()!=0){
							    File f= new File(pathUpload+file.getName());
							    bean.setFileName(file.getName());
								file.write(f);
							}
						  
					  }//for
					  bean.setId(String.valueOf(request.getSession().getAttribute("id")));
					  //System.out.println(bean+"/ "+job);
					  if(job!=null&&job.equals("mod")){
						  dao.modifyCart(bean);;
					  }else if(job==null){
						  
						  dao.insertProduct(bean);
					  }else if(job!=null&&job.equals("del")){
						  System.out.println(bean+"del");
					  }
					  
				      
				}//if
				} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		   
	       
		    	    
		 
		
	/*	
		 try {
			String pathUpload = "C:\\Users\\user\\mvcCart\\web\\WebContent\\upload";
			if(FileUpload.isMultipartContent(request)) {
	            DiskFileUpload fileUpload = new DiskFileUpload();
	            fileUpload.setSizeMax(1048576 * 3);
	            List<FileItem> list = fileUpload.parseRequest(request);
	            for (FileItem file : list) {
	               if(file != null) {
	                  String fieldName = file.getFieldName();
	                  if(fieldName.trim().equals("productName")) {
	                     System.out.println("productName = " + file.getString("EUC-KR"));
	                  }
	                  if(fieldName.trim().equals("productOrigin")) {
	                     System.out.println("productOrigin = " + file.getString("EUC-KR"));
	                  }
	                  if(fieldName.trim().equals("productPrice")) {
	                     System.out.println("productPrice = " + file.getString("EUC-KR"));
	                  }
	                  if(fieldName.trim().equals("productCategory")) {
	                     System.out.println("productCategory = " +file.getString("EUC-KR"));
	                  }
	                  if(fieldName.trim().equals("fileName")) {
	                     System.out.println("fileName = " + file.getString("EUC-KR"));
	                  }
	               }
	            }
	         }
	
		} catch (Exception e) {
           e.printStackTrace();
			// TODO: handle exception
		}*/
	 
		 
		 
				return new ActionForWard(path, redirect);
	}

}
