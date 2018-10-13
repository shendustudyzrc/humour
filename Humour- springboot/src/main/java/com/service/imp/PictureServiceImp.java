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
import com.domain.Picture;
import com.service.IPictureService;

@Service
public class PictureServiceImp implements IPictureService{
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
		String a=String.valueOf(session.selectOne("com.mybatis.PictureMapper.selectCountById"));
		map.put("a", a);
		return map;
	}
	@Override
	public List<Picture> select(HashMap<String, Object> map) throws SQLException {
		 SqlSession session=null;
		 session=sqlSessionFactory.openSession();
		 List<Picture> list=new LinkedList<Picture>();
		 list=session.selectList("com.mybatis.PictureMapper.selectUserByMap",map);
		 return list;
	}
	@Override
	public boolean delete(int id) throws SQLException {
		boolean b=false;
		SqlSession session=null;
		session=sqlSessionFactory.openSession();
		int n=session.delete("com.mybatis.PictureMapper.deleteUserById", id);
		if(n>0){
			b=true;
		}
		session.commit();
		return b;
	}

	@Override
	public boolean savePicture(Picture picture) throws SQLException {
		boolean b=false;
		SqlSession session=null;
		session=sqlSessionFactory.openSession();
		int n=session.insert("com.mybatis.PictureMapper.insertUserByAdmin", picture);
	    if(n>0){
	    	b=true;
	    }
	    session.commit();
	    return b;
	}
	@Override
	public boolean updatePicture(Picture picture) throws SQLException {
		boolean b=false;
		SqlSession session=null;
		session=sqlSessionFactory.openSession();
		int n=session.update("com.mybatis.PictureMapper.updateUser",picture);
		if(n>0){
			b=true;
		}
		session.commit();
		return b;
	}
	@Override
	public Picture selectById(int id) throws SQLException {
		Picture picture=new Picture();
		SqlSession session=null;
		session=sqlSessionFactory.openSession();
		picture=session.selectOne("com.mybatis.PictureMapper.selectOneById", id);
		session.commit();
		return picture;
	}
}
