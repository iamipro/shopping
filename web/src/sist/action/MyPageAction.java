package sist.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import sist.bean.ShoppingMember;
import sist.control.ActionForWard;
import sist.dao.MemberDao;

public class MyPageAction implements Action{
 private String path;
 private boolean redirect;
 private MemberDao dao = new MemberDao();
 
 
 
public MyPageAction() {
	super();
}




public MyPageAction(String path, boolean redirect) {
	super();
	this.path = path;
	this.redirect = redirect;
}




@Override
public ActionForWard execute(HttpServletRequest request) {
	// TODO Auto-generated method stub
	String id = request.getParameter("id");
	System.out.println("id="+id);
	HttpSession session = request.getSession();
	try {
		ShoppingMember member = (ShoppingMember)dao.getMemberMyPage(id);
		System.out.println("member="+member);
		request.setAttribute("id", id);
		session.setAttribute("member", member);
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	
	return new ActionForWard(path, redirect);
}

 
 
	
	
}
