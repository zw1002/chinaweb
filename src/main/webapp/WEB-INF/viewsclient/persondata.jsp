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
	<link href="<%=basePath%>/static/css/layui.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="<%=basePath%>/static/js/laydate.js"></script>
	<script src="<%=basePath%>/static/layui/layui.js"></script>
	<script src="<%=basePath%>/static/layui/lay/modules/form.js"></script>
	<script src="<%=basePath%>/static/js/laypage.js"></script>
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
		$(document).ready(function () {

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
						<li><a class="mem_icon9 active" href="<%=basePath%>/persondata/toPersonData.do">个人资料</a></li>
					</ul>
				</div>
			</div><!-- wid260px -->
			<div class="wid925px fr">
				<div class="tran_con">
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
							<form class="layui-form" action="">
								<div class="layui-form-item touxiang">
									<div class="layui-input-block">
										<img src="<%=basePath%>/static/images//pbl_1.png">

									</div>
									<div class="layui-input-block" style="margin-top: 180px;margin-left: 18px;">
										<button class="layui-btn layui-btn-normal layui-btn-radius bangding">修改头像</button>
									</div>
								</div>
								<div class="layui-form-item">

									<label class="layui-form-label"><span style="color: #C9302C;">*</span>昵称</label>
									<div class="layui-input-block">
										<input type="text" name="title" lay-verify="title" autocomplete="off" placeholder="双眼皮小怪兽" class="layui-input jinzhi" disabled="disabled">
									</div>

								</div>
								<div class="layui-form-item">
									<label class="layui-form-label"><span style="color: #C9302C;">*</span>Email</label>
									<div class="layui-input-block">
										<input type="text" name="title" lay-verify="title" autocomplete="off" placeholder="123******@qq.com" class="layui-input jinzhi" disabled="disabled">
									</div>
								</div>
								<div class="layui-form-item">
									<label class="layui-form-label"><span style="color: #C9302C;">*</span>QQ</label>
									<div class="layui-input-block">
										<input type="text" name="title" lay-verify="title" autocomplete="off" placeholder="123******" class="layui-input jinzhi" disabled="disabled">
									</div>
								</div>
								<div class="layui-form-item">
									<label class="layui-form-label"><span style="color: #C9302C;">*</span>Msn</label>
									<div class="layui-input-block">
										<input type="text" name="title" lay-verify="title" autocomplete="off" placeholder="123******" class="layui-input jinzhi" disabled="disabled">
									</div>
								</div>
								<div class="layui-form-item">
									<label class="layui-form-label">手机</label>
									<div class="layui-input-block">
										<button class="layui-btn layui-btn-normal layui-btn-radius bangding">绑定手机</button>
									</div>
								</div>
								<div class="layui-form-item">
									<label class="layui-form-label">电话</label>
									<div class="layui-input-block">
										<input type="text" name="title" lay-verify="title" autocomplete="off" class="layui-input dianhua" placeholder="请按照*区号*固定电话*格式填写">
									</div>
								</div>

								<div class="layui-form-item">
									<label class="layui-form-label"><span style="color: #C9302C;">*</span>身份</label>
									<div class="layui-input-block">
										<input type="checkbox" name="like1[write]" lay-skin="primary" title="摄影师" checked="">
										<input type="checkbox" name="like1[read]" lay-skin="primary" title="设计师">
										<input type="checkbox" name="like1[game]" lay-skin="primary" title="图片爱好者">
									</div>
								</div>
								<div class="layui-form-item">
									<label class="layui-form-label"><span style="color: #C9302C;">*</span>技能标签</label>
									<div class="layui-input-block">
										<button class="layui-btn layui-btn-primary layui-btn-radius" disabled="disabled">图片爱好者</button>
									</div>
								</div>

								<div class="layui-form-item">
									<label class="layui-form-label">所在地</label>
									<div class="layui-input-block">
										<div class="layui-input-inline">
											<select name="quiz1">
												<option value="">请选择省</option>
												<option value="浙江" selected="">浙江省</option>
												<option value="你的工号">江西省</option>
												<option value="你最喜欢的老师">福建省</option>
											</select>
										</div>
										<input type="text" name="title" lay-verify="title" autocomplete="off" class="layui-input" placeholder="请输入详细住址" style="width:324px;float: left; position: initial;">
									</div>

								</div>
							</form>
							<div class="anniu">
								<button class="layui-btn layui-btn-warm baocun">保存</button>
							</div>
						</ul>
						<!--账户资料-->
						<ul>
							122333
						</ul>
						<!--认证信息-->
						<ul>
							<form class="layui-form" action="">
								<div class="layui-form-item">
									<label class="layui-form-label" style="width: 130px;">帐号类型&nbsp;:&nbsp;</label>
									<span style="position: absolute;margin-top: 8px;">个人用户</span>
									<button class="layui-btn layui-btn-primary" style="float: right;"><i class="layui-icon"></i>切换认证方式</button>
								</div>
								<div class="layui-form-item">
									<label class="layui-form-label"  style="width: 130px;">真实姓名&nbsp;:&nbsp;</label>
									<div class="layui-input-block">
										<input type="text" name="title" lay-verify="title" autocomplete="off" class="layui-input dianhua" placeholder="请输入您的姓名">
									</div>
								</div>
								<div class="layui-form-item">
									<label class="layui-form-label"  style="width: 130px;">身份证号&nbsp;:&nbsp;</label>
									<div class="layui-input-block">
										<input type="text" name="title" lay-verify="title" autocomplete="off" class="layui-input dianhua" placeholder="请输入您的身份证号">
									</div>
								</div>
								<div class="layui-form-item">
									<label class="layui-form-label"  style="width: 130px;">性别&nbsp;:&nbsp;</label>
									<div class="layui-input-block">
										<input type="radio" name="sex" value="男" title="男" checked="">
										<input type="radio" name="sex" value="女" title="女">
									</div>
								</div>
								<div class="layui-form-item">
									<label class="layui-form-label"  style="width: 130px;">手持身份证正面照&nbsp;:&nbsp;</label>
									<div class="layui-input-block">
										<div class="layui-upload-drag" id="test10" style="float: left;">
											<i class="layui-icon" style="color: #5FB878;"></i>
											<p>点击上传，或将文件拖拽到此处</p>
										</div>
										<div class="layui-input-block shili">
											<img  src="<%=basePath%>/static/images//pbl_1.png">
											<p style="text-align: center;">示例</p>
										</div>
										<div class="layui-input-block shili1">
											<p>1.请上传本人手持身份证反面上半身免冠照片;</p>
											<p>2.证件信息清晰可见,且不能被遮挡;</p>
											<p>3.仅支持JPG格式,图片大小不能超过5M;</p>
											<p style="color: #EEA236;">详细>></p>
										</div>
									</div>
								</div>
								<div class="layui-form-item">
									<label class="layui-form-label"  style="width: 130px;">身份证到期时间&nbsp;:&nbsp;</label>
									<div class="layui-input-block">
										<input type="text" name="title" lay-verify="title" autocomplete="off" class="layui-input dianhua" placeholder="请输入您的身份证号">
									</div>
								</div>
								<div class="layui-form-item">
									<label class="layui-form-label"  style="width: 130px;"></label>

									<div class="layui-input-block">
										<input type="checkbox" name="like1[write]" lay-skin="primary" title="《婚秀协议》《婚秀协议》《婚秀协议》《婚秀协议》《婚秀协议》" checked="">
									</div>
								</div>
								<div class="anniu">
									<button class="layui-btn layui-btn-warm baocun">保存</button>
								</div>
							</form>
						</ul>
					</div>
				</div>
				<script type="text/javascript">
					jQuery(".tran_con").slide({titCell:".jy_nav li",mainCell:".jy_tab_con", trigger:"click"})
				</script>
				<script>


				</script>
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
