package com.service;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import com.domain.User;
public interface IUserService {
	
		public boolean  insertUserDao(User user) throws SQLException;
		
		public boolean select(String username,String password) throws SQLException;
		
		public long selectIdByName(String username)throws SQLException;
		
		public HashMap<String, String> selectCount()throws SQLException;
		
		public List<User> select(HashMap<String,Object> map)throws SQLException;
		
		public boolean saveUser(User user)throws SQLException;
		
		public boolean delete(int id)throws SQLException;
		
		public boolean updateUser(User user)throws SQLException;
	    /*更新密码*/
		public boolean updatePassword(User user)throws SQLException;
		/*根据用户名查找当前用户*/
		public User selectUserByUsername(String username)throws SQLException;
		/*根据用户名更改当前用户*/
		public boolean updateUserByUsername(User user)throws SQLException;
		
		public boolean updateImageByUsername(User user)throws SQLException;
		
}
