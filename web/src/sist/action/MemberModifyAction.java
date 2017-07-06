package sist.action;

import javax.servlet.http.HttpServletRequest;

import sist.control.ActionForWard;

public class MemberModifyAction implements Action{
 private String path;
 private boolean redirect;

 public MemberModifyAction() {
	super();
}

public MemberModifyAction(String path, boolean redirect) {
	super();
	this.path = path;
	this.redirect = redirect;
}

@Override
public ActionForWard execute(HttpServletRequest request) {
	// TODO Auto-generated method stub
	
	
	return new ActionForWard(path, redirect);
}
 
 
	
	
}
