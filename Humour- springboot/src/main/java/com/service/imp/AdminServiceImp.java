package com.service.imp;

import java.io.IOException;
import java.io.Reader;
import java.sql.SQLException;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.stereotype.Service;
import com.domain.Admin;
import com.service.IAdminService;
@Service
public class AdminServiceImp implements IAdminService{
	private static SqlSessionFactory sqlSessionFactory;
    private static Reader reader;
    static{
		  try {
			reader=Resources.getResourceAsReader("mybatis-config.xml");
			sqlSessionFactory=new SqlSessionFactoryBuilder().build(reader);
		} catch (IOException e) {
			e.printStackTrace();
		}  
	  }
	@Override
	public boolean select(String username, String password) throws SQLException {
		 boolean b=false;
		    SqlSession session=null;
		    session=sqlSessionFactory.openSession();
		    Admin admin=new Admin();
		    admin.setUserName(username);
		    admin.setPassword(password);
		    Admin m=session.selectOne("com.mybatis.AdminMapper.selectAdminLogin", admin);
		    if(m!=null){
		    	b=true;
		    }
		    session.commit();
			return b;
	}
}
