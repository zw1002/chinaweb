<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path;
%>
<html>
<head>
<meta charset="utf-8">
<title>婚秀中国网</title>
<link rel="icon" href="<%=basePath%>/static/images/ico.ico" type="image/x-icon"/>
<link href="<%=basePath%>/static/css/global.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath%>/static/css/index.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="<%=basePath%>/static/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="<%=basePath%>/static/css/style.css"/>
<script type="text/javascript" src="<%=basePath%>/static/js/jquery1.42.min.js"></script>
<script type="text/javascript" src="<%=basePath%>/static/js/jquery.SuperSlide.2.1.1.js"></script>
<script type="text/javascript" src="<%=basePath%>/static/js/ajaxFileUpload.js"></script>
<link href="<%=basePath%>/static/css/layui.css" rel="stylesheet" type="text/css" />
<script src="<%=basePath%>/static/layui/layui.js"></script>
<script src="<%=basePath%>/static/js/form.js"></script>
<script type="text/javascript" src="<%=basePath%>/static/js/ajaxFileUpload.js"></script>
<script type="text/javascript">
 $(function(){
	  $(".nav_new ul li").hover(function(){
		     $(this).find(".nav_list").show();
		     $(this).find("a.ztit").addClass("active");
		  },function(){
			   $(this).find("a.ztit").removeClass("active"); 
			  $(this).find(".nav_list").hide();
			  }
		  );
             $('.ss_btn').click(function () {
                 document.location.href = '<%=basePath%>/seachs/toSeachs.do?seachTxt='+$('.inp_txt').val();
             });
 });
 //跳转到首页
 function toIndex(){
     document.location.href = '<%=basePath%>/signin/index.do';
 }
 //跳转到设计页面
 function toDesign(){
     document.location.href = '<%=basePath%>/design/toDesign.do';
 }
 //跳转到摄影图库页面
 function toPhotography(){
     document.location.href = '<%=basePath%>/photography/toPhotography.do';
 }
 //跳转到婚秀页面
 function toWedding(){
     document.location.href = '<%=basePath%>/wedding/toWedding.do';
 }
 //跳转到道具页面
 function toMultimedia(){
     document.location.href = '<%=basePath%>/multimedia/toMultimedia.do';
 }
 //跳转到免费下载页面
 function toFree(){
     document.location.href = '<%=basePath%>/free/toFree.do';
 }
 //跳转到求助求图页面
 function toHelp(){
     document.location.href = '<%=basePath%>/help/toHelp.do';
 }
 //跳转到上传作品页面
 function toUpload(){
     document.location.href = '<%=basePath%>/uploadFile/toUpload.do';
 }
 //跳转到我的作品页面
 function personWorks(){
     var uid="${userinfo.getUid()}";
     document.location.href = '<%=basePath%>/personworks/toPersonWorks.do?uid='+uid;
 }
 function toHomepage(){
     var uid="${userinfo.getUid()}";
     document.location.href = '<%=basePath%>/homepage/toHomepage.do?uid='+uid;
 }
 //跳转到提现页面
 function toWithdrawals(){
     var uid="${userinfo.getUid()}";
     document.location.href = '<%=basePath%>/withdrawals/toWithdrawals.do?uid='+uid;
 }
 //开店
 function applyShop(){
     document.location.href = '<%=basePath%>/applyshop/toApplyShop.do';
 }
    //开店提交
    function subMerch(){
        var merchname=$("#merchname").val();
        var merchremark=$("#merchremark").val();
        $.ajax({
           url:"<%=basePath%>/merch/addMerchData.do",
           type:"POST",
           data:{
               merchname:merchname,
               merchremark:merchremark
           },
           success:function(data){
               if(data!=="failed"){
                   document.location.href = '<%=basePath%>/member/toMember.do';
               }else{
                   errorInfo("开店失败");
               }
           }
        });
    }
