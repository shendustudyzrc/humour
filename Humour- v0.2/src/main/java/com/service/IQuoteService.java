package com.service;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import com.domain.Quote;
public interface IQuoteService {
	
	public HashMap<String, String> selectCount()throws SQLException;
	
	public List<Quote> select(HashMap<String,Object> map)throws SQLException;
	
	public boolean saveQuote(Quote quote)throws SQLException;
	
	public boolean updateQuote(Quote quote)throws SQLException;
	
	public boolean delete(int id)throws SQLException;
	
	public Quote selectById(int id)throws SQLException;

}
