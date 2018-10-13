package com.service;
import java.sql.SQLException;
import java.util.List;

import com.domain.Big_Category;
import com.domain.Small_Category;
public interface ISmall_CategoryService {
	//通过小类Id搜索big_id
    long selectBig_idById(long id) throws SQLException;
	//通过小类名字搜索小类信息
	Small_Category selectDSmallByClasserDao(String classes) throws SQLException;
	//通过大类查找小类集合
	List<Small_Category> selectDSmallByBigDao(Big_Category big) throws SQLException;
}
