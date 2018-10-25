<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%
  String contextPath=request.getContextPath();
%>
<html>
<head>
 <title>脑洞网</title>
 <link href="css/same.css?v=1.3.7.2" type="text/css" rel="stylesheet" />
 <link href="css/dr.css?v=1.3.5.0" type="text/css" rel="stylesheet" /> 
 <script src="js/jquery.js" type="text/javascript"></script> 
 <script type="text/javascript" src="js/member.js"></script>
<script src="js/jquery.js" type="text/javascript"></script>
<script src="js/index.js?virsion=1.3.7.2" type="text/javascript"></script>
<script type="text/javascript" src="js/jquery.uploadify.js"></script>
<script type="text/javascript" src="js/jquery.Jcrop.js"></script>
<script type="text/javascript" src="js/Jcrop_photo.js"></script>
<style type="text/css">
a:link{
color:gray;
}
a:visited{
color:gray;
}
a:hover{
color:gray;
}
a:active{
color:gray;
}
</style>
</head>
<body>
 <form id="form1" action="/darry_ring" method="post" name="form1"> 
 <!--头部--> 
   <div class="cmain"> 
    <div class="headtop"> 
     <!--头部左边--> 
     <div class="top-left fl"> 
      <a title="Darry Ring" href="index.jsp"> <img width="287" height="62" alt="Darry Ring官网" src="images/logo1.jpg" /> </a>
      
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
        <li><a rel="nofollow" href="MemberIndexServlet">我的Humour</a></li>
        <li class="headed"><em class="icon shooping"></em><a rel="nofollow" href="com.services.Shopping_CartServlet?control=b">购物车</a><i></i></li> 
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
					<li><a href="brand.jsp">品牌文化</a></li>
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

					$.get("/nAPI/QuitExit.ashx", function(data) {
						window.location.href = "/";
					});
				}
			}
		</script>
		<!--钻戒页面中间-->
		<div class="cort">
			<div class="cmain sp_cort fix">
				<!--背景图-->
				<div class="zj_bk">
					<div class="zbk_top spalid">
						<span>您当前的位置：</span> <span id="website_SiteMapPath1"><a
							href="#website_SiteMapPath1_SkipLink"></a><span> <a
								target="_blank" href="index.html">脑洞网</a>
						</span><span> <em>&gt;</em>
						</span><span> <span>${sessionScope.big_category.classes }</span>
						</span><span> <span>${sessionScope.small }</span>
						</span><a id="website_SiteMapPath1_SkipLink"></a></span>
					</div>
					<!--banner中间内容-->
					<div class="zbk_center">
						<!--banner左边-->
						<div class="zbkc-left">
							<h3>脑洞网，专注程序员的脑洞大开</h3>
							<h4>寓意：AI也幽默</h4>
							<div class="button">
							</div>
						</div>
						<!--banner右边的背景图-->
						<div class="zbkc-right">
							<img width="458" height="260" alt="求婚钻戒"
								src="images/True-Love-_ring.jpg" />
						</div>
					</div>
				</div>
				<!--背景图end-->
				<!--小导航-->
				<div class="allchose_nav">
					<!--购买选项-->
					<div class="dr_choose">
						<!--选项nav-->
						<div class="drcho_top">
							<ul class="drchoose_ul">
								<li class="choose_hover" id="ucser_all"><span><a
										href="<%=contextPath%>/Search/SearchController?classes=${sessionScope.big_category.classes }">${sessionScope.big_category.classes }</a></span></li>
								<li id="ucser_forever"><span><a
										href="<%=contextPath%>/Search/SearchController?classes=${sessionScope.small_category[0].classes }">${sessionScope.small_category[0].classes }</a></span>
								</li>
								<li id="ucser_myheart"><span><a
										href="<%=contextPath%>/Search/SearchController?classes=${sessionScope.small_category[1].classes }">${sessionScope.small_category[1].classes }</a></span>
								</li>
								<li id="ucser_swear"><span><a
										href="<%=contextPath%>/Search/SearchController?classes=${sessionScope.small_category[2].classes }">${sessionScope.small_category[2].classes }</a></span>
								</li>
								<li id="ucser_justyou"><span><a
										href="<%=contextPath%>/Search/SearchController?classes=${sessionScope.small_category[3].classes }">${sessionScope.small_category[3].classes }</a></span>
								</li>
								<li id="ucser_justq"><span><a
										href="<%=contextPath%>/Search/SearchController?classes=${sessionScope.small_category[4].classes }">${sessionScope.small_category[4].classes }</a></span>
								</li>
							</ul>
						</div>
						<div class="drcho_bto"></div>
					</div>
					<!--购买选项end-->
					<script type="text/javascript" language="javascript">
						$(function() {
							$("#ucser_all").click(function() {
								window.location.href = "/darry_ring";
							});
							$("#ucser_forever").click(function() {
								window.location.href = "/dr_series/12_22.html";
							});
							$("#ucser_myheart").click(function() {
								window.location.href = "/dr_series/11_20.html";
							});
							$("#ucser_swear").click(function() {
								window.location.href = "/dr_series/15_28.html";
							});
							$("#ucser_justyou").click(function() {
								window.location.href = "/dr_series/13_24.html";
							});
							$("#ucser_truelove").click(function() {
								window.location.href = "/dr_series/16_30.html";
							});
						});
					</script>
					<!--参数选项-->
					<div class="select_choose">
						<div class="thefirst_it">
							<div class="search2 search_other fr">
								<input type="search" placeholder="产品名称/关键字" class="txt2"
									id="txtTitle" name="searchText" style="width:190;"/>
								<div id="prosearch" class="icon toser2"><input type="submit" style="opacity: 0"/></div>
								
							</div>
						</div>
						<div class="thesec_it">
							<div class="thesec_word fr">
								<span>共<i>${sessionScope.goodsBySearch.size() }</i>件商品
								</span>
							</div>
							<div class="thesec_word-left fl"></div>
						</div>
					</div>
					<!--参数选项end-->
				</div>
				<!--小导航end-->
				<!--高级搜索-->
				<!--高级搜索end-->
				<!--购买的款式-->
				<div class="cmain">
					<ul class="buyit">
						<!--通过foreach语句便利出所有内容-->
						<c:forEach items="${sessionScope.goodsBySearch }" var="goods">
							<li>
								<div class="by_top">
									<a target="_blank"
										href="../detail/detailList?goods_name=${goods.name }">11</a>
									<!-- 这里写商品详情页地址 -->
									<div class="bything-one">
										<img width="236px" height="236" alt="${goods.describes }"
											src="${goods.main_path }" />
									</div>
								</div>
								<div class="by_center"></div>
								<div class="by_bottom">
									<p>
										<a target="_blank"
											href="DetailServlet?goods_name=${goods.name }"
											style="font-size: 25px; font-family: '隶书'">${goods.name }
										</a>
									</p>
									<p>
										<span>￥${goods.basic_price }</span><i>销量：${goods.sales } </i>
									</p>
								</div>
							</li>
						</c:forEach>
					</ul>
					<!--购买的款式end-->
				</div>

			</div>
		</div>
	</form>
	<!--底部复用start-->
	<iframe src="footer.jsp" style="width: 100%; height: 350px;"
		frameborder="0" scrolling="no"></iframe>
	<!--底部复用end-->


	<script type="text/javascript">
		function showbox(id) {
			getQeestion(id);
			for (var i = 1; i <= 8; i++) {
				if (i == id) {
					showdiv(id);
				} else {
					hidediv(i);
				}
			}
		}
		function contenttxt(id, sid) {
			for (var i = 1; i <= 7; i++) {
				if (i == id) {
					showtxt(id, sid);
				} else {
					hidetxt(i, sid);
				}
			}

		}
		function showtxt(id, sid) {
			var objtitle = $("#content_title" + id + "_" + sid);

			if (objtitle.css("display") == "none") {
				objtitle.show("fast");
			} else {

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

			$("#li" + id).css({
				"font-size" : "14px",
				"color" : "#7d7d7d"
			});
		}

		function showdiv(id) {
			if ($("#box" + id).css("display") == "none") {
				$("#box" + id).show("fast");
				$("#li" + id).css({
					"font-size" : "18px",
					"color" : "#000000"
				});
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