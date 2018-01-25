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
<script type="text/javascript" src="<%=basePath%>/static/js/jquery1.42.min.js"></script>
<script type="text/javascript" src="<%=basePath%>/static/js/jquery.SuperSlide.2.1.1.js"></script>
    <script type="text/javascript">
        $(function () {

            $('.ss_btn').click(function () {
                document.location.href = '<%=basePath%>/seachs/toSeachs.do?seachTxt='+$('.inp_txt').val();
            });
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
          <a href="#" onclick="toIndex()" class="fl"><img src="<%=basePath%>/static/images/logo.png" height="62" width="217" /></a>
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
              <li><a href="#" onclick="toIndex()">首 页 </a> <p class="point_d"></p></li>
              <li><a href="#" onclick="toDesign()">设 计</a> <p class="point_d"></p></li>
              <li><a href="#" onclick="toPhotography()">摄影图库</a> <p class="point_d"></p></li>
              <li><a href="#" onclick="toMultimedia()">道具新品</a> <p class="point_d"></p></li>
              <li><a href="#" onclick="toWedding()">婚 秀</a> <p class="point_d"></p></li>
              <li><a class="active" href="#" onclick="toHelp()">求图求助</a> <p class="point_d"></p></li>
              <li><a href="#" onclick="toFree()">免费下载</a> <p class="point_d"></p></li>
          </ul>
      </div><!-- nav -->
      
      
      
      </div><!-- top -->
   </header>
   
   
   <div class="hlx_banner" style="background:url(<%=basePath%>/static/images/banner_help.png) no-repeat top center;">
       <div class="wid1000px">
          <h2>任务流程<br/><span>Task flow</span></h2>
          
          <table width="100%">
             <tr>
                <td><div class="lc_bg">发布任务</div></td>
                <td>＞</td>
                <td><div class="lc_bg2">任务审核</div></td>
                <td>＞</td>
                <td><div class="lc_bg2">用户投稿</div></td>
                <td>＞</td>
                <td><div class="lc_bg2">稿件审核</div></td>
                <td>＞</td>
                <td><div class="lc_bg">买家选稿</div></td>
                <td>＞</td>
                <td><div class="lc_bg2">中标公示</div></td>
                <td>＞</td>
                <td><div class="lc_bg2">买家评论</div></td>
                <td>＞</td>
                <td><div class="lc_bg2">任务结束</div></td>
               
             </tr>
          
          </table>
           <a href="javascript:" class="fb_btnd">我要发布任务</a>
       </div>
       
   </div><!-- hlx_banner -->
   
   
   <div class="rn_boxd">
     <table width="100%">
        <tr>
           <td><img src="<%=basePath%>/static/images/help_icon1.png" /> 放心赏，赚无忧</td>
           <td><img src="<%=basePath%>/static/images/help_icon2.png" /> 0投稿，全额退款</td>
           <td><img src="<%=basePath%>/static/images/help_icon3.png" /> 一网多发，多网展示</td>
           <td><img src="<%=basePath%>/static/images/help_icon4.png" /> 低成本，高效益  </td>
           <td><img src="<%=basePath%>/static/images/help_icon5.png" /> 未中标可转出售</td>
        </tr>
     </table>
   </div>
   
   <div class="bg_f5">
      <div class="wrap">
      
          <!-- 高金额任务 -->
          <div class="help_txt">
            <h2>高金额任务</h2>
            <a href="javascript:" class="more_btn">更多></a>
          </div>
           
          
          <div class="gerw_list">
            <ul class="clearfix">
                <li>
                  <h2>￥1500.00 <span class="tg_bg">投稿中</span></h2>
                  <p>容县第二人民医院logo 设计</p>
                  <a href="javascript:" class="cy_btnd">立即参与</a>
                </li>
                <li>
                  <h2>￥3000.00 <span class="tg_bg">投稿中</span></h2>
                  <p>logo图形+中式婚礼秀</p>
                  <a href="javascript:" class="cy_btnd">立即参与</a>
                </li>
                <li>
                  <h2>￥1300.00 <span class="tg_bg">投稿中</span></h2>
                  <p>融于文化有限公司logo设计</p>
                  <a href="javascript:" class="cy_btnd">立即参与</a>
                </li>
                <li>
                  <h2>￥2400.00 <span class="tg_bg">投稿中</span></h2>
                  <p>创新有限公司logo设计</p>
                  <a href="javascript:" class="cy_btnd">立即参与</a>
                </li>
            
            </ul>
          </div>
          
          
          <!-- 热门任务 -->
          <div class="task_con">
               <div class="task_nav">
                    <ul class="clearfix">
                       <li class="on"><a href="javascript:">热门任务</a></li>
                       <li><a href="javascript:">最新任务</a></li>
                    </ul>
                    
                    <a href="javascript:" class="more_btn">更多></a>
                 </div>
               
             <div class="task_box">
               <ul>  
               <div class="task_ul">
                  <ul >
                      <li>
                        <h2><b class="">￥500.00</b> 餐饮门头招牌设计只差一个好...  </h2>
                        <p><img src="<%=basePath%>/static/images/icon_tg.png" /> 已托管  93人投稿  1天18小时后停止交稿</p>
                        <a href="#" class="ljcy_btn">立即参与</a>
                      </li>
                      <li>
                        <h2><b class="">￥500.00</b> 餐饮门头招牌设计只差一个好...  </h2>
                        <p><img src="<%=basePath%>/static/images/icon_tg.png" /> 已托管  93人投稿  1天18小时后停止交稿</p>
                        <a href="#" class="ljcy_btn">立即参与</a>
                      </li>
                      <li>
                        <h2><b class="">￥500.00</b> 餐饮门头招牌设计只差一个好...  </h2>
                        <p><img src="<%=basePath%>/static/images/icon_tg.png" /> 已托管  93人投稿  1天18小时后停止交稿</p>
                        <a href="#" class="ljcy_btn">立即参与</a>
                      </li>
                      <li>
                        <h2><b class="">￥500.00</b> 餐饮门头招牌设计只差一个好...  </h2>
                        <p><img src="<%=basePath%>/static/images/icon_tg.png" /> 已托管  93人投稿  1天18小时后停止交稿</p>
                        <a href="#" class="ljcy_btn">立即参与</a>
                      </li>
                      <li>
                        <h2><b class="">￥500.00</b> 餐饮门头招牌设计只差一个好...  </h2>
                        <p><img src="<%=basePath%>/static/images/icon_tg.png" /> 已托管  93人投稿  1天18小时后停止交稿</p>
                        <a href="#" class="ljcy_btn">立即参与</a>
                      </li>
                      <li>
                        <h2><b class="">￥500.00</b> 餐饮门头招牌设计只差一个好...  </h2>
                        <p><img src="<%=basePath%>/static/images/icon_tg.png" /> 已托管  93人投稿  1天18小时后停止交稿</p>
                        <a href="#" class="ljcy_btn">立即参与</a>
                      </li>
                      <li>
                        <h2><b class="">￥500.00</b> 餐饮门头招牌设计只差一个好...  </h2>
                        <p><img src="<%=basePath%>/static/images/icon_tg.png" /> 已托管  93人投稿  1天18小时后停止交稿</p>
                        <a href="#" class="ljcy_btn">立即参与</a>
                      </li>
                      <li>
                        <h2><b class="">￥500.00</b> 餐饮门头招牌设计只差一个好...  </h2>
                        <p><img src="<%=basePath%>/static/images/icon_tg.png" /> 已托管  93人投稿  1天18小时后停止交稿</p>
                        <a href="#" class="ljcy_btn">立即参与</a>
                      </li>
                      
                      <div class="clear"></div>
                      
                  </ul>
               </div>
              
             
              </ul>
             
             
              <ul>  
               <div class="task_ul">
                  <ul >
                      <li>
                        <h2><b class="">￥500.00</b> 餐饮门头招牌设计只差一个好222...  </h2>
                        <p><img src="<%=basePath%>/static/images/icon_tg.png" /> 已托管  93人投稿  1天18小时后停止交稿</p>
                        <a href="#" class="ljcy_btn">立即参与</a>
                      </li>
                      <li>
                        <h2><b class="">￥500.00</b> 餐饮门头招牌设计只差一个好...  </h2>
                        <p><img src="<%=basePath%>/static/images/icon_tg.png" /> 已托管  93人投稿  1天18小时后停止交稿</p>
                        <a href="#" class="ljcy_btn">立即参与</a>
                      </li>
                      <li>
                        <h2><b class="">￥500.00</b> 餐饮门头招牌设计只差一个好...  </h2>
                        <p><img src="<%=basePath%>/static/images/icon_tg.png" /> 已托管  93人投稿  1天18小时后停止交稿</p>
                        <a href="#" class="ljcy_btn">立即参与</a>
                      </li>
                      <li>
                        <h2><b class="">￥500.00</b> 餐饮门头招牌设计只差一个好...  </h2>
                        <p><img src="<%=basePath%>/static/images/icon_tg.png" /> 已托管  93人投稿  1天18小时后停止交稿</p>
                        <a href="#" class="ljcy_btn">立即参与</a>
                      </li>
                      <li>
                        <h2><b class="">￥500.00</b> 餐饮门头招牌设计只差一个好...  </h2>
                        <p><img src="<%=basePath%>/static/images/icon_tg.png" /> 已托管  93人投稿  1天18小时后停止交稿</p>
                        <a href="#" class="ljcy_btn">立即参与</a>
                      </li>
                      <li>
                        <h2><b class="">￥500.00</b> 餐饮门头招牌设计只差一个好...  </h2>
                        <p><img src="<%=basePath%>/static/images/icon_tg.png" /> 已托管  93人投稿  1天18小时后停止交稿</p>
                        <a href="#" class="ljcy_btn">立即参与</a>
                      </li>
                      <li>
                        <h2><b class="">￥500.00</b> 餐饮门头招牌设计只差一个好...  </h2>
                        <p><img src="<%=basePath%>/static/images/icon_tg.png" /> 已托管  93人投稿  1天18小时后停止交稿</p>
                        <a href="#" class="ljcy_btn">立即参与</a>
                      </li>
                      <li>
                        <h2><b class="">￥500.00</b> 餐饮门头招牌设计只差一个好...  </h2>
                        <p><img src="<%=basePath%>/static/images/icon_tg.png" /> 已托管  93人投稿  1天18小时后停止交稿</p>
                        <a href="#" class="ljcy_btn">立即参与</a>
                      </li>
                      
                      <div class="clear"></div>
                      
                  </ul>
               </div>
              
         
              </ul>
               
               
          </div>
          
<script type="text/javascript">
jQuery(".task_con").slide({titCell:".task_nav li",mainCell:".task_box", trigger:"click"})
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
 </script>

          
          
          
          
           <!-- 优秀投稿会员 -->
          <div class="help_txt">
            <h2><a href="javascript:">优秀投稿会员</a></h2>
            <a href="javascript:" class="zcf_btn">现在注册成为供稿者 ></a>
          </div>
          
          <div class="tg_condf">
              <div class="hd">
				<a class="next"></a>
				<a class="prev"></a>
			 </div>
             
             <div class="tg_listd bd">
                 <ul>
                     <li>
                     <a href="homepage.jsp">
                        <img src="<%=basePath%>/static/images/head_img2.png" />
                        <h2>不忘初心</h2>
                        <p>中标：24  </p>
                        <p>收入：<span class="col_f00">￥2000</span></p> 
                     </a>
                     </li>
                     <li>
                     <a href="homepage.jsp">
                        <img src="<%=basePath%>/static/images/sytk_pic1.png" />
                        <h2>不忘初心</h2>
                        <p>中标：24  </p>
                        <p>收入：<span class="col_f00">￥2000</span></p> 
                     </a>
                     </li>
                     <li>
                     <a href="homepage.jsp">
                        <img src="<%=basePath%>/static/images/sytk_pic2.png" />
                        <h2>不忘初心</h2>
                        <p>中标：24  </p>
                        <p>收入：<span class="col_f00">￥2000</span></p> 
                     </a>
                     </li>
                     <li>
                     <a href="homepage.jsp">
                        <img src="<%=basePath%>/static/images/sytk_pic3.png" />
                        <h2>不忘初心</h2>
                        <p>中标：24  </p>
                        <p>收入：<span class="col_f00">￥2000</span></p> 
                     </a>
                     </li>
                     <li>
                     <a href="homepage.jsp">
                        <img src="<%=basePath%>/static/images/sytk_pic4.png" />
                        <h2>不忘初心</h2>
                        <p>中标：24  </p>
                        <p>收入：<span class="col_f00">￥2000</span></p> 
                     </a>
                     </li>
                     <li>
                     <a href="homepage.jsp">
                        <img src="<%=basePath%>/static/images/sytk_pic5.png" />
                        <h2>不忘初心</h2>
                        <p>中标：24  </p>
                        <p>收入：<span class="col_f00">￥2000</span></p> 
                     </a>
                     </li>
                     <li>
                     <a href="homepage.jsp">
                        <img src="<%=basePath%>/static/images/sytk_pic6.png" />
                        <h2>不忘初心</h2>
                        <p>中标：24  </p>
                        <p>收入：<span class="col_f00">￥2000</span></p> 
                     </a>
                     </li>
                     <li>
                     <a href="homepage.jsp">
                        <img src="<%=basePath%>/static/images/sytk_pic7.png" />
                        <h2>不忘初心</h2>
                        <p>中标：24  </p>
                        <p>收入：<span class="col_f00">￥2000</span></p> 
                     </a>
                     </li>
                 </ul>
            </div>
          
          </div>
           
            <script type="text/javascript">
		jQuery(".tg_condf").slide({titCell:".hd ul",mainCell:".bd ul",autoPage:true,effect:"left",autoPlay:true,vis:5,trigger:"click"});
		</script>
        
        
         <!-- 优质成功案例 -->
          <div class="help_txt">
            <h2><a href="javascript:">优质成功案例</a></h2>
            <a href="javascript:" class="zcf_btn">现在去发布任务吧 ></a>
          </div>
          
          <div class="cases_con">
               <div class="hd">
				<a class="next"></a>
				<a class="prev"></a>
			 </div>
          
             <div class="bd">
                <ul> 
                    <li>
                     <a href="javascript:"><img src="<%=basePath%>/static/images/hlxa_pic1.png" /></a>
                     <h2>检察院党员活动室设计</h2>
                       <p>赏金：<span class="col_f00">￥2000.00</span></p>
                        <p>交易成功</p>
                    </li>
                    <li>
                     <a href="javascript:"><img src="<%=basePath%>/static/images/hlxa_pic2.png" /></a>
                     <h2>检察院党员活动室设计</h2>
                       <p>赏金：<span class="col_f00">￥2000.00</span></p>
                        <p>交易成功</p>
                    </li>
                    <li>
                     <a href="javascript:"><img src="<%=basePath%>/static/images/hlxa_pic3.png" /></a>
                     <h2>检察院党员活动室设计</h2>
                       <p>赏金：<span class="col_f00">￥2000.00</span></p>
                        <p>交易成功</p>
                    </li>
                    <li>
                     <a href="javascript:"><img src="<%=basePath%>/static/images/hlxa_pic4.png" /></a>
                     <h2>检察院党员活动室设计</h2>
                       <p>赏金：<span class="col_f00">￥2000.00</span></p>
                        <p>交易成功</p>
                    </li>
                    <li>
                     <a href="javascript:"><img src="<%=basePath%>/static/images/hlxa_pic5.png" /></a>
                     <h2>检察院党员活动室设计</h2>
                       <p>赏金：<span class="col_f00">￥2000.00</span></p>
                        <p>交易成功</p>
                    </li>
                    <li>
                     <a href="javascript:"><img src="<%=basePath%>/static/images/hlxa_pic6.png" /></a>
                     <h2>检察院党员活动室设计</h2>
                       <p>赏金：<span class="col_f00">￥2000.00</span></p>
                        <p>交易成功</p>
                    </li>
                </ul>
             </div>
          </div>
          <script type="text/javascript">
		jQuery(".cases_con").slide({titCell:".hd ul",mainCell:".bd ul",autoPage:true,effect:"left",autoPlay:true,vis:4,trigger:"click"});
		</script>
        
   
   
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
