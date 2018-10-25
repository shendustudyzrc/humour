package com.service.imp;
import java.io.IOException;
import java.io.Reader;
import java.sql.SQLException;
import java.util.List;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.stereotype.Service;
import com.domain.Goods;
import com.domain.Small_Category;
import com.service.IGoodsService;
@Service
public class GoodsServiceImp implements IGoodsService{
    private static SqlSessionFactory sqlSessionFactory;
    private static Reader reader;
    static{
		  try {
			reader=Resources.getResourceAsReader("mybatis-config.xml");
			sqlSessionFactory=new SqlSessionFactoryBuilder().build(reader);
		} catch (IOException e) {
			e.printStackTrace();
		}  
	}
	@Override
	public List<Goods> selectGoodsBySmallDao(Small_Category small) throws SQLException {
		SqlSession session=null;
		session=sqlSessionFactory.openSession();
		long small_id=small.getId();
		List<Goods> goods=session.selectList("com.mybatis.GoodsMapper.selectGoodsById",small_id);
		session.commit();
		return goods;
	}
	@Override
	public List<Goods> selectDGoodsByBlockDao(String block) throws SQLException {
		SqlSession session=null;
		session=sqlSessionFactory.openSession();
		List<Goods> goods=session.selectList("com.mybatis.GoodsMapper.selectGoodsByName",block);
		session.commit();
		return goods;
	}
	@Override
	public Goods selectGoodsByGoodName(String name) throws SQLException {
		SqlSession session=null;
		session=sqlSessionFactory.openSession();
		Goods goods=session.selectOne("com.mybatis.GoodsMapper.selectGoodsByGoodsName",name);
		session.commit();
		return goods;
	}
}
