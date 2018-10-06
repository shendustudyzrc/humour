<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
  String contextPath=request.getContextPath();
%>
<html>
<head>
<title>用户注册页面</title>
 <link href="css/style.css" type="text/css" rel="stylesheet"/>
 <script src="js/reg.js" type="text/javascript"></script>
</head>
<body>
 <div class="wrap">
		<!--头部复用start-->
 <iframe src="header.jsp" style="width:100%;height:67;" frameborder="0" scrolling="no"></iframe>
<!--头部复用end-->
    <!-- starto of container -->
	<div class="container">
        <!--中间内容-->
        <div class="cmain ddd">
            <!--内容右边-->
            <div class="cort-right right">
            	<div class="r_bg"></div>
                <!--登陆框内-->
                <div class="cr_border">
                    <div class="tits">
                        <span class="focus ph"><em></em>手机注册</span>
                        <span class=" em"><em></em>邮箱注册</span>
                    </div>
                    <!--手机注册-->
                  <form method="get" action="<%=contextPath%>/web/user/register" class="form_first"> 
                    <input type="hidden" value="1" name="type">
                    <input type="hidden" value="login.jsp" name="forward">
                    <input type="hidden" value="H6mY5VyS" name="skey">
                    <div style="" class="photo_show">
                        <!--手机号-->
                        <div class="the_input">
                           <span class="member"></span>
                           <input type="text" placeholder="请输入手机号码" class="al_Input dr_photo" value="" name="mobile"  pattern="[0-9]{11}">
                        </div>
                        <!--手机号end-->
                        <!--密码-->
                       
                        <!--密码-->
                        <div class="the_input ">
                           <span class="pw"></span>
                           <input  id="password1" type="password" placeholder="请输入密码" maxlength="21" class="al_Input dr_photo" value="" name="mobile_pwd" placeholder="不少于5位" pattern="[a-zA-Z_0-9]{5,30}">
                        </div>
                        <!--密码end-->
                        <!--密码-->
                        <div class="the_input ">
                           <span class="pw"></span>
                           <input  id="password2" type="password" placeholder="确认密码" maxlength="21" class="al_Input dr_photo" value="" name="mobile_pwd_confirm" pattern="[a-zA-Z_0-9]{5,30}">
                        </div>
                        <!--密码end-->

                        <div class="other_input">
                        <div class="left">
                            <input type="checkbox" name="mobile_check" id="check">
                            <label for="check">已经仔细阅读并同意<a target="_blank" href="index.jsp/help_se/49.jsp">《ZRC网站用户注册协议》</a></label>
                        </div>
                        </div>
                        
                        <!--其他合作-->
                        <div class="other_hz">
                            <input type="submit" value="立即注册" id="mobile_reg" class="up">
                        </div>
                        <!--其他合作end-->
                    </div>
                    </form>
                    <!--手机注册end-->

                    <!--邮箱注册-->
                    <form method="post" action="RegisterServlet" class="form_second">
                    <input type="hidden" value="2" name="type">
                    <input type="hidden" value="login.jsp" name="forward">
                    <div style="display:none" class="photo_show">
                        <!--邮箱-->
                        <div class="the_input ">
                           <span class="member"></span>
                           <input type="text" placeholder="请输入邮箱" class="al_Input dr_photo" value="" name="email" pattern="[a-zA-Z0-9_]{1,20}@[a-zA-Z0-9]{1,10}.[a-zA-Z]{1,10}">
                        </div>
                        <!--邮箱end-->
                        
                        <!--密码-->
                        <div class="the_input ">
                           <span class="pw"></span>
                           <input  id="password3" type="password" placeholder="请输入密码" maxlength="21" class="al_Input dr_photo" value="" name="email_pwd"  placeholder="不少于5位" pattern="[a-zA-Z_0-9]{5,30}" >
                        </div>
                        <!--密码end-->
                        <!--密码-->
                        <div class="the_input ">
                           <span class="pw"></span>
                           <input  id="password4" type="password" placeholder="确认密码" maxlength="21" class="al_Input dr_photo" value="" name="email_pwd_confirm"   pattern="[a-zA-Z_0-9]{5,30}">
                        </div>
                        <!--密码end-->

                       
                        <div class="other_input">
                        <div class="left">
                            <input type="checkbox" id="email_check" name="email_check">
                            <label for="email_check">已经仔细阅读并同意<a target="_blank" href="index.jsp/help_se/49.jsp">《ZRC网站用户注册协议》</a></label>
                        </div>
                        </div>
                        
                        <!--其他合作-->
                        <div class="other_hz">
                            <input type="submit" value="立即注册" id="email_reg" class="up">
                        </div>
                        <!--其他合作end-->
                    </div>
                    </form>
                         <div><span style="font-size: 12px; display: inline-block;padding-top: 10px;float:left;margin-left: 176px; ">已经有账号，</span><span style="color: #8e4f1b; font-size: 12px; display: inline-block; float: right; margin-right: 90px; padding-top: 10px;"><a href="login.jsp">立即登录</a></span></div>
                    <!--邮箱注册end-->
                </div>
                <!--登陆框内end-->
            </div>
            <!--内容右边end-->
        </div>
        <!--中间内容end-->
    </div>
    <!-- end of container -->
     <!--底部复用start-->
     <iframe src="end.jsp" style="width:100%;height:67px;" frameborder="0" scrolling="no"></iframe>
     <!--底部复用end-->
