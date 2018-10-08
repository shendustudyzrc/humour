package com.controller;
import java.io.IOException;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import com.domain.President;
import com.service.IPresidentService;
@Controller
@RequestMapping(value="/president")
public class PresidentController {
	@Autowired
	private IPresidentService ips; 
	  @RequestMapping(value="presidentManage",method=RequestMethod.GET)
	  public void page(HttpServletRequest request,HttpServletResponse response) throws IOException{
		 /* ModelAndView mav=new ModelAndView();*/
		  System.out.println("aa");
		  HttpSession session=request.getSession();
	      List<President> list=new LinkedList<President>(); 
		  int currpage=1;
		  if(request.getParameter("page")!=null){
			  currpage=Integer.parseInt(request.getParameter("page"));
		  }
		  HashMap<String,Object> map=new HashMap<String,Object>();
		  map.put("start",(currpage-1)*President.Page_size);
		  map.put("end", President.Page_size);
		  try {
			list=ips.select(map);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		  System.out.println(list);
	      session.setAttribute("list", list);
	   
		  int pages;
		  HashMap<String, String> map1=new HashMap<String,String>();
		  try {
			map1=ips.selectCount();
		  }catch (SQLException e) {
			e.printStackTrace();
		  }
		  int count=Integer.parseInt(map1.get("a"));
		  System.out.println(count);
		  if(count%President.Page_size==0){
			  pages=count/President.Page_size;
		  }else{
			  pages=count/President.Page_size+1;
		  }
			StringBuffer sb=new StringBuffer();
			for(int i=1;i<=pages;i++){
				
				if(i==currpage){
					
					sb.append("["+i+"]");
				}else{
				
     			sb.append("<a href='http://localhost:9090/maven-web-demo/president/presidentManage?page="+ i+ "'>"+i+"</a>");
		
				}
				
				sb.append(" ");
			}
		  session.setAttribute("bar", sb.toString());
	      response.sendRedirect("http://localhost:9090/maven-web-demo/PresidentList.jsp");

   }
	  @ResponseBody
	  @RequestMapping(method=RequestMethod.POST)
	  public boolean insert(President president) throws IOException, SQLException{  
		  boolean b=ips.savePresident(president);
		  return b;
	  }
	  @ResponseBody
	  @RequestMapping(method=RequestMethod.PUT)
	  public boolean update(President president) throws SQLException, IOException{
		  boolean b=ips.updatePresident(president);
		  return b;
	 }
	  @ResponseBody
	  @RequestMapping(value="/{id}",method=RequestMethod.DELETE)
	  public boolean delete(@PathVariable("id") int id) throws Exception{
		  boolean b=ips.delete(id);
		  return b;
	 }
	  

	  @RequestMapping(value="/selectHwById",method=RequestMethod.GET)
	  public void select(HttpServletRequest request,HttpServletResponse response) throws SQLException, IOException{
		  request.setCharacterEncoding("UTF-8");
		  int id = 0;
		  if(request.getParameter("searchcontent")!=""){
		     id=Integer.parseInt(request.getParameter("searchcontent"));
		     President president=ips.selectById(id);
			  HttpSession session=request.getSession();
			  List<President> list=new LinkedList<President>();
			  list.add(president);
			  session.setAttribute("list", list);
			 /* response.sendRedirect("http://localhost:9090/Homework/HomeworkList.jsp");*/
		  }
	 }
	  @RequestMapping(value="/page_show",method=RequestMethod.GET)
	  public void page_show(HttpServletRequest request,HttpServletResponse response) throws SQLException, IOException{

		  System.out.print("aa");
		  HttpSession session=request.getSession();
	      List<President> list=new LinkedList<President>(); 
		  int currpage=1;
		  if(request.getParameter("page")!=null){
			  currpage=Integer.parseInt(request.getParameter("page"));
		  }
		  HashMap<String,Object> map=new HashMap<String,Object>();
		  map.put("start",(currpage-1)*President.Page_size);
		  map.put("end", President.Page_size);
		  try {
			list=ips.select(map);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	      session.setAttribute("list", list);
	   
		  int pages;
		  HashMap<String, String> map1=new HashMap<String,String>();
		  try {
			map1=ips.selectCount();
		  }catch (SQLException e) {
			e.printStackTrace();
		  }
		  int count=Integer.parseInt(map1.get("a"));
		  System.out.println(count);
		  if(count%President.Page_size==0){
			  pages=count/President.Page_size;
		  }else{
			  pages=count/President.Page_size+1;
		  }
			StringBuffer sb=new StringBuffer();
			for(int i=1;i<=pages;i++){
				
				if(i==currpage){
					
					sb.append("["+i+"]");
				}else{
				
     			sb.append("<a href='http://localhost:9090/maven-web-demo/president/page_show?page="+ i+ "'>"+i+"</a>");
				}
				sb.append(" ");
			}
		  session.setAttribute("bar", sb.toString());
	      response.sendRedirect("http://localhost:9090/maven-web-demo/President.jsp");
	 }
}

