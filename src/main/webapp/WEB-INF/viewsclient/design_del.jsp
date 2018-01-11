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
<link rel="stylesheet"  href="<%=basePath%>/static/css/fsgallery.css" media="all" />
<script type="text/javascript" src="<%=basePath%>/static/js/jquery1.42.min.js"></script>
<script type="text/javascript" src="<%=basePath%>/static/js/jquery.SuperSlide.2.1.1.js"></script>
<script src="js/fs_forse.js"></script>

</head>

<body>
   <header>
     <div class="top">
     
      <div class="top_line">
         <div class="top_wid">
            欢迎来到婚秀中国网
             <!-- 登录前 -->
            <div class="top_pos"  style="display:none;">
              <a href="login.jsp">登录</a>|<a href="regist.jsp">注册</a>
            </div>
            
            <!-- 登录后 -->
            <div class="top_pos">
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
          <li ><a class="" href="index.jsp">首 页 </a> <p class="point_d"></p></li>
          <li><a href="design.jsp" class="active">设 计</a> <p class="point_d"></p></li>
          
          <li><a href="photography.jsp">摄影图库</a> <p class="point_d"></p></li>
          <li><a href="multimedia.jsp">道具新品</a> <p class="point_d"></p></li>
          <li><a href="wedding.jsp" >婚 秀</a> <p class="point_d"></p></li>
         <li><a href="help.jsp">求图求助</a> <p class="point_d"></p></li>
         <li><a href="free.jsp">免费下载</a> <p class="point_d"></p></li>
        </ul>
      </div><!-- nav -->
      
      
      
      </div><!-- top -->
   </header>
   
   <div class="bg_f5"> 
     <div class="wrap">
     
     <div class="mbx_box"><a  href="index.jsp">首页</a> > <a href="javascript:">设 计</a> > <a href="javascript:">中式设计</a> > 欧式米黄色婚礼背景</div>
     
     <div class="wed_del">
        
       <div class="wid780px fl">
         <div class="del_txt">
           <h2>欧式米黄色婚礼背景</h2>   <a href="javascript:" title="查看大图" class="icon_fdj" style="display:none;" ></a>
         </div>
         
         <div class="gallery" >
         
            <div class="turn_pic2">
                <div class="bd" id="gallery">
                    <ul>
                        <li> <a href="<%=basePath%>/static/images/hlx_big.png" title="点击查看大图" alt=""  ><img src="<%=basePath%>/static/images/hlx_big.png" /></a><div class="zplx_top"><img src="<%=basePath%>/static/images/icon_yc.png" height="73" width="76" /></div></li>
                        <li> <a href="<%=basePath%>/static/images/sytk_pic8.png" title="点击查看大图" alt=""  ><img src="<%=basePath%>/static/images/sytk_pic8.png" /></a><div class="zplx_top"><img src="<%=basePath%>/static/images/icon_gx.png" height="73" width="76" /></div></li>
                        <li> <a href="<%=basePath%>/static/images/hlx_big.png" title="点击查看大图" alt=""  ><img src="<%=basePath%>/static/images/hlx_big.png" /></a></li>
                        <li> <a href="<%=basePath%>/static/images/pbl_8.png" title="点击查看大图" alt=""  ><img src="<%=basePath%>/static/images/pbl_8.png" /></a></li>
                        <li> <a href="<%=basePath%>/static/images/sytk_pic3.png" title="点击查看大图" alt=""  ><img src="<%=basePath%>/static/images/sytk_pic3.png" /></a></li>
                        <li> <a href="<%=basePath%>/static/images/pbl_12.png" title="点击查看大图" alt=""  ><img src="<%=basePath%>/static/images/pbl_12.png" /></a></li>
				</ul>
                </div>
                
                <div class="hd">
				<ul>
					<li><img src="<%=basePath%>/static/images/hlx_big.png" /></li>
					<li><img src="<%=basePath%>/static/images/sytk_pic8.png" /></li>
					<li><img src="<%=basePath%>/static/images/hlx_big.png" /></li>
					<li><img src="<%=basePath%>/static/images/pbl_8.png" /></li>
                    <li><img src="<%=basePath%>/static/images/sytk_pic3.png" /></li> 
                    <li><img src="<%=basePath%>/static/images/pbl_12.png" /></li> 
				</ul>
			</div>
                
            </div>
            
            <script type="text/javascript">jQuery(".turn_pic2").slide({ mainCell:".bd ul",effect:"left",autoPlay:true });</script>

         
            
            <div class="botm_js">
              婚秀中国网正版图库 &nbsp; &nbsp;  &nbsp; &nbsp;  编号：1025808214 &nbsp; &nbsp;  &nbsp; &nbsp;   会员：甜心卡布奇诺
              <a href="javascript:" class="jb_icon">举报</a>
            </div>
         </div>

       </div><!-- wid780px -->
       
       <div class="wid400px fr">
         <div class="ty_box">
             <div class="xx_tabd">
               <table width="100%">
                  <tr>
                      <td width="50"><div class="tx_img"><a href="homepage.jsp"><img src="<%=basePath%>/static/images/head_img.png" /></a></div></td>
                      <td> <a href="homepage.jsp">yizhouerig</a>    普通会员 <img src="<%=basePath%>/static/images/icon_dj.png" height="15" width="22" />
                      <p>交易：130 &nbsp; &nbsp;|&nbsp; &nbsp;作品数量：200</p>
                      </h2>
                      
                      </td>
                     
                  </tr>
               </table>
                <div class="dp_boxd"><a href="#">收藏店铺</a> <a href="#">进入店铺</a></div>
             </div>
             
             <h2>婚庆场景设计模板</h2>
             <p><span class="col_f00">[原创设计]</span> AI矢量图，可任意设置精度，拉大，可做喷绘，写真，内送PSD分层文件放心下载</p>
             <div class="jg_ttx">
              价格：<b class="col_f00">100元</b>  <a href="javascript:" class="sh_pos">贴心售后></a>
             </div> 
             
             <div class="buy_btn">
               <a href="javascript:" class="fl">我要购买</a>
               <a href="javascript:" class="wydz fr"><img src="<%=basePath%>/static/images/icon_dz.png" /> 我要定制</a>
             </div>
             
             <p class="small_txt"><span class="yzx_icon">已下载：6541</span><span class="ll_icon">浏览：8454</span><span class="sc_icon">收藏：4554</span></p>
                
         </div><!-- ty_box -->
         
         
         <div class="ty_box">
              <div class="jj_tabd">
                <table width="100%">
                   <tr>
                      <td colspan="2">编号：13452373</td>
                   </tr>
                   <tr>
                      <td>格式：<img src="<%=basePath%>/static/images/icon_gs.png" height="20" width="36" /></td>
                      <td>分辨率：300DPI  </td>
                   </tr>
                   <tr>
                      <td>大小：70.89MB</td>
                      <td> 像素：4960X3781PX</td>
                   </tr>
                   <tr>
                      <td  colspan="2">发布时间：2017/8/21</td>
                   </tr>
                   <tr>
                      <td  colspan="2"><p class="fl">分享到：</p>
                      <div class="bdsharebuttonbox fl"><a href="#" class="bds_more" data-cmd="more"></a><a href="#" class="bds_weixin" data-cmd="weixin" title="分享到微信"></a><a href="#" class="bds_qzone" data-cmd="qzone" title="分享到QQ空间"></a><a href="#" class="bds_tsina" data-cmd="tsina" title="分享到新浪微博"></a><a href="#" class="bds_tqq" data-cmd="tqq" title="分享到腾讯微博"></a><a href="#" class="bds_renren" data-cmd="renren" title="分享到人人网"></a></div>
