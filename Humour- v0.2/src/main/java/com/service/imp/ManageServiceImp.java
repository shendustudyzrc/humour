package com.service.imp;

import java.io.IOException;
import java.io.Reader;
import java.sql.SQLException;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.stereotype.Service;
import com.domain.Manage;
import com.service.IManageService;
@Service
public class ManageServiceImp implements IManageService{
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
	public boolean select(String name, String password) throws SQLException {
		 boolean b=false;
		    SqlSession session=null;
		    session=sqlSessionFactory.openSession();
		    Manage manage=new Manage();
		    manage.setName(name);
		    manage.setPassword(password);
		    Manage m=session.selectOne("com.mybatis.ManageMapper.selectManageLogin", manage);
		    if(m!=null){
		    	b=true;
		    }
		    session.commit();
			return b;
	}
}
