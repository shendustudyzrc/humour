package com.service;
import java.sql.SQLException;
public interface IManageService {
	//��֤����Ա��¼
	public boolean select(String name,String password) throws SQLException;
}
