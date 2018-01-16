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
<script type="text/javascript" src="<%=basePath%>/static/js/laydate.js"></script>
<script src="<%=basePath%>/static/js/laypage.js"></script>
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
 //跳转到会员空间页面
 function toHomepage(){
     document.location.href = '<%=basePath%>/homepage/toHomepage.do';
 }
</script>
</head>
<body>
   <header>
     <div class="top">    
      <div class="top_wid logo_con">
         <a href="index.jsp" class="fl"><img src="<%=basePath%>/static/images/logo.png" height="62" width="217" /></a>
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
                      <img src="<%=basePath%>/static/images/head_img2.png" />
                      <h2>宇宙军</h2>
                 </div>
                 <div class="mj_tab">
                    <table width="100%">
                       <tr>
                           <td width="50%"> <a href="#">成为卖家</a></td>
                       </tr>
                    </table>
                 </div>
             </div><!-- grzl_box --> 
             <div class="mem_nav">
             <h2>个人中心</h2>
                <ul>
                    <li><a class="mem_icon1" href="#" onclick="toUpload()">上传作品</a></li>
                    <li><a class="mem_icon2" href="#" onclick="toCollection()">收藏</a></li>
                    <li><a class="mem_icon4 active" href="#" onclick="toTransaction()">交易</a></li>
                    <li><a class="mem_icon7" href="#">提现</a></li>
                    <li><a class="mem_icon9" href="#">个人资料</a></li>
                </ul>
             </div>
           </div><!-- wid260px -->
           <div class="wid925px fr">
               <!--
               <div class="coll_con">
                  <div class="sxtj_tab short_tabd">
                    <table width="100%">
                       <tr>
                           <td><select name=""><option>交易类型</option></select></td>
                           <td><select name=""><option>作品类型</option></select></td>
                           <td><select name=""><option>作品编号</option></select></td>
                           <td width=""><input name="" type="text"></td>
                           <td>选择日期：</td>
                           <td><input name="" type="text" placeholder="xxxx-yy-zz" onclick="laydate()"> - <input name=""  type="text" placeholder="xxxx-yy-zz" onclick="laydate()">
                           </td>
                           <td><a href="#" class="ss_btndd fr">搜索</a></td>
                       </tr>
                    
                    </table>
                  </div>
              </div> 
               -->
               <div class="tran_con">   
                  <div class="jy_nav">
                    <ul class=" clearfix">
                       <li>已出售</li>
                       <li>已购买</li>
                       <li>正在交易</li>
                        <!--
                       <li>交易站厅</li>
                       <li>交易失败</li>
                       -->
                    </ul> 
                  </div>
                  <div class="jy_tab_con">
                     <!-- 已出售 -->
                     <ul>
                          <table width="100%">
                             <tr>             
                                <th>作品信息</th>
                                 <th>实收金额</th>
                                <th>交易状态</th>
                                <th>对方</th>
                             </tr>
                             <tr>             
                                <td colspan="4" class="bg_tit">合同号：HS@163.co2-5124575121  &nbsp; &nbsp; &nbsp;     开始时间：2015-08-12   15:45:11  &nbsp; &nbsp; &nbsp;   结束时间：2015-14-20  16:00:02     </td>                                          
                             </tr>
                             <tr>             
                                <td class="jj_txt">
                                  <p class="fl"><img src="<%=basePath%>/static/images/dmt_pic4.png" /></p>
                                  <h2>欧式屏风雕花</h2>
                                 <p>[类型] 设计</p>
                                <p class="xzzs">[简介] 我是简介我是简介我是简介我是简介我是简介我是简介</p>
                                <p>[创建] 2016/1/21 18:02:23</p>
                                <p>[更新] 2016/1/21 18:02:23</p>
                                
                                </td>                                          
                                <td><p class="col_f00">￥30.00</p></td>
                                <td><p>交易成功</p></td>
                                <td>
                                  <div class="tc_rel">
                                     <img src="<%=basePath%>/static/images/head_img.png" />
                                      <p>新设计团队</p>
                                  
                                    <div class="tip_bxf">
                                        <table width="100%">
                                           <tr>
                                               <td><h3>17700.50</h3> 交易额</td>
                                               <td><h3>5620</h3> 交易量</td>
                                               <td><h3>235</h3> 作品数</td>
                                               <td><h3>0</h3>     投稿数</td>
                                           </tr>
                                        </table>
                                        <div class="znx_btn"><a href="#">发站内信</a></div>    
                                    </div>
                                  </div>
                                
                                </td>  
                             </tr>
                             <tr>             
                                <td colspan="4" class="bg_tit">合同号：HS@163.co2-5124575121  &nbsp; &nbsp; &nbsp;     开始时间：2015-08-12   15:45:11  &nbsp; &nbsp; &nbsp;   结束时间：2015-14-20  16:00:02     </td>                                          
                             </tr>
                             <tr>             
                                <td class="jj_txt">
                                  <p class="fl"><img src="<%=basePath%>/static/images/dmt_pic5.png" /></p>
                                  <h2>欧式屏风雕花</h2>
                                 <p>[类型] 设计</p>
                                <p class="xzzs">[简介] 我是简介我是简介我是简介我是简介我是简介我是简介</p>
                                <p>[创建] 2016/1/21 18:02:23</p>
                                <p>[更新] 2016/1/21 18:02:23</p>
                                
                                </td>                                          
                                <td><p class="col_f00">￥30.00</p></td>
                                <td><p>交易成功</p></td>
                                <td>
                                  <div class="tc_rel">
                                     <img src="<%=basePath%>/static/images/head_img.png" />
                                      <p>新设计团队</p>
                                  
                                    <div class="tip_bxf">
                                        <table width="100%">
                                           <tr>
                                               <td><h3>17700.50</h3> 交易额</td>
                                               <td><h3>5620</h3> 交易量</td>
                                               <td><h3>235</h3> 作品数</td>
                                               <td><h3>0</h3>     投稿数</td>
                                           </tr>
                                        </table>
                                        <div class="znx_btn"><a href="#">发站内信</a></div>    
                                    </div>
                                  </div>
                                
                                </td>  
                             </tr>
                             <tr>             
                                <td colspan="4" class="bg_tit">合同号：HS@163.co2-5124575121  &nbsp; &nbsp; &nbsp;     开始时间：2015-08-12   15:45:11  &nbsp; &nbsp; &nbsp;   结束时间：2015-14-20  16:00:02     </td>                                          
                             </tr>
                             <tr>             
                                <td class="jj_txt">
                                  <p class="fl"><img src="<%=basePath%>/static/images/dmt_pic6.png" /></p>
                                  <h2>欧式屏风雕花</h2>
                                 <p>[类型] 设计</p>
                                <p class="xzzs">[简介] 我是简介我是简介我是简介我是简介我是简介我是简介</p>
                                <p>[创建] 2016/1/21 18:02:23</p>
                                <p>[更新] 2016/1/21 18:02:23</p>
                                
                                </td>                                          
                                <td><p class="col_f00">￥30.00</p></td>
                                <td><p>交易成功</p></td>
                                <td>
                                  <div class="tc_rel">
                                     <img src="<%=basePath%>/static/images/head_img.png" />
                                      <p>新设计团队</p>
                                  
                                    <div class="tip_bxf">
                                        <table width="100%">
                                           <tr>
                                               <td><h3>17700.50</h3> 交易额</td>
                                               <td><h3>5620</h3> 交易量</td>
                                               <td><h3>235</h3> 作品数</td>
                                               <td><h3>0</h3>     投稿数</td>
                                           </tr>
                                        </table>
                                        <div class="znx_btn"><a href="#">发站内信</a></div>    
                                    </div>
                                  </div>
                                
                                </td>  
                             </tr>
                             <tr>             
                                <td colspan="4" class="bg_tit">合同号：HS@163.co2-5124575121  &nbsp; &nbsp; &nbsp;     开始时间：2015-08-12   15:45:11  &nbsp; &nbsp; &nbsp;   结束时间：2015-14-20  16:00:02     </td>                                          
                             </tr>
                             <tr>             
                                <td class="jj_txt">
                                  <p class="fl"><img src="<%=basePath%>/static/images/dmt_pic7.png" /></p>
                                  <h2>欧式屏风雕花</h2>
                                 <p>[类型] 设计</p>
                                <p class="xzzs">[简介] 我是简介我是简介我是简介我是简介我是简介我是简介</p>
                                <p>[创建] 2016/1/21 18:02:23</p>
                                <p>[更新] 2016/1/21 18:02:23</p>
                                
                                </td>                                          
                                <td><p class="col_f00">￥30.00</p></td>
                                <td><p>交易成功</p></td>
                                <td>
                                  <div class="tc_rel">
                                     <img src="<%=basePath%>/static/images/head_img.png" />
                                      <p>新设计团队</p>
                                  
                                    <div class="tip_bxf">
                                        <table width="100%">
                                           <tr>
                                               <td><h3>17700.50</h3> 交易额</td>
                                               <td><h3>5620</h3> 交易量</td>
                                               <td><h3>235</h3> 作品数</td>
                                               <td><h3>0</h3>     投稿数</td>
                                           </tr>
                                        </table>
                                        <div class="znx_btn"><a href="#">发站内信</a></div>    
                                    </div>
                                  </div>
                                
                                </td>  
                             </tr>    
                          </table>
                     </ul>
                     
                     <!-- 已购买 -->
                     <ul>
                          <table width="100%">
                             <tr>             
                                <th>作品信息</th>                                          
                                <th>实收金额</th>
                                 <th>交易状态</th>
                                <th>对方</th>  
                             </tr>
                             <tr>             
                                <td colspan="4" class="bg_tit">合同号：HS@163.co2-5124575121  &nbsp; &nbsp; &nbsp;     开始时间：2015-08-12   15:45:11  &nbsp; &nbsp; &nbsp;   结束时间：2015-14-20  16:00:02     </td>                                          
                             </tr>
                             <tr>             
                                <td class="jj_txt">
                                  <p class="fl"><img src="<%=basePath%>/static/images/dmt_pic1.png" /></p>
                                  <h2>欧式屏风雕花</h2>
                                 <p>[类型] 设计</p>
                                <p class="xzzs">[简介] 我是简介我是简介我是简介我是简介我是简介我是简介</p>
                                <p>[创建] 2016/1/21 18:02:23</p>
                                <p>[更新] 2016/1/21 18:02:23</p>
                                
                                </td>                                          
                                <td><p class="col_f00">￥30.00</p></td>
                                <td><p>交易成功</p></td>
                                <td>
                                  <div class="tc_rel">
                                     <img src="<%=basePath%>/static/images/head_img.png" />
                                      <p>新设计团队</p>
                                  
                                    <div class="tip_bxf">
                                        <table width="100%">
                                           <tr>
                                               <td><h3>17700.50</h3> 交易额</td>
                                               <td><h3>5620</h3> 交易量</td>
                                               <td><h3>235</h3> 作品数</td>
                                               <td><h3>0</h3>     投稿数</td>
                                           </tr>
                                        </table>
                                        <div class="znx_btn"><a href="#">发站内信</a></div>    
                                    </div>
                                  </div>
                                
                                </td>  
                             </tr>
                             <tr>             
                                <td colspan="4" class="bg_tit">合同号：HS@163.co2-5124575121  &nbsp; &nbsp; &nbsp;     开始时间：2015-08-12   15:45:11  &nbsp; &nbsp; &nbsp;   结束时间：2015-14-20  16:00:02     </td>                                          
                             </tr>
                             <tr>             
                                <td class="jj_txt">
                                  <p class="fl"><img src="<%=basePath%>/static/images/dmt_pic2.png" /></p>
                                  <h2>欧式屏风雕花</h2>
                                 <p>[类型] 设计</p>
                                <p class="xzzs">[简介] 我是简介我是简介我是简介我是简介我是简介我是简介</p>
                                <p>[创建] 2016/1/21 18:02:23</p>
                                <p>[更新] 2016/1/21 18:02:23</p>
                                
                                </td>                                          
                                <td><p class="col_f00">￥30.00</p></td>
                                <td><p>交易成功</p></td>
                                <td>
                                  <div class="tc_rel">
                                     <img src="<%=basePath%>/static/images/head_img.png" />
                                      <p>新设计团队</p>
                                  
                                    <div class="tip_bxf">
                                        <table width="100%">
                                           <tr>
                                               <td><h3>17700.50</h3> 交易额</td>
                                               <td><h3>5620</h3> 交易量</td>
                                               <td><h3>235</h3> 作品数</td>
                                               <td><h3>0</h3>     投稿数</td>
                                           </tr>
                                        </table>
                                        <div class="znx_btn"><a href="#">发站内信</a></div>    
                                    </div>
                                  </div>
                                
                                </td>  
                             </tr>
                             <tr>             
                                <td colspan="4" class="bg_tit">合同号：HS@163.co2-5124575121  &nbsp; &nbsp; &nbsp;     开始时间：2015-08-12   15:45:11  &nbsp; &nbsp; &nbsp;   结束时间：2015-14-20  16:00:02     </td>                                          
                             </tr>
                             <tr>             
                                <td class="jj_txt">
                                  <p class="fl"><img src="<%=basePath%>/static/images/dmt_pic3.png" /></p>
                                  <h2>欧式屏风雕花</h2>
                                 <p>[类型] 设计</p>
                                <p class="xzzs">[简介] 我是简介我是简介我是简介我是简介我是简介我是简介</p>
                                <p>[创建] 2016/1/21 18:02:23</p>
                                <p>[更新] 2016/1/21 18:02:23</p>
                                
                                </td>                                          
                                <td><p class="col_f00">￥30.00</p></td>
                                <td><p>交易成功</p></td>
                                <td>
                                  <div class="tc_rel">
                                     <img src="<%=basePath%>/static/images/head_img.png" />
                                      <p>新设计团队</p>
                                  
                                    <div class="tip_bxf">
                                        <table width="100%">
                                           <tr>
                                               <td><h3>17700.50</h3> 交易额</td>
                                               <td><h3>5620</h3> 交易量</td>
                                               <td><h3>235</h3> 作品数</td>
                                               <td><h3>0</h3>     投稿数</td>
                                           </tr>
                                        </table>
                                        <div class="znx_btn"><a href="#">发站内信</a></div>    
                                    </div>
                                  </div>
                                
                                </td>  
                             </tr>
                             <tr>             
                                <td colspan="4" class="bg_tit">合同号：HS@163.co2-5124575121  &nbsp; &nbsp; &nbsp;     开始时间：2015-08-12   15:45:11  &nbsp; &nbsp; &nbsp;   结束时间：2015-14-20  16:00:02     </td>                                          
                             </tr>
                             <tr>             
                                <td class="jj_txt">
                                  <p class="fl"><img src="<%=basePath%>/static/images/dmt_pic4.png" /></p>
                                  <h2>欧式屏风雕花</h2>
                                 <p>[类型] 设计</p>
                                <p class="xzzs">[简介] 我是简介我是简介我是简介我是简介我是简介我是简介</p>
                                <p>[创建] 2016/1/21 18:02:23</p>
                                <p>[更新] 2016/1/21 18:02:23</p>
                                
                                </td>                                          
                                <td><p class="col_f00">￥30.00</p></td>
                                <td><p>交易成功</p></td>
                                <td>
                                  <div class="tc_rel">
                                     <img src="<%=basePath%>/static/images/head_img.png" />
                                      <p>新设计团队</p>
                                  
                                    <div class="tip_bxf">
                                        <table width="100%">
                                           <tr>
                                               <td><h3>17700.50</h3> 交易额</td>
                                               <td><h3>5620</h3> 交易量</td>
                                               <td><h3>235</h3> 作品数</td>
                                               <td><h3>0</h3>     投稿数</td>
                                           </tr>
                                        </table>
                                        <div class="znx_btn"><a href="#">发站内信</a></div>    
                                    </div>
                                  </div>
                                
                                </td>  
                             </tr>    
                          </table>
                     </ul>
                     
                     <!-- 正在交易 -->
                     <ul>
                          <table width="100%">
                             <tr>             
                                <th>作品信息</th>                                          
                                <th>实收金额</th>
                                 <th>交易状态</th>
                                <th>对方</th>  
                             </tr>
                             <tr>             
                                <td colspan="4" class="bg_tit">合同号：HS@163.co2-5124575121  &nbsp; &nbsp; &nbsp;     开始时间：2015-08-12   15:45:11  &nbsp; &nbsp; &nbsp;   结束时间：2015-14-20  16:00:02     </td>                                          
                             </tr>
                             <tr>             
                                <td class="jj_txt">
                                  <p class="fl"><img src="<%=basePath%>/static/images/dmt_pic4.png" /></p>
                                  <h2>欧式屏风雕花</h2>
                                 <p>[类型] 设计</p>
                                <p class="xzzs">[简介] 我是简介我是简介我是简介我是简介我是简介我是简介</p>
                                <p>[创建] 2016/1/21 18:02:23</p>
                                <p>[更新] 2016/1/21 18:02:23</p>
                                
                                </td>                                          
                                <td><p class="col_f00">￥30.00</p></td>
                                <td><p>交易成功</p></td>
                                <td>
                                  <div class="tc_rel">
                                     <img src="<%=basePath%>/static/images/head_img.png" />
                                      <p>新设计团队</p>
                                  
                                    <div class="tip_bxf">
                                        <table width="100%">
                                           <tr>
                                               <td><h3>17700.50</h3> 交易额</td>
                                               <td><h3>5620</h3> 交易量</td>
                                               <td><h3>235</h3> 作品数</td>
                                               <td><h3>0</h3>     投稿数</td>
                                           </tr>
                                        </table>
                                        <div class="znx_btn"><a href="#">发站内信</a></div>    
                                    </div>
                                  </div>
                                
                                </td>  
                             </tr>
                             <tr>             
                                <td colspan="4" class="bg_tit">合同号：HS@163.co2-5124575121  &nbsp; &nbsp; &nbsp;     开始时间：2015-08-12   15:45:11  &nbsp; &nbsp; &nbsp;   结束时间：2015-14-20  16:00:02     </td>                                          
                             </tr>
                             <tr>             
                                <td class="jj_txt">
                                  <p class="fl"><img src="<%=basePath%>/static/images/dmt_pic5.png" /></p>
                                  <h2>欧式屏风雕花</h2>
                                 <p>[类型] 设计</p>
                                <p class="xzzs">[简介] 我是简介我是简介我是简介我是简介我是简介我是简介</p>
                                <p>[创建] 2016/1/21 18:02:23</p>
                                <p>[更新] 2016/1/21 18:02:23</p>
                                
                                </td>                                          
                                <td><p class="col_f00">￥30.00</p></td>
                                <td><p>交易成功</p></td>
                                <td>
                                  <div class="tc_rel">
                                     <img src="<%=basePath%>/static/images/head_img.png" />
                                      <p>新设计团队</p>
                                  
                                    <div class="tip_bxf">
                                        <table width="100%">
                                           <tr>
                                               <td><h3>17700.50</h3> 交易额</td>
                                               <td><h3>5620</h3> 交易量</td>
                                               <td><h3>235</h3> 作品数</td>
                                               <td><h3>0</h3>     投稿数</td>
                                           </tr>
                                        </table>
                                        <div class="znx_btn"><a href="#">发站内信</a></div>    
                                    </div>
                                  </div>
                                
                                </td>  
                             </tr>
                           
                               
                          </table>
                     </ul>
                     
                     
                      <!-- 交易站厅-->
                     <ul>
                          <table width="100%">
                             <tr>             
                                <th>作品信息</th>                                          
                                <th>交易状态</th>
                                <th>实收金额</th>
                                <th>对方</th>  
                             </tr>
                             
                             <tr>             
                                <td colspan="4" class="bg_tit">合同号：HS@163.co2-5124575121  &nbsp; &nbsp; &nbsp;     开始时间：2015-08-12   15:45:11  &nbsp; &nbsp; &nbsp;   结束时间：2015-14-20  16:00:02     </td>                                          
                             </tr>
                             <tr>             
                                <td class="jj_txt">
                                  <p class="fl"><img src="<%=basePath%>/static/images/dmt_pic5.png" /></p>
                                  <h2>欧式屏风雕花</h2>
                                 <p>[类型] 设计</p>
                                <p class="xzzs">[简介] 我是简介我是简介我是简介我是简介我是简介我是简介</p>
                                <p>[创建] 2016/1/21 18:02:23</p>
                                <p>[更新] 2016/1/21 18:02:23</p>
                                
                                </td>                                          
                                <td><p class="col_f00">￥30.00</p></td>
                                <td><p>交易成功</p></td>
                                <td>
                                  <div class="tc_rel">
                                     <img src="<%=basePath%>/static/images/head_img.png" />
                                      <p>新设计团队</p>
                                  
                                    <div class="tip_bxf">
                                        <table width="100%">
                                           <tr>
                                               <td><h3>17700.50</h3> 交易额</td>
                                               <td><h3>5620</h3> 交易量</td>
                                               <td><h3>235</h3> 作品数</td>
                                               <td><h3>0</h3>     投稿数</td>
                                           </tr>
                                        </table>
                                        <div class="znx_btn"><a href="#">发站内信</a></div>    
                                    </div>
                                  </div>
                                
                                </td>  
                             </tr>
                          
                               
                          </table>
                     </ul>
                     
                      <!-- 交易失败-->
                     <ul>
                       
                       <p style="text-align:center; margin:50px auto;">暂无交易失败</p>
                       
                     </ul>
                     
                  
                  </div>
                  
                 </div>
                  
              <script type="text/javascript">
jQuery(".tran_con").slide({titCell:".jy_nav li",mainCell:".jy_tab_con", trigger:"click"})
 </script>     
                 
                  
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
