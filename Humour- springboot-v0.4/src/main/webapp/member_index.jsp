<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
  String contextPath=request.getContextPath();
%>
<html>
<head>
 <title>AI Humour-个人中心 - 首页</title>
 <link href="css/same.css?v=1.3.7.2" type="text/css" rel="stylesheet" /> 
 <script src="js/jquery.js" type="text/javascript"></script> 
 <script src="js/index.js?virsion=1.3.7.2" type="text/javascript"></script> 
 <link href="css/dr.css?v=1.3.5.0" type="text/css" rel="stylesheet" />
 <link href="css/member.css?v=1.3.6.0" type="text/css" rel="stylesheet" /> 
 <script type="text/javascript" src="js/member.js"></script> 
</head>
<body>
 <form id="aspnetForm" action="member_index.jsp" method="post" name="aspnetForm">  
       <!--头部--> 
    <div class="cmain"> 
     <div class="headtop"> 
      <!--头部左边--> 
      <div class="top-left fl"> 
       <a href="index.jsp" title="Darry Ring"> <img width="287" height="62" src="images/logo1.jpg" /> </a> 
      
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
         <li class="headed"><em class="icon shooping"></em><a target="black" rel="nofollow" href="../shopping_Cart/shoping_CartPage?control=b">购物车</a><i></i></li>     
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
						href="<%=contextPath%>/Search/SearchController?classes=幽默的书">幽默的书</a>
						<div class="nav-div">
							<div class="navdiv_top">
								<div class="navdiv-right">
									<p>
										<a href="<%=contextPath%>/Search/SearchController?classes=幽默的书"> 查看所有款</a>
									</p>
									<p>
										<a href="<%=contextPath%>/Search/SearchController?classes=中国式幽默">中国式幽默</a>
									</p>
									<p>
										<a href="<%=contextPath%>/Search/SearchController?classes=美国式幽默">美国式幽默</a>
									</p>
									<p>
										<a href="<%=contextPath%>/Search/SearchController?classes=德国式幽默">德国式幽默</a>
									</p>
									<p>
										<a href="<%=contextPath%>/Search/SearchController?classes=英国式幽默">英国式幽默</a>
									</p>
									<p>
										<a href="<%=contextPath%>/Search/SearchController?classes=俄国式幽默">俄国式幽默</a>
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
     <div class="cort"> 
      <div class="tobuy cmain"> 
       <div class="cmain mb_back"> 
        <div class="zbk_top spalid"> 
         <span>您当前的位置：</span> 
         <span id="ctl00_content_website_SiteMapPath1"><a href="#ctl00_content_website_SiteMapPath1_SkipLink"></a><span> <a target="_blank" href="index.jsp">幽你AI默</a> </span><span> <em>&gt;</em> </span><span> <span>我的Humour</span> </span><a id="ctl00_content_website_SiteMapPath1_SkipLink"></a></span> 
        </div> 
        <div class="member_cort"> 
         <div class="member_cort-left fl"> 
          <!--我的Humour--> 
          <div class="member_cortleft-tittle"> 
           <i class="mb_home"></i>
           <a rel="nofollow" href="member_index.jsp">我的Humour</a> 
          </div> 
          <!--我的Humour end--> 
          <ul class="member_cort-ul"> 
           <li> <h3> -订单中心-</h3> 
            <ul class="member_ul-dr"> 
             <li id="ctl00_content_ucmemberleft_order"> <a rel="nofollow" href="../orders/member_order">我的订单</a></li> 
             <li id="ctl00_content_ucmemberleft_ask"><a rel="nofollow" href="../comment/commentList?flag=a">我要评价</a></li> 
             <li id="ctl00_content_ucmemberleft_cart"><a rel="nofollow" href="../shopping_Cart/shoping_CartPage?control=b">我的购物车</a></li> 
            </ul> 
           </li> 
           <li> <h3> -帐户管理-</h3> 
            <ul class="member_ul-dr"> 
             <li id="ctl00_content_ucmemberleft_myinfo"><a rel="nofollow" href="../user/SelectMemberInfo">个人信息</a></li> 
             <li id="ctl00_content_ucmemberleft_password"><a rel="nofollow" href="member_pwd.jsp">修改密码</a></li> 
             <li id="ctl00_content_ucmemberleft_address"><a rel="nofollow" href="../shopping/shopping_address">收货地址</a></li> 
            </ul> 
           </li> 
          </ul> 
         </div> 
         <!--右边的主要内容--> 
         <div class="member_cort-right fr"> 
          <!--我的dr首页--> 
          <div class="member_my_index"> 
           <!--第一块--> 
           <div class="member_cortr-first"> 
            <!--左边--> 
            <div class="member_cortr-first-left fl"> 
             <!--名字--> 
             <div class="member_first-left-top"> 
              <div class="mb_theleft fl"> 
               <span>您好！</span> 
               <a href="member_info.jsp">（个人信息完善）</a> 
              </div> 
              
             </div> 
             <!--名字end--> 
             <!--订单提醒--> 
             <div class="member_first-left-sec"> 
              <div class="mb_theright-sec fl"> 
               <p> <span>积分：${sessionScope.userpoint.point }</span>&nbsp;&nbsp;&nbsp;&nbsp;
               <span>等级：${sessionScope.userpoint.rebate }</span>  
              </div> 
              <div class="mb_theright fl"> 
               <p> <span>安全级别：</span> <em class="mb_red-color" id="rou">弱</em> <em id="zhong" class="mb_red-color">中</em> <em id="strong">强</em> </p> 
               <span style="display:none" id="span_pwd">hjl7233163</span> 
               <script type="text/javascript" language="javascript">
                                        $(function () {
                                            var pwd = document.getElementById("span_pwd").innerHTML;

                                            if (pwd.length >= 5 && pwd.length < 9) {
                                                $("#rou").addClass('mb_red-color');
                                                $("#zhong").removeClass('mb_red-color');
                                                $("#strong").removeClass('mb_red-color');
                                            }
                                            if (pwd.length >= 9 && pwd.length < 12) {
                                                $("#rou").addClass('mb_red-color');
                                                $("#zhong").addClass('mb_red-color');
                                                $("#strong").removeClass('mb_red-color');

                                            }
                                            if (pwd.length >= 12 && pwd.length < 20) {
                                                $("#rou").addClass('mb_red-color');
                                                $("#zhong").addClass('mb_red-color');
                                                $("#strong").addClass('mb_red-color');
                                            }

                                        });
                                    </script> 
               <p class="oth_span"> <span>为了您帐户安全，建议进行</span> <a href="member_pwd.jsp">设置</a> </p> 
              </div> 
             </div> 
             <!--订单提醒end--> 
            </div> 
            <!--左边end--> 
           </div> 
           <!--第一块end--> 
           <!--第二块--> 
           <h3>快捷通道</h3> 
           <!--快捷通道--> 
           <ul class="member_cortr-sec"> 
            <li class="mb_border"> 
             <div class="member_cortr-sec-left fl"></div> 
             <div class="member_cortr-sec-right fl"> 
              <h4><a href="com.services.OrdersServlet">订单查询</a></h4> 
             </div> </li> 
          
            <li> 
             <div class="member_cortr-sec-left member_secimg_3 fl"></div> 
             <div class="member_cortr-sec-right fl"> 
              <h4><a href="member_pwd.jsp">修改密码</a></h4> 
             </div> </li> 
            
           </ul> 
           <!--快捷通道end--> 
           <!--第二块end--> 
           <!--第三块--> 
          
           <!--第三块end--> 
          
          </div> 
          <!--我的dr首页end--> 
         </div> 
         <!--右边的主要内容end--> 
        </div> 
       </div> 
      </div> 
     </div> 
    </div> 
    </form>
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
</body>
</html>