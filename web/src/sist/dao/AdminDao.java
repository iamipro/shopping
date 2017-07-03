package sist.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionManager;

public class AdminDao {

	 private SqlSessionFactory sqlSessionFactory;
	 
    public AdminDao(){
    	sqlSessionFactory =  SqlSessionFactoryManager.getSqlSessionFactory();
    }
	 
	public boolean idCheck(String id, String pw) throws Exception{
		Object obj =  sqlSessionFactory.openSession().selectOne("idCheck",id);
		System.out.println("admindao");
		System.out.println(obj);
		System.out.println(pw);
		return obj.equals(pw)?true:false;
	}
    
    
}
