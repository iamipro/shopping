package sist.action;

import javax.servlet.http.HttpServletRequest;

import sist.bean.ShoppingMember;
import sist.control.ActionForWard;
import sist.dao.MemberDao;

public class DeleteMemberAction implements Action {
	private String path;
	private boolean redirect;
	 private MemberDao dao = new MemberDao();
    private ShoppingMember member = new ShoppingMember();
	public DeleteMemberAction() {
		super();
	}

	public DeleteMemberAction(String path, boolean redirect) {
		super();
		this.path = path;
		this.redirect = redirect;
	}

	@Override
	public ActionForWard execute(HttpServletRequest request) {
		// TODO Auto-generated method stub
		String id =request.getParameter("id");
        member.setId(id);
        try {
			dao.deleteMember(member);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return new ActionForWard(path, redirect);
	}

	
	
	
}
