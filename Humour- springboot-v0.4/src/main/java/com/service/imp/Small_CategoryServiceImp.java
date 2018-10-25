package com.service.imp;
import java.io.IOException;
import java.io.Reader;
import java.sql.SQLException;
import java.util.List;
import java.util.Optional;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.dao.UserDao;
import com.domain.Big_Category;
import com.domain.Small_Category;
import com.service.ISmall_CategoryService;
@Service
public class Small_CategoryServiceImp implements ISmall_CategoryService{
	@Autowired
    private UserDao userDao;
	
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
	public Small_Category selectDSmallByClasserDao(String classes) throws SQLException {
		SqlSession session=null;
		session=sqlSessionFactory.openSession();
		Small_Category small_Category=session.selectOne("com.mybatis.Small_CategoryMapper.selectSmall_CategoryByClasses",classes);
		session.commit();
		return small_Category;
	}
	@Override
	public List<Small_Category> selectDSmallByBigDao(Big_Category big) throws SQLException {
		SqlSession session=null;
		session=sqlSessionFactory.openSession();
		long big_id=big.getId();
		List<Small_Category> small_Category=session.selectList("com.mybatis.Small_CategoryMapper.selectSmall_CategoryByBig_id",big_id);
		session.commit();
		return small_Category;
	}
	@Override
	public long selectBig_idById(long id) throws SQLException {
		SqlSession session=null;
		session=sqlSessionFactory.openSession();
		Optional<Small_Category> small_category=userDao.findById(id);
		Object big_id1=userDao.findById(id);
		System.out.println(big_id1+"aaaaaaaa");
		System.out.println(small_category.get().getBig_category()+"hahahah");
		
		long big_id=small_category.get().getBig_id();
		session.commit();
		return (long)(big_id);
	}
}
