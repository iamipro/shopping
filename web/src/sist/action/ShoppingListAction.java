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
		/* 
        if(query.trim().equalsIgnoreCase("productCategory")) {
           switch(query) {
           case "��":
           case "�Ƿ�":
           case "��ȭ":
           case "�Ƿ�/��ȭ":
           case "��ȭ/�Ƿ�":
              data = "cloth";
              break;
           case "����":
           case "����":
           case "������ǰ":
           case "������ǰ":
              data = "electronic";
              break;
           case "����":
              data = "furniture";
              break;
           case "��":
           case "���":
           case "ȭ��":
           case "ȭ��ǰ":
           case "ȭ��ǰ/���":
           case "���/ȭ��ǰ":
              data = "cosmetic";
              break;
           case "����":
           case "��ǰ":
           case "�ַ�":
           case "����":
           case "��ǰ/�ַ�":
           case "�ַ�/��ǰ":
           case "����/�ַ�":
           case "�ַ�/����":
              data = "foods";
              break;
           case "��":
           case "����":
           case "������ǰ":
           case "����ǰ":
              data = "car";
              break;
           default:
              data = "";
              break;
           }
        }
*/
		
        map.put("query", query);
        map.put("data", data);
        
		try {
			
			
			request.setAttribute("shoppingList", dao.selectClient(map) );
			
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
		
		
		
		return new ActionForWard(path, redirect);
	}

	
	
}
