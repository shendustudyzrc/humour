package com.service;
import java.sql.SQLException;
public interface IAdminService {
	
	public boolean select(String username,String password) throws SQLException;
}
