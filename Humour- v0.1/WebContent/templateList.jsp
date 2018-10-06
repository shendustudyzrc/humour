 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <link rel="shortcut icon" href="${config.base() }fweb-framework-ui/style/icons/fweblogo-16.ico" type="image/x-icon" />
	<link href="${config.base()}fweb-commons-sort/assets/css/ztree/metroStyle/metroStyle.css" rel="stylesheet">
	<link href="${config.base()}fweb-commons-sort/assets/fonts/css/font-awesome.min.css" rel="stylesheet">
	
	<script src="${config.base()}fweb-commons-sort/assets/js/ztree/jquery.ztree.all.js"></script>
    <script src="${config.base()}fweb-framework-ui/js/jquery.form.min.js"></script>	
    <style type="text/css">
		body label {
			font-weight: lighter;
		    background-color: #fff !important;
		    border: none !important;
		}
		#searchDiv .form-input .textbox.combo{
			width: 135px !important;
		}
		#templateSortTree{
		 padding:3px;
		}
		.datagrid-view1{
		 padding-left:10px;
		}
		.datagrid-toolbar{
		 margin-left:10px;
		}
		.datagrid-body{
		 overflow-x:hidden;
		}
	</style>
		 <div style="width: 15%;float: left;" id="templateSortTree">
		</div> 
		<div style="width: 85% !important;height: 100%;">
			<table id="templateTable" class="easyui-datagrid fs_14" fit="true" style="width: auto;">
			</table>
		</div>
		<div id="tb">
			<form id="ff_sort_type_list" class="form-inline container-fluid search-form">
			  	<div id="searchDiv" class="row">
				  	<div class="form-input col-md-3 col-sm-4">
				  		<div class="form-input-label">
					    	<label for="searchcontent" class="control-label"></label>
				  		</div>
				  		<div class="form-input-input">
					    	<input name="searchcontent" type="text" class="form-control" id="searchcontent" placeholder="请输入模板Key或模板名称">
				  		</div>
				  	</div>
			  	</div>
			</form>
			<div class="toolbar-table-btn">
				<a href="javascript:void(0);" onclick="addSortType()" class="btn btn-skin bg_f"><span class="fa fa-plus-circle"></span>&nbsp;增加</a>
			</div>
		</div>
