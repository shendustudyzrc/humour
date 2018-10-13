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
<title>用户管理</title>

</head>
<body>
	<nav class="breadcrumb">
		<i class="Hui-iconfont">&#xe67f;</i><a href="admin.jsp"> 首页 </a> <span
			class="c-gray en">&gt;</span> 用户管理 <span class="c-gray en">&gt;</span>
		用户列表 <a class="btn btn-success radius r"
			style="line-height: 1.6em; margin-top: 3px"
			href="javascript:location.replace(location.href);" title="刷新"><i
			class="Hui-iconfont">&#xe68f;</i></a>
	</nav>
	<div class="page-container">
		<div class="text-c">
			<form action="../SearchUserServlet" method="post">
				<input type="text" class="input-text" style="width: 250px"
					placeholder="输入用户名" id="search" name="username"> <input
					id="but" type="submit" class="btn btn-success radius" name=""
					value="搜用户">
			</form>
		</div>
		<div class="cl pd-5 bg-1 bk-gray mt-20">
			<span class="l"><a id="dela" href="" onclick="del()"
				class="btn btn-danger radius"><i class="Hui-iconfont">&#xe6e2;</i>
					批量删除</a></span> <span style="margin-right: 20px" class="r">共有数据：<strong>${sessionScope.adminusers.size() }</strong>
				条
			</span>
		</div>
		<div class="mt-20">
			<table
				class="table table-border table-bordered table-hover table-bg table-sort">
				<thead>
					<tr class="text-c">
						<th width="25"><input type="checkbox" name="" value=""></th>
						<th width="30">ID</th>
						<th width="100">用户名</th>
						<th width="100">密码</th>
						<th width="60">真实姓名</th>
						<th width="90">身份证号</th>
						<th width="120">邮箱</th>
						<th width="60">昵称</th>
						<th width="120">头像</th>
						<th width="30">性别</th>
						<th width="80">手机</th>
						<th width="50">积分</th>
						<th width="50">会员折扣</th>
						<th width="40">操作</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${sessionScope.adminusers }" var="adminuser">
						<tr class="text-c">
							<td><input class="del" type="checkbox"
								value="${adminuser.id }" name=""></td>
							<td>${adminuser.id }</td>
							<td>${adminuser.username }</td>
							<td>${adminuser.password }</td>
							<td>${adminuser.real_name }</td>
							<td>${adminuser.id_card }</td>
							<td>${adminuser.email}</td>
							<td>${adminuser.nickname }</td>
							<td><img width="120" height="120"
								src="${adminuser.image_path }"></td>
							<td>${adminuser.gender }</td>
							<td>${adminuser.phone }</td>
							<td>${adminuser.point}</td>
							<td><select id="rebate"
								onchange="changeRe(${adminuser.id })">
									<option selected="selected">${adminuser.rebate}</option>
									<option>0.95</option>
									<option>0.9</option>
									<option>0.85</option>
									<option>0.8</option>
									<option>0.75</option>
									<option>0.7</option>
									<option>0.65</option>
									<option>0.6</option>
									<option>0.55</option>
									<option>0.5</option>
							</select></td>
							<td class="td-manage"><a title="删除"
								href="../UserDeleteServlet?id=${adminuser.id}&flag=a"
								class="ml-5" style="text-decoration: none"><i
									class="Hui-iconfont">&#xe6e2;</i></a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			共有:${sessionScope.paging.totalPage }页&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a
				href="../PagingAction?reqNum=${sessionScope.paging.getPrevious() }&flag=m">上一页</a>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<c:forEach begin="1" end="${sessionScope.paging.totalPage}" step="1"
				var="pnum">
				<a href="../PagingAction?reqNum=${pnum }&flag=m">${pnum }</a>
			</c:forEach>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a
				href="../PagingAction?reqNum=${sessionScope.paging.getNext() }&flag=m">下一页</a>
		</div>
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
		src="lib/datatables/1.10.0/jquery.dataTables.min.js"></script>
	<script type="text/javascript" src="lib/laypage/1.2/laypage.js"></script>

	<script type="text/javascript">
						function changeRe(id){
							var rebate=document.getElementById("rebate");
							//alert("aaaaa");
							doRequest(id,rebate.value);
							
						}
						var xmlHttpRequest; //创建全局变量
						//根据不同浏览器进行对象那个的实例化
						function createXmlHttpRequest() {
							if (window.ActiveXObject) {
								xmlHttpRequest = new ActiveXObject("Microsoft.XMLHTTP");
							} else {
								xmlHttpRequest = new XMLHttpRequest();
							}
						}

						//创建监听器,并处理监听事件
						function success() {
							//当对象complete时
							if (xmlHttpRequest.readyState == 4) {
								//当status完成时
								if (xmlHttpRequest.status == 200) {
									
								} else {
									alert(xmxmlHttpRequest.statusText);
								}
							}
						}

						//发送异步请求
						function doRequest(id,rebate) {
							//alert("调用了ajax");
							//实例化对象
							createXmlHttpRequest();
							//添加监听器
							xmlHttpRequest.onreadystatechange = success;
							//打开异步请求,由于需要验证验证法是否正确，所以需要修改URL
							xmlHttpRequest.open("post","../UserUpdateServlet?id="+id+"&rebate="+rebate);
							//发送
							xmlHttpRequest.send(null);
						}
					</script>


	<script type="text/javascript">
