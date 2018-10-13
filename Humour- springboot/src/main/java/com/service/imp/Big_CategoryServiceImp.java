package com.service.imp;
import java.io.IOException;
import java.io.Reader;
import java.sql.SQLException;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.stereotype.Service;
import com.domain.Big_Category;
import com.service.IBig_CategoryService;
@Service
public class Big_CategoryServiceImp implements IBig_CategoryService{
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
	public Big_Category selectDBigByIdDao(long id) throws SQLException {
		SqlSession session=null;
		session=sqlSessionFactory.openSession();
		Big_Category Big_Category=session.selectOne("com.mybatis.Big_CategoryMapper.selectBig_CategoryById",id);
		session.commit();
		return Big_Category;
	}
	@Override
	public Big_Category selectDBigByClassesDao(String classes) throws SQLException {
		SqlSession session=null;
		session=sqlSessionFactory.openSession();
		Big_Category Big_Category=session.selectOne("com.mybatis.Big_CategoryMapper.selectBig_CategoryByClasses",classes);
		session.commit();
		return Big_Category;
	}
	@Override
	public Big_Category selectDBigBySmall(String small_classes) {
		
		return null;
	}
	
}
