<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<html>
<head>
<title>L&amp;S-个人中心 - 上传头像</title>
<meta charset="utf-8" />
<link href="css/same.css?v=1.3.7.2" type="text/css" rel="stylesheet" />
<link href="css/member.css?v=1.3.6.0" type="text/css" rel="stylesheet" />
<link type="text/css" rel="stylesheet" href="css/uploadify.css" />
<script type="text/javascript" src="js/member.js"></script>
<script src="js/jquery.js" type="text/javascript"></script>
<script src="js/index.js?virsion=1.3.7.2" type="text/javascript"></script>
<script type="text/javascript" src="js/jquery.uploadify.js"></script>
<script type="text/javascript" src="js/jquery.Jcrop.js"></script>
<script type="text/javascript" src="js/Jcrop_photo.js"></script>
<script type="text/javascript">
	//下面用于图片上传预览功能
	function setImagePreview(avalue) {
		var docObj = document.getElementById("doc"); //上传图片

		var imgObjPreview = document.getElementById("preview"); //图片预览效果
		if (docObj.files && docObj.files[0]) {
			//火狐下，直接设img属性
			imgObjPreview.style.display = 'block';
			imgObjPreview.style.width = '180px';
			imgObjPreview.style.height = '180px';
			//imgObjPreview.src = docObj.files[0].getAsDataURL();

			//火狐7以上版本不能用上面的getAsDataURL()方式获取，需要一下方式
			imgObjPreview.src = window.URL.createObjectURL(docObj.files[0]);
		} else {
			//IE下，使用滤镜
			docObj.select();
			var imgSrc = document.selection.createRange().text;
			var localImagId = document.getElementById("localImag");
			//必须设置初始大小
			localImagId.style.width = "180px";
			localImagId.style.height = "180px";
			//图片异常的捕捉，防止用户修改后缀来伪造图片
			try {
				localImagId.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale)";
				localImagId.filters
						.item("DXImageTransform.Microsoft.AlphaImageLoader").src = imgSrc;
			} catch (e) {
				alert("您上传的图片格式不正确，请重新选择!");
				return false;
			}
			imgObjPreview.style.display = 'none';
			document.selection.empty();
		}
		return true;
	}
</script>
</head>
<body>
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
       <div id="ctl00_ucheader_pllogin2"> 
       <ul class="tright-ul fl">  
         <li><a><span id="ctl00_ucheader_lit">${sessionScope.username}</span></a></li> 
         <li> <a href="login.jsp" rel="nofollow">退出</a><em>|</em> </li> 
         <li><a target="black" rel="nofollow" href="MemberIndexServlet">我的LS</a><em>|</em></li> 
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
		<div class="cort">
			<div class="tobuy cmain">
				<div class="cmain mb_back">
					<div class="zbk_top spalid">
						<span>您当前的位置：</span> <span id="ctl00_content_website_SiteMapPath1"><a
							href="#ctl00_content_website_SiteMapPath1_SkipLink"></a><span>
								<a target="_blank" href="index.jsp">Love Swear</a>
						</span><span> <em>&gt;</em>
						</span><span> <a target="_blank" href="member_index.jsp">我的L&amp;S</a>
						</span><span> <em>&gt;</em>
						</span><span> <span>修改头像</span>
						</span><a id="ctl00_content_website_SiteMapPath1_SkipLink"></a></span>
					</div>
					<div class="member_cort">
						<div class="member_cort-left fl">
							<!--我的DR-->
							<div class="member_cortleft-tittle">
								<i class="mb_home"></i> <a rel="nofollow"
									href="member_index.jsp">我的L&amp;S</a>
							</div>
							<!--我的DR end-->
							<ul class="member_cort-ul">
								<li>
									<h3>-订单中心-</h3>
									<ul class="member_ul-dr">
										<li id="ctl00_content_ucmemberleft_order"><a
											rel="nofollow" href="com.services.OrdersServlet">我的订单</a></li>
										<li id="ctl00_content_ucmemberleft_ask"><a rel="nofollow"
											href="CommentServlet?flag=a">我要评价</a></li>
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
						<!--右边的主要内容-->
						<div class="member_cort-right fr">
							<!--上传头像-->
							<div class="member_person">
								<div class="member_ask-tittle">
									<h4>设置头像</h4>
									<p>为了能给您提供个性化服务，请完善您的基本资料。</p>
								</div>
								<!--选择文件上传-->
								<form action="/user/UpdateMemberInfo?flag=b" method="post"
									enctype="multipart/form-data">
									<!--右边-->
									<div class="member_person-cort_left">
										<a href="#"> <img width="180" height="180" id="preview"
											src="${sessionScope.u.image_path }" /></a>
										<p>
											<input id="doc" name="file" class="uploadify" type="file"
												accept="image/*" onchange="javascript:setImagePreview();" />
										</p>
										<input style="width: 60px" type="submit" value="提交">
									</div>
								</form>
								<!--选择文件上传end-->
							</div>
							<!--上传头像end-->
						</div>
						<!--右边的主要内容end-->
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--底部复用start-->
	<iframe src="footer.jsp" style="width: 100%; height: 350px;"
		frameborder="0" scrolling="no"></iframe>
	<!--底部复用end-->
</body>
</html>