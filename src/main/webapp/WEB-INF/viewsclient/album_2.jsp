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
		  
		  );

     $('.ss_btn').click(function () {
         document.location.href = '<%=basePath%>/seachs/toSeachs.do?seachTxt='+$('.inp_txt').val();
     })
	 
	 })

</script>

</head>

<body>
   <header>
     <div class="top">    
      <div class="top_wid logo_con">
         <a href="index.jsp" class="fl"><img src="<%=basePath%>/static/images/logo.png" height="62" width="217" /></a>
         
         
         <div class="nav_new fl">
            <ul class="clearfix">
               <li><a href="index.jsp" class="ztit">网站首页</a></li>
               <li><a href="javascript:" class="all_fl ztit">所有分类</a>
                 <div class="nav_list">
                    <a href="design.jsp">设计</a>
                  
                    <a href="photography.jsp">摄影图库</a>
                     <a href="multimedia.jsp">道具新品</a>
                    <a href="wedding.jsp">婚秀</a>
                    <a href="help.jsp">求图求助</a>
                    <a href="free.jsp">免费下载</a>
                 </div> 
               </li>
            </ul>
         </div>
         
         <div class="ss_bg new_ss fl">
            <input name="" type="text" placeholder="请输入搜索内容"  class="inp_txt">
            <input type="submit" value="搜 索" class="ss_btn" /> 
         </div> 
         
         <a href="javascript:" class="sc_btn wygt"><img src="<%=basePath%>/static/images/icon_ft2.png" height="14" width="14" /> 我要改图</a>
          
      </div><!-- top_wid -->

      </div><!-- top -->
   </header>
   
   <div class="bg_f5"> 
     <div class="wrap">
        
        <div class="memder_con">
        
           <div class="wid260px fl">
           
             <div class="grzl_box">
                 <a href="homepage.jsp" class="kj_lj">个人空间 ></a>
                 
                 <div class="tx_infor">
                      <img src="<%=basePath%>/static/images/head_img2.png" />
                      <h2>宇宙军</h2>
                      <p class="sjss">设计师</p>
                      <span class="icon_jf">38728</span> |  <span class="icon_hp">99.28</span>
                 </div>
                 
                 <div class="mj_tab">
                    <table width="100%">
                       <tr>
                           <td width="50%"> <a href="#" class="active"><img src="<%=basePath%>/static/images/icon_mj.png" height="16" width="16" /> 我是卖家</a></td>
                           <td> <a href="#"> 成为买家</a></td>
                       </tr>
                    </table>
                 </div>
             </div><!-- grzl_box --> 
             
             <div class="mem_nav">
             <h2>个人中心</h2>
                <ul>
                   <li><a class="mem_icon1 " href="upload.jsp">上传作品</a></li>
                   <li><a class="mem_icon2 " href="collection_2.jsp">收藏</a></li>
                   <li><a class="mem_icon3 active" href="album_2.jsp">专辑</a></li>
                   <li><a class="mem_icon4" href="transaction.jsp">交易</a></li>
                   <li><a class="mem_icon5" href="income.jsp">收支</a></li>
                   <li><a class="mem_icon6" href="recharge.html">充值</a></li>
                   <li><a class="mem_icon7" href="withdraw.html">提现</a></li>
                   <li><a class="mem_icon8" href="task.html">任务</a></li>
                   <li><a class="mem_icon9" href="information.html">个人资料</a></li>
                </ul>
             </div>
                
           </div><!-- wid260px -->
           
           
           
           
           <div class="wid925px fr">
               <div class="coll_con">
                  <div class="sxtj_tab">
                    <table width="100%">
                       <tr>
                           
                           <td width="80">专辑名称：</td>
                           <td width="230"><select name=""><option>请选择</option></select></td>
                           <td><a href="#" class="ss_btndd">搜索</a></td>
                           <td width="180"><a href="#" class="cjfl_fr fr">+创建收藏分类</a></td>
                       </tr>
                    
                    </table>
                  </div>
                  
                  <div class="collect_tab">
                     <table width="100%">
                         <tr>
                             <td width="120"><a href="#" ><img src="<%=basePath%>/static/images/hlxa_pic1.png" /></a></td>
                             <td>
                                 <h2>欧式屏风雕花</h2>
                                 <p>[类型] 设计</p>
                                <p class="xzzs">[简介] 我是简介我是简介我是简介我是简介我是简介我是简介</p>
                                <p>[创建] 2016/1/21 18:02:23</p>
                                <p>[更新] 2016/1/21 18:02:23</p>
                               
                             </td>
                             <td width="140">
                             <div class="bj_btnd">
                              <a href="#">刷新</a>
                              <a href="#">修改</a>
                               <a href="#">删除</a>
                           </div></td>
                         </tr>
                          <tr>
                             <td><a href="#" ><img src="<%=basePath%>/static/images/hlxa_pic2.png" /></a></td>
                              <td>
                                 <h2>欧式屏风雕花</h2>
                                 <p>[类型] 设计</p>
                                <p class="xzzs">[简介] 我是简介我是简介我是简介我是简介我是简介我是简介</p>
                                <p>[创建] 2016/1/21 18:02:23</p>
                                <p>[更新] 2016/1/21 18:02:23</p>
                               
                             </td>
                             <td width="140">
                             <div class="bj_btnd">
                              <a href="#">刷新</a>
                              <a href="#">修改</a>
                               <a href="#">删除</a>
                           </div></td>
                         </tr>
                         <tr>
                             <td><a href="#" ><img src="<%=basePath%>/static/images/hlxa_pic2.png" /></a></td>
                              <td>
                                 <h2>欧式屏风雕花</h2>
                                 <p>[类型] 设计</p>
                                <p class="xzzs">[简介] 我是简介我是简介我是简介我是简介我是简介我是简介我是简介我是简介我是简介我介我是简介我是简介我是简介我是简介我是简介</p>
                                <p>[创建] 2016/1/21 18:02:23</p>
                                <p>[更新] 2016/1/21 18:02:23</p>
                               
                             </td>
                             <td width="140">
                             <div class="bj_btnd">
                              <a href="#">刷新</a>
                              <a href="#">修改</a>
                               <a href="#">删除</a>
                           </div></td>
                         </tr>
                         <tr>
                             <td><a href="#" ><img src="<%=basePath%>/static/images/hlxa_pic2.png" /></a></td>
                              <td>
                                 <h2>欧式屏风雕花</h2>
                                 <p>[类型] 设计</p>
                                <p class="xzzs">[简介] 我是简介我是简介我是简介我是简介我是简介我是简介</p>
                                <p>[创建] 2016/1/21 18:02:23</p>
                                <p>[更新] 2016/1/21 18:02:23</p>
                               
                             </td>
                             <td width="140">
                             <div class="bj_btnd">
                              <a href="#">刷新</a>
                              <a href="#">修改</a>
                               <a href="#">删除</a>
                           </div></td>
                         </tr>
                     </table>
                  </div>
                   </div><!-- coll_con -->
                  
                                    <div id="pages" class="pages_box"></div>


