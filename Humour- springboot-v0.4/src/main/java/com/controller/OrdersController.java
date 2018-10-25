package com.controller;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import com.domain.Orders;
import com.service.IOrdersService;
@RestController
@RequestMapping(value="/orders")
public class OrdersController{
	@Autowired
	private IOrdersService ios;

	@RequestMapping(value="/member_order",method=RequestMethod.GET)
	public void doPostee(HttpServletRequest request,HttpServletResponse response)throws SQLException,IOException{
		HttpSession session = request.getSession();
		String username =(String) session.getAttribute("username");//从表单获取得到的订单username
		List<Orders> list = new ArrayList<Orders>();
		//调用业务逻辑层
//		IOrdersBiz iob = new OrdersBizImp();
//		list = iob.selectJinfoBiz(username);
		list=ios.selectJinfoBiz(username);
		
		//把某一个用户的所有的订单返回给表单
		session.setAttribute("list", list);		
		response.sendRedirect("../member_order.jsp");
	}
}