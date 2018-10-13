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
<title>图片列表</title>
<script>
		function editUser(userId){
			window.location.href="http://localhost:8086/NewWeb/test?userId="+userId;
		}
		
	</script>
</head>
<body>
	<nav class="breadcrumb">
		<i class="Hui-iconfont">&#xe67f;</i><a href="admin.jsp"> 首页 </a><span
			class="c-gray en">&gt;</span> 订单管理 <span class="c-gray en">&gt;</span>
		订单信息 <a class="btn btn-success radius r"
			style="line-height: 1.6em; margin-top: 3px"
			href="javascript:location.replace(location.href);" title="刷新"><i
			class="Hui-iconfont">&#xe68f;</i></a>
	</nav>
	<div class="page-container">
		<div class="text-c">
	<form action="../SearchOrderServlet" method="post">
		<input type="text" class="input-text" style="width:250px" placeholder="输入订单号" id="search" name="id">
		<input id="but" type="submit" class="btn btn-success"  name="" value="搜订单">
	</form>
	</div>
	<div class="cl pd-5 bg-1 bk-gray mt-20"> <span class="l"><a id="dela" href="" onclick="del()"
				class="btn btn-danger radius"><i class="Hui-iconfont">&#xe6e2;</i>
					批量删除</a>
	</span> 
	<span class="r">共有数据：<strong>${sessionScope.adminorders.size() }</strong> 条</span> </div>
	<br/>
	<table class="table table-border table-bordered table-bg">
		<thead>
			<tr>
				<th scope="col" colspan="9">订单列表</th>
			</tr>
			<tr class="text-c">
				<th width="50"><input type="checkbox" name="" value=""></th>
				<th width="40">ID</th>
				<th width="150">来源用户</th>
				<th width="90">价格</th>
				<th width="80">数量</th>
				<th width="90">收货信息</th>
				<th width="90">订单状态</th>
				<th width="90">备注</th>
				<th width="100">操作</th>
			</tr>
		</thead>
		<c:forEach items="${sessionScope.adminorders }" var="adminorder">
			<tr class="text-c">
				<td><input class="del" type="checkbox" value="${adminorder.id }" name=""></td>
				<td>${adminorder.id }</td>
				<td>${adminorder.user.username }</td>
				<td>${adminorder.unit_price }</td>
				<td>${adminorder.count }</td>
				<td>${adminorder.receive_info }</td>
				<td>${adminorder.status}</td>
				<td>${adminorder.content }</td>
				<td class="td-manage">
				<!-- onclick="admin_edit('订单编辑','order-edit.jsp','2','800','500')" -->
				<a title="编辑" href="javascript:;" onclick="editUser('${adminorder.id }')"  class="ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6df;</i></a> 
				<a title="删除" href="../OrderDeleteServlet?id=${adminorder.id }" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6e2;</i></a></td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	共有:${sessionScope.paging.totalPage }页&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<a href="../PagingAction?reqNum=${sessionScope.paging.getPrevious() }&flag=o">上一页</a>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<c:forEach begin="1" end="${sessionScope.paging.totalPage}" 
       step="1" var="pnum">
       <a href="../PagingAction?reqNum=${pnum }&flag=o">${pnum }</a>
       </c:forEach>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <a href="../PagingAction?reqNum=${sessionScope.paging.getNext() }&flag=o">下一页</a>
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
	//批量删除
	function del(){
		var check = document.getElementsByClassName("del");
		var dela = document.getElementById("dela");
		var total = ${sessionScope.adminorders.size() };
		var delIds = "";
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
		
		var href="../OrdersAllDeleteServlet?delIds="+delIds;
		dela.href=href;
	}

		$('.table-sort').dataTable({
			"aaSorting" : [ [ 1, "desc" ] ],//默认第几个排序
			"bStateSave" : true,//状态保存
			"aoColumnDefs" : [
			//{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
			{
				"orderable" : false,
				"aTargets" : [ 0, 8 ]
			} // 制定列不参与排序
			]
		});

		/*图片-添加*/
		function picture_add(title, url) {
			var index = layer.open({
				type : 2,
				title : title,
				content : url
			});
			layer.full(index);
		}

		/*图片-查看*/
		function picture_show(title, url, id) {
			var index = layer.open({
				type : 2,
				title : title,
				content : url
			});
			layer.full(index);
		}

		/*图片-审核*/
		function picture_shenhe(obj, id) {
			layer
					.confirm(
							'审核文章？',
							{
								btn : [ '通过', '不通过' ],
								shade : false
							},
							function() {
								$(obj)
										.parents("tr")
										.find(".td-manage")
										.prepend(
												'<a class="c-primary" onClick="picture_start(this,id)" href="javascript:;" title="申请上线">申请上线</a>');
								$(obj)
										.parents("tr")
										.find(".td-status")
										.html(
												'<span class="label label-success radius">已发布</span>');
								$(obj).remove();
								layer.msg('已发布', {
									icon : 6,
									time : 1000
								});
							},
							function() {
								$(obj)
										.parents("tr")
										.find(".td-manage")
										.prepend(
												'<a class="c-primary" onClick="picture_shenqing(this,id)" href="javascript:;" title="申请上线">申请上线</a>');
								$(obj)
										.parents("tr")
										.find(".td-status")
										.html(
												'<span class="label label-danger radius">未通过</span>');
								$(obj).remove();
								layer.msg('未通过', {
									icon : 5,
									time : 1000
								});
							});
		}

		/*图片-下架*/
		function picture_stop(obj, id) {
			layer
					.confirm(
							'确认要下架吗？',
							function(index) {
								$(obj)
										.parents("tr")
										.find(".td-manage")
										.prepend(
												'<a style="text-decoration:none" onClick="picture_start(this,id)" href="javascript:;" title="发布"><i class="Hui-iconfont">&#xe603;</i></a>');
								$(obj)
										.parents("tr")
										.find(".td-status")
										.html(
												'<span class="label label-defaunt radius">已下架</span>');
								$(obj).remove();
								layer.msg('已下架!', {
									icon : 5,
									time : 1000
								});
							});
		}

		/*图片-发布*/
		function picture_start(obj, id) {
			layer
					.confirm(
							'确认要发布吗？',
							function(index) {
								$(obj)
										.parents("tr")
										.find(".td-manage")
										.prepend(
												'<a style="text-decoration:none" onClick="picture_stop(this,id)" href="javascript:;" title="下架"><i class="Hui-iconfont">&#xe6de;</i></a>');
								$(obj)
										.parents("tr")
										.find(".td-status")
										.html(
												'<span class="label label-success radius">已发布</span>');
								$(obj).remove();
								layer.msg('已发布!', {
									icon : 6,
									time : 1000
								});
							});
		}

		/*图片-申请上线*/
		function picture_shenqing(obj, id) {
			$(obj).parents("tr").find(".td-status").html(
					'<span class="label label-default radius">待审核</span>');
			$(obj).parents("tr").find(".td-manage").html("");
			layer.msg('已提交申请，耐心等待审核!', {
				icon : 1,
				time : 2000
			});
		}

		/*图片-编辑*/
		function picture_edit(title, url, id) {
			var index = layer.open({
				type : 2,
				title : title,
				content : url
			});
			layer.full(index);
		}

		/*图片-删除*/
		function picture_del(id,page) {
				var deloId = "delo"+id;
				var delo = document.getElementById(deloId);
				var href = "../imageListAction?index="+id+"&page="+page;
				delo.href=href;
		}

	</script>
</body>
</html>