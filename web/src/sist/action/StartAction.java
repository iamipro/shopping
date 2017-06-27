package sist.action;

import javax.servlet.http.HttpServletRequest;

import sist.control.ActionForWard;

public class StartAction implements Action {
	private String path;
	private boolean redirect;
	
	public StartAction() {
		super();
	}

	public StartAction(String path, boolean redirect) {
		super();
		this.path = path;
		this.redirect = redirect;
	}

	@Override
	public ActionForWard execute(HttpServletRequest request) {
		// TODO Auto-generated method stub
     
		System.out.println("");
		return new ActionForWard(path, redirect);

	}

}
