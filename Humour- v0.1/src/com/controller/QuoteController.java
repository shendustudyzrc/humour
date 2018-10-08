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
import com.domain.Quote;
import com.service.IQuoteService;
@Controller
@RequestMapping(value="/quote")
public class QuoteController {
	@Autowired
	private IQuoteService iqs; 
	  @RequestMapping(value="quoteManage",method=RequestMethod.GET)
	  public void page(HttpServletRequest request,HttpServletResponse response) throws IOException{
		  
		  HttpSession session=request.getSession();
	      List<Quote> list=new LinkedList<Quote>(); 
		  int currpage=1;
		  if(request.getParameter("page")!=null){
			  currpage=Integer.parseInt(request.getParameter("page"));
		  }
		  HashMap<String,Object> map=new HashMap<String,Object>();
		  map.put("start",(currpage-1)*Quote.Page_size);
		  map.put("end", Quote.Page_size);
		  try {
			list=iqs.select(map);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	      session.setAttribute("list", list);
	   
		  int pages;
		  HashMap<String, String> map1=new HashMap<String,String>();
		  try {
			map1=iqs.selectCount();
		  }catch (SQLException e) {
			e.printStackTrace();
		  }
		  int count=Integer.parseInt(map1.get("a"));
		  System.out.println(count);
		  if(count%Philosophy.Page_size==0){
			  pages=count/Quote.Page_size;
		  }else{
			  pages=count/Quote.Page_size+1;
		  }
			StringBuffer sb=new StringBuffer();
			for(int i=1;i<=pages;i++){
				
				if(i==currpage){
					
					sb.append("["+i+"]");
				}else{
				
     			sb.append("<a href='http://localhost:9091/Humour/web/quote/quoteManage?page="+ i+ "'>"+i+"</a>");
		
				}
				
				sb.append(" ");
			}
		  session.setAttribute("bar", sb.toString());
	      response.sendRedirect("http://localhost:9091/Humour/QuoteList.jsp");
   }
	  
	  @ResponseBody
	  @RequestMapping(method=RequestMethod.POST)
	  public boolean insert(Quote quote) throws IOException, SQLException{
          boolean b=iqs.saveQuote(quote);
		  return b;
	  }
	  
	  @ResponseBody
	  @RequestMapping(method=RequestMethod.PUT)
	  public boolean update(Quote quote) throws SQLException, IOException{
		  boolean b=iqs.updateQuote(quote);
		  return b;
	 }
	 
	  @ResponseBody
	  @RequestMapping(value="/{id}",method=RequestMethod.DELETE)
	  public boolean delete(@PathVariable("id") int id) throws SQLException, IOException{	
		  boolean b=iqs.delete(id);
		  return b;
	 }

	  @RequestMapping(value="/selectHwById",method=RequestMethod.GET)
	  public void select(HttpServletRequest request,HttpServletResponse response) throws SQLException, IOException{
		  request.setCharacterEncoding("UTF-8");
		  int id = 0;
		  if(request.getParameter("searchcontent")!=""){
		     id=Integer.parseInt(request.getParameter("searchcontent"));
		      Quote quote=iqs.selectById(id);
			  HttpSession session=request.getSession();
			  List<Quote> list=new LinkedList<Quote>();
			  list.add(quote);
			  session.setAttribute("list", list);
		  }
	 }
	  @RequestMapping(value="page_show",method=RequestMethod.GET)
	  public void show_page(HttpServletRequest request,HttpServletResponse response) throws IOException{
		  
		  HttpSession session=request.getSession();
	      List<Quote> list=new LinkedList<Quote>(); 
		  int currpage=1;
		  if(request.getParameter("page")!=null){
			  currpage=Integer.parseInt(request.getParameter("page"));
		  }
		  HashMap<String,Object> map=new HashMap<String,Object>();
		  map.put("start",(currpage-1)*Quote.Page_size);
		  map.put("end", Quote.Page_size);
		  try {
			list=iqs.select(map);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	      session.setAttribute("list", list);
	   
		  int pages;
		  HashMap<String, String> map1=new HashMap<String,String>();
		  try {
			map1=iqs.selectCount();
		  }catch (SQLException e) {
			e.printStackTrace();
		  }
		  int count=Integer.parseInt(map1.get("a"));
		  System.out.println(count);
		  if(count%Philosophy.Page_size==0){
			  pages=count/Quote.Page_size;
		  }else{
			  pages=count/Quote.Page_size+1;
		  }
			StringBuffer sb=new StringBuffer();
			for(int i=1;i<=pages;i++){
				
				if(i==currpage){
					
					sb.append("["+i+"]");
				}else{	
     			sb.append("<a href='http://localhost:9091/Humour/web/quote/page_show?page="+ i+ "'>"+i+"</a>");
			  }
				sb.append(" ");
			}
		  session.setAttribute("bar", sb.toString());
	      response.sendRedirect("http://localhost:9091/Humour/Quote.jsp");
   }
}