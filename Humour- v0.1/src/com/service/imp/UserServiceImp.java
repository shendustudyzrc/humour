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
import com.domain.User;
import com.service.IUserService;
@Service
public class UserServiceImp implements IUserService{
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
	public boolean insertUserDao(User user) throws SQLException {
		boolean b=false;
		SqlSession session=null;
		session=sqlSessionFactory.openSession();
		int count=session.insert("com.mybatis.UserMapper.insertUser",user);
		int count1=session.insert("com.mybatis.UserMapper.insertUserByEmail", user);
		if(count>0){
			b=true;
		}else if(count1>0){
			b=true;
		}
		session.commit();
		return b;
	}

	@Override
	public boolean select(String username, String password) throws SQLException {
		    boolean b=false;
		    SqlSession session=null;
		    session=sqlSessionFactory.openSession();
		    User user=new User();
		    user.setUsername(username);
		    user.setPassword(password);
		    User u=session.selectOne("com.mybatis.UserMapper.selectUserLogin", user);
		    if(u!=null){
		    	b=true;
		    }
		    session.commit();
			return b;
	}
	@Override
	public int selectIdByName(String username) throws SQLException {
		int a=0;
		/*HashMap<String,String> map=new LinkedHashMap<String,String>();*/
		SqlSession session=null;
	    session=sqlSessionFactory.openSession();
	    /*a=Integer.parseInt((String) session.selectOne("com.domain.UserMapper.selectIdByName", username));*/
		return a;
	}
	@Override
	public HashMap<String, String> selectCount() throws SQLException {
		HashMap<String,String> map=new LinkedHashMap<String,String>();
		SqlSession session=null;
		session=sqlSessionFactory.openSession();
		String a=String.valueOf(session.selectOne("com.mybatis.UserMapper.selectCountById"));
		map.put("a", a);
		return map;
	}
	@Override
	public List<User> select(HashMap<String, Object> map) throws SQLException {
	    SqlSession session=null;
	    session=sqlSessionFactory.openSession();
		List<User> list=new LinkedList<User>();
		list=session.selectList("com.mybatis.UserMapper.selectUserByMap",map);
	    return list;
	}
	@Override
	public boolean saveUser(User user) throws SQLException {
		boolean b=false;
		SqlSession session=null;
		session=sqlSessionFactory.openSession();
		int n=session.insert("com.mybatis.UserMapper.insertUserByAdmin", user);
	    if(n>0){
	    	b=true;
	    }
	    session.commit();
	    return b;
	}
	@Override
	public boolean delete(int id) throws SQLException {
		boolean b=false;
		SqlSession session=null;
		session=sqlSessionFactory.openSession();
		int n=session.delete("com.mybatis.UserMapper.deleteUserById", id);
		if(n>0){
			b=true;
		}
		session.commit();
		return b;
	}
	@Override
	public boolean updateUser(User user) throws SQLException {
		boolean b=false;
		SqlSession session=null;
		session=sqlSessionFactory.openSession();
		int n=session.update("com.mybatis.UserMapper.updateUser",user);
		if(n>0){
			b=true;
		}
		session.commit();
		return b;
	}
}
