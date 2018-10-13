package com.controller;
import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.service.IAdminService;

@RestController
@RequestMapping(value="/manage")
public class AdminController {
	@Autowired
	private IAdminService ims;

	@RequestMapping(value="/login",method=RequestMethod.GET)
	public ModelAndView doPost1(HttpServletRequest request,HttpServletResponse response)throws SQLException,IOException{
		  boolean mb=false;
		  String username=request.getParameter("username");
		  String password=request.getParameter("password");
		  mb=ims.select(username, password);
		  if(mb==true){
			  return new ModelAndView("admin/adminIndex");
		  }else{
			  return new ModelAndView("error");
		  }
	}
	/*
	  @RequestMapping(value="StudentInformationListjsp",method=RequestMethod.GET)
	  public void page(HttpServletRequest request,HttpServletResponse response) throws IOException{
		  HttpSession session=request.getSession();
	      List<User> list=new LinkedList<User>();
		  int currpage=1;
		  if(request.getParameter("page")!=null){
			  currpage=Integer.parseInt(request.getParameter("page"));
		  }
		  System.out.println(currpage);
		  HashMap<String,Object> map=new HashMap<String,Object>();
		  map.put("start",(currpage-1)*User.Page_size);
		  map.put("end", User.Page_size);
		  try {
			list=ius.select(map);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	      session.setAttribute("list", list);
	    
		  int pages;
		  HashMap<String, String> map1=new HashMap<String,String>();
		  try {
			map1=ius.selectCount();
		  }catch (SQLException e) {
			e.printStackTrace();
		  }
		  int count=Integer.parseInt(map1.get("a"));
		  System.out.println(count);
		 
		  if(count%User.Page_size==0){
				pages=count/User.Page_size;
		   }else{
				pages=count/User.Page_size+1;
			}
			StringBuffer sb=new StringBuffer();
			for(int i=1;i<=pages;i++){
				if(i==currpage){
					sb.append("["+i+"]");
				}else{
				
     			sb.append("<a href='http://localhost:9091/HelloJavaWorld/web/student/StudentInformationListjsp?page="+ i+ "'>"+i+"</a>");
		
				}
			
				sb.append(" ");
			}
		  session.setAttribute("bar", sb.toString());
	      response.sendRedirect("http://localhost:9091/HelloJavaWorld/StudentInformationList.jsp");
   }
	*/
/*	  @ResponseBody
	  @RequestMapping(method=RequestMethod.POST)
	  public boolean insert(User user) throws IOException, SQLException{
		  boolean b=ius.saveUser(user);
		  return b;
	  }*/

	/*  @RequestMapping(value="/delete1",method=RequestMethod.GET)
	  public void delete(HttpServletRequest request,HttpServletResponse response) throws SQLException, IOException{
		  System.out.println("������");
		  request.setCharacterEncoding("UTF-8");
		  int id=Integer.parseInt(request.getParameter("id"));
		  IBlogBiz ibb=new BlogBizImp();
		  int id1=47;
		  boolean b1=ibb.delete(id1);
		  boolean b=ius.delete(id);
		  System.out.println(id);
		  System.out.println(b);
		  if(b==true){
		  response.sendRedirect("http://localhost:9090/HelloJavaWorld/web/student/StudentInformationListjsp");
	      }
	 }*/

	/*  @ResponseBody
	  @RequestMapping(method=RequestMethod.PUT)
	  public boolean update(User user) throws SQLException, IOException{
		  int id=16;
		  String username=request.getParameter("username");
		  String sex=request.getParameter("sex");
		//String grade=request.getParameter("grade");
		  String hobby=request.getParameter("hobby");
		  String password="123456";
	    //String profession=request.getParameter("profession");
		  User user=new User();
		  user.setId(id);
		  user.setUsername(username);
		  user.setSex(sex);
		  user.setHobby(hobby);
		  user.setPassword(password);
		  boolean b=ius.updateUser(user);
		  return b;
		  System.out.println(b);
		  if(b==true){
			  response.sendRedirect("http://localhost:9090/HelloJavaWorld/web/student/StudentInformationListjsp");
		  }else{  
			  response.sendRedirect("http://localhost:9090/HelloJavaWorld/error.jsp");
		  }
	 }*/
}