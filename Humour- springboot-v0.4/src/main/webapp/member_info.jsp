<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%-- <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  --%>
<html>
<head>
<title>AI Humour-个人中心 - 修改资料</title>
<link href="css/same.css?v=1.3.7.2" type="text/css" rel="stylesheet" />
<script src="js/jquery.js" type="text/javascript"></script>
<script src="js/index.js?virsion=1.3.7.2" type="text/javascript"></script>
<link href="css/same.css?v=1.3.7.2" type="text/css" rel="stylesheet" />
<link href="css/member.css?v=1.3.6.0" type="text/css" rel="stylesheet" />
<script src="js/year_month_day.js" type="text/javascript"></script>
<script type="text/javascript" src="js/member_info.js"></script>
</head>
<body>
	<a href="index.jsp"></a>	
	 <!--头部--> 
    <div class="cmain"> 
     <div class="headtop"> 
      <!--头部左边--> 
      <div class="top-left fl"> 
       <a title="AI Humour" href="index.jsp"> <img width="287" height="62" alt="AI Humour官网" src="images/logo1.jpg" /> </a>
      
      </div> 
      <!--头部左边end--> 
      <!--头部右边--> 
      <div class="top-right fr"> 
       <!--登录注册--> 
       <div id="ctl00_ucheader_pllogin2"> 
       <ul class="tright-ul fl">  
         <li><a><span id="ctl00_ucheader_lit">${sessionScope.username}</span></a></li> 
         <li> <a href="login.jsp" rel="nofollow">退出</a><em>|</em> </li> 
         <li><a target="black" rel="nofollow" href="MemberIndexServlet">我的AI Humour</a><em>|</em></li> 
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
						<li><a href="brand.jsp">品牌文化</a></li>
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
			<div class="cort">
				<!--中间-->
				<div class="cort">
					<!--内容-->
					<div class="cmain mb_back">
						<div class="zbk_top spalid">
							<span>您当前的位置：</span> <span
								id="ctl00_content_website_SiteMapPath1"><a
								href="#ctl00_content_website_SiteMapPath1_SkipLink"></a><span>
									<a target="_blank" href="index.jsp">幽你一默</a>
							</span><span> <em>&gt;</em>
							</span><span> <a target="_blank" href="member_index.jsp">我的humour</a>
							</span><span> <em>&gt;</em>
							</span><span> <span>个人信息</span>
							</span><a id="ctl00_content_website_SiteMapPath1_SkipLink"></a></span>
						</div>
						<!--中间内容-->
						<div class="member_cort">
							<!--左边树-->
							<div class="member_cort-left fl">
								<!--我的DR-->
								<div class="member_cortleft-tittle">
									<i class="mb_home"></i> <a rel="nofollow"
										href="member_index.jsp">我的AI humour</a>
								</div>
								<!--我的DR end-->
								<ul class="member_cort-ul">
									<li>
										<h3>-订单中心-</h3>
										<ul class="member_ul-dr">
											<li id="ctl00_content_ucmemberleft_order"><a
												rel="nofollow" href="com.services.OrdersServlet">我的订单</a></li>
											<li id="ctl00_content_ucmemberleft_ask"><a
												rel="nofollow" href="CommentServlet?flag=a">我的评价</a></li>
											<li id="ctl00_content_ucmemberleft_cart"><a
												rel="nofollow"
												href="com.services.Shopping_CartServlet?control=b">我的购物车</a></li>
										</ul>
									</li>
									<li>
										<h3>-帐户管理-</h3>
										<ul class="member_ul-dr">
											<li id="ctl00_content_ucmemberleft_myinfo"><a
												rel="nofollow" href="SelectMemberInfo">个人信息</a></li>
											<li id="ctl00_content_ucmemberleft_password"><a
												rel="nofollow" href="member_pwd.jsp">修改密码</a></li>
											<li id="ctl00_content_ucmemberleft_address"><a
												rel="nofollow" href="SelectPname">收货地址</a></li>
										</ul>
									</li>
								</ul>
							</div>
							<!--左边树end-->
							<!--右边的主要内容-->
							
							<div class="member_cort-right fr">
								<!--我的个人信息-->
								<div class="member_person">
								
									<div class="member_ask-tittle">
										<h4>我的个人信息</h4>
										<p>为了能给您提供个性化服务，请完善您的基本资料。</p>
									</div>
									<!--个人信息填写-->
									<div class="member_person-cort">
									<form action="user/UpdateMemberInfo?flag=a" method="post">
										<!--左边-->
										<div class="member_person-cort_left">
											<div class="person-cort_left-word">
												<span style="width:10%;margin-left:15px">用户名：</span>
												 <span >${sessionScope.username}</span>
											</div>
											<div class="person-cort_left-word person-cort_left-spword">
												<span style="color:#e0e0e0">可享受更多AI humour为您提供的贴心服务与提醒通知。</span>
											</div>
											<div class="person-cort_left-write">
												<span  style="width:10%">邮&nbsp;&nbsp;箱：</span> <input type="text"
													value="${sessionScope.u.email}" class="write_text"
													id="txtEmail" name="email" /> <span style="display: none"
													id="shrid1"><i class="writer_wrong"></i><em
													id="shrwrong1" class="writer_word"></em></span> <span id="shry1"
													style="display: none"><i class="writer_right"> </i></span>
											</div>
											<div class="person-cort_left-write">
												<span  style="width:10%">昵&nbsp;&nbsp;称：</span> <input type="text"
													value="${sessionScope.u.nickname}" class="write_text"
													id="nicname" name="nickname" /> <span
													style="display: none" id="shrid"><i
													class="writer_wrong"></i><em id="shrwrong"
													class="writer_word"></em></span> <span id="shry"
													style="display: none"><i class="writer_right"> </i></span>
											</div>
											<div class="person-cort_left-write">
												<span  style="width:10%">手&nbsp;&nbsp;机：</span> <input type="text"
													value="${sessionScope.u.phone}" class="write_text"
													id="mobile" name="mobile" /> <span
													style="display: none" id="shrid"><i
													class="writer_wrong"></i><em id="shrwrong"
													class="writer_word"></em></span> <span id="shry"
													style="display: none"><i class="writer_right"> </i></span>
											</div>
											<div class="person-cort_left-write">
												<span  style="width:10%">真实姓名：</span> <input type="text"
													value="${sessionScope.u.real_name}" class="write_text"
													id="realName" name="real_name" /> <span
													style="display: none" id="realId"><i
													class="writer_wrong"></i><em id="realwrong"
													class="writer_word"></em></span> <span id="realy"
													style="display: none"><i class="writer_right"> </i></span>
											</div>
											<div class="person-cort_left-write">
												<span  style="width:10%">身份证号：</span> <input type="text"
													value="${sessionScope.u.id_card}" name="id_card" />
											</div>
											<div class="person-cort_left-write">
												<span style="width:10%">性&nbsp;&nbsp;别：</span> <select id="gender" name="sex">
													<c:forEach items="${sessionScope.gender}" var="gender">
														<option value="${gender}">${gender}</option>
													</c:forEach>
												</select>

											</div>
											<!-- <div id="btnsave" class="bt1 person-cort_left-button"> -->
											<div class="person-cort_left-write">
												<span style="width:10%"></span><input  style="width:10%" type="submit" value="保存">
											</div>
										</div>
										<!--左边end-->
											</form>
			<div class="member_person-cort_right">
				<a href="#"> <img width="180" height="180" id="preview"
					src="${sessionScope.u.image_path }" /></a>
				<p>
				<a style="width:100px;margin-left:108px" href="member_avatar.jsp">更换头像</a>
			</p>
			</div>
										<!--右边end-->
									</div>
									<!--个人信息填写end-->
								</div>
								<!--我的个人信息end-->
								
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
			<iframe src="footer.jsp" style="width: 100%; height: 350px;"
				frameborder="0" scrolling="no"></iframe>
			<!--底部复用end-->
</body>
</html>