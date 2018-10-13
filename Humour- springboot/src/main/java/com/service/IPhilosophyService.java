package com.service;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import com.domain.Philosophy;
public interface IPhilosophyService {
	
	public HashMap<String, String> selectCount()throws SQLException;
	
	public List<Philosophy> select(HashMap<String,Object> map)throws SQLException;
	
	public boolean savePhilosophy(Philosophy philosophy)throws SQLException;
	
	public boolean updatePhilosophy(Philosophy philosophy)throws SQLException;
	
	public boolean delete(int id)throws SQLException;
	
	public Philosophy selectById(int id)throws SQLException;

}
