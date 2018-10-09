package com.service;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import com.domain.Picture;
public interface IPictureService {
	
	public HashMap<String, String> selectCount()throws SQLException;
	
	public List<Picture> select(HashMap<String,Object> map)throws SQLException;
	
	public boolean savePicture(Picture picture)throws SQLException;
	
	public boolean updatePicture(Picture picture)throws SQLException;
	
	public boolean delete(int id)throws SQLException;
	
	public Picture selectById(int id)throws SQLException;

}
