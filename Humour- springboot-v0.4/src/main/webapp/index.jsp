<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%
  String contextPath=request.getContextPath();
%>
<html>
<head>
<title>幽你AI默</title>
<link href="css/index_A.css?v=1.3.7.1" type="text/css" rel="stylesheet" />
<link href="css/same_A.css?v=1.3.7.2" type="text/css" rel="stylesheet" />
<link href="css/slideshow.css" rel="stylesheet" />
<script src="js/slideshow.js" type="text/javascript"></script>
<script type="text/javascript" src="js/member.js"></script>
<script src="js/jquery.js" type="text/javascript"></script>
<script src="js/index.js?virsion=1.3.7.2" type="text/javascript"></script>
<script type="text/javascript" src="js/jquery.uploadify.js"></script>
<script type="text/javascript" src="js/jquery.Jcrop.js"></script>
<script type="text/javascript" src="js/Jcrop_photo.js"></script>

</head>
<body>
	<script type="text/javascript" src="js/jquery.js"></script>
	<form id="form1" action="/" method="post" name="form1">
		<!--遮罩-->
		<div class="backall"></div>
		<!--遮罩end-->

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
        <li><a rel="nofollow" href="member_index.jsp">我的Humour</a></li>
        <li class="headed"><em class="icon shooping"></em><a rel="nofollow" href="<%=contextPath%>/shopping_Cart/shoping_CartPage?control=b">购物车</a><i></i></li> 
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
				<!--导航的右边-->

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
		<div>
			<!--banner-->
			<div class="indexbanner-all">
				<!--下面是轮播图部分-->
		<div class="comiis_wrapad" id="slideContainer">
        <div id="frameHlicAe" class="frame cl">
            <div class="block">
                <div class="cl" >
                    <ul class="slideshow" id="slidesImgs" >
                        <li><a href="#" target="_blank">
                            <img src="images/banner1.jpg" width="1350" height="400" alt="" /></a></li>
                        <li><a href="#" target="_blank">
                            <img src="images/banner2.jpg" width="1350" height="400" alt="" /></a></li>
                        <li><a href="#" target="_blank">
                            <img src="images/lunbo1.jpg" width="1350" height="400" alt="" /></a></li>
                        <li><a href="#" target="_blank">
                            <img src="images/lunbo2.jpg" width="1350" height="400" alt="" /></a></li>
                    </ul>
                </div>
                <div class="slidebar" id="slideBar">
                    <ul>
                        <li class="on">1</li>
                        <li>2</li>
                        <li>3</li>
                        <li>4</li>
                    </ul>
                </div>
            </div>
        </div>
    <script type="text/javascript">
        SlideShow(2000);
    </script>	
            </div>
				
			</div>
			<!--中间的内容-->
			<div class="all-thing">
				<div class="cmain">
					<!--tab选项卡-->
					<!--tab选项卡ul-->
					<div class="ultab_all">
						<ul class="ul-tab">
							<li><span><a href="<%=contextPath%>/Search/SearchController?classes=中国式幽默">中国式幽默</a></span></li>
							<li><span><a href="<%=contextPath%>/Search/SearchController?classes=美国式幽默">美国式幽默</a></span></li>
							<li><span><a href="<%=contextPath%>/Search/SearchController?classes=德国式幽默">德国式幽默</a></span></li>
							<li><span><a href="<%=contextPath%>/Search/SearchController?classes=英国式幽默">英国式幽默</a></span></li>
						</ul>
						<!--进度条-->
						<div class="ul_jdt">
							<div class="ul_jdrun" style="width: 798px;"></div>
						</div>
						<!--进度条end-->
						<!--箭头-->
						<div class="ul_bkjt" style="left: 766.422px;"></div>
						<!--箭头end-->
						<!--箭头-->
						<div class="ul_bkjt-hover" style="width: 18px; left: 777.104px;">
						</div>
						<!--箭头end-->
					</div>
					<!--tab选项卡ul end-->
					<!--tab选项卡下的内容-->
					<ul class="all_tab">
						<li style="display: none;">
							<!--tab选项卡下的左边内容-->
							<div class="tab_left fl">
								<a href="index.jsp/dr_series/12_22.html"> <img width="504"
									height="314" alt="Forever经典系列" src="images/fimg6.jpg" />
								</a>
							</div> <!--tab选项卡下的左边内容 end--> <!--tab选项卡下的右边内容-->
							<div class="tab_right fr">
								<h3>恋人絮语</h3>
								<p>爱如Forever经典的六爪</p>
								<p>任时光流逝,唯爱永固,祈岁月静好,唯爱永恒</p>
								<div class="to_more">
								</div>
								<!--更多选择-->
								<div class="more-ul">
									<p>
										<a target="_blank" href="#">真爱之钻</a> <a
											target="_blank" href="#">结婚对戒</a> <a target="_blank"
											href="#">饰品</a>
									</p>
								</div>
							</div> <!--tab选项卡下的右边内容  end-->
						</li>
						<li style="display: none;">
							<!--tab选项卡下的左边内容-->
							<div class="tab_left fl">
								<a href="/pinkdiamond.aspx"> <img width="504" height="314"
									alt="Marry Me系列" src="images/fimg1.jpg" />
								</a>
							</div> <!--tab选项卡下的左边内容 end--> <!--tab选项卡下的右边内容-->
							<div class="tab_right fr">
								<h3>爱的轮回</h3>
								<p>承诺相伴一生真爱之人,一生一次，一次一生的爱情信物</p>
								<p>7月15日 正午12点浪漫发售</p>
								<div class="to_more">
								</div>
							</div> <!--tab选项卡下的右边内容  end-->
						</li>
						<li style="display: none;">
							<!--tab选项卡下的左边内容-->
							<div class="tab_left fl">
								<a href="/dr_series/11_20.html"> <img width="504"
									height="314" alt="My heart系列" src="images/fimg2.jpg" />
								</a>
							</div> <!--tab选项卡下的左边内容 end--> <!--tab选项卡下的右边内容-->
							<div class="tab_right fr">
								<h3>爱之守护</h3>
								<p>将我的心刻入璀璨的钻石 呈献给最爱的你</p>
								<p>此生只愿，把心交给你</p>
								<div class="to_more">
								</div>
								<!--更多选择-->
								<div class="more-ul">
									<p>
										<a target="_blank" href="#">真爱之钻</a> <a
											target="_blank" href="#"> 结婚对戒</a> <a
											target="_blank" href="#">饰品</a>
									</p>
								</div>
							</div> <!--tab选项卡下的右边内容  end-->
						</li>
						<li style="display: list-item; opacity: 0.470565;">
							<!--tab选项卡下的左边内容-->
							<div class="tab_left fl">
								<a href="/dr_series/16_30.html"> <img width="515"
									height="314" alt="True Love系列" src="images/fimg3.jpg" />
								</a>
							</div> <!--tab选项卡下的左边内容 end--> <!--tab选项卡下的右边内容-->
							<div class="tab_right fr">
								<h3>爱的星芒</h3>
								<p>沿袭了欧式古典,圆融了世间美好,绽放女人最温润的内敛</p>
								<p>从今往后，将你我恒久岁月,用True Love细细包容</p>
								<div class="to_more">
								</div>
								<!--更多选择-->
								<div class="more-ul">
									<p>
										<a target="_blank" href="#">真爱之钻</a> <a
											target="_blank" href="#"> 结婚对戒</a> <a
											target="_blank" href="#">饰品</a>
									</p>
								</div>
							</div> <!--tab选项卡下的右边内容  end-->
						</li>
						<li style="opacity: 0.529435; display: list-item;">
							<!--tab选项卡下的左边内容-->
							<div class="tab_left fl">
								<a href="/dr_series/15_18.html"> <img width="504"
									height="314" alt="I Swear系列" src="images/fimg4.jpg" />
								</a>
							</div> <!--tab选项卡下的左边内容 end--> <!--tab选项卡下的右边内容-->
							<div class="tab_right fr">
								<h3>天使之吻</h3>
								<p>不论顺境逆境、贫穷富贵、健康疾病</p>
								<p>将我们的誓言印刻在永恒的钻石上，散发最闪耀的光芒</p>
								<div class="to_more">
									<div class="bt2">
										<a target="_blank" href="/dr_series/15_18.html">了解更多</a>
									</div>
								</div>
								<!--更多选择-->
								<div class="more-ul">
									<p>
										<a target="_blank" href="#">友谊之钻</a> <a
											target="_blank" href="#"> 结婚对戒</a> <a
											target="_blank" href="#">饰品</a>
									</p>
								</div>
							</div> <!--tab选项卡下的右边内容  end-->
						</li>
						<li style="display: none;">
							<!--tab选项卡下的左边内容-->
							<div class="tab_left fl">
								<a href="index.jsp/dr_series/12_22.html"> <img width="504"
									height="314" alt="Forever经典系列" src="images/fimg6.jpg" />
								</a>
							</div> <!--tab选项卡下的左边内容 end--> <!--tab选项卡下的右边内容-->
							<div class="tab_right fr">
								<h3>梦之幻想</h3>
								<p>爱如Forever经典的六爪</p>
								<p>任时光流逝,唯爱永固,祈岁月静好,唯爱永恒</p>
								<div class="to_more">
								</div>
								<!--更多选择-->
								<div class="more-ul">
									<p>
										<a target="_blank" href="#">友谊之钻</a> <a
											target="_blank" href="#">结婚对戒</a> <a target="_blank"
											href="#">饰品</a>
									</p>
								</div>
							</div> <!--tab选项卡下的右边内容  end-->
						</li>
						<li style="display: none;">
							<!--tab选项卡下的左边内容-->
							<div class="tab_left fl">
								<a href="index.jsp/dr_series/12_22.html"> <img width="504"
									height="314" alt="Forever经典系列" src="images/fimg6.jpg" />
								</a>
							</div> <!--tab选项卡下的左边内容 end--> <!--tab选项卡下的右边内容-->
							<div class="tab_right fr">
								<h3>永恒之心</h3>
								<p>爱如Forever经典的六爪</p>
								<p>任时光流逝,唯爱永固,祈岁月静好,唯爱永恒</p>
								<div class="to_more">
									<div class="bt2">
										<a target="_blank" href="index.jsp/dr_series/12_22.jsp">了解更多</a>
									</div>
								</div>
								<!--更多选择-->
								<div class="more-ul">
									<p>
										<a target="_blank" href="#">友谊之钻</a> <a
											target="_blank" href="#">结婚对戒</a> <a target="_blank"
											href="#">饰品</a>
									</p>
								</div>
							</div> <!--tab选项卡下的右边内容  end-->
						</li>
						<li style="display: none;">
							<!--tab选项卡下的左边内容-->
							<div class="tab_left fl">
								<a href="index.jsp/dr_series/12_22.html"> <img width="504"
									height="314" alt="Forever经典系列" src="images/fimg6.jpg" />
								</a>
							</div> <!--tab选项卡下的左边内容 end--> <!--tab选项卡下的右边内容-->
							<div class="tab_right fr">
								<h3>星月相伴</h3>
								<p>爱如Forever经典的六爪</p>
								<p>任时光流逝,唯爱永固,祈岁月静好,唯爱永恒</p>
								<div class="to_more">
									<div class="bt2">
										<a target="_blank" href="index.jsp/dr_series/12_22.jsp">了解更多</a>
									</div>
								</div>
								<!--更多选择-->
								<div class="more-ul">
									<p>
										<a target="_blank" href="#">友谊之钻</a> <a
											target="_blank" href="#">结婚对戒</a> <a target="_blank"
											href="#">饰品</a>
									</p>
								</div>
							</div> <!--tab选项卡下的右边内容  end-->
						</li>
					</ul>
					<!--tab选项卡下的内容  end-->
					<!--推荐款式-->
					<div class="hot-ks">
						<a class="fr" target="_blank" href="ListsGoodsServlet">更多</a> <span
							class="other_color" id="renqi"><i>人气最高</i><em></em> </span> <span
							id="nsza"> <i>女生最爱</i><em></em>
						</span> <span id="rxph"><i>热销商品</i><em></em> </span>
					</div>
					<!--购买的款式-->
					<div class="cmain">
						<ul id="ullist" class="buyit">
						<c:forEach items="${sessionScope.goods1}"  var="good" >
							<li>
								<div class="by_top">
									<a target="_blank" href="com.services.DetailServlet?goods_name=${good.name }" rel="nofollow"></a>
									<div style="opacity: 1" class="bything-one">
										<img width="236px" height="236px"
											alt="Forever系列 经典款&nbsp;50分&nbsp;H色"
											src="${good.main_path}" />
									</div>
									
								</div>
								<div class="by_center"></div>
								<div class="by_bottom">
									<p>
										<a href="searchAction?classes=${good.small_category.getClasses()}">${good.small_category.getClasses()}&nbsp;·&nbsp;</a>
										<a target="_blank" href="com.services.DetailServlet?goods_name=${good.name }">${good.name }</a>
									</p>
									<p>
										<span>￥${good.basic_price }</span><i>销量：${good.sales }</i>
									</p>
								</div>
							</li>
						</c:forEach>
						</ul>
					</div>
					<!--款式end-->
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