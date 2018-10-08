package com.service;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import com.domain.President;
public interface IPresidentService {
	
	public HashMap<String, String> selectCount()throws SQLException;
	
	public List<President> select(HashMap<String,Object> map)throws SQLException;
	
	public boolean savePresident(President president)throws SQLException;
	
	public boolean updatePresident(President president)throws SQLException;
	
	public boolean delete(int id)throws SQLException;
	
	public President selectById(int id)throws SQLException;

}
