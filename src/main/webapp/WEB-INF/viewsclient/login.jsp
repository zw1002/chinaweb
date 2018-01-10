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
<!--校验-->
<script type="text/javascript" src="<%=basePath%>/static/js/jquery.validate.js"></script>
<script type="text/javascript" src="<%=basePath%>/static/js/jquery.validate.min.js"></script>
<!--消息提醒-->
<script type="text/javascript" src="<%=basePath%>/static/js/showinfo.js"></script>
</head>
<body>
   <header>
     <div class="top">    
      <div class="top_wid logo_con">
         <a href="index.jsp" class="fl"><img src="<%=basePath%>/static/images/logo.png" height="62" width="217" /></a>
         <h2 class="titddd fl">登录</h2>
      </div><!-- top_wid -->
      </div><!-- top -->
   </header>
   <div class="bg_f5 pad_topd">
     <div class="login_wid">
        <div class="wid470px">
           <div class="regist_con" style="border:none; padding-top:45px;">
               <ul>
                   <form id="userform" method="post" action="">
                   <div class="login_box">
                      <ul>
                          <li><div class="inp_bg"><input id="account" name="account" type="text" placeholder="账号"></div></li>
                          <li><div class="inp_bg"><input id="password" name="password"  type="password" placeholder="密码"></div></li>
                          <p class="fl"><input name="bb" type="checkbox" class="fx_wid" value="" checked>记住密码</p>
                          <a href="#" class=" col_blue fr">忘记密码? </a>
                          <div class="clear"></div>
                          <input type="submit" value="立即登录" class="login_btn" />
                      </ul>
                   </div>
                   </form>
               </ul>
           </div><!-- wid470px -->
            <p class="login_lj">还没有账号，<a href="regist.jsp">立即注册</a></p>
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
    jQuery(".wid470px").slide({titCell:".reg_nav li",mainCell:".regist_con", trigger:"click"});
    $(document).ready(function () {
        //校验
        var validate = $("#userform").validate({
            debug: true, //调试模式取消submit的默认提交功能
            //errorClass: "label.error", //默认为错误的样式类为：error
            focusInvalid: false, //当为false时，验证无效时，没有焦点响应
            onkeyup: false,
            submitHandler: function(){   //表单提交句柄,为一回调函数，带一个参数：form
                loginSubmit();
            },
            rules:{
                account:{
                    required:true
                },
                password:{
                    required:true
                }
            },
            messages:{
                account:{
                    required:"*不能为空"
                },
                password:{
                    required: "*不能为空"
                }
            }

        });
    });
    //普通注册提交
    function loginSubmit(){
        var account=$("#account").val();
        var password=$("#password").val();
        $.ajax({
            url:"<%=basePath%>/signin/loginSubmit.do",
            type:"POST",
            data:{
                account:account,
                password:password
            },
            success:function(data){
                var msg = eval("(" + data + ")");
                if (msg.state !== "false") {
                    toIndex();
                }else{
                    $("#account").val("");
                    $("#account").focus();
                    $("#password").val("");
                    errorInfo(msg.msg);
                }
            }
        })
    }
    //跳转到登录页面
    function toIndex(){
        document.location.href = '<%=basePath%>/signin/index.do';
    }
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
