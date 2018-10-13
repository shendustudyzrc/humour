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
import com.domain.Emperor;
import com.service.IEmperorService;

@Service
public class EmperorServiceImp implements IEmperorService{
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
		String a=String.valueOf(session.selectOne("com.mybatis.EmperorMapper.selectCountById"));
		map.put("a", a);
		return map;
	}
	@Override
	public List<Emperor> select(HashMap<String, Object> map) throws SQLException {
		 SqlSession session=null;
		 session=sqlSessionFactory.openSession();
		 List<Emperor> list=new LinkedList<Emperor>();
		 list=session.selectList("com.mybatis.EmperorMapper.selectUserByMap",map);
		 return list;
	}
	@Override
	public boolean delete(int id) throws SQLException {
		boolean b=false;
		SqlSession session=null;
		session=sqlSessionFactory.openSession();
		int n=session.delete("com.mybatis.EmperorMapper.deleteUserById", id);
		if(n>0){
			b=true;
		}
		session.commit();
		return b;
	}

	@Override
	public boolean saveEmperor(Emperor emperor) throws SQLException {
		boolean b=false;
		SqlSession session=null;
		session=sqlSessionFactory.openSession();
		int n=session.insert("com.mybatis.EmperorMapper.insertUserByAdmin", emperor);
	    if(n>0){
	    	b=true;
	    }
	    session.commit();
	    return b;
	}
	@Override
	public boolean updateEmperor(Emperor emperor) throws SQLException {
		boolean b=false;
		SqlSession session=null;
		session=sqlSessionFactory.openSession();
		int n=session.update("com.mybatis.EmperorMapper.updateUser",emperor);
		if(n>0){
			b=true;
		}
		session.commit();
		return b;
	}
	@Override
	public Emperor selectById(int id) throws SQLException {
		Emperor emperor=new Emperor();
		SqlSession session=null;
		session=sqlSessionFactory.openSession();
		emperor=session.selectOne("com.mybatis.EmperorMapper.selectOneById", id);
		session.commit();
		return emperor;
	}
}
