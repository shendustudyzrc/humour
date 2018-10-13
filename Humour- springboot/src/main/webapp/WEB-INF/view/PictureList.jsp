<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.domain.Picture"%>
<%@ page import="java.util.List"%>
<%String contextPath=request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="/js/jquery.min.js"></script>
<link rel="stylesheet" href="/css/bootstrap.min.css">
<script type="text/javascript" src="/js/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="/js/jquery.json-2.2.js"></script>
<script type="text/javascript" src="/js/jquery.easyui.min.js"></script>
<script type="text/javascript" src="/js/jquery.validate.min.js"></script>
<script src="/js/bootstrap.min.js"></script>
<title>图片界面</title>
<script type="text/javascript">
       function shanchu(id){
    	   confirm_=confirm("确定删除该列表？");
    	   if(confirm_){
    	   $.ajax({
			   url:"<%=contextPath%>/picture/"+id, 
		       type:'delete',
		       contentType:'application/json',
		       success:function(data){
		    	   if(data==true){
			             window.location.href="<%=contextPath%>/picture/PictureList"
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
       function xiugai(id,title,picturePath){
    	   $("#id").val(id);
    	   $("#title").val(title);
    	   $("#picturePath").val(picturePath);
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
    	   var data= $('#pictureInsert').serializeArray();
    	   alert(data);
    	   $.ajax({
			   url:"<%=contextPath%>/picture", 
		       type:'post',
		       dateType:'json',
		       data:data,
		       success:function(data){
		    	   if(data==true){
			             window.location.href="<%=contextPath%>/picture/PictureList"
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
           var data=$('#pictureUpdate').serialize();
    	   $.ajax({
			   url:"<%=contextPath%>/picture", 
		       type:'put',
		       dateType:'json',
		       data : data,
		       success:function(data){
		    	  if(data==true){
			             window.location.href="<%=contextPath%>/picture/PictureList"
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
	<!--end of 头部导航-->
		<!-- 头部复用end -->
		<div class="body">
			
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
							data-toggle="modal" data-target="#myInsertModal">添加图片</button>
					</div>
					<div class="table-responsive">
						<table class="table table-striped table-bordered">
							<thead>
								<tr>
									<th>图片编号</th>
									<th>图片标题</th>
									<th>图片路径</th>
									<th colspan="3">操作</th>
								</tr>
							</thead>
							 <div class="container">
								<div class="table-responsive">
								<%
                                 List<Picture> list=(List<Picture>)session.getAttribute("list");
                                  for(Picture p:list){
	                            %>
									<tr>
										<td><%=p.getId()%></td>
										<td><%=p.getTitle()%></td>
										<td><%=p.getPicturePath()%></td>
										<td style="width: 50px"><button style="width: 120px;"
												class="btn btn-primary btn-lg" onclick="xiugai('<%=p.getId()%>','<%=p.getTitle()%>','<%=p.getPicturePath()%>')">修改</button></td>
										<td style="width: 50px"><button style="width: 120px"
												class="btn btn-primary btn-lg"
												onclick="shanchu('<%=p.getId()%>')">删除</button></td>
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
						<h4 class="modal-title" id="myModalLabel">增加图片信息</h4>
					</div>
					<div class="modal-body">
						<!-- 添加的方法 -->
						<form class="form-horizontal" id="pictureInsert" onsubmit="return false">
							<div class="form-group">
								<label for="lastname" class="col-sm-2 control-label">图片标题</label>
								<div class="col-sm-4">
									<input type="text" class="form-control" name="title"
										placeholder="请输入图片标题">
								</div>
							</div>
							<div class="form-group">
								<label for="lastname" class="col-sm-2 control-label">图片路径</label>
								<div class="col-sm-4">
									<input type="text" class="form-control" name="picturePath"
										placeholder="请输入图片路径">
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
						<h4 class="modal-title" id="myModalLabel">更新图片信息</h4>
					</div>
					<div class="modal-body">
						<!-- 更新的方法 -->
						<form class="form-horizontal" id="pictureUpdate" onsubmit="return false">
							<div class="form-group">
								<label for="lastname" class="col-sm-2 control-label">id</label>
								<div class="col-sm-4">
									<input type="text" class="form-control" name="id" id="id"
										 placeholder="请输入id">
								</div>
							</div>
							<div class="form-group">
								<label for="lastname" class="col-sm-2 control-label">图片标题</label>
								<div class="col-sm-4">
									<input type="text" class="form-control" name="title" id="title"
										 placeholder="请输入图片标题">
								</div>
							</div>
							<div class="form-group">
								<label for="lastname" class="col-sm-2 control-label">图片路径</label>
								<div class="col-sm-4">
									<input type="text" class="form-control" name="picturePath" id="picturePath"
										placeholder="请输入图片路径">
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
	</div>
</body>
</html>