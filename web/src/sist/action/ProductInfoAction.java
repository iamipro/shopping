package sist.action;

import javax.servlet.http.HttpServletRequest;

import sist.bean.CartBean;
import sist.bean.JsonChange;
import sist.bean.ReplyBean;
import sist.control.ActionForWard;
import sist.dao.CartDao;

public class ProductInfoAction implements Action {
	private String path;
	private boolean redirect;
	private CartDao dao = new CartDao();

	public ProductInfoAction() {
		super();
	}

	public ProductInfoAction(String path, boolean redirect) {
		super();
		this.path = path;
		this.redirect = redirect;
	}

	@Override
	public ActionForWard execute(HttpServletRequest request) {
		// TODO Auto-generated method stub

		try {

			int pk = Integer.parseInt(request.getParameter("pk"));
			String job = request.getParameter("job");
			CartBean bean = dao.oneCart(pk);
			if (job == null) {

				String js = JsonChange.Json(bean);
				request.setAttribute("js", js);
			} else if (job.equals("info")) {
				request.setAttribute("bean", bean);
				request.setAttribute("reply", dao.selectReply(pk));
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return new ActionForWard(path, redirect);
	}

}
