package com.service.imp;
import java.io.IOException;
import java.io.Reader;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.stereotype.Service;
import com.domain.Big_Category;
import com.domain.Small_Category;
import com.service.ISmall_CategoryService;
@Service
public class Small_CategoryServiceImp implements ISmall_CategoryService{
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
		HashMap<String,Object> map=new HashMap<String,Object>();
		map.put("id", id);
//		/*long big_id=session.selectOne("com.mybatis.Small_CategoryMapper.selectSmall_CategoryByBig_id",id);*/
		HashMap<Object,Object> map1=(HashMap<Object, Object>) session.selectMap("com.mybatis.Small_CategoryMapper.selectSmall_CategoryByBig_id", "id");
	
		session.commit();
		return (long) map1.get("big_id");
	}
}