</div>
<script src="js/jquery.js" type="text/javascript"></script>
<script type="text/javascript">
        $(function(){
            //切换tab
            $(".tits .ph").click(function(event) {
                $(this).addClass('focus').siblings().removeClass('focus')
                $(".photo_show").eq(0).show()
                $(".photo_show").eq(1).hide()
            });
            
            $(".tits .em").click(function(event) {
                $(this).addClass('focus').siblings().removeClass('focus')
                $(".photo_show").eq(1).show()
                $(".photo_show").eq(0).hide()
            });
            
            
            //验证参数
            $('.up').click(function(){
                $('.ts_wrong').remove();
                $('.al_Input').removeClass('error');
                //判断是邮箱还是手机
                if($('.em').hasClass('focus')){
                    //邮箱登录
                    var email = $('input[name="email"]').val();
                    if(isNull(email)){
                        var notice = '<div class="ts_wrong"><span id="wrong">请输入邮箱！</span></div>';
                        $('input[name="email"]').parent().after(notice);
                        $('input[name="email"]').addClass('error');
                        return false;
                    }
                    
                    if(!isEmail(email)){
                        var notice = '<div class="ts_wrong"><span id="wrong">邮箱格式错误 请重新输入！</span></div>';
                        $('input[name="email"]').parent().after(notice);
                        $('input[name="email"]').addClass('error');
                        return false;
                    }
                    
                    var pwd = $('input[name="email_pwd"]').val();
                    if(isNull(pwd)){
                        var notice = '<div class="ts_wrong"><span id="wrong">请输入密码！</span></div>';
                        $('input[name="email_pwd"]').parent().after(notice);
                        $('input[name="email_pwd"]').addClass('error');
                        return false;
                    }
                    
                    if(pwd.length < 6){
                        var notice = '<div class="ts_wrong"><span id="wrong">密码长度为6~21个字符！</span></div>';
                        $('input[name="email_pwd"]').parent().after(notice);
                        $('input[name="email_pwd"]').addClass('error');
                        return false;
                    }
                    
                    var pwd_confirm = $('input[name="email_pwd_confirm"]').val();
                    if(isNull(pwd_confirm)){
                        var notice = '<div class="ts_wrong"><span id="wrong">请输入确认密码！</span></div>';
                        $('input[name="email_pwd_confirm"]').parent().after(notice);
                        $('input[name="email_pwd_confirm"]').addClass('error');
                        return false;
                    }
                    
                    if(pwd != pwd_confirm){
                        var notice = '<div class="ts_wrong"><span id="wrong">密码与确认密码不一致 请重新输入！</span></div>';
                        $('input[name="email_pwd_confirm"]').parent().after(notice);
                        $('input[name="email_pwd_confirm"]').addClass('error');
                        return false;
                    }
                    
                    var code = $('input[name="email_code"]').val();
                    if(isNull(code)){
                        var notice = '<div class="ts_wrong"><span id="wrong">请输入验证码！</span></div>';
                        $('input[name="email_code"]').parent().after(notice);
                        $('input[name="email_code"]').addClass('error');
                        return false;
                    }
                    
                                    
                    if(!$('input[name="email_check"]').is(':checked')){
                        var notice = '<div class="ts_wrong"><span id="wrong">请阅读并同意用户注册协议！</span></div>';
                        $('input[name="email_check"]').parent().parent().after(notice);
                        return false;
                    }

                    // $('#mobile_reg').click(ag_Reg_click_Mobile);
                    // 注册统计
                    ag_Reg_click_Email();
                    
                    //检测邮箱是否使用过
                    $.ajax({
                        type: "POST",
                        url: "/sign/validEmail",
                        data: "email="+email,
                        success: function(msg){
                          if(msg == 1){
                              var notice = '<div class="ts_wrong"><span id="wrong">该邮箱已被注册！</span></div>';
                              $('input[name="email"]').parent().after(notice);
                              $('input[name="email"]').addClass('error');
                              return false;
                          }else{
                              $.ajax({
                                type: "POST",
                                url: "/sign/validEmailCode",
                                data: "code="+code,
                                success: function(msg){
                                  if(msg == 1){
                                      var notice = '<div class="ts_wrong"><span id="wrong">验证码错误！</span></div>';
                                      $('.ts_wrong').remove();
                                      $('input[name="email_code"]').parent().after(notice);
                                      $('input[name="email_code"]').addClass('error');
                                      return false;
                                  }else{
                                      $('.form_second').submit();
                                  }
                                }
                             });
                          }
                        }
                     });
                     
                     
                    
                    
                }
                
                if($('.ph').hasClass('focus')){
                    //手机登录
                    var mobile = $('input[name="mobile"]').val();
                    if(isNull(mobile)){
                        var notice = '<div class="ts_wrong"><span id="wrong">请输入手机号码！</span></div>';
                        $('input[name="mobile"]').parent().after(notice);
                        $('input[name="mobile"]').addClass('error');
                        return false;
                    }
                    
                    if(!checkMobile(mobile)){
                        var notice = '<div class="ts_wrong"><span id="wrong">手机号码格式错误 请重新输入！</span></div>';
                        $('input[name="mobile"]').parent().after(notice);
                        $('input[name="mobile"]').addClass('error');
                        return false;
                    }
                    
                    var code = $('input[name="mobile_code"]').val();
                    if(isNull(code)){
                        var notice = '<div class="ts_wrong"><span id="wrong">请输入验证码！</span></div>';
                        $('input[name="mobile_code"]').parent().after(notice);
                        $('input[name="mobile_code"]').addClass('error');
                        return false;
                    }
                    
                    var pwd = $('input[name="mobile_pwd"]').val();
                    if(isNull(pwd)){
                        var notice = '<div class="ts_wrong"><span id="wrong">请输入密码！</span></div>';
                        $('input[name="mobile_pwd"]').parent().after(notice);
                        $('input[name="mobile_pwd"]').addClass('error');
                        return false;
                    }
                    
                    if(pwd.length < 6){
                        var notice = '<div class="ts_wrong"><span id="wrong">密码长度为6~21个字符！</span></div>';
                        $('input[name="mobile_pwd"]').parent().after(notice);
                        $('input[name="mobile_pwd"]').addClass('error');
                        return false;
                    }
                    
                    var pwd_confirm = $('input[name="mobile_pwd_confirm"]').val();
                    if(isNull(pwd_confirm)){
                        var notice = '<div class="ts_wrong"><span id="wrong">请输入确认密码！</span></div>';
                        $('input[name="mobile_pwd_confirm"]').parent().after(notice);
                        $('input[name="mobile_pwd_confirm"]').addClass('error');
                        return false;
                    }
                    
                    if(pwd != pwd_confirm){
                        var notice = '<div class="ts_wrong"><span id="wrong">密码与确认密码不一致 请重新输入！</span></div>';
                        $('input[name="mobile_pwd_confirm"]').parent().after(notice);
                        $('input[name="mobile_pwd_confirm"]').addClass('error');
                        return false;
                    }      
                    
                    if(!$('input[name="mobile_check"]').is(':checked')){
                        var notice = '<div class="ts_wrong"><span id="wrong">请阅读并同意用户注册协议！</span></div>';
                        $('input[name="mobile_check"]').parent().parent().after(notice);
                        return false;
                    }
                    
                    //检测手机号码是否使用过
                    $.ajax({
                        type: "POST",
                        url: "/sign/validMobile",
                        data: "mobile="+mobile,
                        success: function(msg){
                          if(msg == 1){
                              var notice = '<div class="ts_wrong"><span id="wrong">该手机号码已被注册！</span></div>';
                              $('input[name="mobile"]').parent().after(notice);
                              $('input[name="mobile"]').addClass('error');
                              return false;
                          }else{
                              $.ajax({
                                type: "POST",
                                url: "/sign/validMobileCode",
                                data: "code="+code,
                                success: function(msg){
                                  if(msg == 1){
                                      var notice = '<div class="ts_wrong"><span id="wrong">验证码错误！</span></div>';
                                      $('input[name="mobile_code"]').parent().after(notice);
                                      $('input[name="mobile_code"]').addClass('error');
                                      return false;
                                  }else{
                                        // 手机统计
                                        ag_Reg_click_Mobile();
                                      $('.form_first').submit();
                                  }
                                }
                             });
                          }
                        }
                     });
                     
                     
                }
            });
            
            //发送短信验证码
            var InterValObj; //timer变量，控制时间
            var count = 120; //间隔函数，1秒执行
            var curCount;//当前剩余秒数
            $('.mobile_action').click(function(){
                $('.ts_wrong').remove();
                $('.al_Input').removeClass('error');
                var mobile = $('input[name="mobile"]').val();
                if(isNull(mobile)){
                    var notice = '<div class="ts_wrong"><span id="wrong">请输入手机号码！</span></div>';
                    $('input[name="mobile"]').parent().after(notice);
                    $('input[name="mobile"]').addClass('error');
                    return false;
                }
                    
                if(!checkMobile(mobile)){
                    var notice = '<div class="ts_wrong"><span id="wrong">手机号码格式错误 请重新输入！</span></div>';
                    $('input[name="mobile"]').parent().after(notice);
                    $('input[name="mobile"]').addClass('error');
                    return false;
                }
                
                //检测手机号码是否使用过
                var is_used = false;
                $.ajax({
                        type: "POST",
                        url: "/sign/validMobile",
                        data: "mobile="+mobile,
                        success: function(msg){
                          if(msg == 1){
                              var notice = '<div class="ts_wrong"><span id="wrong">该手机号码已被注册！</span></div>';
                              $('input[name="mobile"]').parent().after(notice);
                              $('input[name="mobile"]').addClass('error');
                              is_used = true;
                          }else{
                              //设置button效果，开始计时
                              curCount = count;
                              //设置button效果，开始计时
                              $(".mobile_action").attr("disabled", "true");
                              $(".mobile_action").val(curCount + "秒后可重新获取验证码");
                              InterValObj = window.setInterval(SetRemainTime, 1000); //启动计时器，1秒执行一次

                              var skey = $('input[name="skey"]').val();
                              //向后台发送处理数据
                              $.ajax({
                                  type: "POST", //用POST方式传输
                                  url: '/sign/sendSms', //目标地址
                                  data: "mobile=" + mobile +"&skey=" + skey,
                                  success: function (msg){

                                  }
                                });
                          }
                        }
                });
                
                function SetRemainTime() {
                    if (curCount == 0) {    
                     window.clearInterval(InterValObj);//停止计时器
                     $(".mobile_action").removeAttr("disabled");//启用按钮
                     $(".mobile_action").val("获取验证码");
                     code = ""; //清除验证码。如果不清除，过时间后，输入收到的验证码依然有效 
                    }
                    else {
                     curCount--;
                     $(".mobile_action").val(curCount + "秒后可重新获取验证码");
                    }
                }
            });

    });
    
    $(document).keyup(function(event){
        if(event.keyCode ==13){
           if($('.ph').hasClass('focus')){
               $('#mobile_reg').click(ag_Reg_click_Mobile);
           }
           if($('.em').hasClass('focus')){
               $('#email_reg').click(ag_Reg_click_Email);
           }
        }
        // else {
            
        //     $('#email_reg').click(ag_Reg_click_Email);
        // }
    });
    
    
</script>
</body>
</html>