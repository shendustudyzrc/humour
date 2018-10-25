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
import com.domain.Address;
import com.domain.Orders;
import com.service.IAddressService;
import com.service.IOrdersService;
import com.service.IShopping_CartService;
@RestController
@RequestMapping(value="/join")
public class JoinController{
	@Autowired
	private IShopping_CartService iss;
	@Autowired
	private IOrdersService ios;
	@Autowired
	private IAddressService ias;
	@RequestMapping(value="/joingoumai",method=RequestMethod.GET)
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
		System.out.println("购买购买");
		HttpSession session = request.getSession();
		/*long userid = (long) session.getAttribute("userid");*/
		int i=35;
		long userid=(long)i;
		long price = Long.parseLong(request.getParameter("price"));
		long number = Long.parseLong(request.getParameter("number"));
		long goodsid = Long.parseLong(request.getParameter("id"));
		//String goodsname = request.getParameter("goodsname");
		String flag = request.getParameter("flag");
		
		if("a".equals(flag)){
			session.setAttribute("price", price);
			session.setAttribute("number", number);
			session.setAttribute("goodsid", goodsid);
			/*session.setAttribute("color_name", color_name);
			session.setAttribute("size_name", size_name);
			session.setAttribute("karat_name", karat_name);
			session.setAttribute("texture_name", texture_name);*/
			response.sendRedirect("../shopping_Cart/shoping_CartPage?control=a");
		}else{
//			IAddressBiz iab = new AddressBizImp();
	        List<Address> addlists = new ArrayList<Address>();
/*//	        addlists = iab.selectJAddByUserBiz(userid);
*/	        
	        addlists=ias.selectJAddByUserDao(userid);
	        session.setAttribute("addlists",addlists);
	        long goodsIdsL[] = {goodsid};
	        long prices[] = {price};
	        long counts[] = {number};
//			IShopping_CartBiz iscb = new Shopping_CartBizImp();
//			iscb.shoppingCartToOrders(userid, goodsIdsL, prices, counts);
			iss.shoppingCartToOrders(userid, goodsIdsL, prices, counts);
			/*IOrdersBiz iob = new OrdersBizImp();*/
          /*  List<Orders> list = iob.selectSorderByIdBiz(userid, goodsid);*/
			List<Orders> list=ios.selectSorderByIdBiz(userid, goodsid);
            session.setAttribute("orderlist", list);
			response.sendRedirect("../cart_order.jsp");
		}
	}
}
