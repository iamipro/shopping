package sist.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionManager;

import sist.bean.CartBean;
import sist.bean.ReplyBean;

public class CartDao {

	private SqlSessionFactory sqlSessionFactory;

	public CartDao() {
		sqlSessionFactory = SqlSessionFactoryManager.getSqlSessionFactory();
	}

	public boolean loginCheck(String id, String pw) {
		Object obj = sqlSessionFactory.openSession().selectOne("loginCheck", id);
		return obj != null && ((String) obj).equals(pw) ? true : false;
	}
  
	/*public boolean memberLoginCheck(String id, String pw){
		Object obj = sqlSessionFactory.openSession().selectOne("memberLoginCheck", id);
        return obj !=null && ((String)obj).equals(pw)?true: false;		
	}
	*/
	public List<CartBean> selectCart(HashMap<String, String>map) throws Exception {

		return sqlSessionFactory.openSession().selectList("selectCart", map);
	}

	public Integer getReplyNumber() throws Exception{
		return (Integer)sqlSessionFactory.openSession().selectOne("getReplyNumber");
		
	}
	
	public void insertReply(ReplyBean bean) throws Exception{
		SqlSession sqlSession = sqlSessionFactory.openSession();
		try {
			sqlSession.insert("insertReply", bean);
			sqlSession.commit();
			
		} catch (Exception e) {
			e.printStackTrace();
			sqlSession.rollback();
			// TODO: handle exception
		}finally{
			sqlSession.close();
			
		}
		
		
	}
	public List<ReplyBean> selectReply(int infoPk) throws Exception{
		return sqlSessionFactory.openSession().selectList("selectReply", infoPk);
	}
	
	
	
	public void insertProduct(CartBean bean) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		try {
			sqlSession.insert("insertProduct", bean);
			sqlSession.commit();

		} catch (Exception e) {
			e.printStackTrace();
			sqlSession.rollback();
			// TODO: handle exception
		} finally {
			sqlSession.close();
		}

	}

	public void deleteCart(int pk) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		try {
			sqlSession.delete("deleteCart", pk);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
			sqlSession.rollback();
			// TODO: handle exception
		} finally {
			sqlSession.close();
		}

	}

	public void modifyCart(CartBean bean) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		try {
			sqlSession.update("modifyCart", bean);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
			sqlSession.rollback();
			// TODO: handle exception
		} finally {
			sqlSession.close();
		}

	}

	public CartBean oneCart(int pk) throws Exception {
		return sqlSessionFactory.openSession().selectOne("oneCart", pk);
	}
    
	public List<CartBean> selectClient(HashMap<String, String>map) throws Exception{
		return sqlSessionFactory.openSession().selectList("selectClient",map);
	}
	
}
