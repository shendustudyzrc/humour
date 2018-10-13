package com.service;
import java.sql.SQLException;
import com.domain.Big_Category;
public interface IBig_CategoryService {
	  //通过id查找大类
		Big_Category selectDBigByIdDao(long id) throws SQLException;
		
		//通过大类名称找到大类
		Big_Category selectDBigByClassesDao(String classes) throws SQLException;
		//通过小类名称找到大类
		Big_Category selectDBigBySmall(String small_classes);
}
