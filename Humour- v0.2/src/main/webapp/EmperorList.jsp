<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.domain.Emperor"%>
<%@ page import="java.util.List"%>
<%String contextPath=request.getContextPath();%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="js/jquery.min.js"></script>
<link rel="stylesheet" href="css/bootstrap.min.css">
<script type="text/javascript" src="js/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="js/jquery.json-2.2.js"></script>
<script type="text/javascript" src="js/jquery.easyui.min.js"></script>
<script type="text/javascript" src="js/jquery.validate.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<title>皇帝界面</title>
<script type="text/javascript">
       function shanchu(id){
    	   console.log(id);
    	   confirm_=confirm("确定删除该列表？");
    	   if(confirm_){
    	   $.ajax({
			   url:"<%=contextPath%>/emperor/"+id, 
		       type:'delete',
		       contentType:'application/json',
		       success:function(data){
		    	   if(data==true){
			             window.location.href="<%=contextPath%>/emperor/emperorManage"
			         }else{
			        	 window.location.href="<%=contextPath%>/error.jsp"
			         } 
		       },
		       error:function(request){
		    	 alert("失败啦");  		    	   
		       }
		   });  
    	   }
    	   
    	 }
       function xiugai(id,name,story){
    	   $("#id").val(id);
    	   $("#name").val(name);
    	   $("#story").val(story);
    	   $("#myUpdateModal").modal('show');
    	   
       }
       function chaxun(){
    	   var searchcontent=$("#searchcontent").val();
    	   $.ajax({
			   url:"<%=contextPath%>/web/student/selectHwById?searchcontent="+searchcontent, 
		       type:'GET',
		       contentType:'application/json',
		       success:function(data){
		         alert("成功啦"); 
		         window.location.href="<%=contextPath%>/StudentList.jsp"
		       },
		       error:function(request){
		    	 alert("失败啦");  		    	   
		       }
		   }); 
       }
       function insert(){
    	   var data= $('#emperorInsert').serializeArray();
    	   $.ajax({
			   url:"<%=contextPath%>/emperor", 
		       type:'post',
		       dateType:'json',
		       data:data,
		       success:function(data){
		    	   if(data==true){
			             window.location.href="<%=contextPath%>/emperor/emperorManage"
			         }else{
			        	 window.location.href="<%=contextPath%>/error.jsp"
			         }
		       },
		       error:function(request){
		    	 alert("失败啦");  		    	   
		       }
		   }); 
       }
       function update(){
           var data=$('#emperorUpdate').serialize();
    	   $.ajax({
			   url:"<%=contextPath%>/emperor", 
		       type:'put',
		       dateType:'json',
		       data : data,
		       success:function(data){
		    	  if(data==true){
			             window.location.href="<%=contextPath%>/emperor/emperorManage"
			         }else{
			        	 window.location.href="<%=contextPath%>/error.jsp"
			       } 
		       },
		       error:function(request){
		    	 alert("失败啦");  		    	   
		       }
		   }); 
       }
</script>
<style type="text/css">
* {
	margin: 0px;
	padding: 0px;
}

.head {
	width: 100%;
	height: 80px;
	background: #98bf76;
}

.body {
	top: 140px;
	height: 670px;
	width: 100%;
	background: #f6f6f6;
}

.footer {
	width: 100%;
	height: 100px;
	background: #98bf21;
}

.btn {
	margin-left: 60px;
	width: 250px;
	height: 30px;
	font-size: 15px;
	outline: none;
	border: 0;
	background: #98bf76;
}

.input {
	width: 250px;
	height: 40px;
}

.body-left {
	width: 10%;
	height: 650px;
	background: white;
	float: left;
}