</script>
</head>
<body>
   <header>
     <div class="top">    
      <div class="top_wid logo_con">
          <a href="#" onclick="toIndex()" class="fl"><img src="<%=basePath%>/static/images/logo.png" height="62" width="217" /></a>
          <div class="nav_new fl">
              <ul class="clearfix">
                  <li><a href="#" onclick="toIndex()" class="ztit">网站首页</a></li>
                  <li><a href="javascript:" class="all_fl ztit">所有分类</a>
                      <div class="nav_list">
                          <a href="#" onclick="toDesign()">设 计</a>
                          <a href="#" onclick="toPhotography()">摄影图库</a>
                          <a href="#" onclick="toMultimedia()">道具新品</a>
                          <a href="#" onclick="toWedding()">婚 秀</a>
                          <a href="#" onclick="toHelp()">求图求助</a>
                          <a href="#" onclick="toFree()">免费下载</a>
                      </div>
                  </li>
              </ul>
         </div>
         <div class="ss_bg new_ss fl">
            <input name="" type="text" placeholder="请输入搜索内容"  class="inp_txt">
            <input type="submit" value="搜 索" class="ss_btn" /> 
         </div> 
      </div><!-- top_wid -->
      </div><!-- top -->
   </header>
   <div class="bg_f5">
     <div class="wrap">
        <div class="memder_con">
           <div class="wid260px fl">
             <div class="grzl_box">
                 <a href="#" onclick="toHomepage()" class="kj_lj">个人空间 ></a>
                 <div class="tx_infor">
                     <img src="<%=basePath%>${userinfo.getUsrpicurl()}"/>
                     <h2>${userinfo.getFristname()}</h2>
                 </div>
                 <div class="mj_tab">
                     <table width="100%">
                         <tr>
                             <td width="50%"> <a href="#" onclick="applyShop()" class="active">成为卖家</a></td>
                         </tr>
                     </table>
                 </div>
             </div><!-- grzl_box --> 
             <div class="mem_nav">
             <h2>个人中心</h2>
                <ul>
                    <li><a class="mem_icon1" href="#" onclick="toUpload()">上传作品</a></li>
                    <li><a class="mem_icon9" href="#" onclick="personWorks()">我的作品</a></li>
                    <li><a class="mem_icon2" href="#" onclick="toCollection()">收藏</a></li>
                    <li><a class="mem_icon4" href="#" onclick="toTransaction()">交易</a></li>
                    <li><a class="mem_icon7" href="#" onclick="toWithdrawals()">提现</a></li>
                    <li><a class="mem_icon9" href="#">个人资料</a></li>
                </ul>
             </div>
           </div><!-- wid260px -->
           <div class="wid925px fr">
               <div class="tran_con">
                   <div class="jy_tab_con">
                       <!-- 设计 -->
                       <div style="margin-top: -20px">
                       <form style="margin-top: 8px" class="layui-form batchinput-form">
                           <div class="layui-form-item layui-form-text">
                               <label class="layui-form-label">店铺名称：</label>
                               <div class="layui-input-block">
                                   <input id="merchname" name="merchname" class="layui-input">
                               </div>
                           </div>
                           <div class="layui-form-item layui-form-text">
                               <label class="layui-form-label">店铺简介：</label>
                               <div class="layui-input-block">
                                   <textarea id="merchremark" name="merchremark" class="layui-textarea"></textarea>
                               </div>
                           </div>
                           <div class="anniu">
                               <button onclick="subMerch()" style="margin-left: 450px" class="layui-btn layui-btn-normal">提交</button>
                           </div>
                           </form>
                           </div>
                   </div>
               </div>
               <script type="text/javascript">
                   jQuery(".tran_con").slide({titCell:".jy_nav li",mainCell:".jy_tab_con", trigger:"click"});
               </script>
              <!-- mem_ty_box -->
           </div><!-- mem_ty_box -->
           <div class="clear"></div>
        </div><!-- memder_con -->
   </div><!-- wrap -->
    </div><!-- bg_f5 -->
   <!-- 公共底部 -->
   <footer>
     <div class="wrap">
      <div class="bottom clearfix">
          <dl>
              <dt>新手帮助</dt>
              <dd><a href="<%=basePath%>/helpd/toHelpd.do">注册/登录</a></dd>
              <dd><a href="<%=basePath%>/helpd/toHelpd.do">认证/签约</a></dd>
              <dd><a href="<%=basePath%>/helpd/toHelpd.do">条款协议</a></dd>
              <dd><a href="<%=basePath%>/helpd/toHelpd.do">版权声明</a></dd>
          </dl>
          <dl>
              <dt>关于婚秀中国</dt>
              <dd><a href="<%=basePath%>/helpd/toHelpd.do">婚秀中国简介</a></dd>
          </dl>
          <dl >
             <dt>联系我们</dt>
             <dd>客服电话：<b class="col_f00">400-879-51747</b></dd>
          </dl>
          <div class="botm_fr">
            <img src="<%=basePath%>/static/images/logo.png" height="62" width="217" />
            <p>婚庆行业专业的咨询平台</p>
            <div class="zx_box"><img src="<%=basePath%>/static/images/zx_pic.png" height="17" width="22" />咨询时间：8:30-17:00</div>
          </div>
        </div>
      </div>
   </footer>
</body>
</html>