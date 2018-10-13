package com.controller;
import java.io.File;
import java.io.IOException;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import com.domain.User;
import com.service.IMD5Biz;
import com.service.IUserService;
import com.service.imp.MD5BizImp;
@RestController
@RequestMapping(value="/user")
public class UserController extends HttpServlet {
	@Autowired
	private IUserService ius;
	
	private static final long serialVersionUID = 1L;
	private String filePath;//the path of iamge saved
	private int maxFileSize = 1024 * 1024 * 1024;//the max size of the upload image
	private File file;//an object of File
	List<FileItem> fileItems = new ArrayList<FileItem>();// 存储图片的集合

	@RequestMapping(value="/register",method=RequestMethod.GET)
	public void doPostee(HttpServletRequest request,HttpServletResponse response)throws SQLException,IOException{
		 request.setCharacterEncoding("UTF-8");
		 boolean b=false;
		 User user = new User();
		 IMD5Biz imb=new MD5BizImp();
		 Long tellphone=Long.parseLong(request.getParameter("mobile")+"");
		 String tel_password=request.getParameter("mobile_pwd")+"";
		 String email=request.getParameter("email")+"";
		 String email_password=request.getParameter("email_pwd")+"";
		 if(email.equals("null")&&tellphone.equals("null")){
		    	response.sendRedirect("reg.jsp");
		  }else if(email.equals("null")){	
		    	user.setPhone(tellphone);
		 	    user.setUsername(request.getParameter("mobile")+"");
		 	    String password=imb.md5(tel_password); 
		 	    user.setPassword(password);
		    }else{
		    	user.setEmail(email);
		    	user.setUsername(email);
		        String password=imb.md5(email_password);
		    	user.setPassword(password);	 
		    }
	     b=ius.insertUserDao(user);
		 if(b==true){
			 response.sendRedirect("/login");
		 }else{
		     response.sendRedirect("/error");
		 }
	}
	

	@RequestMapping(value="/login",method=RequestMethod.GET)
	public void doPost1(HttpServletRequest request,HttpServletResponse response)throws SQLException,IOException{
		  request.setCharacterEncoding("UTF-8");
		  IMD5Biz imb=new MD5BizImp();
		  HttpSession session=request.getSession();
		  boolean ub=false;
		  String name=request.getParameter("name");
		  String password=request.getParameter("password");
		  ub=ius.select(name, imb.md5(password));
		  session.setAttribute("username", name);
		  if(ub==true){
			  response.sendRedirect("../index.jsp");
		  }else{
			  response.sendRedirect("../error");
		  }
	}
	
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
	
	  @RequestMapping(method=RequestMethod.POST)
	  public boolean insert(User user) throws IOException, SQLException{
		  boolean b=ius.saveUser(user);
		  return b;
	  }

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

	  @RequestMapping(method=RequestMethod.PUT)
	  public boolean update(User user) throws SQLException, IOException{
		  int id=16;
		/*  String username=request.getParameter("username");
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
		  user.setPassword(password);*/
		  boolean b=ius.updateUser(user);
		  return b;
		 /* System.out.println(b);
		  if(b==true){
			  response.sendRedirect("http://localhost:9090/HelloJavaWorld/web/student/StudentInformationListjsp");
		  }else{  
			  response.sendRedirect("http://localhost:9090/HelloJavaWorld/error.jsp");
		  }*/
	 }
	  
