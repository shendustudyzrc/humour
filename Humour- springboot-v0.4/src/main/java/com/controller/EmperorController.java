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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import com.domain.Emperor;
import com.service.IEmperorService;
@RestController
@RequestMapping(value="/emperor")
public class EmperorController {
	@Autowired
	private IEmperorService ies; 
	  @RequestMapping(value="EmperorList",method=RequestMethod.GET)
	  public ModelAndView page(HttpServletRequest request,HttpServletResponse response) throws IOException{
		  HttpSession session=request.getSession();
	      List<Emperor> list=new LinkedList<Emperor>(); 
		  int currpage=1;
		  if(request.getParameter("page")!=null){
			  currpage=Integer.parseInt(request.getParameter("page"));
		  }
		  HashMap<String,Object> map=new HashMap<String,Object>();
		  map.put("start",(currpage-1)*Emperor.Page_size);
		  map.put("end", Emperor.Page_size);
		  try {
			list=ies.select(map);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	      session.setAttribute("list", list);
	   
		  int pages;
		  HashMap<String, String> map1=new HashMap<String,String>();
		  try {
			map1=ies.selectCount();
		  }catch (SQLException e) {
			e.printStackTrace();
		  }
		  int count=Integer.parseInt(map1.get("a"));
		  if(count%Emperor.Page_size==0){
			  pages=count/Emperor.Page_size;
		  }else{
			  pages=count/Emperor.Page_size+1;
		  }
			StringBuffer sb=new StringBuffer();
			for(int i=1;i<=pages;i++){
				
				if(i==currpage){
					
					sb.append("["+i+"]");
				}else{
				
     			sb.append("<a href='/emperor/EmperorList?page="+ i+ "'>"+i+"</a>");
		
				}
				
				sb.append(" ");
			}
		  session.setAttribute("bar", sb.toString());
		  return new ModelAndView("EmperorList");
   }
	  @RequestMapping(method=RequestMethod.POST)
	  public boolean insert(Emperor emperor) throws IOException, SQLException{
          boolean b=ies.saveEmperor(emperor);
          return b;
	  }
	  @RequestMapping(method=RequestMethod.PUT)
	  public boolean update(Emperor emperor) throws SQLException, IOException{
		  boolean b=ies.updateEmperor(emperor);
          return b;
	 }
	 
	  @RequestMapping(value="/{id}",method=RequestMethod.DELETE)
	  public boolean delete(@PathVariable("id") int id) throws SQLException, IOException{
		  boolean b=ies.delete(id);
		  return b;
	 }
	  

	  @RequestMapping(value="/selectHwById",method=RequestMethod.GET)
	  public void select(HttpServletRequest request,HttpServletResponse response) throws SQLException, IOException{
		  request.setCharacterEncoding("UTF-8");
		  int id = 0;
		  if(request.getParameter("searchcontent")!=""){
		     id=Integer.parseInt(request.getParameter("searchcontent"));
		     Emperor emperor=ies.selectById(id);
			  HttpSession session=request.getSession();
			  List<Emperor> list=new LinkedList<Emperor>();
			  list.add(emperor);
			  session.setAttribute("list", list);
			 
		  }
	 }
	  
	  @RequestMapping(value="Emperor",method=RequestMethod.GET)
	  public ModelAndView page_show(HttpServletRequest request,HttpServletResponse response) throws IOException{
		  HttpSession session=request.getSession();
	      List<Emperor> list=new LinkedList<Emperor>(); 
		  int currpage=1;
		  if(request.getParameter("page")!=null){
			  currpage=Integer.parseInt(request.getParameter("page"));
		  }
		  HashMap<String,Object> map=new HashMap<String,Object>();
		  map.put("start",(currpage-1)*Emperor.Page_size);
		  map.put("end", Emperor.Page_size);
		  try {
			list=ies.select(map);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	      session.setAttribute("list", list);
	   
		  int pages;
		  HashMap<String, String> map1=new HashMap<String,String>();
		  try {
			map1=ies.selectCount();
		  }catch (SQLException e) {
			e.printStackTrace();
		  }
		  int count=Integer.parseInt(map1.get("a"));
		  if(count%Emperor.Page_size==0){
			  pages=count/Emperor.Page_size;
		  }else{
			  pages=count/Emperor.Page_size+1;
		  }
			StringBuffer sb=new StringBuffer();
			for(int i=1;i<=pages;i++){
				
				if(i==currpage){
					
					sb.append("["+i+"]");
				}else{
				
     			sb.append("<a href='/emperor/Emperor?page="+ i+ "'>"+i+"</a>");
		
				}
				sb.append(" ");
			}
		  session.setAttribute("bar", sb.toString());
		return new ModelAndView("Emperor");
   }
}