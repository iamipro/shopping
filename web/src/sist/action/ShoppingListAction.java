package sist.action;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import sist.control.ActionForWard;
import sist.dao.CartDao;

public class ShoppingListAction implements Action{
    private String path;
    private boolean redirect;
    private CartDao dao = new CartDao();
    
	public ShoppingListAction(){
		super();
	}
    
    
	public ShoppingListAction(String path, boolean redirect) {
		super();
		this.path = path;
		this.redirect = redirect;
	}



	@Override
	public ActionForWard execute(HttpServletRequest request) {
		// TODO Auto-generated method stub
		String query = request.getParameter("query");
        String data = request.getParameter("data");
		HashMap<String, String>map = new HashMap<String,String>();
		
		  String id= (String) request.getSession().getAttribute("id");
        map.put("query", query);
        map.put("data", data);
        
		try {
			
			if(id!=null){
				request.setAttribute("id", id);
			}
			request.setAttribute("shoppingList", dao.selectClient(map) );
			 
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
		
		
		
		return new ActionForWard(path, redirect);
	}

	
	
}
