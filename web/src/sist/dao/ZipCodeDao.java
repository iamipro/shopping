package sist.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;

import sist.bean.CartBean;
import sist.bean.ZipBean;

public class ZipCodeDao {
    private static ZipCodeDao instance = new ZipCodeDao();
	private SqlSessionFactory sqlSessionFactory;
   
   public static ZipCodeDao getInstance(){
	   return instance;
   }
	
   public ZipCodeDao(){
	   sqlSessionFactory = SqlSessionFactoryManager.getSqlSessionFactory();
       System.out.println("new ZipCode");
   }
	
	public List<ZipBean> selectZipCode(String dong) throws Exception{
		return sqlSessionFactory.openSession().selectList("selectZipCode", dong); 
		
	}
	
	public List<ZipBean> selectAllZipCode() throws Exception{
		return sqlSessionFactory.openSession().selectList("selectAllZipCode");
	}
	 
}
