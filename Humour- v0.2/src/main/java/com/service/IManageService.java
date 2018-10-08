package com.service;
import java.sql.SQLException;
public interface IManageService {
	//验证管理员登录
	public boolean select(String name,String password) throws SQLException;
}
