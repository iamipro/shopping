package sist.action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import sist.bean.CartBean;
import sist.control.ActionForWard;

public class CartDeleteAction implements Action {
 private String path;
 private boolean redirect;
 
 
 public CartDeleteAction(){
	 super();
 }
 
public CartDeleteAction(String path, boolean redirect) {
	super();
	this.path = path;
	this.redirect = redirect;
}


@Override
public ActionForWard execute(HttpServletRequest request) {
	// TODO Auto-generated method stub
      HttpSession session = request.getSession();
	  int pk = Integer.parseInt(request.getParameter("pk"));
      ArrayList<CartBean>cart = (ArrayList<CartBean>)session.getAttribute("cart");
	 for(int i=0; i<cart.size();i++){
		 CartBean bean = cart.get(i);
		 if(bean.getPk()==pk){
			 cart.remove(i);
		 }
		 session.setAttribute("cart", cart);
		 if(cart.size()==0){
			 path="shoppingList.do?cmd=shoppingList";
		 }
	 }
	 
	return new ActionForWard(path, redirect);
}
	
	
}