<script>
laypage({
    cont: ('pages'),   //容器。值支持id名、原生dom对象，jquery对象,
    pages: 10,              //分页数。一般通过服务端返回得到
	curr:1,                 //当前页。默认为1
	groups: 5,              //连续显示分页数  默认为5
	skin: '#e8474b',           //控制分页皮肤。目前支持：molv、yahei、flow  也可以自定义 
	skip: true,             //是否开启跳页
	first:'首页',           //用于控制首页  默认false
    last: '尾页',           //用于控制尾页  如：last: '尾页' 如：last: false，则表示不显示首页项
	prev:'上一页',           //用于控制上一页。若不显示，设置false即可
 	next:'下一页',           //用于控制下一页。若不显示，设置false即可
	jump: function(obj, first){
    //触发分页后的回调，函数返回两个参数。 得到了当前页，用于向服务端请求对应数据
     var curr = obj.curr;
    }  
    
});
</script>  

                  
             <div class="sxtj_tab botm_tabd">
                    <table width="100%">
                       <tr>
                           <td>选择分类：</td>
                           <td><select name=""><option>请选择</option></select></td>
                           <td>移动分类：</td>
                           <td width=""><select name=""><option>请选择</option></select></td>
                         
                           <td width="180"><a href="#" class="cjfl_fr">删除选中项</a></td>
                           <td width="80">全选 <input name="" type="checkbox" value="" class="fx_inp" ></td>
                       </tr>
                    
                    </table>
                  </div>   
              
              
             
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
