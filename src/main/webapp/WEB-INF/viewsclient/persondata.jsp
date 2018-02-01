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
	<link href="<%=basePath%>/static/css/layui.css" rel="stylesheet" type="text/css" />
	<script src="<%=basePath%>/static/layui/layui.js"></script>
	<script type="text/javascript" src="<%=basePath%>/static/js/jquery1.42.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>/static/js/jquery.SuperSlide.2.1.1.js"></script>
	<style>
		.layui-input {
			width: 100%;
		}
		.bangding {
			background-color: #5FB878;
		}
		.baocun {
			background-color: #E94653;
		}
		.jinzhi,
		.dianhua {
			width: 525px;
		}

		.layui-input-block {
			margin-left: 0;
			min-height: 0;
		}
		.touxiang {
			float: right;
			margin-right: 150px;
		}
		.touxiang img {
			width: 120px;
			border: 1px solid #a5a5a5;
		}
		.touxiang .layui-input-block {
			float: right;
			position: absolute;
			margin-top: 25px;
		}

		.layui-form-item {
			margin-bottom: 25px;
		}

		.shili {
			position: inherit;
			float: left;
			margin-left: 20px;
		}
		.shili1 {
			position: inherit;
			float: left;
			margin-left: 20px;
		}
		.shili img{
			width: 120px;
		}
		.shili1 p{
			padding: 5px 0;
		}
	</style>
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
		});
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
		//开店
		function applyShop(){
			document.location.href = '<%=basePath%>/applyshop/toApplyShop.do';
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
								<td width="50%"> <a href="#" onclick="applyShop()">成为卖家</a></td>
							</tr>
						</table>
					</div>
				</div><!-- grzl_box -->
				<div class="mem_nav">
					<h2>个人中心</h2>
					<ul>
						<li><a class="mem_icon1" href="#" onclick="toUpload()">上传作品</a></li>
						<li><a class="mem_icon9" href="#" onclick="personWorks()">我的作品</a></li>
						<li><a class="mem_icon2" href="#" onclick="toCollection()">收藏</a></li>
						<li><a class="mem_icon4" href="#" onclick="toTransaction()">交易</a></li>
						<li><a class="mem_icon7" href="#" onclick="toWithdrawals()">提现</a></li>
						<li><a class="mem_icon9 active" href="javascript:;">个人资料</a></li>
					</ul>
				</div>
			</div><!-- wid260px -->
			<div class="wid925px fr">

				<div class="tran_con" style="margin-top: 0px;">
					<div class="jy_nav">
						<ul class=" clearfix">
							<li>基本资料</li>
							<li>账户资料</li>
							<li>认证信息</li>
							<li>密码修改</li>
							<li>登陆日志</li>
						</ul>
					</div>
					<div class="jy_tab_con">
						<!--基本资料-->
						<ul>
							<form class="layui-form" action="" >
								<div class="layui-form-item touxiang">
									<div class="layui-input-block">
										<img id="img_logo" src="<%=basePath%>${userinfo.getUsrpicurl()}"/>
									</div>
									<div class="layui-input-block" style="margin-top: 180px;margin-left: 18px;">
										<button class="layui-btn layui-btn-normal layui-btn-radius bangding layui-upload-button">修改头像</button>
									</div>
								</div>
								<div class="layui-form-item">
									<label class="layui-form-label"><span style="color: #C9302C;">*</span>昵称</label>
									<div class="layui-input-block">
										<input type="text" name="txt_nc" id="txt_nc" lay-verify="title" autocomplete="off" placeholder="双眼皮小怪兽" class="layui-input jinzhi" disabled="disabled">
									</div>

								</div>
								<div class="layui-form-item">
									<label class="layui-form-label"><span style="color: #C9302C;">*</span>Email</label>
									<div class="layui-input-block">
										<input type="text" name="txt_email" id="txt_email" lay-verify="title" autocomplete="off" value="123*****@qq.com" placeholder="123@qq.com" class="layui-input jinzhi" disabled="disabled">
									</div>
								</div>
								<div class="layui-form-item">
									<label class="layui-form-label"><span style="color: #C9302C;">*</span>QQ</label>
									<div class="layui-input-block">
										<input type="text" name="txt_qq" id="txt_qq" lay-verify="title|number" autocomplete=" off"value="123" placeholder="123" class="layui-input jinzhi" disabled="disabled">
									</div>
								</div>
								<div class="layui-form-item">
									<label class="layui-form-label"><span style="color: #C9302C;">*</span>Msn</label>
									<div class="layui-input-block">
										<input type="text" name="txt_msn" id="txt_msn" lay-verify="title" autocomplete="off" placeholder="123******" class="layui-input jinzhi" disabled="disabled">
									</div>
								</div>
								<%--<div class="layui-form-item">--%>
									<%--<label class="layui-form-label">手机</label>--%>
									<%--<div class="layui-input-block">--%>
										<%--<button class="layui-btn layui-btn-normal layui-btn-radius bangding">绑定手机</button>--%>
									<%--</div>--%>
								<%--</div>--%>
								<div class="layui-form-item">
									<label class="layui-form-label">电话</label>
									<div class="layui-input-block">
										<input type="text" name="txt_phone" id="txt_phone"  autocomplete="off" class="layui-input dianhua" placeholder="请按照*区号*固定电话*格式填写">
									</div>
								</div>

								<div class="layui-form-item">
									<%--<label class="layui-form-label"><span style="color: #C9302C;">*</span>身份</label>--%>
									<%--<div class="layui-input-block">--%>
										<%--<input type="checkbox" name="like1[write]" lay-skin="primary" title="摄影师" checked="">--%>
										<%--<input type="checkbox" name="like1[read]" lay-skin="primary" title="设计师">--%>
										<%--<input type="checkbox" name="like1[game]" lay-skin="primary" title="图片爱好者">--%>
									<%--</div>--%>
										<label class="layui-form-label"><span style="color: #C9302C;">*</span>身份</label>
										<div class="layui-input-block">
											<input type="checkbox" name="like[write]" title="摄影师" checked="">
											<input type="checkbox" name="like[read]" title="设计师" >
											<input type="checkbox" name="like[game]" title="图片爱好者">
										</div>
								</div>
								<div class="layui-form-item">
									<label class="layui-form-label"><span style="color: #C9302C;">*</span>技能标签</label>
									<div class="layui-input-block">
										<button class="layui-btn layui-btn-primary layui-btn-radius" disabled="disabled">图片爱好者</button>
										<button class="layui-btn layui-btn-primary layui-btn-radius" disabled="disabled">摄影爱好者</button>
										<button class="layui-btn layui-btn-primary layui-btn-radius" disabled="disabled">其他</button>
									</div>
								</div>

								<div class="layui-form-item">
									<label class="layui-form-label">所在地</label>
									<div class="layui-input-block">
										<%--<div class="layui-input-inline">--%>
											<%--<select name="quiz1">--%>
												<%--<option value="">请选择省</option>--%>
												<%--<option value="浙江" selected="">浙江省</option>--%>
												<%--<option value="你的工号">江西省</option>--%>
												<%--<option value="你最喜欢的老师">福建省</option>--%>
											<%--</select>--%>
										<%--</div>--%>
										<input type="text" name="txt_address" id="txt_address"  autocomplete="off" class="layui-input" placeholder="请输入详细住址" style="width:324px;float: left; position: initial;">
									</div>

								</div>
								<div class="anniu" style="text-align: center;">
									<button lay-submit="" lay-filter="baseinfo"  class="layui-btn layui-btn-warm baocun">保存</button>
								</div>
							</form>
						</ul>
						<!--账户资料-->
						<ul>
							<form class="layui-form" action="">
								<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
									<legend>已绑定信息</legend>
								</fieldset>
								<div id="div_bdinfo" style="display: inline-block;line-height: 36px;margin-left: 160px;">
									<p>手机号：138****0000</p>
									<p>电子邮箱：abc****@163.com</p>
									<p>微博账号：abc****@sina.cn</p>
								</div>
								<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
									<legend>未绑定信息</legend>
								</fieldset>
								<div class="layui-form-item" id="div_phone">
									<div class="layui-inline">
										<label class="layui-form-label"  style="width: 130px;">手机号&nbsp;:&nbsp;</label>
										<div class="layui-input-inline">
											<input type="text" name="bd_phone" id="bd_phone" lay-verify="title" autocomplete="off" class="layui-input"  placeholder="请输入手机号">
										</div>
									</div>
									<div class="layui-inline" style="margin-left: -20px;">
											<button id="btn_sendsms" class="layui-btn layui-btn-sm">发送短信</button>
									</div><div class="layui-inline">
										<div class="layui-input-inline">
											<input type="text" name="bd_vercode" id="bd_vercode" lay-verify="title" autocomplete="off" class="layui-input" placeholder="请输入收到验证码">
										</div>
									</div>
								</div>
								<div class="layui-form-item" id="div_bank">
									<label class="layui-form-label"  style="width: 130px;">银行卡号&nbsp;:&nbsp;</label>
									<div class="layui-input-block">
										<input type="text" name="bd_bank" id="bd_bank" lay-verify="title" autocomplete="off" class="layui-input dianhua" placeholder="请输入银行卡号">
									</div>
									</br>
									<label class="layui-form-label" style="width: 130px;">开户行地址&nbsp;:&nbsp;</label>
									<div class="layui-input-block">
										<input type="text" name="bd_address" id="bd_address" lay-verify="title" autocomplete="off" class="layui-input dianhua" placeholder="请输入开户行地址">
									</div>
								</div>
								<div class="anniu">
									<button  lay-submit="" lay-filter="bindinfo" class="layui-btn layui-btn-warm baocun">保存</button>
								</div>
							</form>
						</ul>
						<!--认证信息-->
						<ul>
							<form class="layui-form" action="">
								<div class="layui-form-item">
									<label class="layui-form-label" style="width: 130px;">帐号类型&nbsp;:&nbsp;</label>
									<span style="position: absolute;margin-top: 8px;">个人用户</span>
									<%--<button class="layui-btn layui-btn-primary" style="float: right;"><i class="layui-icon"></i>切换认证方式</button>--%>
								</div>
								<div class="layui-form-item">
									<label class="layui-form-label" style="width: 130px;">真实姓名&nbsp;:&nbsp;</label>
									<div class="layui-input-block">
										<input type="text" name="zsname" id="zsname" lay-verify="required" autocomplete="off" class="layui-input dianhua" placeholder="请输入您的姓名">
									</div>
								</div>
								<div class="layui-form-item">
									<label class="layui-form-label" style="width: 130px;">身份证号&nbsp;:&nbsp;</label>
									<div class="layui-input-block">
										<input type="text" name="sfzcode" id="sfzcode" lay-verify="required|identity" autocomplete="off" class="layui-input dianhua" placeholder="请输入您的身份证号">
									</div>
								</div>
								<div class="layui-form-item">
									<label class="layui-form-label" style="width: 130px;">性别&nbsp;:&nbsp;</label>
									<div class="layui-input-block">
										<input type="radio" name="sex" value="男" title="男" checked="">
										<input type="radio" name="sex" value="女" title="女">
									</div>
								</div>
								<div class="layui-form-item">
									<label class="layui-form-label" style="width: 130px;">手持身份证正面照&nbsp;:&nbsp;</label>
									<div class="layui-input-block">
										<%--<div class="layui-upload-drag" id="upFile" style="float: left;">--%>
											<%--<i class="layui-icon" style="color: #5FB878;"></i>--%>
											<%--<p>点击上传，或将文件拖拽到此处</p>--%>
										<%--</div>--%>
											<div class="layui-upload" style="float: left;" id="rzFile">
												<button type="button" class="layui-btn" id="upFile">上传图片</button>
												<div class="layui-upload-list">
													<img class="layui-upload-img" src="" id="upImgUrl" >
													<p id="upImgName"></p>
												</div>
											</div>
											<div class="layui-input-block shili">
											<img src="<%=basePath%>/static/images/sfzdemo.png">
											<p style="text-align: center;">示例</p>
										</div>
										<div class="layui-input-block shili1">
											<p>1.请上传本人手持身份证正面上半身免冠照片;</p>
											<p>2.证件信息清晰可见,且不能被遮挡;</p>
											<%--<p>3.仅支持JPG格式,图片大小不能超过5M;</p>--%>
											<%--<p style="color: #EEA236;">详细>></p>--%>
										</div>
									</div>
								</div>
								<div class="layui-form-item">
									<label class="layui-form-label" style="width: 130px;">身份证到期时间&nbsp;:&nbsp;</label>
									<div class="layui-input-block">
										<input type="text" name="sfzdate" id="sfzdate" lay-verify="required|date" autocomplete="off" class="layui-input dianhua" placeholder="请输入身份证有效日期 如：2018-01-22">
									</div>
								</div>
								<div class="layui-form-item">
									<label class="layui-form-label" style="width: 130px;"></label>

									<div class="layui-input-block">
										<input type="checkbox" id="okXy" title="《婚秀协议》《婚秀协议》" checked="">
									</div>
								</div>
								<div class="anniu">
									<button  lay-submit="" lay-filter="rzinfo" class="layui-btn layui-btn-warm baocun">保存</button>
								</div>
							</form>
						</ul>
						<!--密码修改-->
						<ul>
							<form class="layui-form" action="">
							<div class="layui-form-item">
								<label class="layui-form-label" style="width: 130px;">当前密码&nbsp;:&nbsp;</label>
								<div class="layui-input-block">
									<input type="password" name="oldPw" id="oldPw" lay-verify="required" autocomplete="off" class="layui-input dianhua" placeholder="请输入当前使用的密码">
								</div>
							</div>
							<div class="layui-form-item">
								<label class="layui-form-label" style="width: 130px;">新密码&nbsp;:&nbsp;</label>
								<div class="layui-input-block">
									<input type="password" name="newPw" id="newPw" lay-verify="required" autocomplete="off" class="layui-input dianhua" placeholder="6-20个字符，注意区分大小写">
								</div>
							</div>
							<div class="layui-form-item">
								<label class="layui-form-label" style="width: 130px;">确认新密码&nbsp;:&nbsp;</label>
								<div class="layui-input-block">
									<input type="password" name="okPw" id="okPw" lay-verify="required" autocomplete="off" class="layui-input dianhua" placeholder="同前一密码保持一致">
								</div>
							</div>
							<div class="anniu">
								<button  lay-submit="" lay-filter="pwinfo" class="layui-btn layui-btn-warm baocun">保存</button>
							</div>
							</form>
						</ul>
						<!--登录日志-->
						<ul>
							<form class="layui-form" action="">
								<div class="layui-form-item">

									<div class="layui-input-block">
										<div class="layui-input-inline">
											<select id="sel_LogType">
												<option value="1" selected="">会员登录</option>
												<option value="2">绑定修改</option>
												<option value="3">密码修改</option>
											</select>
										</div>
										<div class="layui-inline">
											<label class="layui-form-label">选择日期</label>
											<div class="layui-input-inline" style="width: 175px;">
												<input type="text" name="date1" id="date1" lay-verify="date" placeholder="yyyy-MM-dd" autocomplete="off" class="layui-input">
											</div>

											<div class="layui-input-inline" style="width: 180px;">
												<!--<span>至</span>-->
												<input type="text" name="date2" id="date2" lay-verify="date" placeholder="yyyy-MM-dd" autocomplete="off" class="layui-input">
											</div>
											<div class="layui-input-inline" style="width: 175px;">
												<button id="btn_log" class="layui-btn layui-btn-normal layui-btn-radius bangding">查询</button>
											</div>
										</div>
										<div class="layui-form">
											<table class="layui-table" id="log-table" layui-filter="log-table"></table>
										</div>

									</div>

								</div>
							</form>
						</ul>
					</div>

					<script type="text/javascript">
                        jQuery(".tran_con").slide({
                            titCell: ".jy_nav li",
                            mainCell: ".jy_tab_con",
                            trigger: "click"
                        })
					</script>
					<script>
                        layui.use(['laydate','laypage','form','table','layer','upload'], function() {
                            var laydate = layui.laydate,form = layui.form,upload = layui.upload;;
                            var layer = layui.layer;
                            var table = layui.table;

                            //执行一个laydate实例
                            laydate.render({
                                elem: '#date1' //指定元素
                            });
                            laydate.render({
                                elem: '#date2' //指定元素
                            });
                            form.on('submit(baseinfo)', function(data){
                                //alert(data.elem.attributes['lay-filter'].nodeValue);
//                                console.log(data.elem) //被执行事件的元素DOM对象，一般为button对象
//                                console.log(data.form) //被执行提交的form对象，一般在存在form标签时才会返回
//                                console.log(data.field) //当前容器的全部表单字段，名值对形式：{name: value}
								//persondata/userBaseInfo.do
                                $.ajax({
                                    url: "<%=basePath%>/persondata/userBaseInfo.do",
                                    type: "POST",
                                    async:false,
                                    data: {
                                        uid:"${userinfo.getUid()}",
                                        officephone:"",
                                        email:"",
                                        imglogo:"", //头像logo
                                        address:"", //地址
										usertype:'',//身份标签
										userlabel:''//标签
                                    },
                                    success: function (data) {
                                        if(data=='success'){layer.msg('信息绑定成功!', {icon: 6});}
                                        else layer.msg(data+'!', {icon: 5});}
                                });
                                return false; //阻止表单跳转。如果需要表单跳转，去掉这段即可。
                            });
                            form.on('submit(rzinfo)', function(data){
                                //alert(data.elem.attributes['lay-filter'].nodeValue);
                                rzInfo(data);
                                return false;
                            });
                            form.on('submit(pwinfo)', function(data){
                                //alert(data.elem.attributes['lay-filter'].nodeValue);
                                restPw(data);
                                return false;
                            });
                            form.on('submit(bindinfo)', function(data){
                                //alert(data.elem.attributes['lay-filter'].nodeValue);
                                bindInfo(data);
                                return false;
                            });
                            //手机短信验证
                            $('#btn_sendsms').click(function () {
                                layer.msg("短信已发送，注意查收!");
                                $('#btn_sendsms').addClass("layui-btn-disabled");
                                var m=120;
                                var showTimeInterval = window.setInterval(function(){
                                    if(m==0){
                                        $('#btn_sendsms').removeClass("layui-btn-disabled");
                                        window.clearInterval(showTimeInterval);
                                        $('#btn_sendsms').text("发送短信");
									}
									else
                                    	$('#btn_sendsms').text("已发送("+m+"秒)");
                                    m--;
                                },1000);

                                return false;
                            })
                            //绑定信息提交
                            function bindInfo (data) {

                                $.ajax({
                                    url: "<%=basePath%>/persondata/userInfoBind.do",
                                    type: "POST",
                                    async:false,
                                    data: {
                                        uid:"${userinfo.getUid()}",
                                        phone:"",phoneCode:"",
                                        email:"",
										weibo:"",
										bankcode:"",
										bankaddr:""
                                    },
                                    success: function (data) {
                                        if(data=='success'){layer.msg('信息绑定成功!', {icon: 6});}
                                        else layer.msg(data+'!', {icon: 5});}
                                });
                                return false;
                            }
                            var upFileUrl="";
                            upload.render({
                                elem: '#upFile'
                                ,url: "<%=basePath%>/persondata/userSfzUp.do"
                                //,auto:false,bindAction:'#btn_rzinfo'
								,data:{upFile:'first'}
								,before: function(obj){
                                    //预读本地文件示例，不支持ie8
                                    obj.preview(function(index, file, result){
                                        $('#upImgUrl').attr('src', result); //图片链接（base64）
                                        $('#upImgUrl').attr('style', "width: 320px;height: 220px;"); //图片链接（base64）
										$('#upImgName').text(file.name);
                                    });
                                }
                                ,done: function(res){
                                    console.log(res)
                                    upFileUrl=res.data;
									alert(res.data);
                                }
                                ,error:function (obj) {
									upFileUrl="";
                                }
                            });
                            //认证信息保存
							function rzInfo (data) {
                                if(window.FormData) {
                                    //验证信息是否填写 真实姓名  身证号  身证有效日期 协议是否阅读
                                    if($('#zsname').val()==""){
                                        layer.msg("请输入真实姓名!",{icon: 5})
                                        return false;
                                    }
                                    if($('#sfzcode').val()==""){
                                        layer.msg("请输入有效身份证号!",{icon: 5})
                                        return false;
                                    }
                                    if($('#sfzdate').val()==""){
                                        layer.msg("请输入身份证有效日期!",{icon: 5})
                                        return false;
                                    }
									// 验证文件是否上传
									if(upFileUrl==""){//$('#rzFile .layui-upload-file')[0].files.length<=0
									    layer.msg("请选择上传的身份证正面照片!",{icon: 5})
									    return false;
									}
                                    var formData = new FormData();
                                    // 建立一个upload表单项，值为上传的文件
                                    formData.append('upload', upFileUrl);//$('#rzFile .layui-upload-file')[0].files[0]
                                    formData.append('zsname', $('#zsname').val());
                                    formData.append('sfzcode', $('#sfzcode').val());
                                    formData.append('sex',  $('#sex').val());
                                    formData.append('sfzdate',$('#sfzdate').val());
                                    formData.append('uid', "${userinfo.getUid()}");
                                    $.ajax({
                                        type: "POST",
                                        url: "<%=basePath%>/persondata/userSfzUp.do",
                                        data: formData,
                                        contentType: false,
                                        processData: false,
                                        success: function (data) {
                                            if(data =="success"){
                                                layer.msg("认证信息保存成功", {icon: 6});
                                            }else{
                                                layer.msg(data+"!", {icon: 5});
                                            }
                                        }
                                    });
                                }
                                else
                                    layer.msg("请更换浏览器，当前浏览器不支持文件上传!!");
								return false;
                            }
                            //密码重置
							function restPw(data) {
							    var oldpw = $('#oldPw').val();
                                var newpw = $('#newPw').val();
                                var okpw = $('#okPw').val();
								if(newpw.length<6){
                                    layer.msg('密码长度最少为6个字符', {icon: 5});
                                    return;
								}
                                if(newpw!=okpw){
                                    layer.msg('新密码两次输入不一致,请重新输入!', {icon: 5});
                                    return;
                                }
								$.ajax({
                                    url: "<%=basePath%>/persondata/restPassword.do",
                                        type: "POST",
                                        async:false,
                                        data: {
                                        	uid:"${userinfo.getUid()}",
                                            newPassword:newpw,
											oldPassword:oldpw
										},
                                    success: function (data) {
                                        if(data=='success'){
                                            layer.msg('密码重置成功!', {icon: 6});
										}
										else
                                            layer.msg(data+'!', {icon: 5});
                                    }
								});
								return false;
                            }
                            //日志查询
                            $('#btn_log').click(function () {

								logTable.reload({
									url:'<%=basePath%>/persondata/getUserOperatLog.do'
									,where:{
									    logType:$('#sel_LogType').val()
										,logStime:$('#date1').val()
										,logEtime:$('#date2').val()
									}
                                    ,page:{
                                    curr: 1 //重新从第 1 页开始
                                }
								});
								return false;
                            })
                           var logTable = table.render({
                                elem: '#log-table'
                                ,url:'<%=basePath%>/persondata/getUserOperatLog.do'
                                ,page: {
                                    layout: ['limit', 'count', 'prev', 'page', 'next', 'skip'] //自定义分页布局
                                    ,groups: 3 //只显示 1 个连续页码
                                    ,first: true //不显示首页
                                    ,last: true //不显示尾页
                                }
                                ,cols: [[
                                    {field:'id', width:150, title: '登录时间', sort: true}
                                    ,{field:'username', width:150, title: '登录IP'}
                                    ,{field:'sex', width:400, title: '消息内容',align:'center'}
                                ]]

                            });
                        });
					</script>

				</div>
				<!-- wid925px -->

				<div class="clear"></div>

			</div>
		</div><!-- memder_con -->
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
