<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.domain.Emperor" %>
<%@ page import="java.util.List" %>
<%String contextPath=request.getContextPath();%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>幽默的总统</title>
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
        <li><a href="<%=contextPath%>/index.jsp">首页</a></li>
		<li><a href="<%=contextPath%>/president/page_show">幽默的总统</a></li>
		<li><a href="<%=contextPath%>/emperor/page_show">幽默的皇帝</a></li>
		<li><a href="<%=contextPath%>/philosophy/page_show">幽默哲学</a></li>
		<li><a href="<%=contextPath%>/picture/page_show">幽默图片</a></li>
		<li><a href="<%=contextPath%>/quote/page_show">幽默名言</a></li>
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
   <!-- <table width="800px" border="0" cellpadding="1" cellspacing="1">
     <tr style="height:100px"><td colspan="3">皇帝的幽默 2018/7/4 15:42<span style="margin-left:260px">分享到QQ|WECHAT|blog 25万</span><hr>当我们面对挑战时，我们没有怯懦、没有退缩，更没有踟蹰不前。我们在上帝的关爱下眺望远方，我们在自由的道路上继续前进，我们的精神将永远闪耀着光芒</td></tr>
     <tr style="height:20px"></tr>
     <tr style="height:40px"><td align="center">南北朝的北齐高纬</td><td><textarea cols="100" rows="5">喜欢角色扮演当乞丐，有事没事就把自己扮成乞丐去要饭。他还特意在皇宫里设立自己的“乞丐村”，然后穿上破衣烂衫围着“乞丐村”乞讨要饭。</textarea></td></tr>
     <tr style="height:40px"><td align="center">五代十国后唐的李存勖</td><td><textarea cols="100" rows="5">这个皇帝有个明星梦，不亚于现代的粉丝热情。喜欢戏曲到无法自持，每次去看戏，还要亲自登场唱个痛快，还给自己起了个艺名叫“李天下”。
             有次唱得兴起，喊了两声“李天下”，被一个伶人抽俩嘴巴，别人都吓懵了，皇帝本人还挺淡定问他为什么打人，伶人说：“当今只有一个'李天下'，那就是皇上，你喊两声，莫非还有一个？”皇帝李存勖一听不仅不生气，反而开心的不得了，重重赏赐了这个伶人。</textarea></td></tr>
     <tr style="height:40px"><td align="center">明朝皇帝明宪宗朱见深</td><td><textarea cols="100" rows="5">恋母情节，竟喜欢比自己大17岁的奶妈。这位奶妈万贵妃仗着皇帝宠爱，在后宫作威作福，连皇后都不放在眼里，惹恼了吴皇后。吴皇后一气之下动手打了万贵妃，这一打代价可实着惨痛。明宪宗盛怒之下，竟然废后。</textarea></td></tr>
     <tr style="height:40px"><td align="center">“潮男”雍正皇帝</td><td><textarea cols="100" rows="5">在一幅《打虎行乐图》中，雍正皇帝打着领结，身着花纹衬衫，戴着假发打虎。这套洋装假发在当时绝对是惊世骇俗了，这在古代雍正皇帝不愧算是一代“潮男”了。</textarea></td></tr>
     <tr style="height:80px"><td align="center" colspan="3">更多皇帝幽默</td></tr>
   </table> -->
   <table class="table table-striped table-bordered">
			<div class="container">
			<div class="table-responsive">
				<%
                     List<Emperor> list=(List<Emperor>)session.getAttribute("list");
                      for(Emperor e:list){
	               %>
									<tr>
										
										<td><%=e.getName()%></td>
										<td><%=e.getStory()%></td>
										<td style="width: 50px"><button style="width: 60px"
												class="btn btn-primary btn-lg"
												onclick="shanchu('<%=e.getId()%>')">点赞</button>
										</td>
										<td style="width: 50px"><button style="width: 60px"
												class="btn btn-primary btn-lg"
												onclick="shanchu('<%=e.getId()%>')">转发</button>
										</td>
										<td style="width: 50px"><button style="width: 60px"
												class="btn btn-primary btn-lg"
												onclick="shanchu('<%=e.getId()%>')">收藏</button>
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