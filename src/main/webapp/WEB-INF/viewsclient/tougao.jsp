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
		<link href="<%=basePath%>/static/css/laypage.css" rel="stylesheet" type="text/css" />
		<link href="<%=basePath%>/static/css/layui.css" rel="stylesheet" type="text/css" />
		<link rel="stylesheet" type="text/css" href="<%=basePath%>/static/css/style.css" />
		<link rel="stylesheet" type="text/css" href="<%=basePath%>/static/css/bootstrap.min.css" />
		<script type="text/javascript" src="<%=basePath%>/static/js/laydate.js"></script>
		<script src="<%=basePath%>/static/layui/layui.js"></script>
		<script src="<%=basePath%>/static/layui/lay/modules/form.js"></script>
		<script src="<%=basePath%>/static/js/laypage.js"></script>
		<script type="text/javascript" src="<%=basePath%>/static/js/jquery1.42.min.js"></script>
		<script type="text/javascript" src="<%=basePath%>/static/js/jquery.SuperSlide.2.1.1.js"></script>
		<style>
			.wid1200px {
				width: 1200px;
				background-color: #ffffff;
			}
			
			.memder_con {
				padding: 20px;
			}
			
			.jiage {
				font-size: 22px;
				color: #e94653;
				margin-right: 5px;
			}
			
			.mingzi {
				font-size: 22px;
				margin-right: 3px;
			}
			
			.layui-bg-orange {
				margin-left: 5px;
				top: -2px;
				padding-top: 2px;
			}
			
			.shouchang:hover {
				cursor: pointer;
			}
			
			.tuoguan {
				background: none;
				border: 1px solid #ffbb76;
				color: #ffbb76;
				height: 28px;
				padding: 4px;
				line-height: 0;
			}
			
			.tuoguan:hover {
				color: #ffbb76;
			}
			
			.layui-bg-orange {
				background-color: #ffbb76;
			}
			
			.quane span {
				margin-left: 10px;
			}
			
			.tougao {
				float: right;
				margin-top: -70px;
			}
			
			.tougao button {
				height: 50px;
				width: 160px;
				font-size: 18px;
				background-color: #e94653;
				border-radius: 4px;
			}
			
			.hei40px {
				font-size: 16px;
				text-align: center;
				margin-top: 20px;
			}
			
			.shangjin {
				font-size: 16px;
				margin-right: 5px;
				color: #e94653;
			}
			
			.jiezhi {
				font-size: 16px;
				margin-right: 5px;
				margin-left: 15px;
				color: #e94653;
			}
			
			.shijian1 {
				font-style: normal;
				color: #e94653;
			}
			
			.layui-tab-title li {
				font-size: 16px;
			}
			
			.layui-tab-brief>.layui-tab-title .layui-this {
				color: #e94653;
				padding: 0 25px;
			}
			
			.layui-tab-brief>.layui-tab-more li.layui-this:after,
			.layui-tab-brief>.layui-tab-title .layui-this:after {
				border-bottom: 2px solid #e94653;
			}
			
			.liulan {
				float: right;
				margin-top: -40px;
			}
			
			.liulan i {
				font-style: normal;
				margin-left: 10px;
				font-size: 12px;
				color: #999;
			}
			
			.liulan:hover {
				cursor: pointer;
			}
			
			h3 {
				font-weight: bold;
				margin: 10px 15px;
			}
			
			.zhongbiao {
				background: none;
				border: none;
				color: #666;
			}
			
			.quanbu {
				background: none;
				border: 1px solid #e94653;
				color: #e94653;
			}
			
			.zhongbiao:hover {
				color: #666;
			}
			
			.quanbu:hover {
				background: #e94653;
				color: #FFFFFF;
			}
			
			.pinglun {
				float: left;
				position: relative;
				margin-left: 20px;
				width: 1000px;
				margin-top: 20px;
			}
			
			.touxiang {
				float: left;
				margin-left: 15px;
				margin-top: 10px;
			}
			
			.yonghu {
				font-weight: bold;
				color: #666;
			}
			
			.neirong {
				margin-top: 20px;
			}
			
			.shijian {
				float: right;
				font-size: 12px;
				margin-right: -60px;
				color: #a7a7a7;
			}
			
			.pingjia {
				width: 100%;
				/*border-bottom: 1px solid #e4e4e4;*/
				margin-bottom: 20px;
				margin-top: 30px;
			}
			
			.layui-circle {
				width: 80px;
				height: 80px;
			}
			
			.neirong span {
				margin-left: 10px;
			}
			
			.tupian {
				/*padding: 50px 50px 20px 50px; */
				padding: 50px 0 0;
				margin-left: 220px;
			}
			
			.tupian img {
				width: 700px;
				height: 500px;
			}
			
			.xinxi {
				height: 100px;
				width: 1200px;
				background: #f5f5f5;
				margin-left: -30px;
				border-top: 1px solid #eaeaea;
				border-bottom: 1px solid #eaeaea;
			}
			
			.jiaoyi {
				font-style: normal;
				color: #e94653;
			}
			
			.layui-collapse {
				width: 698px;
			}
			
			.site-demo-button {
				margin: 10px 0;
			}
			
			.xiangqing p {
				font-weight: bold;
				margin-bottom: 5px;
			}
			
			.xiangqing p i {
				font-weight: initial;
				font-style: normal;
				margin-left: 10px;
			}
			
			.liaanniu {
				margin-top: 30px;
			}
			
			.liaanniu button {
				border: 1px solid #e94653;
				color: #e94653;
				background: none;
				float: left;
				padding: 0px 40px;
			}
			
			.liaanniu button:hover {
				background: #e94653;
				color: #fff;
			}
			
			.fabiao .layui-input-block {
				margin-left: 0;
			}
			
			.fabiao .layui-textarea {
				box-shadow: 1px 1px 5px #dedede inset;
				padding: 10px 15px;
				border-radius: 4px;
			}
			
			.biaoqing {
				margin-top: -40px;
				margin-bottom: 20px;
			}
			
			.biaoqing button {
				float: right;
				border: 1px solid #e94653;
				color: #e94653;
				background: none;
			}
			
			.biaoqing button:hover {
				background: #e94653;
				color: #fff;
			}
			
			.xinxi1 {
				background-color: #fff;
				height: 110px;
				margin-top: 10px;
				border-bottom: 1px dashed #e6e6e6;
			}
			
			.xinxi1 .time {
				float: right;
				font-size: 13px;
				color: #999;
			}
			
			.xinxi1 .huifu {
				float: right;
				color: #4095ce;
			}
			
			.huinei {
				background: #FAFAFA;
				border: 1px solid #e6e6e6;
			}
			
			.layui-table[lay-even] tr:nth-child(even) {
				background: none;
			}
			
			.layui-table tr {
				border-bottom: 1px dashed #e2e2e0;
			}
			
			.layui-table td {
				padding: 0;
			}
			
			.layui-table tbody tr:hover {
				background: none;
			}
			
			.pinglun1 {
				float: right;
				width: 1000px;
				margin-top: 20px;
				margin-right: 25px;
			}
			
			.pinglun1 .time,
			.pinglun .time {
				float: right;
				color: #999;
			}
			
			.pinglun1 .huinei {
				margin-top: 20px;
				margin-bottom: 20px;
				padding: 10px 15px;
			}
			
			.pinglun1 .huifu,
			.pinglun .huifu {
				float: right;
				color: #4095ce;
				margin-bottom: 5px;
			}
			
			.pinglun1 .huifu:hover {
				cursor: pointer;
			}
			
			#yincang1 .biaoqing {
				margin-bottom: 30px;
			}
			.chanpinjia{
				font-size: 16px;
				color: #e94653;
				font-weight: bold;
			}
			.layui-table1 td{
				padding: 15px;
			}
			.chanpinnei{
				margin-left: 5px;
			}
			.layui-table thead tr{
				background-color: #fafafa;
			}
			.yishoucang{
				color:red;
			}	
		</style>
		<script type="text/javascript">
			$(function() {
				layui.use('form', function() {
					var form = layui.form;
					form.render();
				});
				$(".nav_new ul li").hover(function() {
						$(this).find(".nav_list").show();
						$(this).find("a.ztit").addClass("active");
					}, function() {
						$(this).find("a.ztit").removeClass("active");
						$(this).find(".nav_list").hide();
					}
				)
				$(".shouchang").click(function(){
					if($(this).hasClass("yishoucang")){
						var uid=$("#uid").val();
						$.ajax({
							url: "<%=basePath%>/collection/delcollectionGraph.do",
							type: "POST",
							data: {
								uid: uid
							},
							success: function (data) {
								if (data !== "failed") {
									alert("取消收藏成功");
									$("#collectionGraph").text("收藏");
									$("#collectionGraph").removeClass("yishoucang");
								}else{
									alert("取消收藏失败");
								}
							}
						});
					}else{
						var uid=$("#uid").val();
						$.ajax({
							url: "<%=basePath%>/collection/collectionGraph.do",
							type: "POST",
							data: {
								uid: uid
							},
							success: function (data) {
								if (data !== "failed") {
									alert("收藏成功");
									$("#collectionGraph").text("已收藏");
									$("#collectionGraph").addClass("yishoucang");
								}else{
									alert("收藏失败");
								}
							}
						});
					}
				});
			});
			$(function() {　　
				$('.dianji').click(function() {
					$(this).parent().parent().next().slideToggle("slow");						
				});
				$('.huifu').click(function(){
					$(this).next().slideToggle("slow");
				});
				getGraphDetail();
				getLeavingMsg();
				getSubmission();
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
			//跳转到免费下载页面
			function toFree(){
				document.location.href = '<%=basePath%>/free/toFree.do';
			}
			//跳转到求助求图页面
			function toHelp(){
				document.location.href = '<%=basePath%>/help/toHelp.do';
			}
			//获取任务详情
			function getGraphDetail(){
				var uid=$("#uid").val();
				$.ajax({
					url:"<%=basePath%>/submission/getGraphByUid.do",
					type:"POST",
					data:{
						uid:uid
					},
					success:function(data){
						if(data!=="failed"){
							var msg=eval("("+data+")");
							$("#jiage").text("￥"+msg.moneyreward);
							$("#mingzi").text(msg.graphtitle);
							$("#fabuuser").text("发布人："+msg.username);
							$("#favcount").text("收藏量："+msg.favcount);
							$("#ticknums").text("点击量："+msg.ticknums);
							$("#shijian1").text("1天03时42分51秒");
							var graphdetail=msg.graphdetail.split("；");
							var str="";
							for(var i=0;i<graphdetail.length;i++){
								str +='<p>'+graphdetail[i]+'</p>';
							}
							$("#graphdetail").append(str);
							$("#graphdetail").append('<p>附件：<a href="<%=basePath%>/submission/downloadFile.do?uid='+msg.uid+'" class="col_blue">点击下载</a></p>');
							$("#graphdetail").append('<p>温馨提示：第一次上传用户请认真阅读 <a href="#" class="col_blue">《版权声明》</a></p>');
						}else{
							alert("获取数据失败");
						}
					}
				});
			}
			//获取稿件数据
			function getSubmission(){
				var uid=$("#uid").val();
				$.ajax({
					url: "<%=basePath%>/graph/getSubmissionByid.do",
					type: "POST",
					data: {
						uid: uid
					},
					success: function (data) {
						if (data !== "failed") {
							$("#submission").html("");
							var msg=eval("("+data+")");
							$("#countsub").text("("+msg.length+")");
							var str="";
							for(var i=0;i<msg.length;i++){
								str +='<div class="pingjia"> <div class="xinxi"> <div class="layui-inline touxiang"> <img src="<%=basePath%>'+msg[i].submissionuserpicurl+'" class="layui-circle"> </div>'
										+'<div class="layui-inline pinglun"> <span class="yonghu">'+msg[i].submissionusername+'</span>'
										+'<div class="shijian"><button id="'+uid+'" onclick=collectionSubmission("'+uid+'") class="layui-btn quanbu" style="margin-top: 15px;">收藏</button></div>'
										+'<p class="neirong"><span style="margin-left:0px">投稿时间&nbsp;:&nbsp;'+msg[i].uptime+'</span></p></div></div>'
										+'<div class="layui-inline tupian"><img src="<%=basePath%>/static/images/pbl_1.png"><div class="layui-collapse" lay-filter="test">'
										+'<div class="layui-colla-item "><h2 class="layui-colla-title">'+msg[i].worksname+'</h2>'
										+'<div><p>参数--><i>格式&nbsp;:&nbsp;'+msg[i].imgformart+'</i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i>颜色模式&nbsp;:&nbsp;'+msg[i].colrmodel+'</i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i>大小&nbsp;:&nbsp;'+msg[i].imgsize+'</i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i>工具&nbsp;:&nbsp;X4</i></p>'
										+'<p>说明&nbsp;:&nbsp;<i>有完整的三围图，渲染图，平面工艺材质描述，场景示意图，细节放大图，成本可通过后期工艺来控制 本人是专业从事标识设计的，希望能与你们合作！</i></p></div></div></div></div>';
							}
							$("#submission").append('<div class="site-demo-button" style="margin-bottom: 0;"> <button class="layui-btn quanbu">全部('+msg.length+')</button> <button class="layui-btn zhongbiao">中标(0/1)</button> </div>');
							$("#submission").append(str);
						}
					}
				});
			}
			//收藏稿件
			function collectionSubmission(uid){
				var data=$("#"+uid).text();
				if(data == "收藏"){
					$.ajax({
						url: "<%=basePath%>/collection/collectionSubmission.do",
						type: "POST",
						data: {
							uid: uid
						},
						success: function (data) {
							if (data !== "failed") {
								alert("收藏成功");
								$("#"+uid).text("已收藏");
							}else{
								alert("收藏失败");
							}
						}
					});
				}else{
					$.ajax({
						url: "<%=basePath%>/collection/delcollectionSubmission.do",
						type: "POST",
						data: {
							uid: uid
						},
						success: function (data) {
							if (data !== "failed") {
								alert("取消收藏成功");
								$("#"+uid).text("收藏");
							}else{
								alert("取消收藏失败");
							}
						}
					});
				}
			}
			//获取评论数据
			function getLeavingMsg(){
				var uid=$("#uid").val();
				$.ajax({
					url: "<%=basePath%>/graph/getLeavingmsgByid.do",
					type: "POST",
					data: {
						uid: uid
					},
					success: function (data) {
						if (data !== "failed") {
							$("#leavingmsg").html("");
							var msg=eval("("+data+")");
							$("#msgcount").text("("+msg.length+")");
							var str="";
							for(var i=0;i<msg.length;i++){
								str +='<tr> <td> <div class="layui-inline touxiang1"> <img src="<%=basePath%>'+msg[i].leavinguserpicurl+'" class="layui-circle">'
										+'</div> <div class="layui-inline pinglun1"> <span class="yonghu">'+msg[i].leavingusername+'</span>'
										+'<p class="time"> '+msg[i].addtime+' </p> <p class="neirong"> '+msg[i].content+'</p></div></td></tr>';
							}
							$("#leavingmsg").append(str);
						}
					}
				});
			}
			//发表评论
			function addLeavingmsg(){
				var uid=$("#uid").val();
				var content=$("#content").val();
				$.ajax({
					url: "<%=basePath%>/graph/addLeavingmsg.do",
					type: "POST",
					data: {
						uid: uid,
						content:content
					},
					success: function (data) {
						if (data !== "failed") {
							alert("评论成功");
							getLeavingMsg();
						} else {
							alert("评论失败");
						}
					}
				});
			}
		</script>
	</head>
	<body>
	<input id="uid" name="uid" type="hidden" value="<%= request.getAttribute("uid")%>"/>
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
						<input name="" type="text" placeholder="请输入搜索内容" class="inp_txt">
						<input type="submit" value="搜 索" class="ss_btn" />
					</div>
				</div>
				<!-- top_wid -->
			</div>
			<!-- top -->
		</header>
		<div class="bg_f5">
			<div class="wrap" style="padding-top: 20px;">
				<!--信息-->
				<div class="wid1200px">
					<div class="memder_con">
						<form class="layui-form" action="">
							<div class="layui-form-item">
								<span id="jiage" class="jiage"></span>
								<span id="mingzi" class="mingzi"></span>
								<!--<span class="layui-badge layui-bg-orange">断</span>-->
							</div>
							<div class="layui-form-item quane">
								<span id="fabuuser"></span>
								<span id="favcount"></span>
								<span id="ticknums"></span>
								<span class="shouchang"><i class="layui-icon shouchang"></i><span id="collectionGraph">收藏</span></span>
								<!--<button class="layui-btn layui-btn-danger tuoguan"><i class="layui-icon"></i>全额托管</button>-->
								<!--<span>编号:123</span>-->
								<!--<span>分类:名片设计-印刷</span>-->
							</div>
							<div class="layui-form-item tougao">
								<button class="layui-btn layui-btn-danger">我要投稿</button>
							</div>
							<div class="hei40px">
								<span><i class="layui-icon shangjin"></i>任务赏金:中标一名，可获得赏金的80%</span>
								<span><i class="layui-icon jiezhi"></i>距投稿截止<i id="shijian1" class="shijian1"></i></span>
							</div>
							<div class="sc_padd">
								<ul class="navd nav-pills nav-justified step step-progress" data-step="2">
									<li class="active">
										<a>发布任务<span class="caret"></span></a>
									</li>
									<li class="active">
										<a>投稿中<span class="caret"></span></a>
									</li>
									<li class="active">
										<a>选稿中<span class="caret"></span></a>
									</li>
									<li class="active">
										<a>公示中<span class="caret"></span></a>
									</li>
									<li class="active">
										<a>任务结束<span class="caret"></span></a>
									</li>

								</ul>
								<script type="text/javascript" src="<%=basePath%>/static/js/lib.js"></script>
								<script>
									$(function() {
										bsStep();
										//bsStep(i) i 为number 可定位到第几步 如bsStep(2)/bsStep(3)
									})
								</script>

							</div>
						</form>
					</div>
				</div>
				<!--需求描述-->
				<div class="wid1200px" style="margin-top: 20px;">
					<div class="memder_con">

						<div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
							<ul class="layui-tab-title">
								<li class="layui-this">需求描述</li>
								<li>稿件<i id="countsub" class="shijian1"></i></li>
								<li>留言<i id="msgcount" class="shijian1"></i></li>

							</ul>
							<span class="liulan"><!--<i>浏览&nbsp;:&nbsp;1260</i><i>|</i>--><i>举报任务</i><i>|</i><i>分享</i></span>
							<div class="layui-tab-content">
								<div class="layui-tab-item layui-show">
									<h3>需求详情:</h3>
									<div id="graphdetail" class="txt_ppad">
										<!--
										<p>1、所上传作品需为源文件(可编辑模板)，预览图与上传的源文件需保持一致</p>
										<p>2、预览图有人物脸部需模糊，不得含有明显的联系方式，如QQ、电话、网址、二维码</p>
										<p>3、请勿上传国产卡通动画形象，如灰太狼、喜洋洋等</p>
										<p>4、辩题请用一句话来描述，关键词包含素材风格、内容、行业等词组，一般3组以上，关键词之间请用空格隔开查看标题/关键字教程</p>
										-->
									</div>
								</div>
								<div id="submission" class="layui-tab-item">
								</div>
								<div class="layui-tab-item">
									<div style="margin-top: 0px;">
										<div style="width: 90%" class="fabiao">

											<div class="layui-input-block">
												<textarea placeholder="请输入内容" id="content" class="layui-textarea"></textarea>
											</div>

										</div>
										<div class="biaoqing">
											<button onclick="addLeavingmsg()" class="layui-btn">发表评论</button>
										</div>
										<fieldset class="layui-elem-field layui-field-title" style="margin-top: 50px;">
											<legend style="font-size: 16px;">全部评论</legend>
										</fieldset>
										<table class="layui-table" lay-even="" lay-skin="nob">
											<tbody id="leavingmsg">

											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
				</div>

			</div>
			<!--热门任务-->
			<div class="wid1200px" style="margin-top: 20px;">
				<div class="memder_con">

					<table class="layui-table layui-table1" lay-even="" lay-skin="nob">
						<colgroup>
							<col width="150">
							<col width="150">
							<col width="200">
							<col>
						</colgroup>
						<thead>
							<tr>
								<th>热门任务</th>
								<th></th>
							</tr>
						</thead>
						<tbody>

							<tr>
								<td>
									<span class="chanpinjia">￥3200</span>
									<span class="chanpinnei">日用产品包装设计</span>
								</td>
								<td>
									<span class="chanpinjia">￥3200</span>
									<span class="chanpinnei">日用产品包装设计</span>
								</td>
								
							</tr>
							<tr>
								<td>
									<span class="chanpinjia">￥3200</span>
									<span class="chanpinnei">日用产品包装设计</span>
								</td>
								<td>
									<span class="chanpinjia">￥3200</span>
									<span class="chanpinnei">日用产品包装设计</span>
								</td>
								
							</tr>
							<tr>
								<td>
									<span class="chanpinjia">￥3200</span>
									<span class="chanpinnei">日用产品包装设计</span>
								</td>
								<td>
									<span class="chanpinjia">￥3200</span>
									<span class="chanpinnei">日用产品包装设计</span>
								</td>
								
							</tr>
							<tr>
								<td>
									<span class="chanpinjia">￥3200</span>
									<span class="chanpinnei">日用产品包装设计</span>
								</td>
								<td>
									<span class="chanpinjia">￥3200</span>
									<span class="chanpinnei">日用产品包装设计</span>
								</td>
								
							</tr>
							<tr>
								<td>
									<span class="chanpinjia">￥3200</span>
									<span class="chanpinnei">日用产品包装设计</span>
								</td>
								<td>
									<span class="chanpinjia">￥3200</span>
									<span class="chanpinnei">日用产品包装设计</span>
								</td>
								
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		<!-- bg_f5 -->

		<!-- 公共底部 -->
		<footer style="margin-top: 20px;">
			<div class="wrap">
				<div class="bottom clearfix">
					<dl>
						<dt>新手帮助</dt>
						<dd>
							<a href="javascript:">注册/登录</a>
						</dd>
						<dd>
							<a href="javascript:">认证/签约</a>
						</dd>

						<dd>
							<a href="javascript:">条款协议</a>
						</dd>
						<dd>
							<a href="javascript:">版权声明</a>
						</dd>
					</dl>

					<dl>
						<dt>关于婚秀中国</dt>
						<dd>
							<a href="javascript:">婚秀中国简介</a>
						</dd>

					</dl>
					<dl>
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
		<script>
			layui.use('element', function() {
				var $ = layui.jquery,
					element = layui.element; //Tab的切换功能，切换事件监听等，需要依赖element模块
			});
		</script>
	</body>

</html>