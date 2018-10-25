package com.controller;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Optional;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.dao.GoodDao;
import com.domain.Goods;
import com.domain.Image;
import com.domain.Philosophy;
import com.domain.Quote;
import com.service.IGoodsService;
import com.service.IImageService;
import com.service.IQuoteService;
@RestController
@RequestMapping(value="/detail")
public class DetailController {
	 @Autowired
	private IGoodsService igs;
	 @Autowired
	private IImageService iis;
	 @Autowired
	 private GoodDao goodDao;
	 @RequestMapping(value="detailList",method=RequestMethod.GET)
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		String flag = request.getParameter("flag");
//		IGoodsBiz igb = new GoodsBizImp();
		String goods_name = "";
		if("b".equals(flag)){
			long goodsid =Long.parseLong(request.getParameter("goods_id"));
//			Optional<Goods> goods = new Goods();
		/*	goods = igb.selectSbyIdBiz(goodsid);*/
			System.out.println(goodsid+"aaaa");
			Optional<Goods> goods=goodDao.findById(goodsid);
			goods_name = goods.get().getName();
		}else{
			goods_name = request.getParameter("goods_name");
		}
		System.out.println(goods_name);
		//获取商品详情
		Goods goods = new Goods();	
		goods=igs.selectGoodsByGoodName(goods_name);
		session.setAttribute("goods_list", goods);
//		goods_list = igb.selectSgoodsBiz(goods_name);
//		session.setAttribute("goods_list", goods_list);
		//获取图片
		long goods_id = goods.getId();
//		IImageBiz iib = new ImageBizImp();
		List<Image> images = new ArrayList<Image>();
		images=iis.selectGoodsByGoods_Id(goods_id);
//		images = iib.selectSimageBiz(goods_id);
		session.setAttribute("images", images);
		response.sendRedirect("../detail.jsp");
	}

}