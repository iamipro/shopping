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

	public JoinMemberAction() {
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

        		 
    			String name = request.getParameter("name");
    			String birth = request.getParameter("birth");
    			String gender = request.getParameter("gender");
    			String email = request.getParameter("email");
    			String phone = request.getParameter("phone");
    			String zip = request.getParameter("zip");
    			String addr1 = request.getParameter("addr1");
    			String addr2 = request.getParameter("addr2");
    			String id = request.getParameter("id");
    			String pw = request.getParameter("pw");
            	
            	
            	ShoppingMember member = new ShoppingMember();
				member.setNo(dao.getNumber());
				member.setName(name);
	            member.setBirth(birth);
	            member.setGender(gender);
	            member.setEmail(email);
	            member.setPhone(phone);
	            member.setZip(zip);
	            member.setAddr1(addr1);
	            member.setAddr2(addr2);
	            member.setId(id);
	            member.setPw(pw);
	            System.out.println(member.getNo()+"회원번호로 "+member.getName()+"님이 가입하셨습니다." );
	            dao.insertMember(member);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
				
			
        
        

		    
		   
	       
		
		
		return new ActionForWard(path, redirect);
	}
	
}

 
