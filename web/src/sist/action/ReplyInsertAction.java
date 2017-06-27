package sist.action;

import javax.servlet.http.HttpServletRequest;

import sist.bean.ReplyBean;
import sist.control.ActionForWard;
import sist.dao.CartDao;

public class ReplyInsertAction implements Action {
	private String path;
	private boolean redirect;
	private CartDao dao = new CartDao();

	public ReplyInsertAction() {
		super();
	}

	public ReplyInsertAction(String path, boolean redirect) {
		super();
		this.path = path;
		this.redirect = redirect;
	}

	@Override
	public ActionForWard execute(HttpServletRequest request) {
		// TODO Auto-generated method stub
		String id = request.getParameter("id");
		String contents = request.getParameter("contents");
		int infoPk = Integer.parseInt(request.getParameter("infoPk"));
		String job = request.getParameter("job");
		 
		ReplyBean bean = new ReplyBean();
		try {

			bean.setNo(dao.getReplyNumber());
			bean.setId(id);
			bean.setContents(contents);
			bean.setInfoPk(infoPk);
			if(job==null){
				bean.setPnum(bean.getNo());
				bean.setRef(bean.getNo());
				
			}else if(job!=null && job.equals("reply")){
				bean.setRef(Integer.parseInt(request.getParameter("ref")));
				bean.setPnum(Integer.parseInt(request.getParameter("pnum")));
			}
			
		 
            dao.insertReply(bean);
		 
			path += "&pk=" + infoPk + "&job=info";
			System.out.println(bean);
            
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}


		return new ActionForWard(path, redirect);

	}

}
