package sist.control;

import sist.action.Action;
import sist.action.AdminListAction;
import sist.action.CartAddAction;
import sist.action.CartDeleteAction;
import sist.action.DeleteProductAction;
import sist.action.JoinMemberAction;
import sist.action.LoginAction;
import sist.action.MemberLoginAction;
import sist.action.ProductInfoAction;
import sist.action.ProductInsertAction;
import sist.action.ProductModifyAction;
import sist.action.ReplyInsertAction;
import sist.action.ShoppingListAction;
import sist.action.StartAction;


public class ActionFactory {
	
	public static  Action getAction(String cmd){
		Action action=null;
		if(cmd.equals("login")){
			action = new LoginAction("",true);
		}else if(cmd.equals("adminlist")){
			action = new AdminListAction("cart/productAdd.jsp", false);
		}else if(cmd.equals("productInsert")){
			action = new ProductInsertAction("adminlist.do?cmd=adminlist", true);        
		}else if(cmd.equals("start")){
          action = new StartAction("end.jsp",false);   //false하면   dispatcher로 간다.
		}else if(cmd.equals("productInfo")){
			action = new ProductInfoAction("cart/productInfoView.jsp",false);
		}else if(cmd.equals("productModify")){
			action = new ProductModifyAction("adminlist.do?cmd=adminlist", true);
		}else if(cmd.equals("deleteProduct")){
			action = new DeleteProductAction("adminlist.do?cmd=adminlist", true);
		}else if(cmd.equals("shoppingList")){
			action = new ShoppingListAction("cart/productList.jsp", false);
		}else if(cmd.equals("productInfoClient")){
			action = new ProductInfoAction("cart/productInfo.jsp", false);
		}else if(cmd.equals("replyInsert")){
			action = new ReplyInsertAction("productInfoClient.do?cmd=productInfoClient", true);
		}else if(cmd.equals("memberLogin")){
			action = new MemberLoginAction("", true);
		}else if(cmd.equals("cartAdd")){
			action = new CartAddAction("cart/cartList.jsp", true);
		}else if(cmd.equals("cartDelete")){
			action = new CartDeleteAction("cart/cartList.jsp", true);
		}else if(cmd.equals("joinMember")){
			action = new JoinMemberAction();
		}
	
		
		
		return action;
		
	}//method

}