<!-- 弹出模态框界面 -->
<div class="modal fade" id="addModalType" tabindex="-1" role="dialog" aria-labelledby="addModalLabelType" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
        	<div class="modal-header">
        		<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
       			<h4 class="modal-title" id="addModalLabelType">添加模板文件</h4>
        	</div>
			<div class="modal-body">
				<div class="form-horizontal row">
		            <div class="form-group col-xs-12">
		             <form id="templateFileForm" name="templateFileForm" method="post" enctype="multipart/form-data" onsubmit="return false;">
				       <label for="upload_file" class="col-sm-2 control-label"></label> 
                      <div class="col-sm-4">
                      <input  class="form-control" style="display:none" id="id" name="id" readonly="readonly" > 
                      <input   type="file" style="display:none" class="form-control" id="upload_file" name="upload_file" onchange="change();" accept="application/vnd.openxmlformats-officedocument.spreadsheetml.sheet, application/vnd.ms-excel"> 
                     <input type="text" class="form-control" id="upload_file_tmp" name="upload_file_tmp" readonly="readonly" > 
                     </form>
                    </div>
                  <div class="col-sm-4"> 
                      <button type="button" class="btn btn-primary" id="select_file" onclick="upload_file.click();">上传</button>
                      <button type="button" class="btn btn-primary" id="select_file" onclick="deleteFile();">清空</button>
                 </div>
			     </div>
				<div class="form-group row"><br>
		        	<div style="text-align: center;">
			            <button class="btn btn-primary btn-large" onclick="uploadTemplateFile()">提交</button>
			            <button class="btn btn-defalut btn-large" onclick="cancelModal1()">取消</button>
		          	</div>
	        	</div>
			</div>
		</div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
	<script type="text/javascript">
		var queryParam = {};
		var basePath = '${config.path()}';
		var basePage = '${config.page()}';
		var base = '${config.base()}';
		var firstLoad = true;
		var selectIndex=-1;
		$(function(){
			toggleSearchStat('1');
			$("#templateSortTree").load("${config.base()}view/fweb-commons-sort/item/sortTree?typeKey=${param.typeKey}&isRootShow=${param.isRootShow}");
			 $("#templateTable").datagrid({
				pagination : true,
				method : 'get',
				url: basePath+'component/excel/template/page',
	 			singleSelect : true,
	 			checkOnSelect : true,
				rownumbers : true,
				fitColumns : true,
				toolbar : '#tb',
				loadMsg : false,	//去除加载提示
				queryParams : queryParam,
				rowStyler: function(index,row){
				},
				columns : [[      
					{
						field : "templateKey",
						width : '15%',
						title : "模板Key值"
					},
					{
						field : "templateName",
						width : '17%',
						title : "模板名称"
					},
				    {
						field : "tableName",
						width : '14%',
						title : "表名称"
					},{
						field : "appendFieldStr",
						width : '14%',
						title : "附加参数"
					},{
						field:"templateFileName",
						width:'14%',
						title:"模板文件名"
					},{
						field : "appendName",
						width : '100px',
						title : "附加属性"
					},{
						field : "opt",
						title : "操作",
						width : '18%',
						formatter : function(value,row,index){
							return '<div class="hidden-sm hidden-xs action-buttons">'
									+ '<a class="blue" title="编辑" href="javascript:void(0)" onclick="editSortType(\''+row.id+'\',\''+row.templateKey+'\')"><i class="ace-icon fa fa-edit bigger-130"></i></a>'
									+'<i id="row_del_d'+row.id+'" class="fa fa-trash-o option-icon" style="color:green"></i>' 
									+ '&nbsp;&nbsp;<a class="blue" title="参数配置" href="javascript:void(0)" onclick="TemplateFieldConfig(\''+row.id+'\')"><i class="glyphicon glyphicon-th-large" style="color:green"></i></a>'
									+ '&nbsp;&nbsp;<a class="blue" title="导入Excel" href="javascript:void(0)" onclick="ImportExcel(\''+row.id+'\',\''+row.templateKey+'\')"><i class="fa fa-copy option-icon" style="color:green"></i></a>'
									+ '&nbsp;&nbsp;<a class="blue" title="导入模板文件" href="javascript:void(0)" onclick="importTemplateFile(\''+row.id+'\',\''+row.templateFile+'\',\''+row.templateFileName+'\')"><i class="glyphicon glyphicon-file" style="color:green"></i></a>'
									+ '</div>';
						}
					}
				]],
				onLoadSuccess : function(data){
					try{
						$(".popover[id^=popover]").popover('destroy');
					}catch(err){
					}
					if(data && data.rows)
						for(j = 0,len=data.rows.length; j < len; j++) {
							if(data.rows[j].id)
								initDelPopOver(data.rows[j].id);
						}
					
				},
				emptyMsg : '<span>暂无相关数据</span>'
			}); 
					toggleSearchStat('1');
			
			//为输入框绑定回车事件
			$(".search-form input").keypress(function(e){
		        var eCode = e.keyCode ? e.keyCode : e.which ? e.which : e.charCode;
		        if (eCode == 13){
		        	queryConfig();
		        	return false;
		        }
			});
			
		});
		
		//清除文件
		function deleteFile(){
			$("#upload_file_tmp").val("");
		}
		 function change(){
		    document.getElementById("upload_file_tmp").value=document.getElementById("upload_file").value;
		}
		//添加模板
		function importTemplateFile(id,templateFile,templateFileName){
			$("#id").val(id);
			$("#upload_file").val("");
			if(templateFileName==="undefined"){
				$("#upload_file_tmp").val("");
			}else{
				$("#upload_file_tmp").val(templateFileName);
			}
			$("#addModalLabelType").html("添加模板类型");
			$("#addModalType").modal('show');
		}
		//取消保存
		function cancelModal1(){
			$("#addModalType").modal('hide');
		}
		//表格宽度自适应，这里的#dg是datagrid表格生成的div标签
		function fitCoulms(){
		    $('#templateTable').datagrid({
		        fitColumns:true,
		        fit:true
		    });
		}
		
		//初始化删除弹出层
		function initDelPopOver(id_){
			$('#row_del_d'+id_).popover({   
				trigger:'manual',//manual 触发方式  
				placement : 'top',    
				title:'<div style="text-align:left; color:gray; font-size:12px;">你确认要删除该用户吗？</div>',  
				html: 'true', 
				container: 'body',
				//这里可以直接写字符串，也可以 是一个函数，该函数返回一个字符串；
				content : '<a style="margin-right: 8px;"  onclick="cancelDel1(\''+id_+'\')" class="btn btn-default">取消</a>'
						 +'<a href="javascript:void(0);" onclick="delSortType(\''+id_+'\')" class="btn btn-default">确认</a>',  
				animation: false  
			}).on("mouseenter", function () {  
				var _this = this;  
				$(this).popover("show");  
				$(this).siblings(".popover").on("mouseleave", function () {  
					$(_this).popover('hide');  
				});  
			}).on("mouseleave", function () {  
				var _this = this;  
				setTimeout(function () {  
					if (!$(".popover:hover").length) {  
						$(_this).popover("hide")  
					}  
				}, 100);  
			});
		}
		
		//隐藏删除弹出层
		function cancelDel1(id_){		
			 $("#row_del_d"+id_).popover('hide'); 
		}
		
		//删除模板对象
		function delSortType(id_){
			var rows = $('#templateTable').datagrid('getChecked');	
			$("#row_del_d"+id_).popover('hide');
			if (id_){
				$.ajax({
					url : basePath + "component/excel/template/" + id_,
					type : 'delete',
					contentType : 'application/json;charset=UTF-8',
					success : function(data) {
						$('#templateTable').datagrid('reload');
						$.gritter.add({  
						    text: '删除成功',  
						    sticky: false,  
						    time: 3000,
						    speed:500,  
						    class_name: 'gritter-success'  
						}); 
					},
					error : function(xhr) {
						$.gritter.add({  
						    text: '删除失败',  
						    sticky: false,  
						    time: 3000,  
						    speed:500,  
						    class_name: 'gritter-error'  
						}); 
					}
				});
			}else{
				$.gritter.add({  
				    text: '请选择要删除的数据',  
				    sticky: false,  
				    time: 3000,  
				    speed:500,  
				    class_name: 'gritter-warning'
				}); 
			}
		}
		
		//刷新列表
		function refreshDatagrid(){
			$('#templateTable').datagrid('reload');
		}
		
		//根据查询条件分页获取数据字典项列表
		function queryConfig(){
			/* debugger; */
			if($("#searchcontent").val()){
				queryParam = {
						 templateName : $("#searchcontent").val(),
						 templateKey:$("#searchcontent").val(), 
						 template_type_id:$itemId
					};
			}else{
				/* template_type_id:$itemId */
			}
				
			$('#templateTable').datagrid('load',queryParam);
		}
		
		//切换搜索框区域状态（展开、收起）
		function toggleSearchStat(stat_){
			
		  	$("#searchButtonDiv").remove();
		  	
		  	var searchToggleButtonShow = $("#searchDiv").children().length > 7;
		  	
		  	if(stat_ == '1'){
			  	//收起
			  	$("#searchDiv").children().hide();
			  	$("#searchDiv").children(':lt(7)').show();
		  		$("#searchDiv").append(
		  			'<div id="searchButtonDiv" class="col-md-3 col-xs-3 col-sm-4 search-button">'
		  		   +	'<a onclick="queryConfig()" class="btn btn-primary">查&nbsp;询</a>'
			  	   +	(searchToggleButtonShow?'<a href="javascript:void(0);" onclick="toggleSearchStat(\'0\')" class="search-button-more">更多&nbsp;<i class="fa fa-angle-down"></i></a>':'')
			  	   +'</div>'
		  		);
		  	}else{
		  		//展开
		  		$("#searchDiv").children().show();
		  		$("#searchDiv").parent().append(
		  			'<div id="searchButtonDiv" class="row">'
		  		   +'<div class="search-button search-button-expend">'
		  		   +	'<a onclick="queryConfig()" class="btn btn-primary">查&nbsp;询</a>'
			  	   +	(searchToggleButtonShow?'<a href="javascript:void(0);" onclick="toggleSearchStat(\'1\')" class="search-button-more"><i class="fa fa-angle-up"></i>更多&nbsp;</a>':'')
			  	   +'</div>'
			  	   +'</div>'
		  		);
		  	}
		  	fitCoulms();
		}

		//添加编辑页
		function addSortType(){
		    crumbs.addCrumbs({name:'添加',url:'template/templateForm?itemId='+$itemId}); 
		}
		
		//编辑模板定义
		function editSortType(id_,templateKey_){
			if (id_){
				//添加编辑页
				crumbs.addCrumbs({
					name:'编辑',
					url:'template/templateForm?id='+id_+'&templateKey='+templateKey_
				});
			} else{
				$.gritter.add({  
				    text: '请选择要编辑的数据',  
				    sticky: false,  
				    time: 3000,
				    speed:500,  
				    class_name: 'gritter-success'  
				});
			}
		}
		
		//获得左边树列表节点点击后的id值
		function getSortItemId(itemId){
			 queryParam = {
					template_type_id : itemId||''
				};
			$('#templateTable').datagrid('load',queryParam); 
		}
		
		//显示错误信息
		function showErrorInfo($text){
			$.gritter.add({  
			    text: $text||'错误',  
			    sticky: false,  
			    time: 3000,  
			    speed:500,  
			    class_name: 'gritter-error'  
			});
		}
        //跳转到模板参数页面	
		function TemplateFieldConfig(id_){
				//添加带有面包屑页面的通用导入Excel页面中去
				  crumbs.addCrumbs({
					name:'模板参数列表', 
					url:'templateField/templateFieldList?templateId='+id_,
					callback:function($par){
						if($par && $par.isRefresh){
							//是否回首页
							if($par.isHomePage)
								$('#templateFieldList').datagrid('reload');
							else
								$('#templateFieldList').datagrid('load');
							return;					
						}
						//datagrid表格的宽度，为0时，调整宽度
						var panelBodyWidth = $('#templateFieldList')
							.parent()
							.outerHeight();
						
						if(panelBodyWidth != 0)
							return;
						
						$('#templateFieldList').datagrid({
					        fit:true,
							fitColumns : true
					 
					    });
					}
			 	}
			);  
		}
		//上传模板文件
		function uploadTemplateFile(){
			var id=$("#id").val();
			if($("#upload_file_tmp").val()===""){
				if(id){
				$.ajax({
					url : basePath + "component/excel/template/templateFile/"+id,
					type : 'get',
					contentType : 'application/json;charset=UTF-8',
					success : function(data) {
					/* 	$("#upload_file_tmp").val(""); */
						$('#templateTable').datagrid('reload');
						$("#addModalType").modal('hide');
					},
					error : function(xhr) {
						$.gritter.add({  
						    text: '删除失败',  
						    sticky: false,  
						    time: 3000,  
						    speed:500,  
						    class_name: 'gritter-error'  
						}); 
					}
			     });
			  }
			}else if($("#upload_file_tmp").val()===("undefined")){
				alert("请选择文件！");
			}
			else{
				 $("#templateFileForm").ajaxSubmit({
					    type : 'post',
						url : basePath+ "component/excel/template/file/"+id,
						contentType : 'application/json;charset=UTF-8',
						success : function(data) {
							cancelModal1();
							$('#templateTable').datagrid('reload');
						},
						error : function(data) {
							alert('上传失败'); 
						} 
					});
			}		  
		}
        
        
		//	跳转到通用导入Excel页面	
		function ImportExcel(id_,templateKey_){
			if (templateKey_){
				//添加带有面包屑页面的通用导入Excel页面中去
				crumbs.addCrumbs({
					 name:'编辑',			
				     url:'import/import?RID=9999&templateKey='+templateKey_
				});
			}else if(id_){
				//添加带有面包屑页面的通用导入Excel页面中去
				crumbs.addCrumbs({
					 name:'编辑',			
				     url:'import/import?RID=9999&templateId='+id_
				});
			}
			else{
				$.gritter.add({  
				    text: '请选择要编辑的数据',  
				    sticky: false,  
				    time: 3000,
				    speed:500,  
				    class_name: 'gritter-success'  
				});
			}
		}
	</script> 