package sist.action;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.fileupload.DiskFileUpload;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUpload;

import sist.bean.CartBean;
import sist.control.ActionForWard;
import sist.dao.CartDao;

public class ProductModifyAction implements Action{
    private String path;
    private boolean redirect;
	private CartDao dao = new CartDao();
    
    public ProductModifyAction(){
    	super();
    }
    
	public ProductModifyAction(String path, boolean redirect) {
		super();
		this.path = path;
		this.redirect = redirect;
	}




	@Override
	public ActionForWard execute(HttpServletRequest request) {
		// TODO Auto-generated method stub
		try {
			
			String pathUpload = "C:\\Users\\user\\mvcCart\\web\\WebContent\\upload\\";
			CartBean bean = new CartBean();
			if(FileUpload.isMultipartContent(request)){
				DiskFileUpload fileUpload = new DiskFileUpload();
				fileUpload.setSizeMax(1048576*5);
				List<FileItem> list = fileUpload.parseRequest(request);
				String fileName="";
			    
				  for(FileItem file : list){
					  String name = file.getFieldName();
					  if(name.equals("pk")){
						  bean.setPk(Integer.parseInt(file.getString("EUC-KR")));
					  } 				 
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
					  /**
					   * input[type=text] 라면 true 를 반환하고  
					   */
					  
					  if(!file.isFormField()){
						    File f= new File(pathUpload+file.getName());
							//File f=new File(pathUpload+ file.getName());
						    bean.setFileName(file.getName());
							file.write(f);
						}
					  
				  }//for
				  
				  bean.setId(String.valueOf(request.getSession().getAttribute("id")));
				  System.out.println(bean);
				  dao.modifyCart(bean);
			      
			}//if
			} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return new ActionForWard(path, redirect);
	}

	
	
}
