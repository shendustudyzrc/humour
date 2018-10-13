<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="Bookmark" href="/favicon.ico">
<link rel="Shortcut Icon" href="/favicon.ico" />
<!--[if lt IE 9]>
<script type="text/javascript" src="lib/html5shiv.js"></script>
<script type="text/javascript" src="lib/respond.min.js"></script>

<![endif]-->
<link rel="stylesheet" type="text/css"
	href="static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css"
	href="static/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css"
	href="lib/Hui-iconfont/1.0.8/iconfont.css" />

<link rel="stylesheet" type="text/css"
	href="static/h-ui.admin/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css"
	href="static/h-ui.admin/css/style.css" />
<!--[if IE 6]>
<script type="text/javascript" src="lib/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->
<!--/meta 作为公共模版分离出去-->

<link href="lib/webuploader/0.1.5/webuploader.css" rel="stylesheet"
	type="text/css" />
</head>
<body>
	<div class="page-container">
		<form action="../ProductAddServlet?flag=a" method="post"
			class="form form-horizontal" id="form-article-add">
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-2"><span
					class="c-red">*</span>商品名称：</label>
				<div class="formControls col-xs-4 col-sm-3">
					<input type="text" class="input-text" value="" placeholder="" id=""
						name="goodsname">
				</div>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-2"><span
					class="c-red">*</span>所属系列：</label>
				<div class="formControls col-xs-4 col-sm-3">
					<span class="select-box"> <select name="small"
						class="select">
							<c:forEach items="${sessionScope.small_list}" var="small">
								<option value="${small.id }">${small.classes }</option>
							</c:forEach>
					</select>
					</span>
				</div>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-2">基本价格：</label>
				<div class="formControls col-xs-4 col-sm-3">
					<input type="text" class="input-text" value="0" placeholder=""
						id="" name="price">
				</div>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-2">描述：</label>
				<div class="formControls col-xs-6 col-sm-8">
					<input type="text" name="describes" id="" placeholder="" value=""
						class="input-text">
				</div>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-2">总数：</label>
				<div class="formControls col-xs-4 col-sm-3">
					<input type="text" name="count" id="" placeholder="" value=""
						class="input-text">
				</div>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-2">折扣：</label>
				<div class="formControls col-xs-4 col-sm-3">
					<input type="text" name="discount" id="" placeholder="" value=""
						class="input-text">
				</div>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-2">购买获得积分：</label>
				<div class="formControls col-xs-4 col-sm-3">
					<input type="text" name="point" id="" placeholder="" value=""
						class="input-text">
				</div>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-2">促销开始时间：</label>
				<div class="formControls col-xs-4 col-sm-3">
					<input type="date" name="begin" id="" placeholder="" value=""
						class="input-text">
				</div>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-2">促销结束时间：</label>
				<div class="formControls col-xs-4 col-sm-3">
					<input type="date" name="end" id="" placeholder="" value=""
						class="input-text">
				</div>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-2">兑换商品需要积分：</label>
				<div class="formControls col-xs-4 col-sm-3">
					<input type="number" name="minusPoint" id="" placeholder=""
						value="" class="input-text" min="0">
				</div>
			</div>
			<div class="row cl">
				<div class="col-9 col-offset-2">
					<input class="btn btn-prim
				ary radius" type="submit"
						value="&nbsp;&nbsp;提交&nbsp;&nbsp;">
				</div>
			</div>
		</form>
	</div>

	<!--_footer 作为公共模版分离出去-->
	<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script>
	<script type="text/javascript" src="lib/layer/2.4/layer.js"></script>
	<script type="text/javascript" src="static/h-ui/js/H-ui.min.js"></script>
	<script type="text/javascript" src="static/h-ui.admin/js/H-ui.admin.js"></script>
	<!--/_footer 作为公共模版分离出去-->

	<!--请在下方写此页面业务相关的脚本-->
	<script type="text/javascript"
		src="lib/My97DatePicker/4.8/WdatePicker.js"></script>
	<script type="text/javascript"
		src="lib/jquery.validation/1.14.0/jquery.validate.js"></script>
	<script type="text/javascript"
		src="lib/jquery.validation/1.14.0/validate-methods.js"></script>
	<script type="text/javascript"
		src="lib/jquery.validation/1.14.0/messages_zh.js"></script>
	<script type="text/javascript"
		src="lib/webuploader/0.1.5/webuploader.min.js"></script>
	<script type="text/javascript"
		src="lib/ueditor/1.4.3/ueditor.config.js"></script>
	<script type="text/javascript"
		src="lib/ueditor/1.4.3/ueditor.all.min.js">
		
	</script>
	<script type="text/javascript"
		src="lib/ueditor/1.4.3/lang/zh-cn/zh-cn.js"></script>

</body>
</html>