var delIds = "";
//批量删除
function del(){
	var check = document.getElementsByClassName("del");
	var dela = document.getElementById("dela");
	var total =${sessionScope.adminusers.size() };
	
	if((total%10)!=0){
		for(var i = 0;i<(total%10);i++){
			if(check[i].checked==true){
				delIds+="a"+check[i].value;
			}
		}
	}else{
		for(var i = 0;i<10;i++){
			if(check[i].checked==true){
				delIds+="a"+check[i].value;
			}
		}
	}
	
	var href="../UserDeleteServlet?flag=b&delIds="+delIds;
	dela.href=href;
}
$(function(){
	$('.table-sort').dataTable({
		"aaSorting": [[ 1, "desc" ]],//默认第几个排序
		"bStateSave": true,//状态保存
		"aoColumnDefs": [
		  //{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
		  {"orderable":false,"aTargets":[0,8,9]}// 制定列不参与排序
		]
	});
	
});
/*用户-添加*/
function member_add(title,url,w,h){
	layer_show(title,url,id,w,h);
}
/*用户-查看*/
function member_show(title,url,id,w,h){
	layer_show(title,url,w,h);
}
/*用户-停用*/
function member_stop(obj,id){
	layer.confirm('确认要停用吗？',function(index){
		$.ajax({
			type: 'POST',
			url: '',
			dataType: 'json',
			success: function(data){
				$(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" onClick="member_start(this,id)" href="javascript:;" title="启用"><i class="Hui-iconfont">&#xe6e1;</i></a>');
				$(obj).parents("tr").find(".td-status").html('<span class="label label-defaunt radius">已停用</span>');
				$(obj).remove();
				layer.msg('已停用!',{icon: 5,time:1000});
			},
			error:function(data) {
				console.log(data.msg);
			},
		});		
	});
}

/*用户-启用*/
function member_start(obj,id){
	layer.confirm('确认要启用吗？',function(index){
		$.ajax({
			type: 'POST',
			url: '',
			dataType: 'json',
			success: function(data){
				$(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" onClick="member_stop(this,id)" href="javascript:;" title="停用"><i class="Hui-iconfont">&#xe631;</i></a>');
				$(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">已启用</span>');
				$(obj).remove();
				layer.msg('已启用!',{icon: 6,time:1000});
			},
			error:function(data) {
				console.log(data.msg);
			},
		});
	});
}
/*用户-编辑*/
function member_edit(title,url,id,w,h){
	layer_show(title,url,w,h);
}
/*密码-修改*/
function change_password(title,url,id,w,h){
	layer_show(title,url,w,h);	
}
/*用户-删除*/
function member_del(obj,id){
	layer.confirm('确认要删除吗？',function(index){
		$.ajax({
			type: 'POST',
			url: '',
			dataType: 'json',
			success: function(data){
				$(obj).parents("tr").remove();
				layer.msg('已删除!',{icon:1,time:1000});
			},
			error:function(data) {
				console.log(data.msg);
			},
		});		
	});
}
</script>
</body>
</html>