package sist.action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import sist.bean.CartBean;
import sist.bean.ShoppingBasket;
import sist.bean.ShoppingMember;
import sist.control.ActionForWard;
import sist.dao.CartDao;
import sist.dao.MemberDao;

public class CartAddAction implements Action {
	private String path;
	private boolean redirect;
	private CartDao dao = new CartDao();
    private MemberDao member = new MemberDao();
    private ShoppingMember smember = new ShoppingMember(); 
    //private ShoppingBasket basket = new ShoppingBasket();
	
	public CartAddAction() {
		super();
	}

	public CartAddAction(String path, boolean redirect) {
		super();
		this.path = path;
		this.redirect = redirect;
	}

	@Override
	public ActionForWard execute(HttpServletRequest request) {
		// TODO Auto-generated method stub

		CartBean bean = null;
		ArrayList<CartBean> cart = null;
		HttpSession session = request.getSession();
		int pk = Integer.parseInt(request.getParameter("pk"));
		String id = request.getParameter("id");
	   System.out.println("CartAdd Id="+id);
		boolean state = false;
		try {
			bean = (CartBean) dao.oneCart(pk);
			String basket = member.getBaskets(id);
			String [] m = basket.split(",");
			int []m2 = new int[m.length];
			/*for(int i=0;i<m.length<i++){
				    m2[i]= Integer.parseInt(m[i]);
			}
			*/
			
			cart = (ArrayList<CartBean>) session.getAttribute("basket");
			if (cart == null) {
				cart = new ArrayList<CartBean>();
			}

			for (int i = 0; i < cart.size(); i++) {
				if (cart.get(i).getPk() == pk) {
					state = true;
				}
			}
			if (!state) {
				cart.add(bean);
				smember.setId(id);
				smember.setBasket(String.valueOf(pk)+",");
                member.insertShoppingBasket(smember);   
				session.setAttribute("basket", cart);
			}
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}

		return new ActionForWard(path, redirect);
	}

}
