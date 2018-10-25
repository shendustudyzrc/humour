<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%
  String contextPath=request.getContextPath();
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<title>脑洞网 -幽默文化</title>
<link href="css/same.css?v=1.3.7.2" type="text/css" rel="stylesheet" /> 
<link href="css/dr_culture.css?v=1.3.5.0" type="text/css" rel="stylesheet"> 
</head>
<body>
<script src="js/jquery.js" type="text/javascript"></script> 
  <script src="js/index.js?virsion=1.3.7.2" type="text/javascript"></script>   
  <form id="aspnetForm" action="brand.jsp" method="post" name="aspnetForm"> 
   
   <div> 
   <!--头部--> 
   <div class="cmain"> 
    <div class="headtop"> 
     <!--头部左边--> 
     <div class="top-left fl"> 
      <a title="AI Humour" href="index.jsp"> <img width="287" height="62" alt="AI Humour" src="images/logo1.jpg" /> </a>
     </div> 
     <!--头部左边end--> 
     <!--头部右边--> 
     <div class="top-right fr"> 
      <!--登录注册--> 
      <div id="ucheader1_pllogin1"> 
      <ul class="tright-ul fl"> 
        <c:choose>
					<c:when test="${sessionScope.username.length()>0}">
					    <li><a><span id="ctl00_ucheader_lit">${sessionScope.username}</span></a></li> 
                        <li><a href="login.jsp" rel="nofollow">退出</a><em>|</em> </li>
					</c:when>
					<c:otherwise>
						<li><a rel="nofollow" href="login.jsp">登录</a><em>|</em></li>
						<li><a rel="nofollow" href="reg.jsp">注册</a><em>|</em></li>
					</c:otherwise>
		</c:choose>
        <li><a rel="nofollow" href="member_index.jsp">我的Humour</a></li>
        <li class="headed"><em class="icon shooping"></em><a target="black" rel="nofollow" href="com.services.Shopping_CartServlet?control=b">购物车</a><i></i></li> 
      </ul> 
      </div>
     <!--头部右边end--> 
    </div> 
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
						href="searchAction?classes=幽默的书">幽默的书</a>
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
      <div class="cmain culture_same"> 
       <!--面包屑--> 
       <div class="zbk_top spalid"> 
        <div class="zbk_top spalid"> 
         <span>您当前的位置：</span> 
         <span id="ctl00_content_website_SiteMapPath1"><a href="#ctl00_content_website_SiteMapPath1_SkipLink"></a><span> <a target="_blank" href="index.html">幽你AI默</a> </span><span> <em>&gt;</em> </span><span> <span>幽默文化</span> </span><a id="ctl00_content_website_SiteMapPath1_SkipLink"></a></span> 
        </div> 
       </div> 
       <!--面包屑end--> 
       <!--标题--> 
       <div class="culture_top"> 
        <div class="culture_top-tittle"> 
         <i></i>
         <span class="tittle_span">关于幽你AI默</span> 
         <i></i> 
        </div> 
        <h4> About AI Humour</h4> 
       </div> 
       <!--标题end--> 
       <!--导航--> 
       <div class="culture_nav"> 
        <a href="#">品牌文化</a> 
        <i>|</i> 
        <a href="#">品牌理念</a> 
        <i>|</i> 
        <a target="_blank" href="#">名人推荐</a> 
        <i>|</i> 
        <a target="_blank" href="#">实体店</a> 
        <i>|</i> 
        <a href="brand.html_pz">品质工艺</a> 
        <i>|</i> 
        <a href="brand.html_tl">真爱验证</a> 
        <i>|</i> 
        <a target="_blank" href="#">LS社区</a> 
        <i>|</i> 
        <a href="#">加入我们</a> 
       </div> 
       <!--导航end--> 
       <!--特殊颜色的P--> 
       <div class="culture_wz"> 
        <p>林语堂先生说：幽默是一种滑稽而又发人深省的哲理</p> 
       </div> 
       <!--特殊颜色的P end--> 
       <!--品牌理念--> 
       <div class="culture_pp culture_first"> 
        <!--左边--> 
        <div class="fl"> 
         <a target="_blank" href="#"> <img width="470" height="300" src="images/wh1.jpg" /> </a> 
        </div> 
        <!--左边end--> 
        <!--右边--> 
        <div class="culture_pp-word fr"> 
         <h3> 幽默理念</h3> 
         <h4> HUMOUR Beliefs</h4> 
         <p> 笑而不语真君子</p> 
         <p> 希望全世界都快乐</p> 
         <p> 幽默是一缕阳光</p> 
        </div> 
        <!--右边end--> 
       </div> 
       <!--品牌理念end--> 
       <!--三大块--> 
       <div class="three_yz"> 
        <a href="#" target="_blank"> <img width="300" height="426" src="images/re1.jpg" /> </a> 
        <a href="#" target="_blank"> <img width="300" height="426" src="images/re2.jpg" /> </a> 
        <a href="#" target="_blank"> <img width="300" height="426" src="images/re3.jpg" /> </a> 
       </div> 
       <!--三大块end--> 
       <!--社会名人--> 
       <div class="culture_pp culture_sec"> 
        <!--左边--> 
        <div class="culture_pp-word fl"> 
         <h3> 社会名人事迹</h3> 
         <h4> Expert Advice</h4> 
         <p> 卓别林凭幽默成一代大师</p> 
         <p> 周星驰凭幽默成为中国喜剧之王</p> 
         <p> 康熙来了，蔡康永成功爆笑全场</p> 
        </div> 
        <!--左边end--> 
        <!--右边--> 
        <div class="culture_sec-right fr"> 
         <a target="_blank" href="#"> <img width="367" height="250" src="images/wh2.jpg" /> </a> 
        </div> 
        <!--右边end--> 
       </div> 
       <!--社会名人end--> 
       <!--最烂漫的珠宝店--> 
       <div class="culture_pp culture_thrid"> 
        <!--左边--> 
        <div class="culture_thrid-left fl"> 
         <a target="_blank" href="#"> <img width="367" height="230" src="images/wh3.jpg" /> </a> 
        </div> 
        <!--左边end--> 
        <!--右边--> 
        <div class="culture_pp-word fr"> 
         <h3> 最浪漫的珠宝店</h3> 
         <h4> Store Locator</h4> 
         <p> 从设立之初，Love Swear 就在全球范围内，甄选最具有浪漫情调的地址</p> 
         <p> 让每一位来到Love Swear 挑选钻戒的顾客</p> 
         <p> 都感受到与Shopping Mall 中其它品牌完全不同的独特购物体验。</p> 
         <p> 同时，Love Swear 最浪漫的珠宝店也成为众多客户求婚的首选场所。</p> 
        </div> 
        <!--右边end--> 
       </div> 
       <!--最烂漫的珠宝店end--> 
       <!--品质工艺与DR族--> 
       <div class="culture_pp"> 
        <!--品质工艺--> 
        <div class="culture_four-left fl"> 
         <img width="465" height="300" src="images/wh4.jpg" /> 
         <!--透明背景--> 
         <div class="bk_opacity"> 
         </div> 
         <!--透明背景end--> 
         <!--工艺--> 
         <div class="professional_gy"> 
          <h3> 卓越品质工艺</h3> 
          <h4> Professional Quality</h4> 
         </div> 
         <!--工艺end--> 
        </div> 
        <!--品质工艺end--> 
        <!--DR族--> 
        <div class="culture_four-right fr"> 
         <img width="465" height="300" src="images/wh5.jpg" /> 
         <!--DR族--> 
         <div class="brand_drz"> 
          <h3> 真爱验证</h3> 
          <h4> Brand Culture</h4> 
          <p> 男士定制一枚，</p> 
          <p> 赠予此生挚爱的女子</p> 
         </div> 
         <!--DR族end--> 
        </div> 
        <!--DR族end--> 
       </div> 
       <!--品质工艺与DR族end--> 
       <!--DR社区与加入我们--> 
       <div class="culture_pp"> 
        <!--左边--> 
        <div class="culture_last fl"> 
         <a target="_blank" href="#"> <img width="465" height="200" src="images/wh6.jpg" /> </a> 
        </div> 
        <!--左边end--> 
        <!--右边--> 
        <div class="culture_last fr"> 
         <a target="_blank" href="#"> <img width="466" height="200" src="images/wh7.jpg" /> </a> 
        </div> 
        <!--右边end--> 
       </div> 
       <!--DR社区与加入我们end--> 
      </div> 
      <!--内容end--> 
     </div> 
     <!--中间end--> 
     <script>
        $("#wb").click(function () {
            var href = "http://service.weibo.com/share/share.php?title=品牌文化 &url=index.htmlbrand.html";
            window.open(href, 'newwindow', 'height=700,width=650,top=300,left=400,toolbar=no,menubar=no,scrollbars=no,resizable=no,location=no,status=no');

        });
    </script> 
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