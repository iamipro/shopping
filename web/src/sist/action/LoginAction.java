package sist.action;

import javax.servlet.http.HttpServletRequest;

import sist.control.ActionForWard;
import sist.dao.CartDao;

public class LoginAction implements Action {
	private String path;
	private boolean redirect;
	private CartDao dao = new CartDao();

	public LoginAction() {
		super();
	}

	public LoginAction(String path, boolean redirect) {
		super();
		this.path = path;
		this.redirect = redirect;
	}

	@Override
	public ActionForWard execute(HttpServletRequest request) {
		// TODO Auto-generated method stub
		System.out.println("LoginAction");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		if (dao.loginCheck(id, pw)) {
			request.getSession().setAttribute("id", id);
			request.getSession().setMaxInactiveInterval(12000);
			path = "adminlist.do?cmd=adminlist";
     
		} else {
			path = "cart/adminLogin.jsp";
		}

		return new ActionForWard(path, redirect);
	}

}
