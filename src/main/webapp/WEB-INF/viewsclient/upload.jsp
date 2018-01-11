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
                   <li><a class="mem_icon1 active" href="upload.jsp">上传作品</a></li>
                   <li><a class="mem_icon2" href="collection_2.jsp">收藏</a></li>
                   <li><a class="mem_icon3" href="album_2.jsp">专辑</a></li>
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
           
              <div class="fytd_box">
                 <div class="hei40px">
                 提示：源文件和预览图批量上传文件命名必须相同才能匹配成功（批量上传每次限50个）
                   <div class="jyzt_txt"><a href="#">上传帮助中心？</a></div>
                 </div>
                 
                 <div class="sc_padd">
                    <ul class="navd nav-pills nav-justified step step-progress" data-step="2">
                        <li>
                            <a>上传作品<span class="caret"></span></a>
                        </li>
                        <li>
                            <a>完善作品信息<span class="caret"></span></a>
                        </li>
                        <li>
                            <a>等待审核<span class="caret"></span></a>
                        </li>
                        <li>
                            <a>审核通过<span class="caret"></span></a>
                        </li>
                    </ul>
                    <script type="text/javascript" src="js/lib.js"></script>
		<script>
			$(function() {
				bsStep();
				//bsStep(i) i 为number 可定位到第几步 如bsStep(2)/bsStep(3)
			})
		</script>
                 
                 </div>
                
              
              </div><!-- fytd_box -->
              
             
                  <div class="sc_boxd">
                     <table width="100%">
                       <tr>
                          <td>
                            <div class="sc_boxdd">
                                 <h2>1、拖拽源文件至此或</h2>
                                 <div class="sc_btn_big">选择源文件 <input name="" type="file"></div>
                                 <p class="col_999">支持rar、zip jpg psd ai cdr tif abr ppt esp..
等格式，体积在300MB以下</p>
                                 
                            </div>
                          </td>
                          <td><img src="<%=basePath%>/static/images/arrow_jtd.png" height="27" width="38" /></td>
                          <td>
                           <div class="sc_boxdd fr">
                                 <h2>1、拖拽源文件至此或</h2>
                                 <div class="sc_btn_big">选择预览图 <input name="" type="file"></div>
                                 <p class="col_999">支持rar、zip jpg psd ai cdr tif abr ppt esp..
等格式，体积在300MB以下</p>
                                 
                            </div>
                          </td>
                       </tr>
                     </table>
               
               </div><!-- sc_boxd --> 
              
              <div class="mem_ty_box">
                 <div class="sc_tabd">
                    <table width="100%">
                         <tr>
                             <td width="70"><img src="<%=basePath%>/static/images/sytk_pic2.png" /></td>
                             <td>
                               <div class="sc_txtd">
                                 <p>001.png</p>  <p>w文件大小：6MB  &nbsp; &nbsp;<span class="col_ls">  43% &nbsp; &nbsp;  339.0KB/S</span></p>
                                 <p class="qx_posd"><a href="#">取消上传</a></p>
                               
                               </div>
                               
                               <div class="jd_bg">
                                  <div class="curr_now" style="width:62%;"></div>
                               </div>
                               
                             </td>
                         </tr>
                         <tr>
                             <td width="70"><img src="<%=basePath%>/static/images/sytk_pic3.png" /></td>
                             <td>
                               <div class="sc_txtd">
                                 <p>001.png</p>  <p>w文件大小：6MB  &nbsp; &nbsp;<span class="col_ls">  43% &nbsp; &nbsp;  339.0KB/S</span></p>
                                 <p class="qx_posd"><a href="#">取消上传</a></p>
                               
                               </div>
                               
                               <div class="jd_bg">
                                  <div class="curr_now" style="width:10%;"></div>
                               </div>
                               
                             </td>
                         </tr>
                    </table>
                 </div>
              </div><!-- mem_ty_box -->
              
              
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
