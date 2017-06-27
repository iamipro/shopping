package sist.dao;

import java.io.Reader;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class SqlSessionFactoryManager {
    private static SqlSessionFactory sqlSessionFactory;
	static {
		try {
			Reader reader =Resources.getResourceAsReader("sist/dao/Config.xml");
		    sqlSessionFactory = new SqlSessionFactoryBuilder().build(reader);
		    
		    
		} catch (Exception e) {
			 e.printStackTrace();
			// TODO: handle exception
		}
	}
	public static SqlSessionFactory getSqlSessionFactory(){
		return sqlSessionFactory;
	}
	
}
