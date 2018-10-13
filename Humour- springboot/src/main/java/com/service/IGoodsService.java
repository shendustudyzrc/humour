package com.service;
import java.sql.SQLException;
import java.util.List;

import com.domain.Goods;
import com.domain.Small_Category;
public interface IGoodsService {
	//通过小类搜索商品
	List<Goods> selectGoodsBySmallDao(Small_Category small) throws SQLException;
	//通过搜索框搜索
	List<Goods> selectDGoodsByBlockDao(String block) throws SQLException;
 }
