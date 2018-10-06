<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%String contextPath=request.getContextPath();%>
<%@page import="com.domain.Philosophy"%>
<%@page import="java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>幽默的哲学</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
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
   width:65%;
   margin-left:13%;
   background:#ffffff;
  }
  .footer{
  /*  position:fixed; */
   /* bottom:0px; */
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
  <div>
   </div>
   <div class="jiange" style="height:20px;background-color:#f6f6f6">
   </div>
   <div>
   <!--  <table width="779px" border="0" cellpadding="1" cellspacing="1">
     <tr style="height:100px"><td colspan="3">幽默是一种哲学 2018/7/4 15:42<span style="margin-left:260px">分享到QQ|WECHAT|blog 25万</span><hr>海纳百川，有容乃大；壁立千仞，无欲则刚；可以用来诵读的中学哲学都有哪些呢？下面让我为你一一介绍一下~</td></tr>
     <tr style="height:20px"><td colspan="3">中国经典名言名句</td></tr>
     <tr style="height:40px"><td style="width:30px;" align="center">1</td><td align="center">采得百花成蜜后，为谁辛苦为谁甜</td><td>蜜蜂</td></tr>
     <tr style="height:40px"><td align="center">2</td><td align="center">海纳百川，有容乃大。壁立千仞，无欲则刚</td><td>蜜蜂</td></tr>
     <tr style="height:40px"><td align="center">3</td><td align="center">大漠孤烟直，长河落日圆</td><td>王维《使至塞上》</td></tr>
     <tr style="height:40px"><td align="center">4</td><td align="center">欲穷千里目，更上一层楼</td><td>王之焕《登阙阳楼》</td></tr>
     <tr style="height:40px"><td align="center">5</td><td align="center">海内存知己，天涯若比邻</td><td>王勃《送杜少府之任蜀川》</td></tr>
     <tr style="height:40px"><td align="center">6</td><td align="center">曾经沧海难为水，除却巫山不是云</td><td>沧海一声笑</td></tr>
     <tr style="height:40px"><td align="center">7</td><td align="center">学而不思则罔，思而不学则殆</td><td>孔子</td></tr>
     <tr style="height:40px"><td align="center">8</td><td align="center">老骥伏枥，志在千里。壮士暮年，壮心不已</td><td>曹操《龟虽寿》</td></tr>
   </table>  -->
   <table class="table table-striped table-bordered">
			<div class="container">
			<div class="table-responsive">
				<%
                     List<Philosophy> list=(List<Philosophy>)session.getAttribute("list");
                      for(Philosophy p:list){
	               %>
									<tr>
										
										<td><%=p.getTitle()%></td>
										<td><%=p.getContent()%></td>
										<td style="width: 50px"><button style="width: 60px"
												class="btn btn-primary btn-lg"
												onclick="shanchu('<%=p.getId()%>')">点赞</button>
										</td>
										<td style="width: 50px"><button style="width: 60px"
												class="btn btn-primary btn-lg"
												onclick="shanchu('<%=p.getId()%>')">转发</button>
										</td>
										<td style="width: 50px"><button style="width: 60px"
												class="btn btn-primary btn-lg"
												onclick="shanchu('<%=p.getId()%>')">收藏</button>
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
  <div class="footer" style="background-color:#f6f6f6">
   <p style="text-align:center;color:green;">记得常逛该网站，能让你说话比唱歌好听,开心每一天</p>
   <p style="text-align:center;color:green;">Copy right@zhangrichao www.zrc.com 欢迎你的到来</p>
   <p style="text-align:center;color:green;">100年历史的笑话站，琼ICP备010</p>
   </div>
</div>
</body>
</html>