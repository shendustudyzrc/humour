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
import com.domain.Quote;
import com.service.IQuoteService;
@Service
public class QuoteServiceImp implements IQuoteService{
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
		String a=String.valueOf(session.selectOne("com.mybatis.QuoteMapper.selectCountById"));
		map.put("a", a);
		return map;
	}
	@Override
	public List<Quote> select(HashMap<String, Object> map) throws SQLException {
		 SqlSession session=null;
		 session=sqlSessionFactory.openSession();
		 List<Quote> list=new LinkedList<Quote>();
		 list=session.selectList("com.mybatis.QuoteMapper.selectUserByMap",map);
		 return list;
	}
	@Override
	public boolean delete(int id) throws SQLException {
		boolean b=false;
		SqlSession session=null;
		session=sqlSessionFactory.openSession();
		int n=session.delete("com.mybatis.QuoteMapper.deleteUserById", id);
		if(n>0){
			b=true;
		}
		session.commit();
		return b;
	}

	@Override
	public boolean saveQuote(Quote quote) throws SQLException {
		boolean b=false;
		SqlSession session=null;
		session=sqlSessionFactory.openSession();
		int n=session.insert("com.mybatis.QuoteMapper.insertUserByAdmin", quote);
	    if(n>0){
	    	b=true;
	    }
	    session.commit();
	    return b;
	}
	@Override
	public boolean updateQuote(Quote quote) throws SQLException {
		boolean b=false;
		SqlSession session=null;
		session=sqlSessionFactory.openSession();
		int n=session.update("com.mybatis.QuoteMapper.updateUser",quote);
		if(n>0){
			b=true;
		}
		session.commit();
		return b;
	}
	@Override
	public Quote selectById(int id) throws SQLException {
		Quote quote=new Quote();
		SqlSession session=null;
		session=sqlSessionFactory.openSession();
		quote=session.selectOne("com.mybatis.QuoteMapper.selectOneById", id);
		session.commit();
		return quote;
	}
}
