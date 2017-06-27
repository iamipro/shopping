package sist.action;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.fileupload.DiskFileUpload;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUpload;

import sist.bean.CartBean;
import sist.bean.ShoppingMember;
import sist.control.ActionForWard;
import sist.dao.MemberDao;

public class JoinMemberAction implements Action {
    private String path;
    private boolean redirect;
	private MemberDao dao = new MemberDao();
	
    public JoinMemberAction(){
    	super();
    }
    
	public JoinMemberAction(String path, boolean redirect) {
		super();
		this.path = path;
		this.redirect = redirect;
	}




	@Override
	public ActionForWard execute(HttpServletRequest request) {
		// TODO Auto-generated method stub
		 
 		try {
				
				/*String pathUpload = "C:\\Users\\user\\mvcCart\\web\\WebContent\\upload\\";
				CartBean bean = new CartBean();
				ShoppingMember member = new ShoppingMember();
				
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
						  if(name.equals("fileName")){
							  bean.setFileName(file.getString("EUC-KR"));
						  }
						  
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
*/				} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		   
	       
		
		
		return new ActionForWard(path, redirect);
	}

	
	
}
