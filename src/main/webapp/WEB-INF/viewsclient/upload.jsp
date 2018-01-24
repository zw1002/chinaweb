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
 });
 //上传
 layui.use('upload', function() {
     var $ = layui.jquery;
     var upload = layui.upload;
     //选完文件后不自动上传
     upload.render({
         elem: '#test8'
         ,url: '/upload/'
         ,auto: false
         ,multiple: true
         ,bindAction: '#test9'
         ,before: function(obj){
             //预读本地文件示例，不支持ie8
             $('#demo2').html("");
             obj.preview(function(index, file, result){
                 $('#demo2').append('<img style="width: 200px;height: 200px" src="'+ result +'" alt="'+ file.name +'" class="layui-upload-img">')
             });
         }
     });
 });
 //根据作品类型获取作品分类下拉列表
 layui.use(['layer', 'form'], function() {
     var form = layui.form;
     form.on('select(workstypeselect)', function(data){
         $.getJSON("<%=basePath%>/personalcenter/getWorkClassification.do?workstype="+data.value, function(data){
             var msg=eval(data);
             $("#workclassification").html("");
             $.each(msg, function(name, value) {
                 var varItem2 = new Option(value.keyname,value.keyvalue);
                 $("#workclassification").append(varItem2);
             });
             form.render('select'); //这个很重要
         });
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
 //跳转到提现页面
 function toWithdrawals(){
     var uid="${userinfo.getUid()}";
     document.location.href = '<%=basePath%>/withdrawals/toWithdrawals.do?uid='+uid;
 }
 //通过作品类型获取作品分类
    function getWorkClassification(){
        alert("wwww");
        var workstype=$("#workstype").val();
        alert(workstype);
        if(workstype != ""){
            $.ajax({
                url: "<%=basePath%>/personalcenter/delCollection.do",
                type: "POST",
                data:{
                    workstype:workstype
                },
                success: function (data) {
                    if(data!=="failed"){
                        $("#workclassification").find("option").remove();
                        var msg=eval("("+data+")");
                        $.each(msg, function(name, value) {
                            var varItem2 = new Option(value.keyname,value.keyvalue);
                            $("#workclassification").append(varItem2);
                        });
                    }else{
                        errorInfo("获取数据失败");
                    }
                }
            });
        }
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
                             <td width="50%"> <a href="#">成为卖家</a></td>
                         </tr>
                     </table>
                 </div>
             </div><!-- grzl_box --> 
             <div class="mem_nav">
             <h2>个人中心</h2>
                <ul>
                    <li><a class="mem_icon1 active" href="#" onclick="toUpload()">上传作品</a></li>
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
                           <div class="hei40px">
                               提示：源文件和预览图批量上传文件命名必须相同才能匹配成功（批量上传每次限50个）
                               <div class="jyzt_txt"><a href="#">上传帮助中心？</a></div>
                           </div>
                       <form action="filesUpload.do" method="POST" name="xiangmu" id="xiangmu" enctype="multipart/form-data" style="margin-top: 8px" class="layui-form batchinput-form">
                           <div class="layui-form-item">
                               <label class="layui-form-label">作品类型</label>
                               <div class="layui-input-block">
                                   <select lay-filter="workstypeselect" name="workstype" id="workstype" lay-verify="required">
                                       <option value=""></option>
                                       <option value="00">设计</option>
                                       <option value="10">摄影</option>
                                       <option value="20">道具</option>
                                       <option value="30">婚秀</option>
                                   </select>
                               </div>
                           </div>
                           <div class="layui-form-item">
                               <label class="layui-form-label">作品分类</label>
                               <div class="layui-input-block">
                                   <select lay-filter="workclassificationselect" name="workclassification" id="workclassification" lay-verify="required">
                                   </select>
                               </div>
                           </div>
                           <div class="layui-form-item">
                               <label class="layui-form-label">作品标签</label>
                               <div class="layui-input-block">
                                   <select id="worklael" name="worklael" lay-verify="required">
                                   </select>
                               </div>
                           </div>
                           <div class="layui-form-item layui-form-text">
                               <label class="layui-form-label">自定义标签</label>
                               <div class="layui-input-block">
                                   <textarea id="label" name="label" placeholder="以逗号分隔，加上选择标签，标签总数不能超过10个" class="layui-textarea"></textarea>
                               </div>
                           </div>
                           <div class="layui-upload">
                               <button style="margin-left: 110px" type="button" class="layui-btn layui-btn-normal" id="test8">选择图片</button>
                               <button type="button" class="layui-btn" id="test9">图片预览</button>
                               <blockquote class="layui-elem-quote layui-quote-nm" style="margin-top: 15px;margin-left: 108px;">
                                   预览图：
                                   <div class="layui-upload-list" id="demo2"></div>
                               </blockquote>
                           </div>
                           <div class="anniu">
                               <button type="submit" style="margin-left: 450px" class="layui-btn layui-btn-normal">提交</button>
                           </div>
                           </form>
                           </div>
                       <!-- 摄影 -->
                       <ul id="alreadyPurchased">
                           <table width="100%">

                           </table>
                           <div id="pagess" class="pages_box"></div>
                       </ul>
                       <!-- 婚秀 -->
                       <!-- 道具 -->
                   </div>
               </div>
               <script type="text/javascript">
                   jQuery(".tran_con").slide({titCell:".jy_nav li",mainCell:".jy_tab_con", trigger:"click"});
               </script>
              <!-- mem_ty_box -->
             <div class="mem_ty_box">
                 <div class="gxq_tit"><h2>注意事项</h2> </div>
                 <div class="txt_ppad">
                     <p>1、所上传作品需为源文件(可编辑模板)，预览图与上传的源文件需保持一致</p>
                    <p>2、预览图有人物脸部需模糊，不得含有明显的联系方式，如QQ、电话、网址、二维码</p>
                    <p>3、请勿上传国产卡通动画形象，如灰太狼、喜洋洋等</p>
                    <p>4、辩题请用一句话来描述，关键词包含素材风格、内容、行业等词组，一般3组以上，关键词之间请用空格隔开查看标题/关键字教程</p>
                    <p>温馨提示：第一次上传用户请认真阅读<a href="#" class="col_blue">《版权声明》</a></p>
                </div>                    
             </div> <!-- wid925px -->  
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
             <dd><a href="javascript:">注册/登录</a></dd>
             <dd><a href="javascript:">认证/签约</a></dd>
             
             <dd><a href="javascript:">条款协议</a></dd>
             <dd><a href="javascript:">版权声明</a></dd>
          </dl>
          <dl>
             <dt>关于婚秀中国</dt>
             <dd><a href="javascript:">婚秀中国简介</a></dd>
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
