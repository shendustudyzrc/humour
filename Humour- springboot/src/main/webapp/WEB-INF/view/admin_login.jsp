<%@ page language="java" pageEncoding="utf-8"%>
<html>
<head>
<meta charset="utf-8">
<link href="/h-ui/css/H-ui.min.css" rel="stylesheet" type="text/css" />
<link href="/h-ui.admin/css/H-ui.login.css" rel="stylesheet" type="text/css" />
<link href="/h-ui.admin/css/style.css" rel="stylesheet" type="text/css" />
<link href="/lib/Hui-iconfont/1.0.8/iconfont.css" rel="stylesheet" type="text/css" />
<title>后台登录</title>
     <script src="MyJs/ajax.js"></script>
<script>
  window.onload=function()
  {
	   var y=document.getElementById("yzm");
	   y.onclick=function()
	   {
	     y.src="image.jsp?"+Math.random();
	   }
       var z=document.form1.yzm;
       z.onkeyup=function()
       {
         sendRequest(this.value);
       }
   }
</script>
</head>
<body>
<input type="hidden" id="TenantId" name="TenantId" value="" />
<div class="header">
</div>
<div class="loginWraper">
  <div id="loginform" class="loginBox">
    <form name="form1" class="form form-horizontal" action="../manage/login" method="GET">
      <div class="row cl">
        <label class="form-label col-xs-3"><i class="Hui-iconfont">&#xe60d;</i></label>
        <div class="formControls col-xs-8">
          <input id="username" name="username" type="text" placeholder="账户" class="input-text size-L">
        </div>
      </div>
      <div class="row cl">
        <label class="form-label col-xs-3"><i class="Hui-iconfont">&#xe60e;</i></label>
        <div class="formControls col-xs-8">
          <input id="password" name="password" type="password" placeholder="密码" class="input-text size-L">
        </div>
      </div>
      <div class="row cl">
        <div class="formControls col-xs-8 col-xs-offset-3">
        <input style="height:30px;border:none;" type="text" name="yzm">
     <img id="yzm" alt="" src="image.jsp">
      <span style="font-size:10px"></span>
        </div>
      </div>
      <div class="row cl">
        <div class="formControls col-xs-8 col-xs-offset-3">
        </div>
      </div>
      <div class="row cl">
        <div class="formControls col-xs-8 col-xs-offset-3">
          <input name="" type="submit" class="btn btn-success radius size-L" value="&nbsp;登&nbsp;&nbsp;&nbsp;&nbsp;录&nbsp;" style="background-color:gray;border-color:gray">
        </div>
      </div>
    </form>
  </div>
</div>
<div class="footer">&copy;卓别林有限公司</div>
<script type="text/javascript" src="admin/lib/jquery/1.9.1/jquery.min.js"></script> 
<script type="text/javascript" src="admin/static/h-ui/js/H-ui.min.js"></script>
</body>
</html>