<script>window._bd_share_config={"common":{"bdSnsKey":{},"bdText":"","bdMini":"2","bdMiniList":false,"bdPic":"","bdStyle":"0","bdSize":"16"},"share":{},"selectShare":{"bdContainerClass":null,"bdSelectMiniList":["weixin","qzone","tsina","tqq","renren"]}};with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='+~(-new Date()/36e5)];
</script>   
                      </td>
                   </tr>
                </table>
              </div> 
         
         
         </div><!-- ty_box -->
         
         <div class="ty_box">
             <div class="tit_zptj"><h2>会员作品推荐</h2> <a href="javascript:">更多>> </a> </div>
             
             <div class="zp_tj da_img">
              <ul class="clearfix">
               <li><a href="design.jsp"><img src="<%=basePath%>/static/images/hlxa_pic5.png" />
                <div class="botm_txtd">
                   <p>我是标题</p>
                </div> 
               </a></li>
               <li><a href="design.jsp"><img src="<%=basePath%>/static/images/hlxa_pic3.png" />
               <div class="botm_txtd">
                   <p>我是标题我是标题我是标题我是标题我是标题我是标题</p>
                </div> 
               </a></li>
               </ul>
             </div> 
         
         </div><!-- ty_box -->
       
       
       
       </div><!-- wid400px -->
       
       <div class="clear"></div>
     
     </div><!-- wed_del -->
     
     
     <div class="gxq_box da_img">
        <div class="gxq_tit"><h2>您可能还感兴趣的</h2> <a href="javascript:">更多>> </a></div>
        <ul class="clearfix">
               <li><a href="design.jsp"><img src="<%=basePath%>/static/images/sjtka_pic1.png" />
                <div class="botm_txtd">
                   <p>我是标题</p>
                </div> 
               </a></li>
               <li><a href="design.jsp"><img src="<%=basePath%>/static/images/sjtka_pic2.png" />
               <div class="botm_txtd">
                   <p>我是标题我是标题我是标题我是标题我是标题我是标题</p>
                </div> 
               </a></li>
               <li><a href="design.jsp"><img src="<%=basePath%>/static/images/sjtka_pic3.png" />
               <div class="botm_txtd">
                   <p>我是标题</p>
                </div> 
               </a></li>
               <li><a href="design.jsp"><img src="<%=basePath%>/static/images/sjtka_pic4.png" />
               <div class="botm_txtd">
                   <p>我是标题</p>
                </div> 
               </a></li>
               <li class="long_wid"><a href="design.jsp"><img src="<%=basePath%>/static/images/dmt_pic1.png" />
               <div class="botm_txtd">
                   <p>我是标题</p>
                </div> 
               </a></li>
              
               <li><a href="design.jsp"><img src="<%=basePath%>/static/images/sjtka_pic6.png" />
               <div class="botm_txtd">
                   <p>我是标题</p>
                </div> 
               </a></li>
               
               
           </ul>
           
         
     
     </div>
     
         <p class="sm_txt">【声明】婚秀中国网是正版商业图库，所有原创作品（含预览图）均受著作权 发保护，著作权及相关权利归上传用户所有，未经许可任何人不得擅自使用，否则将依法处理</p>
   
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
