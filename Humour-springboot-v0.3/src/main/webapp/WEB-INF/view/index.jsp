<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
  String contextPath=request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="http://cdn.static.runoob.com/libs/jquery/1.10.2/jquery.min.js"></script>
<title>幽你一默</title>
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
        <span><a href="login.jsp">登录</a></span>&nbsp;&nbsp;&nbsp;<span><a href="reg.jsp">注册</a></span>
     </div>
    </div>
    <div class="header_nav">
      <ul>
		<li><a href="<%=contextPath%>/index">首页</a></li>
		<li><a href="<%=contextPath%>/president/President">幽默的总统</a></li>
		<li><a href="<%=contextPath%>/emperor/Emperor">幽默的皇帝</a></li>
		<li><a href="<%=contextPath%>/philosophy/Philosophy">幽默哲学</a></li>
		<li><a href="<%=contextPath%>/picture/Picture">幽默图片</a></li>
		<li><a href="<%=contextPath%>/quote/Quote">幽默名言</a></li>
	  </ul>
    </div>
  </div>
  <div class="middle_body" id="middle_body">
  <div class="body_left">
    
  </div>
  <div class="body_right">
   <div class="top" style="background-color:orange;">
       笑话共 261077 篇　最后更新：08月22日 03:30　今日已更新 6 次 还将更新 42 次 　　　　手机版：m.haha365.com
   </div>
   <div class="jiange" style="height:20px;background-color:#f6f6f6">
   </div>
   <div>
   <table width="800px" border="0" cellpadding="1" cellspacing="1">
     <tr style="height:80px"><td style="width:70%">搞笑图片》搞笑物件2018/7/4 15:42 <span style="margin-left:260px">分享到QQ|WECHAT|blog 25万<span><hr>最新柴油机车，不要吓着啊</td></tr>
     <tr style="height:80px"><td>搞笑图片》搞笑水果  <span style="margin-left:390px">分享到QQ|WECHAT|blog 25万<span><hr>一枚怀揣着葫芦心的西瓜</td></tr>
     <tr style="height:80px"><td>搞笑图片》真人搞笑  <span style="margin-left:390px">分享到QQ|WECHAT|blog 25万<span><hr>上了车就感觉有人一直在盯着</td></tr>
     <tr style="height:80px"><td align="center">更多搞笑图片</td></tr>
   </table>
   </div>
   <div>
   </div>
  </div>
  </div>
  <div class="footer" style="background-color:#f6f6f6">
  
   <p style="text-align:center;color:green;">记得常逛该网站，能让你说话比唱歌好听,开心每一天</p>
   <p style="text-align:center;color:green;">Copy right@zhangrichao www.zrc.com 欢迎你的到来</p>
   <p style="text-align:center;color:green;">100年历史的笑话站，琼ICP备010</p>
   </div>
</div>
     <script>
        function test() {
           /*   var s = "";
             s += "\r\n" + window.screen.height;
             var s1 = s - 220;
             var h = document.getElementsByClassName('middle_body')[0];
             h.style.height = s1 + "px"; */
             var s=$("#middle_body").height();
             var h=document.getElementsByClassName('middle_body')[0];
             var h1=document.getElementsByClassName('body_left')[0]; 
             h.style.height=s+"px";
             h1.style.height=s+"px"; 
        }
        test();
    </script>
</body>
</html>