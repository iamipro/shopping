package sist.action;

import javax.servlet.http.HttpServletRequest;

import sist.control.ActionForWard;
import sist.dao.AdminDao;
import sist.dao.CartDao;

public class LoginAction implements Action {
	private String path;
	private boolean redirect;
	private AdminDao dao = new AdminDao();
	
	
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
		System.out.println("관리자 님이 로그인하셨습니다.");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		System.out.println(id+" "+pw);
		try {
			if (dao.idCheck(id, pw)) {
				System.out.println("Admin로그인 완료");
				request.getSession().setAttribute("admin", id);
				request.getSession().setAttribute("id", id);
				request.getSession().setMaxInactiveInterval(12000);
				path = "adminlist.do?cmd=adminlist";
			} else {
				System.out.println("Admin로그인 실패");
				path = "cart/adminLogin.jsp";
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return new ActionForWard(path, redirect);
	}

}
