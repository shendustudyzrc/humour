<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<html>
<head>
<title>L&amp;S-底部1</title>
 <link href="css/index_A.css?v=1.3.7.1" type="text/css" rel="stylesheet" />
  <link href="css/same_A.css?v=1.3.7.2" type="text/css" rel="stylesheet" />
</head>
<body>
<!--底部--> 
   <div class="footer"> 
    <!--错误--> 
    <!--提示--> 
    <div class="loverit_word2" style="display: none;">
     Love Swear象征男人一生真爱的最高承诺。
    </div> 
    <!--提示end--> 
    <div class="loverit_wrong2" style="display: none;">
     <p>信息填写不正确，请重新输入。</p>
    </div> 
    <!--错误end--> 
    <!--验证身份--> 
    <div class="loveit_center"> 
     <div class="love_doit2" style="display: none;"> 
      <div class="loverit_center2"> 
       <div class="loverit_write2"> 
        <label>国家/区域:</label> 
        <select id="txtArea" style="vertical-align: middle;height:22px;"> <option value="0">中国大陆</option> <option value="1">中国香港</option> <option value="2">中国澳门</option> <option value="3">中国台湾</option> </select> 
        <label>先生姓名:</label> 
        <input type="text" class="lit_txt" id="textName2" /> 
        <label>身份证号码:</label> 
        <input type="text" class="lit_txt" id="textIDCard2" /> 
        <span id="btnsub2"></span> 
       </div> 
      </div> 
     </div> 
    </div> 
    <!--验证身份end--> 
    <div style="clear:both"></div> 
    <div class="cmain"> 
     <!--服务条款--> 
     <div class="service"> 
      <!--二维码--> 
      <div class="erwei fl"> 
       <img width="90" height="90" alt="Darry Ring 官方微信" src="images/erwei.jpg" /> 
      </div> 
      <!--中间的联系方式--> 
      <div class="know_right fl"> 
       <p> 24小时全国免费服务热线</p> 
       <img width="171" height="32" src="images/tel.jpg" /> 
       <p class="theshare"> <span>关注我们：</span> <a class="wb" target="_blank" href="http://weibo.com/13520comcn" rel="nofollow"></a> <a class="rr" target="_blank" href="http://e.t.qq.com/DarryRing" rel="nofollow"></a> <a class="qzone" target="_blank" title="QQ空间" href="http://user.qzone.qq.com/2678181289/" rel="nofollow"></a> </p> 
      </div> 
      <!--左边的服务条款--> 
      <ul class="Service_know fr"> 
       <!--每一块li--> 
       <li> <h3> 关于我们</h3> <p> <a target="_blank" href="index.jsp/help_ab/66.jsp" rel="nofollow">权威认证</a></p> <p> <a target="_blank" href="index.html/help_ab/68.html" rel="nofollow">商务合作</a></p> <p> <a target="_blank" href="index.html/help_ab/70.html" rel="nofollow">加入我们</a></p> </li> 
       <!--每一块li--> 
       <li> <h3> 关于购买</h3> <p> <a target="_blank" href="index.jsp/help/72.jsp" rel="nofollow">购买流程</a></p> <p> <a target="_blank" href="index.html/help/73.html" rel="nofollow">支付方式</a></p> <p> <a target="_blank" href="index.html/help/74.html" rel="nofollow">配送流程</a></p> </li> 
   
       <li> <h3> 帮助中心</h3> <p> <a target="_blank" href="index.jsp/help/71.jsp" rel="nofollow">注册流程</a></p> <p> <a href="javascript:showxiaon();" rel="nofollow">联系客服</a></p> <p> <a target="_blank" href="index.html/help/78.html" rel="nofollow">网站地图</a></p> </li> 
       <!--每一块li--> 
       <li> <h3> 服务条款</h3> <p> <a target="_blank" href="index.jsp/help_se/80.jsp" rel="nofollow">终生保养</a></p> <p> <a target="_blank" href="index.html/help_se/85.html" rel="nofollow">注册协议</a></p> <p> <a target="_blank" href="index.html/help_se/86.html" rel="nofollow">隐私声明</a></p> </li> 
       <!--每一块li--> 
       <li> <h3> AI服务</h3> <p> <a target="_blank" href="/proposelist.aspx?id=18">钻石百科</a></p> <p> <a target="_blank" href="/news/index.aspx">产品百科</a></p> <p> <a target="_blank" href="/propose.aspx">求婚指南</a></p> </li> 
      </ul> 
     </div> 
     <!--条文--> 
     <div class="auto" id="Menu_Service"> 
     </div> 
     <div class="tw-foot"> 
      <div class="auto" id="Copyright"> 
       <p> Copyright &copy;AI Humour有限公司 </p> 
      </div> 
     </div> 
    </div> 
   </div> 
   <div class="model" id="model"> 
    <div class="Prompt" id="Prompt"> 
    </div> 
    <span id="log_uid" style="display:none"></span> 
    <span id="log_uname" style="display:none"></span> 
    <span id="log_orderid" style="display:none"></span> 
    <span id="log_price" style="display:none"></span> 
   </div> 
<!--   <script src="http://wpa.b.qq.com/cgi/wpa.php" charset="utf-8" type="text/javascript"></script> -->
   <!--客服(2014年8月29日)--> 
   <div style="display:none" class="Ffloat_kf"> 
    <div class="fkf_top"> 
     <div style="cursor: pointer; display: none;" id="bridgehead"> 
     </div> 
     <div id="BizQQWPA"></div> 
     <div onClick="showModel(modelsever);" style="cursor: pointer;" class="qq_hover" id="qqTalk_head"> 
     </div> 
     <div id="BizQQWPAB" class="sh"> 
     </div> 
     <div id="bdBridge"> 
      <a href="javascript:NTKF.im_openInPageChat()"> <img width="75" height="37" src="images/zx.jpg" /></a>
     </div> 
    </div> 
    <div class="fkf_bottom"> 
     <img width="92" height="82" alt="Darry Ring 官方微信" src="images/to_erwei.jpg" /> 
     <a href="#"> <img width="92" height="26" src="images/db.jpg" /></a> 
    </div> 
   </div> 
</body>
</html>