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
<link href="<%=basePath%>/static/css/laypage.css" type="text/css" rel="stylesheet" >
<script src="<%=basePath%>/static/js/laypage.js"></script>
<script type="text/javascript" src="<%=basePath%>/static/js/jquery1.42.min.js"></script>
<script type="text/javascript" src="<%=basePath%>/static/js/jquery.SuperSlide.2.1.1.js"></script>
<script type="text/javascript">
 $(function(){
	  $(".nav_new ul li").hover(function(){
		     $(this).find(".nav_list").show();
		     $(this).find("a.ztit").addClass("active");
		  },function(){
			   $(this).find("a.ztit").removeClass("active"); 
			  $(this).find(".nav_list").hide();
			  }
		  )
	 });
 $(document).ready(function () {
     getCollectionData();
 });
 //初始化收藏数据
 function getCollectionData(offset,count){
     var userid="${userinfo.getUid()}";
     $.ajax({
         url: "<%=basePath%>/personalcenter/getCollectionData.do",
         type: "POST",
         data:{
             userid:userid,
             offset:offset,
             count:count
         },
         success: function (data) {
             var msg = eval("(" + data + ")");
             var str="";
             for(var i=0;i<msg.length;i++){
                 str += '<tr id="'+msg[i].worksid+'"> <td width="120"><a href="#"><img src="<%=basePath%>'+msg[i].worksurl+'"></a></td>'
                 +'<td><h2>'+msg[i].worksname+'</h2> <p>[价格] ￥'+msg[i].price+'</p>'
                 +'<p>[标签] '+msg[i].worklabel+'</p><p>[收藏日期] '+msg[i].collectiontime+'</p>'
                 +'</td><td width="50"><a href="#" onclick="delCollection('+msg[i].worksid+')">取消收藏</a></td></tr>';
             }
             $(".collect_tab table").append(str);
         }
     });
 }
 //取消收藏
 function delCollection(workid){
     $.ajax({
         url: "<%=basePath%>/personalcenter/delCollection.do",
         type: "POST",
         data:{
             workid:workid
         },
         success: function (data) {
             if(data!=="failed"){
                $("#"+workid).css("display","none");
             }else{
                 errorInfo("取消失败");
             }
         }
     });
 }
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
 //跳转到收藏页面
 function toCollection(){
     document.location.href = '<%=basePath%>/personalcenter/toCollection.do';
 }
 //跳转到交易页面
 function toTransaction(){
     document.location.href = '<%=basePath%>/personalcenter/toTransaction.do';
 }
 function toHomepage(){
     var uid="${userinfo.getUid()}";
     document.location.href = '<%=basePath%>/homepage/toHomepage.do?uid='+uid;
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
                    <li><a class="mem_icon1" href="#" onclick="toUpload()">上传作品</a></li>
                    <li><a class="mem_icon9" href="#" onclick="personWorks()">我的作品</a></li>
                    <li><a class="mem_icon2 active" active href="#" onclick="toCollection()">收藏</a></li>
                    <li><a class="mem_icon4" href="#" onclick="toTransaction()">交易</a></li>
                    <li><a class="mem_icon7" href="#" onclick="toWithdrawals()">提现</a></li>
                    <li><a class="mem_icon9" href="#">个人资料</a></li>
                </ul>
             </div>
           </div><!-- wid260px -->
           <div class="wid925px fr">
               <div class="coll_con">
                  <div class="collect_tab">
                     <table width="100%">
                     </table>
                  </div>
                   </div><!-- coll_con -->
             <div id="pages" class="pages_box"></div>


<script>
    var page=0;
    var groups=9;
    var uid=$("#uid").val();
    $.ajax({
        url: "<%=basePath%>/personalcenter/getCollectionData.do",
        type: "POST",
        async:false,
        data: {
            uid: uid
        },
        success: function (data) {
            var msg = eval("(" + data + ")");
            page=Math.ceil(msg.length/groups);
        }
    });
    laypage({
        cont: ('pagess'),   //容器。值支持id名、原生dom对象，jquery对象,
        pages: page,              //分页数。一般通过服务端返回得到
        curr:1,                 //当前页。默认为1
        skin: '#e8474b',           //控制分页皮肤。目前支持：molv、yahei、flow  也可以自定义
        skip: true,             //是否开启跳页
        first:'首页',           //用于控制首页  默认false
        last: '尾页',           //用于控制尾页  如：last: '尾页' 如：last: false，则表示不显示首页项
        prev:'上一页',           //用于控制上一页。若不显示，设置false即可
        next:'下一页',           //用于控制下一页。若不显示，设置false即可
        jump: function(obj, first){
            //触发分页后的回调，函数返回两个参数。 得到了当前页，用于向服务端请求对应数据
            var curr = obj.curr;
            var offset=(curr-1)*groups;
            userAllCollection(offset,groups);
        }
    });
</script>  
           </div><!-- wid925px -->
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
