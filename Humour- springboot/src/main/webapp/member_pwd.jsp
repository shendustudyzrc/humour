<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
  String contextPath=request.getContextPath();
%>
<html>
<head>
<title>L&amp;S-个人中心 - 修改密码</title>
 <link href="css/same.css?v=1.3.7.2" type="text/css" rel="stylesheet"/>
 <script src="js/jquery.js" type="text/javascript"></script> 
 <script src="js/index.js?virsion=1.3.7.2" type="text/javascript"></script>
 <link href="css/same.css?v=1.3.7.2" type="text/css" rel="stylesheet"><link href="css/member.css?v=1.3.6.0" type="text/css" rel="stylesheet">
 <script src="js/member.js" type="text/javascript"></script>
 <script src="js/member_pwd.js" type="text/javascript"></script>
</head>
<body>
 <form id="aspnetForm" action="<%=contextPath%>/user/UpdatePwd" method="post" name="aspnetForm">
<div>
 <!--头部--> 
    <div class="cmain"> 
     <div class="headtop"> 
      <!--头部左边--> 
      <div class="top-left fl"> 
       <a title="Darry Ring" href="index.jsp"> <img width="287" height="62" alt="AI Humour官网" src="images/logo1.jpg" /> </a>
      
      </div> 
      <!--头部左边end--> 
      <!--头部右边--> 
      <div class="top-right fr"> 
       <!--登录注册--> 
       <div id="ctl00_ucheader_pllogin2"> 
       <ul class="tright-ul fl">  
         <li><a><span id="ctl00_ucheader_lit">${sessionScope.username}</span></a></li> 
         <li> <a href="login.jsp" rel="nofollow">退出</a><em>|</em> </li> 
         <li><a target="black" rel="nofollow" href="MemberIndexServlet">我的Humour</a><em>|</em></li> 
         <li class="headed"><em class="icon shooping"></em><a target="black" rel="nofollow" href="com.services.Shopping_CartServlet?control=b">购物车</a><i></i></li>     
       </ul> 
       </div> 
       <!--搜索框--> 
       <div style="display:none;" class="search"> 
        <input type="text" placeholder="求婚钻戒" class="txt1" /> 
        <div onClick="showSearch()" class="icon toser"> 
        </div> 
       </div> 
      </div> 
      <!--头部右边end--> 
     </div> 
    </div> 
    <!--头部end--> 
<!--导航-->
<div class="nav">
    <div class="cmain">
        <!--导航的左边-->
        <ul class="nav-ul fl">
					<li><a href="index.jsp">首页</a></li>
					<li><a href="brand.jsp">幽默文化</a></li>
					<li><a style="font-family: arial"
						href="searchAction?classes=真爱之钻">真爱之钻</a>
						<div class="nav-div">
							<div class="navdiv_top">
								<div class="navdiv-right">
									<p>
										<a href="searchAction?classes=真爱之钻"> 查看所有款</a>
									</p>
									<p>
										<a href="searchAction?classes=恋人絮语">恋人絮语</a>
									</p>
									<p>
										<a href="searchAction?classes=爱的轮回">爱的轮回</a>
									</p>
									<p>
										<a href="searchAction?classes=爱之守护">爱之守护</a>
									</p>
									<p>
										<a href="searchAction?classes=爱的星芒">爱的星芒</a>
									</p>
								</div>

							</div>
							<div class="navdiv_bottom"></div>
						</div></li>
					<li><a style="font-family: arial"
						href="searchAction?classes=友谊之钻">友谊之钻</a>
						<div class="nav-div">
							<div class="navdiv_top">
								<div class="navdiv-right special_right noborder">
									<p>
										<a href="searchAction?classes=友谊之钻">查看所有款</a>
									</p>
									<p>
										<a href="searchAction?classes=天使之吻">天使之吻</a>
									</p>
									<p>
										<a href="searchAction?classes=梦之幻想">梦之幻想</a>
									</p>
									<p>
										<a href="searchAction?classes=永恒之心">永恒之心</a>
									</p>
									<p>
										<a href="searchAction?classes=星月相伴">星月相伴</a>
									</p>
								</div>
							</div>
							<div class="navdiv_bottom"></div>
						</div></li>

				</ul>
    </div>
</div>
<!--导航end-->

<script type="text/javascript">
    function logout() {
        if (window.confirm('确定退出吗？')) {

            $.get("/nAPI/QuitExit.ashx", function (data) {
                window.location.href = "/";
            });
        }
    }
</script>

        <div class="cort">
        
    <!--中间-->
    <div class="cort">
        <!--内容-->
        <div class="cmain mb_back">
            <div class="zbk_top spalid">
                
        <div class="zbk_top spalid">
        <span>您当前的位置：</span>
        <span id="ctl00_content_website_SiteMapPath1"><a href="#ctl00_content_website_SiteMapPath1_SkipLink"></a><span>
                <a target="_blank" href="index.jsp">Love Swear</a></span><span><em>></em>
                </span><span><a target="_blank" href="member_index.jsp">我的Humour</a>
                </span><span><em>></em></span><span><span>修改密码</span>
                </span><a id="ctl00_content_website_SiteMapPath1_SkipLink"></a></span>
        </div>
            </div>
            <!--中间内容-->
            <div class="member_cort">
                <!--左边树-->
                
