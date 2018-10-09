package com.service.imp;
import java.io.IOException;
import java.io.Reader;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.stereotype.Service;
import com.domain.President;
import com.service.IPresidentService;

@Service
public class PresidentServiceImp implements IPresidentService{
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
	public HashMap<String, String> selectCount() throws SQLException {
		HashMap<String,String> map=new LinkedHashMap<String,String>();
		SqlSession session=null;
		session=sqlSessionFactory.openSession();
		String a=String.valueOf(session.selectOne("com.mybatis.PresidentMapper.selectCountById"));
		map.put("a", a);
		return map;
	}
	@Override
	public List<President> select(HashMap<String, Object> map) throws SQLException {
		 SqlSession session=null;
		 session=sqlSessionFactory.openSession();
		 List<President> list=new LinkedList<President>();
		 list=session.selectList("com.mybatis.PresidentMapper.selectUserByMap",map);
		 return list;
	}
	@Override
	public boolean delete(int id) throws SQLException {
		boolean b=false;
		SqlSession session=null;
		session=sqlSessionFactory.openSession();
		int n=session.delete("com.mybatis.PresidentMapper.deleteUserById", id);
		if(n>0){
			b=true;
		}
		session.commit();
		return b;
	}

	@Override
	public boolean savePresident(President president) throws SQLException {
		boolean b=false;
		SqlSession session=null;
		session=sqlSessionFactory.openSession();
		int n=session.insert("com.mybatis.PresidentMapper.insertUserByAdmin", president);
	    if(n>0){
	    	b=true;
	    }
	    session.commit();
	    return b;
	}
	@Override
	public boolean updatePresident(President president) throws SQLException {
		boolean b=false;
		SqlSession session=null;
		session=sqlSessionFactory.openSession();
		int n=session.update("com.mybatis.PresidentMapper.updateUser",president);
		if(n>0){
			b=true;
		}
		session.commit();
		return b;
	}
	@Override
	public President selectById(int id) throws SQLException {
		President president=new President();
		SqlSession session=null;
		session=sqlSessionFactory.openSession();
		president=session.selectOne("com.mybatis.PresidentMapper.selectOneById", id);
		session.commit();
		return president;
	}
}
