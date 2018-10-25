package com.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.domain.Shopping_Cart;
import com.service.IShopping_CartService;
@RestController
@RequestMapping(value="/shoppingDelete")
public class ShoppingDeleteController {
	@Autowired
	private static IShopping_CartService iss;
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if (!"null".equals(request.getParameter("cid") + "") && !"null".equals(request.getParameter("uid") + "")) {
			ShoppingDeleteController.doDeleteOneInfo(request, response);
		} else if (!"null".equals(request.getParameter("userid") + "")) {
			ShoppingDeleteController.doDeleterAllInfo(request, response);
		} else {
			response.sendRedirect("com.services.Shopping_CartServlet?control=b");
		}
	}
	// 根据用户的id和商品id删去一条信息
	public static void doDeleteOneInfo(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String cid = (request.getParameter("cid") + "").equals("null") ? "0" : (request.getParameter("cid") + "");
		String uid = (request.getParameter("uid") + "").equals("null") ? "0" : (request.getParameter("uid") + "");
		
		if (uid.equals("null") || uid.equals("")||cid.equals("null") || cid.equals("")) {
			response.sendRedirect("com.services.Shopping_CartServlet?control=b");
		} else {
			long goods_id = Long.parseLong(cid.trim());
			long user_id = Long.parseLong(uid.trim());
			// 调用业务逻辑层
//			IShopping_CartBiz iscb = new Shopping_CartBizImp();
			boolean b1 = false;
			// 根据用户的id和商品id删去一条信息
//			b1 = iscb.delectJCateByGidUidBiz(user_id, goods_id);
			b1 = iss.delectJCateByGidUidBiz(user_id, goods_id);
			if (b1) {
				// 删除成功，返回购物车
				doShow(request, response);
				response.sendRedirect("com.services.Shopping_CartServlet?control=b");
			} else {
				// 删除失败，也返回购物车
				response.sendRedirect("com.services.Shopping_CartServlet?control=b");
			}
		}
	}
	// 根据用户的id删去该用户的所有购物车的信息
	public static void doDeleterAllInfo(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		String userid = session.getAttribute("userid")+"";
		if (userid.equals("null") || userid.equals("")) {
			response.sendRedirect("com.services.Shopping_CartServlet?control=b");
		} else {
			long id = Long.parseLong(userid.trim());
//			IShopping_CartBiz iscb = new Shopping_CartBizImp();
			boolean b2 = false;
			
			/*b2 = iscb.delectJCateByUidBiz(id);*/
			b2 =iss.delectJCateByUidBiz(id);
			if (b2) {
				// 删除成功，返回购物车
				doShow(request, response);
				response.sendRedirect("com.services.Shopping_CartServlet?control=b");
			} else {
				// 删除失败，也返回购物车
				response.sendRedirect("com.services.Shopping_CartServlet?control=b");
			}
		}

	}

	public static void doShow(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		// String username = session.getAttribute("username")+""; //从表单获取用户名字
		String username = "user";// 测试，当有用户在线时删去此句
		// 通过用户名查找购物车集合
		List<Shopping_Cart> list = new ArrayList<Shopping_Cart>();
		/*IShopping_CartBiz iscb = new Shopping_CartBizImp();*/
//		list = iscb.selectCartsByUserBiz(username);
		list=iss.selectCartsByUserBiz(username);
		if (list.size() == 0) {
			// 如果集合为空就直接返回页面
			session.setAttribute("shopping_cart_lists", list);
		} else {
			// 把集合显示出去
			session.setAttribute("shopping_cart_lists", list);
		}

	}
}
