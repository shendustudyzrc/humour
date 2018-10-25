package com.controller;
import java.io.IOException;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import com.domain.Orders;
import com.service.ICommentService;
import com.service.IOrdersService;
@RestController
@RequestMapping(value="/comment")
public class CommentController {
//	@Autowired
//	private ICommentService ius;
	@Autowired
	private IOrdersService ios;
	@RequestMapping(value="/commentList",method=RequestMethod.GET)
	public void doPostee(HttpServletRequest request,HttpServletResponse response)throws SQLException,IOException{
		System.out.println("bbbbbbbbbbb");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		String flag = request.getParameter("flag")+"";
//		long userid = (long) session.getAttribute("userid");
		long userid=(long)35;
		System.out.println(userid);
		if("a".equals(flag)){
			System.out.println("aaaaa");
//			List<Orders> list = iob.selectSorderCommentBiz(userid);
//			Map<String, Object> map1=new HashMap<String,Object>();
//			map1.put("userid", userid);
//			Map<String, Object> map=new HashMap<String,Object>();
			List<Orders> list=ios.selectSorderCommentDao(userid);
			System.out.println(list);
			session.setAttribute("commentorder", list);
			response.sendRedirect("../member_collect.jsp");
		}//else{
//			String content = request.getParameter("text");
//			long goodsid = Long.parseLong(request.getParameter("goodsid"));
//			//String goodsname = request.getParameter("goodsname");
//			ICommentBiz icmb = new CommentBizImp();
//			boolean b1 = false;
//			b1 = icmb.insertScommentBiz(userid, goodsid, content);
//			boolean b2 = false;
//			b2 = iob.updateScommentFlagBiz(userid, goodsid);
//			if(b1 && b2){
//				response.sendRedirect("com.services.DetailServlet?goods_id="+goodsid+"&flag=b");
//			}		
//		}
 }
}