	  @RequestMapping(value="/UpdatePwd",method=RequestMethod.POST)
	  protected void UpdatePwd(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
			boolean b=false;
			HttpSession session =request.getSession();
			String username=(String) session.getAttribute("username");
			String ctl00$content$pwd1=request.getParameter("ctl00$content$pwd1");
			IMD5Biz imd = new MD5BizImp();
			String pwd = imd.md5(ctl00$content$pwd1);
			//修改用户密码到数据库
			User user=new User();
			user.setUsername(username);
			user.setPassword(pwd);
			b=ius.updatePassword(user);
			if(b)
			{
				response.sendRedirect("../member_index.jsp");
			}
			else{
				response.sendRedirect("error.jsp");
			}
		}
	  @RequestMapping(value="/SelectMemberInfo")
	  protected void SelectMemberInfo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {	
			HttpSession session=request.getSession();
			String username=(String) session.getAttribute("username");  //留做登录后使用
			User user=ius.selectUserByUsername(username);
		    session.setAttribute("u", user); 
		    String sex = user.getGender();
		    if("男".equals(sex)){
		    	List<String> list = new ArrayList<String>();
		    	list.add("男");
		    	session.setAttribute("gender", list);
		    }else if("女".equals(sex)){
		    	List<String> list = new ArrayList<String>();
		    	list.add("女");
		    	session.setAttribute("gender", list);
		    }else{
		    	List<String> list = new ArrayList<String>();
		    	list.add("请选择");
		    	list.add("男");
		    	list.add("女");
		    	session.setAttribute("gender", list);
		    }
			 response.sendRedirect("../member_info.jsp");
		}
	  @RequestMapping(value="/UpdateMemberInfo",method=RequestMethod.POST)
	  protected void doPost333(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException, SQLException {
		  request.setCharacterEncoding("UTF-8");
			HttpSession session = request.getSession();
			String flag = request.getParameter("flag");
			String username = (String) session.getAttribute("username"); // 留作登录再使用
			if("a".equals(flag)){
				boolean b = false;			
				String email = request.getParameter("email");
				System.out.println(email);
				String nickname = request.getParameter("nickname");
		        String sphone = request.getParameter("mobile");
				long phone = Long.parseLong(sphone);
				String real_name = request.getParameter("real_name");
				String id_card = request.getParameter("id_card");
				/*String gender = request.getParameter("sex");*/
				String gender = "男";
				System.out.println(gender);
				User u = new User();
				u.setUsername(username);
				u.setEmail(email);
				u.setNickname(nickname);
				u.setPhone(phone);
				u.setReal_name(real_name);
				u.setId_card(id_card);
				u.setGender(gender);
                b=ius.updateUserByUsername(u);
				if (b) {
					response.sendRedirect("/user/SelectMemberInfo");
				} else {
					response.sendRedirect("../error.jsp");
				}
			}else{
				boolean b = false;
				User u = new User();
				u.setImage_path(saveImage(request, response));
				b=ius.updateImageByUsername(u);
				if (b) {
					response.sendRedirect("/user/SelectMemberInfo/SelectMemberInfo");
				} else {
					response.sendRedirect("../error.jsp");
				}

			}
			
		}
	  
	//a method for saving image in server folder
		public String saveImage(HttpServletRequest request, HttpServletResponse response){
			String image_path ="";//back value whitch to insert into database
			
			String fileSystemPath = "C:/NewWeb/img";// 图片存储的大路径和项目的时候要改!!!s
			DiskFileItemFactory factory = new DiskFileItemFactory();
			factory.setSizeThreshold(maxFileSize);
			factory.setRepository(new File("c:\\temp"));

			ServletFileUpload upload = new ServletFileUpload(factory);
			upload.setSizeMax(maxFileSize);
			try {
				fileItems=upload.parseRequest(request);//get the upload file to the fileItems
			} catch (FileUploadException e1) {
				e1.printStackTrace();
			}
			filePath = fileSystemPath + "/pic";// 图片最终的存储路径
			//if the folder isn't exists,create;
			File f = new File(filePath);
			if (!f.exists()) {
				f.mkdirs();
			}
			System.out.println(fileItems.size());
			Iterator<FileItem> i = fileItems.iterator();
			while (i.hasNext()) {
				FileItem fi = i.next();
				if (!fi.isFormField()) {
					String fileName = fi.getName();
					System.out.println("fileName:"+fileName);
					SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmssSSS");
					String d = sdf.format(new Date());
					System.out.println("d"+d);
					System.out.println(fileName);
					if (fileName.lastIndexOf("\\") >= 0) {
						System.out.println("1");
						image_path = filePath + "/" + d +"_"+fileName.substring(fileName.lastIndexOf("\\")+1);
						file = new File(image_path);
					} else {
						image_path = filePath + "/" + d +"_"+fileName.substring(fileName.lastIndexOf("\\") + 1);
						file = new File(image_path);
					}
					try {
						fi.write(file);
					} catch (Exception e) {
						e.printStackTrace();
					}

				}
			}
			System.out.println(image_path);
			return image_path.substring(image_path.indexOf("img"));
		}
	
}