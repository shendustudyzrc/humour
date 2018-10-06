<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
  String contextPath=request.getContextPath();
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>欢迎登陆</title>
<link href="css/style.css" type="text/css" rel="stylesheet"/> 
</head>
<body>
<div class="wrap">
<!-- 头部复用start -->
 <iframe src="header.jsp" style="width:100%;height:67px;" frameborder="0" scrolling="no"></iframe>
<!-- 头部复用end -->
<!--start of container-->
<div class="container">
  <!-- 中间内容 -->
  <div class="cmain ddd">
     <!-- 内容右边 -->
     <div class="cort-right right">
       <div class="r_bg"></div> 
       <!--登陆框内--> 
      <form method="get" action="<%=contextPath%>/web/user/login" id="loginform"> 
       <div class="cr_border"> 
        <h3></h3> 
        <!--邮箱--> 
        <div id="cssName" class="the_input "> 
         <span class="member"></span> 
         <input type="text" placeholder="请输入用户名/邮箱/手机号码" id="txtName" class="al_Input dr_email" value="${cookie.uname.value}" name="name" /> 
         <i id="tname"></i> 
        </div> 
        <!--邮箱end--> 
        <!--密码--> 
        <div style="margin-top:15px;" class="the_input" id="cssPwd"> 
         <span class="password"></span> 
         <input type="password" placeholder="请输入密码" id="txtPwd" class="al_Input" value="" name="password"/> 
         <i id="pwdd"></i> 
        </div> 
        <!--验证码--> 
        <!--验证码end--> 
        <!--报错信息--> 
        <div class="ts_wrong" id="showWrong" style="display: none"> 
         <span id="wrong"> <span id="Label1" style="color:red;font-size:15px">用户名或密码错误！</span></span> 
        </div> 
        <!--报错信息end--> 
        <!--其他选项--> 
        <div class="other_input"> 
         <div class="left"> 
          <input type="checkbox" name="remember" id="check" value="1" /> 
          <label for="check">记住密码</label> 
         </div> 
         <div class="right"> 
          <a href="forget1.jsp" class="forget">忘记密码</a> 
         </div> 
        </div> 
        <!--其他选项end--> 
        <!--按钮--> 
        <div class="other_input"> 
         <div class="bt1 clearfix" id="login"> 
          <span class="left"><a href="reg.jsp">注册</a></span> 
          <span class="right focus"><input type="submit" value="登录" style="padding-top: 8px;background-color: transparent; border: none; font-size: 14px;color:white;font-family:'微软雅黑'"></span> 
         </div> 
        </div> 
        <!--按钮end--> 
        <!--其他合作--> 
        <div class="other_hz"> 
         <p> <span>更多合作网站帐号登录:</span> <a href="/syncLogin/qq" class="oth_qq" target="black"></a> <a href="/syncLogin/weibo" class="oth_wb" target="black"></a> <a href="/syncLogin/weixin" class="oth_wx" target="black"></a> </p> 
        </div> 
        <!--其他合作end--> 
       </div> 
       <input type="hidden" value="index.jsp" name="forward" /> 
      </form> 
      <!--登陆框内end--> 
     </div>
  </div>
</div>
  <!-- 尾部复用start -->
  <iframe src="end.jsp" style="width:100%;height:67px;" frameborder="0" scrolling="no"></iframe>
  <!-- 尾部复用end-->
</div>
</body>
</html>