.body-right {
	float: left;
}
</style>
</head>
<body>
	<div class="container1">
		<!-- start of 头部导航-->
	<div class="head_top">
		<table width="100%" height="20px">
			<tr>
				<td style="font-size: 30px; font: 楷体; color: #98bf21">AI管理员，欢迎你的到来</td>
			</tr>
		</table>
	</div>
	<!--end of 头部导航-->
		<!-- 头部复用end -->
		<div class="body">
			<div class="body-left">
				<ul>
				     <li style="font-size:20px;padding-left:20px" class="user"><p style="background:orange"><a href="<%=contextPath%>/president/presidentManage">总统管理</a></p></li>
				     <li style="font-size:20px;padding-left:20px" class="user"><p style="background:orange"><a href="<%=contextPath%>/emperor/emperorManage">皇帝管理</a></p></li>
				     <li style="font-size:20px;padding-left:20px" class="user"><p style="background:orange"><a href="<%=contextPath%>/philosophy/philosophyManage">哲学管理</a></p></li>
				     <li style="font-size:20px;padding-left:20px" class="user"><p style="background:orange"><a href="<%=contextPath%>/picture/pictureManage">图片管理</a></p></li>
				     <li style="font-size:20px;padding-left:20px" class="user"><p style="background:orange"><a href="<%=contextPath%>/quote/quoteManage">名言管理</a></p></li>
               </ul>
			</div>
			<div class="body-right">
				 <div class="container">
					<h2>管理公告表格</h2>
			<form id="ff_sort_type_list" class="form-inline container-fluid search-form">
			  	<div id="searchDiv" class="row">
				  	<div class="form-input col-md-2">
				  		<div class="form-input-label">
					    	<label for="searchcontent" class="control-label"></label>
				  		</div>
				  		<div class="form-input-input">
					    	<input name="searchcontent" type="text" class="form-control" id="searchcontent" placeholder="请输入公告号">
				  		</div>
				  	</div>
				  	<div class="form-input col-md-6">
				  		<div class="form-input-input">
					    	<button style="width: 120px" class="btn btn-primary btn-lg" onclick="chaxun()">查询</button>
				  		</div>
				  	</div>
			  	</div>
			</form>
					<div style="padding-left: 960px;">
						<button style="width: 120px;" class="btn btn-primary btn-lg"
							data-toggle="modal" data-target="#myInsertModal">添加总统</button>
					</div>
					<div class="table-responsive">
						<table class="table table-striped table-bordered">
							<thead>
								<tr>
									<th>皇帝编号</th>
									<th>皇帝名字</th>
									<th>皇帝故事</th>
									<th colspan="3">操作</th>
								</tr>
							</thead>
							 <div class="container">
								<div class="table-responsive">
								<%
                                 List<Emperor> list=(List<Emperor>)session.getAttribute("list");
                                  for(Emperor e:list){
	                            %>
									<tr>
										<td><%=e.getId()%></td>
										<td><%=e.getName()%></td>
										<td><%=e.getStory()%></td>
										<td style="width: 50px"><button style="width: 120px;"
												class="btn btn-primary btn-lg" onclick="xiugai('<%=e.getId()%>','<%=e.getName()%>','<%=e.getStory()%>')">修改</button></td>
										<td style="width: 50px"><button style="width: 120px"
												class="btn btn-primary btn-lg"
												onclick="shanchu('<%=e.getId()%>')">删除</button></td>
									</tr>
									<%}%>
									<tr>
										<td align="center" colspan="11" bgcolor="white"><%=session.getAttribute("bar")%>
										</td>
									</tr>
								</div>
							</div> 
						</table>
					</div>
				</div> 
			</div>
		</div>
		<!-- 模态框（Modal） 增加表单-->
		<div class="modal fade" id="myInsertModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="myModalLabel">增加皇帝幽默信息</h4>
					</div>
					<div class="modal-body">
						<!-- 添加的方法 -->
						<form class="form-horizontal" id="emperorInsert" onsubmit="return false">
							<div class="form-group">
								<label for="lastname" class="col-sm-2 control-label">皇帝名字</label>
								<div class="col-sm-4">
									<input type="text" class="form-control" name="name"
										placeholder="请输入皇帝姓名">
								</div>
							</div>
							<div class="form-group">
								<label for="lastname" class="col-sm-2 control-label">皇帝故事</label>
								<div class="col-sm-4">
									<input type="text" class="form-control" name="story"
										placeholder="请输入皇帝故事">
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-offset-3 col-sm-10"
									style="margin-left: 45px;">
									<input type="submit" style="width: 120px;" value="提交"
										class="btn btn-primary btn-lg" onclick="insert()">
								</div>
							</div>
						</form>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭
						</button>
					</div>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal -->
		</div>
		<!-- //模态框更新的方法 -->
		<div class="modal fade" id="myUpdateModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="myModalLabel">更新总统信息</h4>
					</div>
					<div class="modal-body">
						<!-- 更新的方法 -->
						<form class="form-horizontal" id="emperorUpdate" onsubmit="return false">
							<div class="form-group">
								<label for="lastname" class="col-sm-2 control-label">id</label>
								<div class="col-sm-4">
									<input type="text" class="form-control" name="id" id="id"
										 placeholder="请输入id">
								</div>
							</div>
							<div class="form-group">
								<label for="lastname" class="col-sm-2 control-label">总统姓名</label>
								<div class="col-sm-4">
									<input type="text" class="form-control" name="name" id="name"
										 placeholder="请输入总统姓名">
								</div>
							</div>
							<div class="form-group">
								<label for="lastname" class="col-sm-2 control-label">总统故事</label>
								<div class="col-sm-4">
									<input type="text" class="form-control" name="story" id="story"
										placeholder="请输入总统故事">
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-offset-3 col-sm-10"
									style="margin-left: 45px;">
									<input type="submit" style="width: 120px;" value="提交"
										class="btn btn-primary btn-lg" onclick="update()">
								</div>
							</div>
						</form>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭
						</button>
					</div>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal -->
		</div>
		<!-- 尾部复用start -->
		<iframe src="end.jsp" style="width: 100%; height: 90px;"
			frameborder="0" scrolling="no"></iframe>
		<!-- 尾部复用end-->
	</div>
</body>
</html>