<div class="member_cort-left fl">
    <!--我的DR-->
    <div class="member_cortleft-tittle">
        <i class="mb_home"></i><a rel="nofollow" href="member_index.jsp">我的L&amp;S</a>
    </div>
    <!--我的DR end-->
    <ul class="member_cort-ul"> 
           <li> <h3> -订单中心-</h3> 
            <ul class="member_ul-dr"> 
             <li id="ctl00_content_ucmemberleft_order"> <a rel="nofollow" href="com.services.OrdersServlet">我的订单</a></li> 
             <li id="ctl00_content_ucmemberleft_ask"><a rel="nofollow" href="CommentServlet?flag=a">我要评价</a></li> 
             <li id="ctl00_content_ucmemberleft_cart"><a rel="nofollow" href="com.services.Shopping_CartServlet?control=b">我的购物车</a></li> 
            </ul> 
           </li> 
           <li> <h3> -帐户管理-</h3> 
            <ul class="member_ul-dr"> 
             <li id="ctl00_content_ucmemberleft_myinfo"><a rel="nofollow" href="SelectMemberInfo">个人信息</a></li> 
             <li id="ctl00_content_ucmemberleft_password"><a rel="nofollow" href="member_pwd.jsp">修改密码</a></li> 
            </ul> 
           </li> 
          </ul> 
</div>

                <!--左边树end-->
                <!--右边的主要内容-->
                <div class="member_cort-right fr">
                    <!--找回密码-->
                    <div class="member_password">
                        <div class="member_ask-tittle">
                            <h4> 修改密码</h4>
                            <p>为保障账户安全，建议避免使用与其他网站相同密码。</p>
                        </div>
                        <!--找回密码-->
                        <div class="member_password-find">
                            
                            <div style="float: left;margin-left:24px" class="person-cort_left-write person-cort_left-password">
                                <span>新密码：</span>
                                <input type="password" class="write_text" id="ctl00_content_pwd1" name="ctl00$content$pwd1">
                                <em id="rou">弱</em> <em id="zhong">中</em> <em id="strong">强</em> 
                               
                            </div>
                            <div style="display: none;" id="showr" class="person-cort_left-write">
                                <i id="pwdwrong" class="writer_wrong pwd"></i><em class="pwd" id="txtshow"></em>
                            </div>
                            <div style="clear: both" class="person-cort_left-write">
                                <span>确认新密码：</span>
                                <input type="password" class="write_text" id="ctl00_content_pwd2" name="ctl00$content$pwd2">
                                <i id="wrong" style="display: none" class="writer_wrong againpwd"></i><em style="display: none" class="againpwd" id="txtwrong"></em>
                            </div> 
                        </div>
                        <div style="margin-left: 90px">
                                <input type="submit" style="border-style:None;" class="bt1 person-sp-button" id="btnsubmit" onClick="return check();" value="立即提交" name="ctl00$content$btnsubmit"></div>
                        <!--找回密码end-->
                    </div>
                    <!--找回密码end-->
                </div>
                <!--右边的主要内容end-->
            </div>
            <!--中间内容end-->
        </div>
        <!--内容end-->
    </div>
    <!--中间end-->

        </div>
        

<!--底部复用start-->
<iframe src="footer.jsp" style="width:100%;height:350px;" frameborder="0" scrolling="no"></iframe>
<!--底部复用end-->


<script type="text/javascript">
    function showbox(id) {
        getQeestion(id);
        for (var i = 1; i <= 8; i++) {
            if (i == id) {
                showdiv(id);
            }
            else {
                hidediv(i);
            }
        } 
    }
    function contenttxt(id, sid) {
        for (var i = 1; i <= 7; i++) {
            if (i == id) {
                showtxt(id, sid);
            }
            else {
                hidetxt(i, sid);
            }
        }


    }
    function showtxt(id, sid) {
        var objtitle = $("#content_title" + id + "_" + sid);

        if (objtitle.css("display") == "none") {
            objtitle.show("fast");
        }
        else {

            hidetxt(id, sid);
        }
        //$("#"+id).show("fast");
    }
    function hidetxt(id, sid) {
        var objtitle = $("#content_title" + id + "_" + sid);
        objtitle.hide("fast");
    }
    function hidediv(id) {
        $("#box" + id).hide("fast");

        $("#li" + id).css({ "font-size": "14px", "color": "#7d7d7d" });
    }

    function showdiv(id) {
        if ($("#box" + id).css("display") == "none") {
            $("#box" + id).show("fast");
            $("#li" + id).css({ "font-size": "18px", "color": "#000000" });
        }

    }

</script>
<script type="text/javascript">
    function showMask() {
        $("#masks").css("height", $(document).height());
        $("#masks").css("width", $(document).width());
        $("#masks").fadeIn();
    }
    function showModel(divName) {
        showMask();
       /* var top = ($(window).height() - $(divName).height()) / 5;
        var left = ($(window).width() - $(divName).width()) / 2;
        var scrollTop = $(document).scrollTop();
        var scrollLeft = $(document).scrollLeft();*/
        $(divName).fadeIn();
    }
    function CloseMaskser() {

        $("#modelsever").fadeOut("slow");
        $("#masks").fadeOut("slow");
        $("#mask").fadeOut("slow");
    }

</script>

</div>
</form>
</body>
</html>