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
<!--校验-->
<script type="text/javascript" src="<%=basePath%>/static/js/jquery.validate.js"></script>
<script type="text/javascript" src="<%=basePath%>/static/js/jquery.validate.min.js"></script>
<!--消息提醒-->
<script type="text/javascript" src="<%=basePath%>/static/js/showinfo.js"></script>
    <script type="text/javascript" src="<%=basePath%>/static/js/jquery.noty.packaged.js"></script>
    <script type="text/javascript" src="<%=basePath%>/static/js/jquery.noty.packaged.min.js"></script>
</head>
<body>
   <header>
     <div class="top">    
      <div class="top_wid logo_con">
         <a href="<%=basePath%>/signin/index.do" class="fl"><img src="<%=basePath%>/static/images/logo.png" height="62" width="217" /></a>
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
                          <p class="fl"><input id="checkboxId" name="bb" type="checkbox" class="fx_wid" value="" checked>记住账户</p>
                          <a href="#" class=" col_blue fr">忘记密码? </a>
                          <div class="clear"></div>
                          <input type="submit" value="立即登录" class="login_btn" />
                      </ul>
                   </div>
                   </form>
               </ul>
           </div><!-- wid470px -->
            <p class="login_lj">还没有账号，<a href="#" onclick="toRegister()">立即注册</a></p>
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
        $("#account").focus();
        //记住账户
        if (!localStorage.enable) {
            document.getElementById("checkboxId").checked = false;
        }else {
            document.getElementById("checkboxId").checked = true;
        }

        var account = document.getElementById("account");
        if (localStorage.account) {
            account.value = localStorage.account;
        }
    });
    //普通注册提交
    function loginSubmit(){
        //           记住账户
        var account = document.getElementById("account");
        if (document.getElementById("checkboxId").checked) {
            localStorage.enable = true;
            localStorage.account = account.value;
        } else {
            localStorage.enable = "";
            localStorage.account = "";
        }
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
                    errorInfo("账号或密码错误");
                    $(".noty_text").css("color","red");
                    $(".noty_text").css("font-size","17");
                }
            }
        })
    }
    //跳转到注册页面
    function toRegister(){
        document.location.href = '<%=basePath%>/signin/register.do';
    }
    //跳转到首页
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
              <dd><a href="<%=basePath%>/helpd/toHelpd.do">注册/登录</a></dd>
              <dd><a href="<%=basePath%>/helpd/toHelpd.do">认证/签约</a></dd>
              <dd><a href="<%=basePath%>/helpd/toHelpd.do">条款协议</a></dd>
              <dd><a href="<%=basePath%>/helpd/toHelpd.do">版权声明</a></dd>
          </dl>
          <dl>
              <dt>关于婚秀中国</dt>
              <dd><a href="<%=basePath%>/helpd/toHelpd.do">婚秀中国简介</a></dd>
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
