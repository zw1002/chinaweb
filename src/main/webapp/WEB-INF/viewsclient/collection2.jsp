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
<link href="<%=basePath%>/static/css/laypage.css" rel="stylesheet" type="text/css" />
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
     });
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
         
         <a href="javascript:" class="sc_btn"><img src="<%=basePath%>/static/images/icon_down2.png" height="14" width="14" /> 图片上传</a>
          
      </div><!-- top_wid -->

      </div><!-- top -->
   </header>
   
   <div class="bg_f5"> 
     <div class="wrap">
        
        <div class="home_top">
          <div class="img_sc"><img src="<%=basePath%>/static/images/hy_banner.png" height="215" width="1200" /></div>
          
          <div class="tx_zl">
             <div class="zl_tabd fl">
                <table width="100%">
                   <tr>
                      <td><h2>784512</h2>人气</td>                      
                      <td><h2>54784</h2>粉丝</td>
                      <td><h2>325</h2>关注</td>
                   </tr>
                </table>
             </div>
             
             <div class="wid180px">
               <img src="<%=basePath%>/static/images/sytk_pic1.png" />
               <h2>雨田三石</h2><p>设计师</p>
               <div class="btn_dd">
                 <a href="#">私信</a><a href="#" class="gz_cold">+关注</a>
               </div>
             </div>
             
             <div class="zl_tabd fr">
                <table width="100%">
                   <tr>
                      <td><h2>784512</h2>成交额</td>                      
                      <td><h2>54784</h2>交易量</td>
                      <td><h2>325</h2>作品数量</td>
                   </tr>
                </table>
             </div>
             
          </div><!-- tx_zl -->
        </div><!-- home_top -->
        
        
        <div class="home_nav">
           <ul>
              <li><a class="" href="homepage.jsp">主页</a></li>
              <li><a class="" href="works.jsp">作品</a></li>
                      
                      <li><a class="" href="album.jsp">专辑</a></li>
                      <li><a class="" href="post.jsp">帖子</a></li>
                      <li><a class="active" href="collection.jsp">收藏</a></li>
                      
                      <li><a class="" href="attention.jsp">关注页面/我的粉丝</a></li>
           </ul>
        </div>
       
       <div class="home_con">
        
        <div class="wid920px fl">
           
           <div class="qh_btnd"><a href="collection.jsp" >收藏的作品</a> <a href="collection2.jsp" class="active">收藏的专辑</a></div>
           
           <div class="page_list">
              <ul class="clearfix">
                 <li>
                  <div class="btn_pos"><a href="#">收藏</a> <a href="#" class="buy_nowd">立即购买</a></div>
                 <a href="#"><img src="<%=basePath%>/static/images/sytk_pic8.png" />
                  <h2>《你是我的风景》海景圣堂</h2>
                 </a>
                 <p class="small_txt"><span class="sc_icon">收藏：4554</span>&nbsp; &nbsp; |&nbsp; &nbsp; <span class="yzx_icon">已下载：6541</span></p>
                 </li>
                  <li>
                  <div class="btn_pos"><a href="#">收藏</a> <a href="#" class="buy_nowd">立即购买</a></div>
                 <a href="#"><img src="<%=basePath%>/static/images/sjtka_pic3.png" />
                  <h2>《你是我的风景》海景圣堂海景圣堂海景圣堂</h2>
                 </a>
                 <p class="small_txt"><span class="sc_icon">收藏：4554</span>&nbsp; &nbsp; |&nbsp; &nbsp; <span class="yzx_icon">已下载：6541</span></p>
                 </li>
                  <li>
                  <div class="btn_pos"><a href="#">收藏</a> <a href="#" class="buy_nowd">立即购买</a></div>
                 <a href="#"><img src="<%=basePath%>/static/images/sjtka_pic2.png" />
                  <h2>《你是我的风景》海景圣堂</h2>
                 </a>
                 <p class="small_txt"><span class="sc_icon">收藏：4554</span>&nbsp; &nbsp; |&nbsp; &nbsp; <span class="yzx_icon">已下载：6541</span></p>
                 </li>
                  <li>
                  <div class="btn_pos"><a href="#">收藏</a> <a href="#" class="buy_nowd">立即购买</a></div>
                 <a href="#"><img src="<%=basePath%>/static/images/dmt_pic6.png" />
                  <h2>《你是我的风景》海景圣堂</h2>
                 </a>
                 <p class="small_txt"><span class="sc_icon">收藏：4554</span>&nbsp; &nbsp; |&nbsp; &nbsp; <span class="yzx_icon">已下载：6541</span></p>
                 </li>
                  <li>
                  <div class="btn_pos"><a href="#">收藏</a> <a href="#" class="buy_nowd">立即购买</a></div>
                 <a href="#"><img src="<%=basePath%>/static/images/dmt_pic5.png" />
                  <h2>《你是我的风景》海景圣堂</h2>
                 </a>
                 <p class="small_txt"><span class="sc_icon">收藏：4554</span>&nbsp; &nbsp; |&nbsp; &nbsp; <span class="yzx_icon">已下载：6541</span></p>
                 </li>
                  <li>
                  <div class="btn_pos"><a href="#">收藏</a> <a href="#" class="buy_nowd">立即购买</a></div>
                 <a href="#"><img src="<%=basePath%>/static/images/dmt_pic4.png" />
                  <h2>《你是我的风景》海景圣堂</h2>
                 </a>
                 <p class="small_txt"><span class="sc_icon">收藏：4554</span>&nbsp; &nbsp; |&nbsp; &nbsp; <span class="yzx_icon">已下载：6541</span></p>
                 </li>
                 <li>
                  <div class="btn_pos"><a href="#">收藏</a> <a href="#" class="buy_nowd">立即购买</a></div>
                 <a href="#"><img src="<%=basePath%>/static/images/sytk_pic8.png" />
                  <h2>《你是我的风景》海景圣堂</h2>
                 </a>
                 <p class="small_txt"><span class="sc_icon">收藏：4554</span>&nbsp; &nbsp; |&nbsp; &nbsp; <span class="yzx_icon">已下载：6541</span></p>
                 </li>
                  <li>
                  <div class="btn_pos"><a href="#">收藏</a> <a href="#" class="buy_nowd">立即购买</a></div>
                 <a href="#"><img src="<%=basePath%>/static/images/sjtka_pic3.png" />
                  <h2>《你是我的风景》海景圣堂海景圣堂海景圣堂</h2>
                 </a>
                 <p class="small_txt"><span class="sc_icon">收藏：4554</span>&nbsp; &nbsp; |&nbsp; &nbsp; <span class="yzx_icon">已下载：6541</span></p>
                 </li>
                  <li>
                  <div class="btn_pos"><a href="#">收藏</a> <a href="#" class="buy_nowd">立即购买</a></div>
                 <a href="#"><img src="<%=basePath%>/static/images/sjtka_pic2.png" />
                  <h2>《你是我的风景》海景圣堂</h2>
                 </a>
                 <p class="small_txt"><span class="sc_icon">收藏：4554</span>&nbsp; &nbsp; |&nbsp; &nbsp; <span class="yzx_icon">已下载：6541</span></p>
                 </li>
                  <li>
                  <div class="btn_pos"><a href="#">收藏</a> <a href="#" class="buy_nowd">立即购买</a></div>
                 <a href="#"><img src="<%=basePath%>/static/images/dmt_pic6.png" />
                  <h2>《你是我的风景》海景圣堂</h2>
                 </a>
                 <p class="small_txt"><span class="sc_icon">收藏：4554</span>&nbsp; &nbsp; |&nbsp; &nbsp; <span class="yzx_icon">已下载：6541</span></p>
                 </li>
                  <li>
                  <div class="btn_pos"><a href="#">收藏</a> <a href="#" class="buy_nowd">立即购买</a></div>
                 <a href="#"><img src="<%=basePath%>/static/images/dmt_pic5.png" />
                  <h2>《你是我的风景》海景圣堂</h2>
                 </a>
                 <p class="small_txt"><span class="sc_icon">收藏：4554</span>&nbsp; &nbsp; |&nbsp; &nbsp; <span class="yzx_icon">已下载：6541</span></p>
                 </li>
                  <li>
                  <div class="btn_pos"><a href="#">收藏</a> <a href="#" class="buy_nowd">立即购买</a></div>
                 <a href="#"><img src="<%=basePath%>/static/images/dmt_pic4.png" />
                  <h2>《你是我的风景》海景圣堂</h2>
                 </a>
                 <p class="small_txt"><span class="sc_icon">收藏：4554</span>&nbsp; &nbsp; |&nbsp; &nbsp; <span class="yzx_icon">已下载：6541</span></p>
                 </li>
              </ul>
           </div>
           
             <div id="pages" class="pages_box2"></div>


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
          
           
        
        </div><!-- wid920px -->
        
        <div class="wid260px fr">
          
          <div class="ty_box">
             <div class="tit_zptj"><h2>个人简介</h2></div>
             <div class="bq_box">
              <a href="#">VI设计</a><a href="#">logo设计</a><a href="#">VI设计</a><a href="#">网站设计</a>
             </div>
             <p>部分文件为扑住图形可任意更改做持续更新请加关注，想了解更多作品！请点击下方（查看所有作品）或（点击专辑转PSD或CDR格式可发）站内信联系。</p>
          </div>
          
          <div class="ty_box">
             <div class="tit_zptj"><h2>TA的最新动态</h2> <a href="javascript:">更多>> </a></div>
             <div class="dt_list">
               <ul>
                  <li><a href="#">我发布了“漫婚礼舞台”快来看~</a></li>
                  <li><a href="#">我发布了“浪漫婚礼舞台浪漫婚礼舞台浪漫婚礼舞台”快来看~</a></li>
                  <li><a href="#">我发布了“浪漫婚礼舞台浪漫婚礼舞台浪漫婚礼舞台”快来看~</a></li>
                  <li><a href="#">我发布了“浪漫婚礼舞台浪漫婚礼舞台浪漫婚礼舞台”快来看~</a></li>
                  <li><a href="#">我发布了“浪漫婚礼舞台浪漫婚礼舞台浪漫婚礼舞台”快来看~</a></li>
               </ul>
             </div>
          </div>
          
          <div class="ty_box">
             <div class="tit_zptj"><h2>TA关注的(<span class="col_f00">20</span>)</h2> <a href="javascript:">更多>> </a></div>
             <div class="tx_listd">
               <ul class="clearfix">
                  <li><a href="#"><img src="<%=basePath%>/static/images/sytk_pic1.png" /> <p>与众不同</p></a></li>
                  <li><a href="#"><img src="<%=basePath%>/static/images/sytk_pic2.png" /> <p>与众与众不同不同</p></a></li>
                  <li><a href="#"><img src="<%=basePath%>/static/images/sytk_pic3.png" /> <p>与众不同</p></a></li>
                  <li><a href="#"><img src="<%=basePath%>/static/images/sytk_pic4.png" /> <p>与众不同</p></a></li>
                  <li><a href="#"><img src="<%=basePath%>/static/images/sytk_pic5.png" /> <p>与与众不同众不同</p></a></li>
                  <li><a href="#"><img src="<%=basePath%>/static/images/sytk_pic6.png" /> <p>与众不同</p></a></li>
               </ul>
             </div>
          </div>
          
           <div class="ty_box">
             <div class="tit_zptj"><h2>TA关注的粉丝</h2> <a href="javascript:">更多>> </a></div>
             <div class="tx_listd">
               <ul class="clearfix">
                  <li><a href="#"><img src="<%=basePath%>/static/images/sytk_pic1.png" /> <p>与众不同</p></a></li>
                  <li><a href="#"><img src="<%=basePath%>/static/images/sytk_pic2.png" /> <p>与众与众不同不同</p></a></li>
                  <li><a href="#"><img src="<%=basePath%>/static/images/sytk_pic3.png" /> <p>与众不同</p></a></li>
                  <li><a href="#"><img src="<%=basePath%>/static/images/sytk_pic4.png" /> <p>与众不同</p></a></li>
                  <li><a href="#"><img src="<%=basePath%>/static/images/sytk_pic5.png" /> <p>与与众不同众不同</p></a></li>
                  <li><a href="#"><img src="<%=basePath%>/static/images/sytk_pic6.png" /> <p>与众不同</p></a></li>
               </ul>
             </div>
          </div>
          
          <div class="ty_box">
             <div class="tit_zptj"><h2>网站最新交易状态</h2> <a href="javascript:">更多>> </a></div>
             <div class="zt_listdd">
               <ul class="clearfix">
                  <li>
                    <a href="#"><img src="<%=basePath%>/static/images/sjtka_pic6.png" /></a>
                    <div class="txt_fldd">
                      <h2><a href="#">大自然的馈赠</a></h2>
                      <b class="col_f00">￥10.0</b>
                      <p class="timed">刚刚</p>
                    </div> 
                  
                  </li>
                  <li>
                    <a href="#"><img src="<%=basePath%>/static/images/sjtka_pic8.png" /></a>
                    <div class="txt_fldd">
                      <h2><a href="#">大自然的馈赠</a></h2>
                      <b class="col_f00">￥10.0</b>
                      <p class="timed">刚刚</p>
                    </div> 
                  
                  </li>
                   <li>
                    <a href="#"><img src="<%=basePath%>/static/images/sjtka_pic7.png" /></a>
                    <div class="txt_fldd">
                      <h2><a href="#">大自然的馈赠</a></h2>
                      <b class="col_f00">￥10.0</b>
                      <p class="timed">刚刚</p>
                    </div> 
                  
                  </li>
                   <li>
                    <a href="#"><img src="<%=basePath%>/static/images/sjtka_pic4.png" /></a>
                    <div class="txt_fldd">
                      <h2><a href="#">大自然的馈赠</a></h2>
                      <b class="col_f00">￥10.0</b>
                      <p class="timed">刚刚</p>
                    </div> 
                  
                  </li>
               </ul>
             </div>
          </div>
          
        
        </div><!-- wid260px -->
        
        <div class="clear"></div>
     </div><!-- home_con -->
     
   
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
