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

import com.domain.Philosophy;
import com.service.IPhilosophyService;
@Controller
@RequestMapping(value="/philosophy")
public class PhilosophyController {
	@Autowired
	private IPhilosophyService iphs; 
	  @RequestMapping(value="philosophyManage",method=RequestMethod.GET)
	  public void page(HttpServletRequest request,HttpServletResponse response) throws IOException{
		  
		  HttpSession session=request.getSession();
	      List<Philosophy> list=new LinkedList<Philosophy>(); 
		  int currpage=1;
		  if(request.getParameter("page")!=null){
			  currpage=Integer.parseInt(request.getParameter("page"));
		  }
		  HashMap<String,Object> map=new HashMap<String,Object>();
		  map.put("start",(currpage-1)*Philosophy.Page_size);
		  map.put("end", Philosophy.Page_size);
		  try {
			list=iphs.select(map);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	      session.setAttribute("list", list);
	   
		  int pages;
		  HashMap<String, String> map1=new HashMap<String,String>();
		  try {
			map1=iphs.selectCount();
		  }catch (SQLException e) {
			e.printStackTrace();
		  }
		  int count=Integer.parseInt(map1.get("a"));
		  System.out.println(count);
		  if(count%Philosophy.Page_size==0){
			  pages=count/Philosophy.Page_size;
		  }else{
			  pages=count/Philosophy.Page_size+1;
		  }
			StringBuffer sb=new StringBuffer();
			for(int i=1;i<=pages;i++){
				
				if(i==currpage){
					
					sb.append("["+i+"]");
				}else{
				
     			sb.append("<a href='http://localhost:9091/Humour/web/philosophy/philosophyManage?page="+ i+ "'>"+i+"</a>");
		
				}
				
				sb.append(" ");
			}
		  session.setAttribute("bar", sb.toString());
	      response.sendRedirect("http://localhost:9091/Humour/PhilosophyList.jsp");
   }
	  
	  @ResponseBody
	  @RequestMapping(method=RequestMethod.POST)
	  public boolean insert(Philosophy philosophy) throws IOException, SQLException{
          boolean b=iphs.savePhilosophy(philosophy);
		  return b;
	  }
	  
	  @ResponseBody
	  @RequestMapping(method=RequestMethod.PUT)
	  public boolean update(Philosophy philosophy) throws SQLException, IOException{
		  boolean b=iphs.updatePhilosophy(philosophy);
		  return b;
	 }
	  @ResponseBody
	  @RequestMapping(value="/{id}",method=RequestMethod.DELETE)
	  public boolean delete(@PathVariable("id") int id) throws SQLException, IOException{
		  boolean b=iphs.delete(id);
		  return b;
	 }

	  @RequestMapping(value="/selectHwById",method=RequestMethod.GET)
	  public void select(HttpServletRequest request,HttpServletResponse response) throws SQLException, IOException{
		  request.setCharacterEncoding("UTF-8");
		  int id = 0;
		  if(request.getParameter("searchcontent")!=""){
		     id=Integer.parseInt(request.getParameter("searchcontent"));
		     Philosophy philosophy=iphs.selectById(id);
			  HttpSession session=request.getSession();
			  List<Philosophy> list=new LinkedList<Philosophy>();
			  list.add(philosophy);
			  session.setAttribute("list", list);
			 /* response.sendRedirect("http://localhost:9090/Homework/HomeworkList.jsp");*/
		  }
	 }
	  @RequestMapping(value="page_show",method=RequestMethod.GET)
	  public void page_show(HttpServletRequest request,HttpServletResponse response) throws IOException{
		  
		  HttpSession session=request.getSession();
	      List<Philosophy> list=new LinkedList<Philosophy>(); 
		  int currpage=1;
		  if(request.getParameter("page")!=null){
			  currpage=Integer.parseInt(request.getParameter("page"));
		  }
		  HashMap<String,Object> map=new HashMap<String,Object>();
		  map.put("start",(currpage-1)*Philosophy.Page_size);
		  map.put("end", Philosophy.Page_size);
		  try {
			list=iphs.select(map);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	      session.setAttribute("list", list);
	   
		  int pages;
		  HashMap<String, String> map1=new HashMap<String,String>();
		  try {
			map1=iphs.selectCount();
		  }catch (SQLException e) {
			e.printStackTrace();
		  }
		  int count=Integer.parseInt(map1.get("a"));
		  System.out.println(count);
		  if(count%Philosophy.Page_size==0){
			  pages=count/Philosophy.Page_size;
		  }else{
			  pages=count/Philosophy.Page_size+1;
		  }
			StringBuffer sb=new StringBuffer();
			for(int i=1;i<=pages;i++){
				
				if(i==currpage){
					
					sb.append("["+i+"]");
				}else{
				
     			sb.append("<a href='http://localhost:9091/Humour/web/philosophy/page_show?page="+ i+ "'>"+i+"</a>");
		
				}
				
				sb.append(" ");
			}
		  session.setAttribute("bar", sb.toString());
	      response.sendRedirect("http://localhost:9091/Humour/Philosophy.jsp");
   }
}