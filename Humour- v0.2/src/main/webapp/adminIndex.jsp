
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%String contextPath=request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="js/jquery.min.js"></script>
<link rel="stylesheet" href="css/bootstrap.min.css">
<script type="text/javascript" src="js/jquery-2.1.1.min.js"></script> 
<title>欢迎来到管理员界面</title>
<script type="text/javascript">
 $(document).ready(function(){
	 $("#tiku").hide(); 
	 $(".ti").click(function(){
		 $("#tiku").toggle();
	 });
	 $("#blog").hide();
	 $(".blog").click(function(){
		 $("#blog").toggle();
	 });
	 $("#comment").hide();
	 $(".comment").click(function(){
		 $("#comment").toggle();
	 })
 })

</script>
<style type="text/css">
 *{
  margin:0px;
  padding:0px;
 }
 .head{
  width:100%;
  height:80px;
  background:#98bf76;
 }
 .body{
  top:140px;
  height:670px;
  width:100%;
  background:#f6f6f6;
 }
 .footer{
  width:100%;
  height:100px;
  background:#98bf21;
 }
 .btn{
  margin-left:60px;
  width:250px;
  height:30px;
  font-size:15px;
  outline:none;
  border:0;
  background:#98bf76;
 }
  .input{
   width:250px;
   height:40px;
   }
  .body-left{
  width:10%;
  height:650px;
  background:white;
  float:left;
 }
 .body-right{
  float:left;
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
      <img  src="images/userImformation.jpg" width="1517px" height="680px">
   </div>
</div>
  <!-- 尾部复用start -->
  <iframe src="end.jsp" style="width:100%;height:90px;" frameborder="0" scrolling="no"></iframe>
  <!-- 尾部复用end-->
</div>
</body>
</html>