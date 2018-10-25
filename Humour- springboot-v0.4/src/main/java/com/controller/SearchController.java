package com.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import com.domain.Big_Category;
import com.domain.Goods;
import com.domain.Small_Category;
import com.service.IBig_CategoryService;
import com.service.IGoodsService;
import com.service.ISmall_CategoryService;
@RestController
@RequestMapping(value="/Search")
public class SearchController {
	@Autowired
	private IGoodsService igs;
	@Autowired
	private ISmall_CategoryService iscs;
	@Autowired
	private IBig_CategoryService ibcs;
	@RequestMapping(value="/SearchController",method=RequestMethod.GET)
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
		System.out.println("hahahah");
		HttpSession session = request.getSession();
		String classes = request.getParameter("classes")+"";
		System.out.println(classes);
		String text = request.getParameter("searchText")+"";
		List<Goods> goodsBySearch = new ArrayList<Goods>();
		if(classes.equals("null")){
			//通过搜索框搜索
			System.out.println("搜索框搜索");
			String big_classes = request.getParameter("big_classes");
			session.setAttribute("big_category", doBigByBig(big_classes));//大类标题
			session.setAttribute("small_category", doSmallByBig(big_classes));//传递对应小类集合
			session.setAttribute("small","</span><span> <em>&gt;</em>"+text);//传递小类名称
			goodsBySearch=doSearchBlock(request, response, text);
		}else{
			//通过小类列表点击搜索
			
			//如果传回来的参数是大类名称的时候，显示所有内容
			if(classes.equals("幽默的书")){
				//搜索幽默的书的全部内容
				goodsBySearch=doSearchSmall(request, response, "中国式幽默");//搜索恋人絮语的内容
				goodsBySearch.addAll(doSearchSmall(request, response, "美国式幽默"));//搜索爱的轮回的内容并添加到集合中
				goodsBySearch.addAll(doSearchSmall(request, response, "德国式幽默"));//搜索爱之守护的内容并添加到集合中
				goodsBySearch.addAll(doSearchSmall(request, response, "英国式幽默"));//搜索爱的星芒的内容并添加到集合中
				goodsBySearch.addAll(doSearchSmall(request, response, "俄国式幽默"));//搜索爱的星芒的内容并添加到集合中
				session.setAttribute("big_category", doBigByBig(classes));//大类标题
				session.setAttribute("small_category", doSmallByBig(classes));//传递对应小类集合
				session.setAttribute("small", "");//传递小类名称
			}else {
				System.out.println("小类");
				//传回来的参数是小类名称
				goodsBySearch=doSearchSmall(request, response, classes);
				session.setAttribute("big_category", doBigBySmall(classes));//大类对象
				session.setAttribute("small_category", doSmallByBig(doBigBySmall(classes).getClasses()));//传递对应小类集合
				session.setAttribute("small", "</span><span> <em>&gt;</em>"+classes);//传递小类名称
			}	
		}
		
		session.setAttribute("goodsBySearch", goodsBySearch);//传递搜索结果
		response.sendRedirect("../lists.jsp");//重定向到搜索结果页面
		
	}
	//处理小类别搜索的方法
	public List<Goods> doSearchSmall(HttpServletRequest request, HttpServletResponse response,String classes)throws ServletException, IOException, SQLException {
		List<Goods> goodsBySearch = new ArrayList<Goods>();
	/*	IGoodsBiz igb = new GoodsBizImp();*/
/*		goodsBySearch = igs.selectDGoodsBySmallBiz(classes);*/
	/*	goodsBySearch=igs.selectGoodsBySmallDao(classes);*/
		Small_Category small_Category=iscs.selectDSmallByClasserDao(classes);
		goodsBySearch=igs.selectGoodsBySmallDao(small_Category);
		return goodsBySearch;
	}
	//通过搜索框搜索
	public List<Goods> doSearchBlock(HttpServletRequest request, HttpServletResponse response,String text)throws ServletException, IOException, SQLException {
		List<Goods> goodsBySearch = new ArrayList<Goods>();
//		IGoodsBiz igb = new GoodsBizImp();
//		goodsBySearch = igb.selectDGoodsByBlockBiz(text);
		goodsBySearch=igs.selectDGoodsByBlockDao(text);
		return goodsBySearch;
	}
	//通过大类标题找到大类
	public Big_Category doBigByBig(String big_classes) throws SQLException{
		Big_Category big = new Big_Category();
		/*IBig_CategoryBiz iscb = new Big_CategoryBizImp();*/
		/*big = iscb.selectDBigByBigBiz(big_classes);*/
		big=ibcs.selectDBigByClassesDao(big_classes);
		return big;
	}
	//通过大类标题找到小类集合
	public List<Small_Category> doSmallByBig(String big_classes) throws SQLException{
		/*ISmall_CategoryBiz iscb = new Small_CategoryBizImp();*/
	/*	Big_Category big = ibcd.selectDBigByClassesDao(big_classes, con);*/
		/*smalls = iscb.selectDSmallByBigBiz(big_classes);*/
		System.out.println(big_classes+"ccc");
		Big_Category big_Category=ibcs.selectDBigByClassesDao(big_classes);
		System.out.println(big_Category+"dd");
		List<Small_Category> small_Category=iscs.selectDSmallByBigDao(big_Category);
		System.out.println(small_Category);
		return small_Category;
	}
	//通过小类名称找到大类
	public Big_Category doBigBySmall(String small_classes) throws SQLException{
		System.out.println("通过小类名称找到大类");
		Big_Category big = new Big_Category();
/*		IBig_CategoryBiz iscb = new Big_CategoryBizImp();*/
		Small_Category small_Category =iscs.selectDSmallByClasserDao(small_classes);
		
		/*big = iscb.selectDBigBySmallBiz(small_classes);*/
//		big=small_Category.getBig_category();
	/*	long big_id=iscs.selectBig_idById(small_Category.getId());*/
		long big_id=1;
		big=ibcs.selectDBigByIdDao(big_id);
		
		return big;
	}
}
