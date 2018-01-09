<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path;
%>
<html>
<head>
<meta charset="utf-8">
<title>婚秀中国网</title>
<link href="<%=basePath%>/static/css/global.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath%>/static/css/index.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="<%=basePath%>/static/css/normalize.css" />
<link rel="stylesheet" type="text/css" href="<%=basePath%>/static/css/demo.css" />
<link href="<%=basePath%>/static/css/laypage.css" type="text/css" rel="stylesheet" >
<script src="<%=basePath%>/static/js/laypage.js"></script>
<script type="text/javascript" src="<%=basePath%>/static/js/jquery1.42.min.js"></script>
<script type="text/javascript" src="<%=basePath%>/static/js/jquery.SuperSlide.2.1.1.js"></script>
<script type="text/javascript">
  $(function(){
	  $(".fl_nav a").click(function(){
		  $(this).parents(".fl_nav").find("a").removeClass("on");
		  $(this).addClass("on")
		  
		  })
	  
	  })

</script>
</head>

<body>
   <header>
     <div class="top">
     
      <div class="top_line">
         <div class="top_wid">
            欢迎来到婚秀中国网
             <!-- 登录前 -->
            <div class="top_pos">
              <a href="login.jsp">登录</a>|<a href="regist.jsp">注册</a>
            </div>
            
            <!-- 登录后 -->
            <div class="top_pos" style="display:none;">
              <a href="pay.html" class="vip_lj">成为VIP</a>|<a href="upload.jsp" class="sc_icon">我要上传</a>|<a href="collection_2.jsp">我的收藏（<span class="col_f00">2</span>）</a>
            </div>
         </div>
      </div><!-- top_line -->
      
      <div class="top_wid logo_con">
         <a href="index.jsp" class="fl"><img src="<%=basePath%>/static/images/logo.png" height="62" width="217" /></a>
         <div class="ss_bg fl">
            <input name="" type="text" placeholder="请输入搜索内容"  class="inp_txt">
            <input type="submit" value="搜 索" class="ss_btn" /> 
         </div>
         
         <div class="phone_fr">
            <h2>400-879-51747</h2>
            <p>24小时服务热线</p>
         </div>
      </div><!-- top_wid -->
      
      <div class="nav">
        <ul class="clearfix">
          <li ><a  href="index.jsp">首 页 </a> <p class="point_d"></p></li>
          <li><a class="active" href="design.jsp">设 计</a> <p class="point_d"></p></li>
          
          <li><a href="photography.jsp">摄影图库</a> <p class="point_d"></p></li>
          <li><a href="multimedia.jsp">道具新品</a> <p class="point_d"></p></li>
          <li><a  href="wedding.jsp">婚 秀</a> <p class="point_d"></p></li>
         <li><a href="help.jsp">求图求助</a> <p class="point_d"></p></li>
         <li><a href="free.jsp">免费下载</a> <p class="point_d"></p></li>
        </ul>
      </div><!-- nav -->
      
      
      
      </div><!-- top -->
   </header>
   
     <div class="bg_f5"> 
     
   <div class="hlx_banner" style="background:url(<%=basePath%>/static/images/banner_sj.png) no-repeat top center;"></div>
   
 
     <div class="wrap">
     
            <div class="hlx_fld ">
              <table width="100%">
                 <tr>
                    <td width="80"><b>设计分类：</b></td>
                    <td><div class="fl_nav">
                       <a href="javascript:" class="on">全部</a>
                       <a href="javascript:">婚礼手绘</a>
                       <a href="javascript:">婚礼LOGO</a>
                       <a href="javascript:">婚礼路引牌</a>
                       <a href="javascript:">婚礼策划PPT</a>
                       <a href="javascript:">婚礼邀请函</a>
                       <a href="javascript:">婚纱照模版</a>
                       <a href="javascript:">艺术字</a>
                       <a href="javascript:">名片设计</a>
                       <a href="javascript:">画册/宣传单</a>
                     </div>
                    </td>
                 </tr>
                
              </table>
            </div>
            
            
            <div class="px_box">
               <a href="javascript:" class="on">综合排序</a>|<a href="javascript:">热门下载</a>|<a href="javascript:">最新上传</a>        
            
            </div>
            
            
            <main>
			<div class="content content--center">
				<div class="grid grid--type-a">
					<div class="grid__sizer"></div>
                    
					<div class="grid__item">
						<a class="grid__link" href="design_del.jsp"><img class="grid__img" src="<%=basePath%>/static/images/pbl_1.png" alt="" /></a>
                        <div class="list_txt_box">
                          <h2>《你是我的风景》海景圣堂</h2>
                          <p><a href="javascript:" class="zan">215061</a> | <a href="javascript:" class="down">1026</a></p>
                        </div>
                      
					</div>
                    
                    <div class="grid__item">
						<a class="grid__link" href="design_del.jsp"><img class="grid__img" src="<%=basePath%>/static/images/pbl_2.png" alt="" /></a>
                        <div class="list_txt_box">
                          <h2>《你是我的风景》海景圣堂</h2>
                          <p><a href="javascript:" class="zan">215061</a> | <a href="javascript:" class="down">1026</a></p>
                        </div>
                        
					</div>
                    
                    <div class="grid__item">
						<a class="grid__link" href="design_del.jsp"><img class="grid__img" src="<%=basePath%>/static/images/pbl_3.png" alt="" /></a>
                        <div class="list_txt_box">
                          <h2>《你是我的风景》海景圣海景圣堂海景圣堂海景圣堂堂</h2>
                          <p><a href="javascript:" class="zan">215061</a> | <a href="javascript:" class="down">1026</a></p>
                        </div>
                      
					</div>
                    
                    <div class="grid__item">
						<a class="grid__link" href="design_del.jsp"><img class="grid__img" src="<%=basePath%>/static/images/pbl_4.png" alt="" /></a>
                        <div class="list_txt_box">
                          <h2>《你是我的风景》海景圣堂</h2>
                          <p><a href="javascript:" class="zan">215061</a> | <a href="javascript:" class="down">1026</a></p>
                        </div>
                        
					</div>
                    
                    <div class="grid__item">
						<a class="grid__link" href="design_del.jsp"><img class="grid__img" src="<%=basePath%>/static/images/pbl_5.png" alt="" /></a>
                        <div class="list_txt_box">
                          <h2>《你是我的风景》海景圣堂</h2>
                          <p><a href="javascript:" class="zan">215061</a> | <a href="javascript:" class="down">1026</a></p>
                        </div>
                      
					</div>
                    
                    <div class="grid__item">
						<a class="grid__link" href="design_del.jsp"><img class="grid__img" src="<%=basePath%>/static/images/pbl_6.png" alt="" /></a>
                        <div class="list_txt_box">
                          <h2>《你是我的风景》海景圣堂</h2>
                          <p><a href="javascript:" class="zan">215061</a> | <a href="javascript:" class="down">1026</a></p>
                        </div>
                        
					</div>
                    
                    <div class="grid__item">
						<a class="grid__link" href="design_del.jsp"><img class="grid__img" src="<%=basePath%>/static/images/pbl_7.png" alt="" /></a>
                        <div class="list_txt_box">
                          <h2>《你是我的风景》海景圣海景圣堂海景圣堂海景圣堂堂</h2>
                          <p><a href="javascript:" class="zan">215061</a> | <a href="javascript:" class="down">1026</a></p>
                        </div>
                      
					</div>
                    
                    <div class="grid__item">
						<a class="grid__link" href="design_del.jsp"><img class="grid__img" src="<%=basePath%>/static/images/pbl_8.png" alt="" /></a>
                        <div class="list_txt_box">
                          <h2>《你是我的风景》海景圣堂</h2>
                          <p><a href="javascript:" class="zan">215061</a> | <a href="javascript:" class="down">1026</a></p>
                        </div>
                        
					</div>
                    
                     <div class="grid__item">
						<a class="grid__link" href="design_del.jsp"><img class="grid__img" src="<%=basePath%>/static/images/pbl_9.png" alt="" /></a>
                        <div class="list_txt_box">
                          <h2>《你是我的风景》海景圣海景圣堂海景圣堂海景圣堂堂</h2>
                          <p><a href="javascript:" class="zan">215061</a> | <a href="javascript:" class="down">1026</a></p>
                        </div>
                      
					</div>
                    
                    <div class="grid__item">
						<a class="grid__link" href="design_del.jsp"><img class="grid__img" src="<%=basePath%>/static/images/pbl_10.png" alt="" /></a>
                        <div class="list_txt_box">
                          <h2>《你是我的风景》海景圣堂</h2>
                          <p><a href="javascript:" class="zan">215061</a> | <a href="javascript:" class="down">1026</a></p>
                        </div>
                        
					</div>
                    
                     <div class="grid__item">
						<a class="grid__link" href="design_del.jsp"><img class="grid__img" src="<%=basePath%>/static/images/pbl_11.png" alt="" /></a>
                        <div class="list_txt_box">
                          <h2>《你是我的风景》海景圣海景圣堂海景圣堂海景圣堂堂</h2>
                          <p><a href="javascript:" class="zan">215061</a> | <a href="javascript:" class="down">1026</a></p>
                        </div>
                      
					</div>
                    
                    <div class="grid__item">
						<a class="grid__link" href="design_del.jsp"><img class="grid__img" src="<%=basePath%>/static/images/pbl_12.png" alt="" /></a>
                        <div class="list_txt_box">
                          <h2>《你是我的风景》海景圣堂</h2>
                          <p><a href="javascript:" class="zan">215061</a> | <a href="javascript:" class="down">1026</a></p>
                        </div>
                        
					</div>
                    
                    <div class="grid__item">
						<a class="grid__link" href="design_del.jsp"><img class="grid__img" src="<%=basePath%>/static/images/pbl_13.png" alt="" /></a>
                        <div class="list_txt_box">
                          <h2>《你是我的风景》海景圣海景圣堂海景圣堂海景圣堂堂</h2>
                          <p><a href="javascript:" class="zan">215061</a> | <a href="javascript:" class="down">1026</a></p>
                        </div>
                      
					</div>
                    
                    <div class="grid__item">
						<a class="grid__link" href="design_del.jsp"><img class="grid__img" src="<%=basePath%>/static/images/pbl_14.png" alt="" /></a>
                        <div class="list_txt_box">
                          <h2>《你是我的风景》海景圣堂</h2>
                          <p><a href="javascript:" class="zan">215061</a> | <a href="javascript:" class="down">1026</a></p>
                        </div>
                        
					</div>
                    
                    <div class="grid__item">
						<a class="grid__link" href="design_del.jsp"><img class="grid__img" src="<%=basePath%>/static/images/pbl_1.png" alt="" /></a>
                        <div class="list_txt_box">
                          <h2>《你是我的风景》海景圣堂</h2>
                          <p><a href="javascript:" class="zan">215061</a> | <a href="javascript:" class="down">1026</a></p>
                        </div>
                      
					</div>
                    
                    <div class="grid__item">
						<a class="grid__link" href="design_del.jsp"><img class="grid__img" src="<%=basePath%>/static/images/pbl_2.png" alt="" /></a>
                        <div class="list_txt_box">
                          <h2>《你是我的风景》海景圣堂</h2>
                          <p><a href="javascript:" class="zan">215061</a> | <a href="javascript:" class="down">1026</a></p>
                        </div>
                        
					</div>
                    
                    <div class="grid__item">
						<a class="grid__link" href="design_del.jsp"><img class="grid__img" src="<%=basePath%>/static/images/pbl_3.png" alt="" /></a>
                        <div class="list_txt_box">
                          <h2>《你是我的风景》海景圣海景圣堂海景圣堂海景圣堂堂</h2>
                          <p><a href="javascript:" class="zan">215061</a> | <a href="javascript:" class="down">1026</a></p>
                        </div>
                      
					</div>
                    
                    <div class="grid__item">
						<a class="grid__link" href="design_del.jsp"><img class="grid__img" src="<%=basePath%>/static/images/pbl_2.png" alt="" /></a>
                        <div class="list_txt_box">
                          <h2>《你是我的风景》海景圣堂</h2>
                          <p><a href="javascript:" class="zan">215061</a> | <a href="javascript:" class="down">1026</a></p>
                        </div>
                        
					</div>
                    
                    
					
				</div><!-- grid -->
				</div>
			
		</main>
		<script src="js/<%=basePath%>/static/imagesloaded.pkgd.min.js"></script>
		<script src="js/masonry.pkgd.min.js"></script>
		<script src="js/anime.min.js"></script>
		<script src="js/main.js"></script>
         
         
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

   
   
   
    </div><!-- wrap -->
    </div><!-- bg_f5 -->
   
   <!-- 公共底部 -->
   <footer style="background:#fff;">
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
