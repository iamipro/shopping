package sist.action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import sist.bean.CartBean;
import sist.control.ActionForWard;
import sist.dao.CartDao;

public class CartAddAction implements Action {
	private String path;
	private boolean redirect;
	private CartDao dao = new CartDao();

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
		boolean state = false;
		try {
			bean = (CartBean) dao.oneCart(pk);
			cart = (ArrayList<CartBean>) session.getAttribute("cart");
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
				session.setAttribute("cart", cart);
			}
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}

		return new ActionForWard(path, redirect);
	}

}
