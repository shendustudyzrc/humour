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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.domain.Picture;
import com.service.IPictureService;
@RestController
@RequestMapping(value="/picture")
public class PictureController {
	@Autowired
	private IPictureService ipis; 
	  @RequestMapping(value="PictureList",method=RequestMethod.GET)
	  public ModelAndView page(HttpServletRequest request,HttpServletResponse response) throws IOException{
	
		  HttpSession session=request.getSession();
	      List<Picture> list=new LinkedList<Picture>(); 
		  int currpage=1;
		  if(request.getParameter("page")!=null){
			  currpage=Integer.parseInt(request.getParameter("page"));
		  }
		  HashMap<String,Object> map=new HashMap<String,Object>();
		  map.put("start",(currpage-1)*Picture.Page_size);
		  map.put("end", Picture.Page_size);
		  try {
			list=ipis.select(map);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	      session.setAttribute("list", list);
	   
		  int pages;
		  HashMap<String, String> map1=new HashMap<String,String>();
		  try {
			map1=ipis.selectCount();
		  }catch (SQLException e) {
			e.printStackTrace();
		  }
		  int count=Integer.parseInt(map1.get("a"));
		
		  if(count%Picture.Page_size==0){
			  pages=count/Picture.Page_size;
		  }else{
			  pages=count/Picture.Page_size+1;
		  }
			StringBuffer sb=new StringBuffer();
			for(int i=1;i<=pages;i++){
				if(i==currpage){
					sb.append("["+i+"]");
				}else{	
     			sb.append("<a href='/picture/PictureList?page="+ i+ "'>"+i+"</a>");
				}
				sb.append(" ");
			}
		  session.setAttribute("bar", sb.toString());
		  return new ModelAndView("PictureList");
   }
	  
	  @ResponseBody
	  @RequestMapping(method=RequestMethod.POST)
	  public boolean insert(Picture picture) throws IOException, SQLException{
          boolean b=ipis.savePicture(picture);
		  return b;
	  }
	  
	  @ResponseBody
	  @RequestMapping(method=RequestMethod.PUT)
	  public boolean update(Picture picture) throws SQLException, IOException{
		  boolean b=ipis.updatePicture(picture);
		  return b;
	 }
	  @ResponseBody
	  @RequestMapping(value="/{id}",method=RequestMethod.DELETE)
	  public boolean delete(@PathVariable("id") int id) throws SQLException, IOException{
		  boolean b=ipis.delete(id);
		  return b;
	 }
	  
	  @RequestMapping(value="/selectHwById",method=RequestMethod.GET)
	  public void select(HttpServletRequest request,HttpServletResponse response) throws SQLException, IOException{
		  request.setCharacterEncoding("UTF-8");
		  int id = 0;
		  if(request.getParameter("searchcontent")!=""){
		     id=Integer.parseInt(request.getParameter("searchcontent"));
		     Picture picture=ipis.selectById(id);
			  HttpSession session=request.getSession();
			  List<Picture> list=new LinkedList<Picture>();
			  list.add(picture);
			  session.setAttribute("list", list);
		  }
	 }
	  
	  @RequestMapping(value="Picture",method=RequestMethod.GET)
	  public ModelAndView page_show(HttpServletRequest request,HttpServletResponse response) throws IOException{
		  HttpSession session=request.getSession();
	      List<Picture> list=new LinkedList<Picture>(); 
		  int currpage=1;
		  if(request.getParameter("page")!=null){
			  currpage=Integer.parseInt(request.getParameter("page"));
		  }
		  HashMap<String,Object> map=new HashMap<String,Object>();
		  map.put("start",(currpage-1)*Picture.Page_size);
		  map.put("end", Picture.Page_size);
		  try {
			list=ipis.select(map);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	      session.setAttribute("list", list);
	   
		  int pages;
		  HashMap<String, String> map1=new HashMap<String,String>();
		  try {
			map1=ipis.selectCount();
		  }catch (SQLException e) {
			e.printStackTrace();
		  }
		  int count=Integer.parseInt(map1.get("a"));
		  if(count%Picture.Page_size==0){
			  pages=count/Picture.Page_size;
		  }else{
			  pages=count/Picture.Page_size+1;
		  }
			StringBuffer sb=new StringBuffer();
			for(int i=1;i<=pages;i++){	
				if(i==currpage){	
					sb.append("["+i+"]");
				}else{
     			sb.append("<a href='/picture/Picture?page="+ i+ "'>"+i+"</a>");
				}
				sb.append(" ");
			}
		  session.setAttribute("bar", sb.toString());
	      return new ModelAndView("Picture");
   }
}