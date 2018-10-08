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
import com.domain.Philosophy;
import com.service.IPhilosophyService;
@Service
public class PhilosophyServiceImp implements IPhilosophyService{
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
		String a=String.valueOf(session.selectOne("com.mybatis.PhilosophyMapper.selectCountById"));
		map.put("a", a);
		return map;
	}
	@Override
	public List<Philosophy> select(HashMap<String, Object> map) throws SQLException {
		 SqlSession session=null;
		 session=sqlSessionFactory.openSession();
		 List<Philosophy> list=new LinkedList<Philosophy>();
		 list=session.selectList("com.mybatis.PhilosophyMapper.selectUserByMap",map);
		 return list;
	}
	@Override
	public boolean delete(int id) throws SQLException {
		boolean b=false;
		SqlSession session=null;
		session=sqlSessionFactory.openSession();
		int n=session.delete("com.mybatis.PhilosophyMapper.deleteUserById", id);
		if(n>0){
			b=true;
		}
		session.commit();
		return b;
	}

	@Override
	public boolean savePhilosophy(Philosophy philosophy) throws SQLException {
		boolean b=false;
		SqlSession session=null;
		session=sqlSessionFactory.openSession();
		int n=session.insert("com.mybatis.PhilosophyMapper.insertUserByAdmin", philosophy);
	    if(n>0){
	    	b=true;
	    }
	    session.commit();
	    return b;
	}
	@Override
	public boolean updatePhilosophy(Philosophy philosophy) throws SQLException {
		boolean b=false;
		SqlSession session=null;
		session=sqlSessionFactory.openSession();
		int n=session.update("com.mybatis.PhilosophyMapper.updateUser",philosophy);
		if(n>0){
			b=true;
		}
		session.commit();
		return b;
	}
	@Override
	public Philosophy selectById(int id) throws SQLException {
		Philosophy philosophy=new Philosophy();
		SqlSession session=null;
		session=sqlSessionFactory.openSession();
		philosophy=session.selectOne("com.mybatis.PhilosophyMapper.selectOneById", id);
		session.commit();
		return philosophy;
	}
}
