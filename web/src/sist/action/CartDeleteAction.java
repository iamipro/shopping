package sist.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import sist.bean.Basket;
import sist.bean.CartBean;
import sist.bean.ShoppingMember;
import sist.control.ActionForWard;
import sist.dao.CartDao;
import sist.dao.MemberDao;

public class CartDeleteAction implements Action {
	private String path;
	private boolean redirect;
	private CartDao dao = new CartDao();
	private MemberDao member = new MemberDao();
	private ShoppingMember smember = new ShoppingMember();
	private ArrayList<Integer> list = new ArrayList<Integer>();
	private ArrayList<String> list2 = new ArrayList<String>();

	public CartDeleteAction() {
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
		CartBean bean = null;
		ArrayList<CartBean> cart = null;
		int pk = Integer.parseInt(request.getParameter("pk"));
		String id = request.getParameter("id");
		// cart = (ArrayList<CartBean>)session.getAttribute("cart");

		try {
			String baskets;
			baskets = member.getBaskets(id);
			String pk2 = String.valueOf(pk);
			String[] m2 = baskets.split(",");
			for (int i = 0; i < m2.length; i++) {
				list2.add(m2[i]);
				if (m2[i].equals(pk2)) {
					list2.remove(i);
				}

			}
			String temp = "";
			for (int j = 0; j < list2.size(); j++) {
				temp += list2.get(j) + ",";

			}

			smember.setId(id);
			smember.setBasket(temp);
			member.updateShoppingBasket(smember);

			String[] m4 = temp.split(",");
			int[] m3 = new int[m4.length];
			for (int i = 0; i < m4.length; i++) {
				m3[i] = Integer.parseInt(m4[i]);
				cart.add((CartBean) dao.oneCart(m3[i]));
			}

			session.setAttribute("basket", cart);
			if (cart.size() == 0) {
				path = "shoppingList.do?cmd=shoppingList";
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return new ActionForWard(path, redirect);
	}

}
