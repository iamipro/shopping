package sist.action;

import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import sist.bean.CartBean;
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

		CartBean bean = new CartBean();
		ArrayList<CartBean> cart = new ArrayList<CartBean>();
		HttpSession session = request.getSession();
		String job = request.getParameter("job");
		String pk2 =request.getParameter("pk");
		int pk=-1;
		if(pk2!=null){
			pk = Integer.parseInt(pk2);
		}
        
		String id = request.getParameter("id");
		System.out.println("CartAdd Id=" + id);
		System.out.println(pk);
		boolean state = false;
		try {

			if (pk != -1) {
				bean = (CartBean) dao.oneCart(pk);
			}

			String basket = member.getBaskets(id);
			System.out.println("basket="+basket);
			if (basket != "" && basket != null) {
				System.out.println("basket데이터 있음 if문 통과");
				String[] m = basket.split(",");
				int[] m2 = new int[m.length];
				for (int i = 0; i < m.length; i++) {
					m2[i] = Integer.parseInt(m[i]);
					cart.add((CartBean) dao.oneCart(m2[i]));
					System.out.println("m[i]="+m[i]);
					System.out.println("m2[i]="+m2[i]);
				}
                System.out.println(cart);
				if (cart == null) {
					cart = new ArrayList<CartBean>();
				}

				for (int i = 0; i < cart.size(); i++) {
					if (cart.get(i).getPk() == pk) {
						state = true;
					}
				}
			}
			if (!state) {
                 System.out.println("state문 통과");
				if (pk != -1) {
                      System.out.println("cart에 bean추가 및 basket설정");
					cart.add(bean);
					smember.setBasket(basket+String.valueOf(pk) + ",");
				}
				
               System.out.println("job="+job);
				
				if(job==null){
                     System.out.println("job=null");
					System.out.println("bean=" + bean);
					System.out.println("cart=" + cart);
					System.out.println("smember=" + smember);
					System.out.println("member=" + member);
					smember.setId(id);
					member.insertShoppingBasket(smember);
					session.setAttribute("basket", cart);
					request.setAttribute("id", id);
				}else if(job.equals("list")){
					System.out.println("job=list");
					session.setAttribute("basket", cart);
					request.setAttribute("id", id);
					
				}
			 
			}
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}

		return new ActionForWard(path, redirect);
	}

}
