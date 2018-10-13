<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
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
<script type="text/javascript">
	window.onload = function() {
		var nowTimeSeconds = Math.round(Date.now() / 1000);
		var startTime = document.getElementById("serverTime").innerText;
		var showTime = document.getElementById("showTime");
		var showTimeText = eval(nowTimeSeconds - startTime) + "秒";
		showTime.innerText = showTimeText;

		setInterval(function() {
			var nowTimeSeconds = Math.round(Date.now() / 1000);
			var startTime = document.getElementById("serverTime").innerText;
			var showTime = document.getElementById("showTime");
			var showTimeText = eval(nowTimeSeconds - startTime) + "秒";
			showTime.innerText = showTimeText;
		}, 1000);
	}
</script>
<title>我的桌面</title>
</head>
<body>
	<span id="serverTime" style="display: none">${startTime }</span>
	<div class="page-container">
		<p class="f-20 text-success">
			欢迎使用admin <span class="f-14">v1.0/</span>
		</p>

		<table class="table table-border table-bordered table-bg">
			<thead>
				<tr>
					<th colspan="7" scope="col">信息统计</th>
				</tr>
				<tr class="text-c">
					<th>统计</th>
					<th>产品库</th>
					<th>用户</th>
					<th>管理员</th>
				</tr>
			</thead>
			<tbody>
				<tr class="text-c">
					<td>总数</td>
					<td>${sessionScope.countGoods }</td>
					<td>${sessionScope.countUser }</td>
					<td>${sessionScope.countAdmin }</td>
				</tr>
			</tbody>
		</table>
		<table class="table table-border table-bordered table-bg mt-20">
			<thead>
				<tr>
					<th colspan="2" scope="col">服务器信息</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th width="30%">服务器计算机名</th>
					<td><span id="lbServerName">http://127.0.0.1/</span></td>
				</tr>
				<tr>
					<td>服务器IP地址</td>
					<td>192.168.1.1</td>
				</tr>
				<tr>
					<td>服务器域名</td>
					<td>www.h-ui.net</td>
				</tr>
				<tr>
					<td>服务器端口</td>
					<td>80</td>
				</tr>
				<tr>
					<td>服务器上次启动到现在已运行</td>
					<td id="showTime"></td>

				</tr>

			</tbody>
		</table>

	</div>
	<footer class="footer mt-20">
		<div class="container"></div>
	</footer>
	<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script>
	<script type="text/javascript" src="static/h-ui/js/H-ui.min.js"></script>
</body>
</html>