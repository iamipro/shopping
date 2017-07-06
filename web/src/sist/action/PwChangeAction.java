package sist.action;

import javax.servlet.http.HttpServletRequest;

import sist.control.ActionForWard;

public class PwChangeAction implements Action{
private String path;
private boolean redirect;


public PwChangeAction() {
	super();
}


public PwChangeAction(String path, boolean redirect) {
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
