package sist.action;

import javax.servlet.http.HttpServletRequest;

import sist.control.ActionForWard;
import sist.dao.CartDao;

public class DeleteProductAction implements Action{
    private String path;
    private boolean redirect;
    private CartDao dao = new CartDao();
    public DeleteProductAction(){
    	super();
    }
	
	public DeleteProductAction(String path, boolean redirect) {
		super();
		this.path = path;
		this.redirect = redirect;
	}



	@Override
	public ActionForWard execute(HttpServletRequest request) {
		// TODO Auto-generated method stub
		
		int pk = Integer.parseInt(request.getParameter("pk"));
		System.out.println(pk);
		try {
			dao.deleteCart(pk);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(pk+"번호 상품 삭제");
		return new ActionForWard(path,redirect);
	}
	
	

}
