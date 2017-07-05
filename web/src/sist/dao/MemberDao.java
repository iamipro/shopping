package sist.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import sist.bean.ShoppingMember;

public class MemberDao {
	private SqlSessionFactory sqlSessionFactory;

	public MemberDao() {
		sqlSessionFactory = SqlSessionFactoryManager.getSqlSessionFactory();
	}
	
	public Integer getNumber() throws Exception{
		SqlSession sqlSession = sqlSessionFactory.openSession();
		try {
		   return (Integer)sqlSession.selectOne("getNumber");
           			
		} catch (Exception e) {
			e.printStackTrace();
             return null;
			// TODO: handle exception
		}finally {
			sqlSession.close();
		}
		
	}
	public boolean memberLoginCheck(String id, String pw) {
		Object obj = sqlSessionFactory.openSession().selectOne("memberLoginCheck", id);
        return obj !=null && ((String)obj).equals(pw)?true: false;		
	}
	public void insertMember(ShoppingMember member) throws Exception{
		SqlSession sqlSession = sqlSessionFactory.openSession();
		try {
			sqlSession.insert("insertMember", member);
			sqlSession.commit();
			
		} catch (Exception e) {
			e.printStackTrace();
			sqlSession.rollback();
			// TODO: handle exception
		}finally{
			sqlSession.close();
		}
		
	}
	public String getBaskets(String id) throws Exception{
		SqlSession sqlSession = sqlSessionFactory.openSession();
		try {
			return (String)sqlSession.selectOne("getBaskets",id);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
			// TODO: handle exception
		}finally{
			sqlSession.close();
		}
		
	}
	public void updateShoppingBasket(ShoppingMember member) throws Exception{
		SqlSession sqlSession = sqlSessionFactory.openSession();
		try {
			sqlSession.update("updateShoppingBasket", member);
			sqlSession.commit();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			sqlSession.rollback();
		}finally {
			sqlSession.close();
		}
		
	}
	
	public void insertShoppingBasket(ShoppingMember member) throws Exception{
		SqlSession sqlSession = sqlSessionFactory.openSession();
		try {
			sqlSession.update("insertShoppingBasket",member);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
			sqlSession.rollback();
			// TODO: handle exception
		}finally{
			sqlSession.close();
		}
		
		
	}
	
}
