<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%String contextPath=request.getContextPath();%>
<%@page import="java.util.List"%>
<%@page import="com.domain.Quote"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/bootstrap.min.css">
<title>幽默的总统</title>
<style type="text/css">
  *{
   margin:0px;
   padding:0px;
  }
  .container{
   width:100%;
   height:100%;
  }
  .header{
   width:100%;
   height:140px;
  }
  .header_up{
   width:100%;
   height:100px;
   background:#f6f6f6;
  }
  .header_nav{
   width:100%;
   height:40px;
   background:#96b97d;
  }
  .middle_body{
   top:140px;
   width:100%;
   background:#f6f6f6;
  }
  .body_left{
    width:10%;
    margin-left:25px;
    float:left;
    background:#f0f0f0;
  }
  .body_right{
   width:55%;
   margin-left:13%;
   background:#ffffff;
  }
  .footer{
   width:100%;
   height:80px;
  
  }
  .sousuo{
    padding-top:40px;
    margin-left:1100px;
  }
  .zrc{
   padding-top:40px;
   margin-left:120px;
   float:left;
  }
  .footer-left{
   width:75%;
   height:280px;
   background:#ffffff;
   float:left;
  }
  .footer-right{
   width:25%;
   margin-left:75%;
   height:280px;
   background:black;
  }
  .footer_table{
   margin-left:10%;
  }
  .header_nav ul{
   width:1200px;
   border:1px solid #000;
   margin:0px auto*;  
  }
  .header_nav ul li{
   list-style:none;
   float:left;
  }
  .header_nav ul li a{
   width:100px;
   height:28px;
   line-height:28px;
   display:block;
   color:#FFF;
   text-align:center;
   text-decoration:none;
   display:block;
  }
  .header_nav  ul li a:hover{
   width:80px;
   height：28px;
   line-height:10px;
   border:1px solid green;
   text-align:center;
   text-decoration:none;
  }
  .tree a{
   text-decoration:none; //去掉链接的下划线
  }
  .tree{
   height:35px;
   text-align:center;
  }
</style>
</head>
<body>
<div class="container">
 <div class="header">
     <div class="header_up">
     <div class="zrc">
     <span></span><h1>幽你Ai默</h1> 
     </div>
     <div class="sousuo">
       <form>
        <table border="1"><tr><td width="173px" height="40px">
        <input style="height:40px" type="text" name="name" placeholder="搜索信息" ></td><td><button  style="height:40px">搜索</button>
       </td></tr></table>
       </form>
     </div>
    </div>
    <div class="header_nav">
      <ul>
		<li><a href="index.jsp">首页</a></li>
		<li><a href="<%=contextPath%>/web/president/page_show">幽默的总统</a></li>
		<li><a href="<%=contextPath%>/web/emperor/page_show">幽默的皇帝</a></li>
		<li><a href="<%=contextPath%>/web/philosophy/page_show">幽默哲学</a></li>
		<li><a href="<%=contextPath%>/web/picture/page_show">幽默图片</a></li>
		<li><a href="<%=contextPath%>/web/quote/page_show">幽默名言</a></li>
	  </ul>
    </div>
  </div>
   <div class="middle_body" id="middle_body">
  <div class="body_left">
    
  </div>
  <div class="body_right">
 <table class="table table-striped table-bordered">
			<div class="container">
			<div class="table-responsive">
				<%
                     List<Quote> list=(List<Quote>)session.getAttribute("list");
                      for(Quote q:list){
	               %>
									<tr>
										
										<td><%=q.getName()%></td>
										<td><%=q.getContent()%></td>
										<td style="width: 50px"><button style="width: 60px"
												class="btn btn-primary btn-lg"
												onclick="shanchu('<%=q.getId()%>')">点赞</button>
										</td>
										<td style="width: 50px"><button style="width: 60px"
												class="btn btn-primary btn-lg"
												onclick="shanchu('<%=q.getId()%>')">转发</button>
										</td>
										<td style="width: 50px"><button style="width: 60px"
												class="btn btn-primary btn-lg"
												onclick="shanchu('<%=q.getId()%>')">收藏</button>
										</td>
									</tr>
									<%}%>
									<tr>
										<td align="center" colspan="11" bgcolor="white"><%=session.getAttribute("bar")%>
										</td>
									</tr>
								</div>
							</div> 
						</table>
   </div>
  </div>
  </div>
  <div class="footer" style="width:100%;height:90px;">
   <p style="text-align:center;color:green;">记得常逛该网站，能让你说话比唱歌好听,开心每一天</p>
   <p style="text-align:center;color:green;">Copy right www.nongcheng.com 欢迎你的到来</p>
   <p style="text-align:center;color:green;">幽默哲学站，琼ICP备010</p>
   </div>
</div>
</body>
</html>