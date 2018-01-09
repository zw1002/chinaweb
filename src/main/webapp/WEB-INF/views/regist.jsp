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

<script type="text/javascript" src="<%=basePath%>/static/js/jquery1.42.min.js"></script>
<script type="text/javascript" src="<%=basePath%>/static/js/jquery.SuperSlide.2.1.1.js"></script>

</head>

<body>
   <header>
     <div class="top">    
      <div class="top_wid logo_con">
         <a href="index.jsp" class="fl"><img src="<%=basePath%>/static/images/logo.png" height="62" width="217" /></a>
         
         <h2 class="titddd fl">新用户注册</h2>
        
          
      </div><!-- top_wid -->

      </div><!-- top -->
   </header>
   
   <div class="bg_f5 pad_topd"> 
     <div class="login_wid">
        
        <div class="wid470px">
           <div class="reg_nav">
              <ul class="">
                 <li class="on">普通注册</li>
                 <li>手机快速注册</li>
                 <div class="clear"></div>
              </ul>
           
           </div>
           
           <div class="regist_con">
           
               <ul>
                   <div class="login_box">
                      <ul>
                          <li style="height:24px; padding:0 15px;">
                           <table width="100%">
                              <tr>
                                 <td><input name="aa" type="radio" class="fx_wid" value="" checked>&nbsp; &nbsp;设计师 </td>
                                 <td><input name="aa" type="radio" class="fx_wid" value="">&nbsp; &nbsp;摄影师   </td>
                                 <td width="24%"><input name="aa" type="radio" class="fx_wid" value="">&nbsp; &nbsp;婚秀达人 </td>
                              </tr>
                           </table>                        
                          </li>
                          <li><div class="inp_bg"><input name="" type="text" placeholder="用户名"></div></li>
                          <li><div class="inp_bg"><input name=""  type="password" placeholder="密码"></div></li>
                          <li><div class="inp_bg"><input name="" type="password" placeholder="重复密码"></div></li>
                          <li><div class="inp_bg"><input name="" type="text" placeholder="邮箱"></div></li>
                          <li><div class="inp_bg"><input name="" type="text"  placeholder="QQ"></div></li>
                          <li><div class="inp_bg" style="width:55%;"><input name="" type="text" placeholder="手机验证码"></div>
                          <a href="javascript:" class="yzm_btn">获取验证码</a>
                          
                          </li>
                          <input name="bb" type="checkbox" class="fx_wid" value="" checked>阅读并同意《婚秀中国网服务协议》《委托代收付款协议》
                          <input type="submit" value="注册并登录" class="login_btn" />
                          
                         
                   
                      </ul>
                   </div>
           
               </ul>
               
               
               <ul>
                   <div class="login_box">
                      <ul>
                          <li style="height:24px; padding:0 15px;">
                           <table width="100%">
                              <tr>
                                 <td><input name="aa" type="radio" class="fx_wid" value="" checked>&nbsp; &nbsp;设计师 </td>
                                 <td><input name="aa" type="radio" class="fx_wid" value="">&nbsp; &nbsp;摄影师   </td>
                                 <td width="24%"><input name="aa" type="radio" class="fx_wid" value="">&nbsp; &nbsp;婚秀达人 </td>
                              </tr>
                           </table>      
                          </li>
                          <li><div class="inp_bg"><input name="" type="text" placeholder="手机号"></div></li>
          
                          <li><div class="inp_bg"><input name="" type="text" placeholder="昵称"></div></li>
                          <li><div class="inp_bg" style="width:55%;"><input name="" type="text" placeholder="图行验证码"></div>
                          <a href="javascript:" class="yzm_btn"><img src="<%=basePath%>/static/images/yzm_img.png" /></a>
                          <li><div class="inp_bg" style="width:55%;"><input name="" type="text" placeholder="手机验证码"></div>
                          <a href="javascript:" class="yzm_btn">获取验证码</a>
                          
                          </li>
                          <input name="bb" type="checkbox" class="fx_wid" value="" checked>阅读并同意《婚秀中国网服务协议》《委托代收付款协议》
                          <input type="submit" value="注册并登录" class="login_btn" />
                          
                         
                   
                      </ul>
                   </div>
           
               </ul>
               
               
               
           </div><!-- wid470px -->
           
           
            <p class="login_lj">已拥有账号？去<a href="login.jsp">登录</a></p>
                
                <div class="ffl_txt"><p>其他账户登录</p></div>
                
                <div class="other_img">
                   <ul >
                      <li><a href="javascript:"><img src="<%=basePath%>/static/images/share_icon1.png" /></a></li>
                      <li><a href="javascript:"><img src="<%=basePath%>/static/images/share_icon2.png" /></a></li>
                      <li><a href="javascript:"><img src="<%=basePath%>/static/images/share_icon3.png" /></a></li>
                      <div class="clear"></div>
                   </ul>
                </div>
           
        
        
        
        </div><!-- wid470px -->
        
        <script type="text/javascript">
jQuery(".wid470px").slide({titCell:".reg_nav li",mainCell:".regist_con", trigger:"click"})
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
