package sist.action;

import javax.servlet.http.HttpServletRequest;

import sist.control.ActionForWard;
import sist.dao.CartDao;
import sist.dao.MemberDao;

public class MemberLoginAction implements Action {
private String path;
private boolean redirect;
private MemberDao dao = new MemberDao();

public MemberLoginAction(){
	super();
}

public MemberLoginAction(String path, boolean redirect) {
	super();
	this.path = path;
	this.redirect = redirect;
}

@Override
public ActionForWard execute(HttpServletRequest request) {
	// TODO Auto-generated method stub
	String id= request.getParameter("id");
	String pw= request.getParameter("pw");
	
	if(dao.memberLoginCheck(id, pw)){
		request.getSession().setAttribute("id", id);
		request.getSession().setAttribute("user", id);
		request.getSession().setMaxInactiveInterval(12000);
		path = "shoppingList.do?cmd=shoppingList";
 
	} else {
		path = "jsp/main.jsp";
	}

	
	return new ActionForWard(path, redirect);
}


	
	
}
