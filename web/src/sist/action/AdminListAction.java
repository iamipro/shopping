package sist.action;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import sist.control.ActionForWard;
import sist.dao.CartDao;

public class AdminListAction implements Action {
	private String path;
	private boolean redirect;
	private CartDao dao = new CartDao();
	
	public AdminListAction(String path, boolean redirect) {
		super();
		this.path = path;
		this.redirect = redirect;
	}

	@Override
	public ActionForWard execute(HttpServletRequest request) {
		// TODO Auto-generated method stub
		
		//System.out.println("AdminListAction"+request.getSession().getAttribute("id"));
		//String id =(String)request.getParameter("id");
		String id =(String)request.getSession().getAttribute("id");
		String query = request.getParameter("query");
		String data = request.getParameter("data");
		HashMap<String, String>map = new HashMap<String,String>();
		map.put("id", id);
		map.put("query", query);
		map.put("data", data);
		
		
		try {
		    request.setAttribute("adminList", dao.selectCart(map));	
			//request.setAttribute("adminList", dao.selectCart((String)request.getSession().getAttribute("id")));
		} catch (Exception e) {
           e.printStackTrace();
			// TODO: handle exception
		}
		
		
		return new ActionForWard(path, redirect);
	}
	
	
	
}
