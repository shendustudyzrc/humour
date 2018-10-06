package com.service;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import com.domain.Emperor;
public interface IEmperorService {
	
	public HashMap<String, String> selectCount()throws SQLException;
	
	public List<Emperor> select(HashMap<String,Object> map)throws SQLException;
	
	public boolean saveEmperor(Emperor emperor)throws SQLException;
	
	public boolean updateEmperor(Emperor emperor)throws SQLException;
	
	public boolean delete(int id)throws SQLException;
	
	public Emperor selectById(int id)throws SQLException;

}
