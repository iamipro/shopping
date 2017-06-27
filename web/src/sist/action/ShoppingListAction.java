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
           case "옷":
           case "의류":
           case "잡화":
           case "의류/잡화":
           case "잡화/의류":
              data = "cloth";
              break;
           case "전자":
           case "가전":
           case "전자제품":
           case "가전제품":
              data = "electronic";
              break;
           case "가구":
              data = "furniture";
              break;
           case "향":
           case "향수":
           case "화장":
           case "화장품":
           case "화장품/향수":
           case "향수/화장품":
              data = "cosmetic";
              break;
           case "음식":
           case "식품":
           case "주류":
           case "음료":
           case "식품/주류":
           case "주류/식품":
           case "음식/주류":
           case "주류/음식":
              data = "foods";
              break;
           case "차":
           case "차량":
           case "차량용품":
           case "차용품":
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
