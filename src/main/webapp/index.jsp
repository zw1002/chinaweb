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
</head>

<body>
<header>
    <div class="top">

        <div class="top_line">
            <div class="top_wid">
                欢迎来到婚秀中国网

                <!-- 登录前 -->
                <div class="top_pos">
                    <a href="login.html">登录</a>|<a href="regist.html">注册</a>
                </div>

                <!-- 登录后 -->
                <div class="top_pos" style="display:none;">
                    <a href="pay.html" class="vip_lj">成为VIP</a>|<a href="upload.html" class="sc_icon">我要上传</a>|<a href="collection_2.html">我的收藏（<span class="col_f00">2</span>）</a>
                </div>


            </div>
        </div><!-- top_line -->

        <div class="top_wid logo_con">
            <a href="index.html" class="fl"><img src="<%=basePath%>/static/images/logo.png" height="62" width="217" /></a>
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
                <li ><a class="active" href="index.html">首 页 </a> <p class="point_d"></p></li>
                <li><a href="design.html">设 计</a> <p class="point_d"></p></li>

                <li><a href="photography.html">摄影图库</a> <p class="point_d"></p></li>
                <li><a href="multimedia.html">道具新品</a> <p class="point_d"></p></li>
                <li><a href="wedding.html">婚 秀</a> <p class="point_d"></p></li>
                <li><a href="help.html">求图求助</a> <p class="point_d"></p></li>
                <li><a href="free.html">免费下载</a> <p class="point_d"></p></li>
            </ul>
        </div><!-- nav -->



    </div><!-- top -->
</header>


<!-- 图片轮播 -->
<div class="turn_pic">
    <div class="bd">
        <ul>
            <li style="background:url(<%=basePath%>/static/images/banner_pic.png) no-repeat top center; width:100%; height:520px;"><a href="javascript:"></a></li>
            <li style="background:url(<%=basePath%>/static/images/banner_pic.png) no-repeat top center; width:100%; height:520px;"><a  href="javascript:"></a></li>
            <li style="background:url(<%=basePath%>/static/images/banner_pic.png) no-repeat top center; width:100%; height:520px;"><a  href="javascript:"></a></li>
        </ul>

    </div>
    <div class="hd">
        <ul>
            <li class="pngbg"></li>
        </ul>
    </div>


</div>

</div>
<script type="text/javascript">
    jQuery(".turn_pic").slide({ titCell:".hd ul", mainCell:".bd ul", effect:"fold", autoPlay:true, autoPage:true, delayTime:500, trigger:"click",interTime:4000,mouseOverStop:false});
</script>

<div class="hei50px">

    <div class="txtMarquee-left">
        <div class="jy_tit"><img src="<%=basePath%>/static/images/jydt_tit.png" height="25" width="77" /></div>
        <div class="bd">
            <ul class="infoList">
                <li><a href="javascript:" target="_blank">韩式婚纱背景设计<span class="col_f00">￥40</span>    8分钟前</a></li>
                <li><a href="javascript:" target="_blank">简约3D风给 <span class="col_f00">￥50</span> 12分钟前    </a></li
                ><li><a href="javascript:" target="_blank">中式婚礼背景设计<span class="col_f00">￥50</span> 13分钟前</a></li>
                <li><a href="javascript:" target="_blank">中式婚礼背景设计<span class="col_f00">￥50</span> 13分钟前</a></li>
                <li><a href="javascript:" target="_blank">韩式婚纱背景设计<span class="col_f00">￥40</span>    8分钟前</a></li>
                <li><a href="javascript:" target="_blank">简约3D风给 <span class="col_f00">￥50</span> 12分钟前    </a></li
                ><li><a href="javascript:" target="_blank">中式婚礼背景设计<span class="col_f00">￥50</span> 13分钟前</a></li>
                <li><a href="javascript:" target="_blank">中式婚礼背景设计<span class="col_f00">￥50</span> 13分钟前</a></li>

            </ul>
        </div>
    </div>

    <script type="text/javascript">
        jQuery(".txtMarquee-left").slide({mainCell:".bd ul",autoPlay:true,effect:"leftMarquee",vis:4,interTime:50});
    </script>



</div><!-- hei50px -->


<!-- 设计 -->
<div class="wrap">
    <div class="tit_pic"><a href="design.html"><img src="<%=basePath%>/static/images/tit_pic1.png" height="70" width="207" /></a></div>

    <div class="hei380px">



        <div class="design_list da_img">
            <ul class="clearfix">
                <li class="long_wid"><a href="design.html"><img src="<%=basePath%>/static/images/pic_chang3.png" />
                    <div class="botm_txtd">
                        <p>我是标题</p>
                    </div>
                </a></li>

                <li><a href="design.html"><img src="<%=basePath%>/static/images/sjtka_pic1.png" />
                    <div class="botm_txtd">
                        <p>我是标题我是标题我是标题我是标题我是标题</p>
                    </div>
                </a></li>
                <li><a href="design.html"><img src="<%=basePath%>/static/images/sjtka_pic2.png" />
                    <div class="botm_txtd">
                        <p>我是标题</p>
                    </div>
                </a></li>
                <li><a href="design.html"><img src="<%=basePath%>/static/images/sjtka_pic3.png" />
                    <div class="botm_txtd">
                        <p>我是标题</p>
                    </div>
                </a></li>
                <li><a href="design.html"><img src="<%=basePath%>/static/images/sjtka_pic4.png" />
                    <div class="botm_txtd">
                        <p>我是标题我是标题我是标题我是标题我是标题</p>
                    </div>
                </a></li>
                <li><a href="design.html"><img src="<%=basePath%>/static/images/sjtka_pic5.png" />
                    <div class="botm_txtd">
                        <p>我是标题</p>
                    </div>
                </a></li>
                <li><a href="design.html"><img src="<%=basePath%>/static/images/sjtka_pic6.png" />
                    <div class="botm_txtd">
                        <p>我是标题</p>
                    </div>
                </a></li>

            </ul>
        </div><!-- design_list -->


        <div class="sj_fr">
            <div class="hong_tit"><h2>交易排行榜</h2> <a href="#">更多 ></a></div>

            <div class="phb_con" id="jyphb">
                <div class="hd">
                    <ul></ul>
                </div>
                <div class="hxphb bd">
                    <ul>
                        <li>
                            <a href="design_del.html"><img src="<%=basePath%>/static/images/sjtka_pic1.png" /></a>
                            <div class="txt_fr">
                                <h2><a href="design_del.html">天津爱明婚礼会馆</a></h2>
                                <p>2016-07-08</p>
                                <p>地址：艾尔艾尔儿</p>
                            </div>
                        </li>
                        <li>
                            <a href="design_del.html"><img src="<%=basePath%>/static/images/sjtka_pic2.png" /></a>
                            <div class="txt_fr">
                                <h2><a href="design_del.html">天津爱明婚礼会馆</a></h2>
                                <p>2016-07-08</p>
                                <p>地址：艾尔艾尔儿</p>
                            </div>
                        </li>
                        <li>
                            <a href="design_del.html"><img src="<%=basePath%>/static/images/sjtka_pic3.png" /></a>
                            <div class="txt_fr">
                                <h2><a href="design_del.html">天津爱明天津爱明婚礼会馆婚礼会馆</a></h2>
                                <p>2016-07-08</p>
                                <p>地址：艾尔艾艾尔艾尔儿尔儿</p>
                            </div>
                        </li>
                        <li>
                            <a href="design_del.html"><img src="<%=basePath%>/static/images/sjtka_pic4.png" /></a>
                            <div class="txt_fr">
                                <h2><a href="design_del.html">天津爱明婚礼会馆</a></h2>
                                <p>2016-07-08</p>
                                <p>地址：艾尔艾尔儿</p>
                            </div>
                        </li>
                        <li>
                            <a href="design_del.html"><img src="<%=basePath%>/static/images/sjtka_pic1.png" /></a>
                            <div class="txt_fr">
                                <h2><a href="design_del.html">天津爱明婚礼会馆</a></h2>
                                <p>2016-07-08</p>
                                <p>地址：艾尔艾尔儿</p>
                            </div>
                        </li>
                        <li>
                            <a href="design_del.html"><img src="<%=basePath%>/static/images/sjtka_pic2.png" /></a>
                            <div class="txt_fr">
                                <h2><a href="design_del.html">天津爱明婚礼会馆</a></h2>
                                <p>2016-07-08</p>
                                <p>地址：艾尔艾尔儿</p>
                            </div>
                        </li>
                    </ul>
                </div>

            </div>
            <script type="text/javascript">
                jQuery("#jyphb").slide({titCell:".hd ul",mainCell:".bd ul",autoPage:true,effect:"top",autoPlay:true,vis:4,trigger:"click"});
            </script>

        </div><!-- sj_fr -->

    </div><!-- hei380px -->



</div><!-- wrap -->




<!-- 摄影图库 -->
<div class="bg_hs">
    <div class="wrap">
        <div class="tit_pic"><a href="photography.html"><img src="<%=basePath%>/static/images/tit_pic3.png" height="70" width="287" /></a></div>

        <div class="hei380px">


            <div class="design_list">
                <ul class="clearfix">
                    <li><a href="design.html"><img src="<%=basePath%>/static/images/hlxa_pic1.png" />
                        <div class="txt_over">
                            <h2>我是标题</h2>
                            <p>我是简介我是简介我是简介我是简介我是简介</p>
                        </div>
                    </a></li>
                    <li><a href="design.html"><img src="<%=basePath%>/static/images/hlxa_pic2.png" />
                        <div class="txt_over">
                            <h2>我是标题</h2>
                            <p>我是简介我是简介我是简介我是简介我是简介</p>
                        </div>
                    </a></li>
                    <li><a href="design.html"><img src="<%=basePath%>/static/images/pbl_6.png" />
                        <div class="txt_over">
                            <h2>我是标题</h2>
                            <p>我是简介我是简介我是简介我是简介我是简介</p>
                        </div>
                    </a></li>
                    <li><a href="design.html"><img src="<%=basePath%>/static/images/pbl_5.png" />
                        <div class="txt_over">
                            <h2>我是标题</h2>
                            <p>我是简介我是简介我是简介我是简介我是简介</p>
                        </div>
                    </a></li>
                    <li><a href="design.html"><img src="<%=basePath%>/static/images/sytk_pic1.png" />
                        <div class="txt_over">
                            <h2>我是标题</h2>
                            <p>我是简介我是简介</p>
                        </div>
                    </a></li>
                    <li><a href="design.html"><img src="<%=basePath%>/static/images/sytk_pic2.png" />
                        <div class="txt_over">
                            <h2>我是标题</h2>
                            <p>我是简介我是简介</p>
                        </div>
                    </a></li>
                    <li><a href="design.html"><img src="<%=basePath%>/static/images/sytk_pic3.png" />
                        <div class="txt_over">
                            <h2>我是标题</h2>
                            <p>我是简介我是简介</p>
                        </div>
                    </a></li>
                    <li><a href="design.html"><img src="<%=basePath%>/static/images/sytk_pic4.png" />
                        <div class="txt_over">
                            <h2>我是标题</h2>
                            <p>我是简介我是简介</p>
                        </div>
                    </a></li>


                </ul>
            </div><!-- design_list -->


            <div class="sj_fr">
                <div class="hong_tit col_mdm"><h2>名师面对面</h2> <a href="#">更多 ></a></div>
                <div class="phb_con" id="mdm_con">
                    <div class="hd">
                        <ul></ul>
                    </div>
                    <div class="hxphb bd">
                        <ul>
                            <li>
                                <a href="design_del.html"><img src="<%=basePath%>/static/images/sytk_pic5.png" /></a>
                                <div class="txt_fr">
                                    <h2><a href="design_del.html">天津爱明婚礼会馆</a></h2>
                                    <p>2016-07-08</p>
                                    <p>地址：艾尔艾尔儿</p>
                                </div>
                            </li>
                            <li>
                                <a href="design_del.html"><img src="<%=basePath%>/static/images/sytk_pic6.png" /></a>
                                <div class="txt_fr">
                                    <h2><a href="design_del.html">天津爱明婚礼会馆</a></h2>
                                    <p>2016-07-08</p>
                                    <p>地址：艾尔艾尔儿</p>
                                </div>
                            </li>
                            <li>
                                <a href="design_del.html"><img src="<%=basePath%>/static/images/sytk_pic7.png" /></a>
                                <div class="txt_fr">
                                    <h2><a href="design_del.html">天津爱明天津爱明婚礼会馆婚礼会馆</a></h2>
                                    <p>2016-07-08</p>
                                    <p>地址：艾尔艾艾尔艾尔儿尔儿</p>
                                </div>
                            </li>
                            <li>
                                <a href="design_del.html"><img src="<%=basePath%>/static/images/sytk_pic8.png" /></a>
                                <div class="txt_fr">
                                    <h2><a href="design_del.html">天津爱明婚礼会馆</a></h2>
                                    <p>2016-07-08</p>
                                    <p>地址：艾尔艾尔儿</p>
                                </div>
                            </li>
                            <li>
                                <a href="design_del.html"><img src="<%=basePath%>/static/images/sytk_pic5.png" /></a>
                                <div class="txt_fr">
                                    <h2><a href="design_del.html">天津爱明婚礼会馆</a></h2>
                                    <p>2016-07-08</p>
                                    <p>地址：艾尔艾尔儿</p>
                                </div>
                            </li>
                            <li>
                                <a href="design_del.html"><img src="<%=basePath%>/static/images/sytk_pic6.png" /></a>
                                <div class="txt_fr">
                                    <h2><a href="design_del.html">天津爱明婚礼会馆</a></h2>
                                    <p>2016-07-08</p>
                                    <p>地址：艾尔艾尔儿</p>
                                </div>
                            </li>
                            <li>
                                <a href="design_del.html"><img src="<%=basePath%>/static/images/sytk_pic7.png" /></a>
                                <div class="txt_fr">
                                    <h2><a href="design_del.html">天津爱明天津爱明婚礼会馆婚礼会馆</a></h2>
                                    <p>2016-07-08</p>
                                    <p>地址：艾尔艾艾尔艾尔儿尔儿</p>
                                </div>
                            </li>
                            <li>
                                <a href="design_del.html"><img src="<%=basePath%>/static/images/sytk_pic8.png" /></a>
                                <div class="txt_fr">
                                    <h2><a href="design_del.html">天津爱明婚礼会馆</a></h2>
                                    <p>2016-07-08</p>
                                    <p>地址：艾尔艾尔儿</p>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <script type="text/javascript">
                    jQuery("#mdm_con").slide({titCell:".hd ul",mainCell:".bd ul",autoPage:true,effect:"top",autoPlay:true,vis:4,trigger:"click"});
                </script>

            </div><!-- sj_fr -->

        </div><!-- hei380px -->


    </div><!-- wrap -->
</div><!-- bg_hs -->



<!-- 婚秀 -->
<div class="wrap">
    <div class="tit_pic"><a href="wedding.html"><img src="<%=basePath%>/static/images/tit_pic5.png" height="70" width="260" /></a></div>

    <div class="hei380px">


        <div class="design_list da_img hl_listd">
            <ul class="clearfix">

                <li><a href="wedding_del.html"><img src="<%=basePath%>/static/images/hlxa_pic6.png" /><span class="bofang_icon"></span>

                    <div class="botm_txtd">
                        <p>我是标题我是标题</p>
                    </div>
                </a></li>
                <li><a href="wedding_del.html"><img src="<%=basePath%>/static/images/hlxa_pic1.png" /><span class="bofang_icon"></span>
                    <div class="botm_txtd">
                        <p>我是标题我是标题</p>
                    </div>
                </a></li>
                <li><a href="wedding_del.html"><img src="<%=basePath%>/static/images/hlxa_pic2.png" /><span class="bofang_icon"></span>
                    <div class="botm_txtd">
                        <p>我标题我是标题</p>
                    </div>
                </a></li>
                <li><a href="wedding_del.html"><img src="<%=basePath%>/static/images/hlxa_pic3.png" /><span class="bofang_icon"></span>
                    <div class="botm_txtd">
                        <p>我是标题我是标题我是标题我是标题</p>
                    </div>
                </a></li>
                <li><a href="wedding_del.html"><img src="<%=basePath%>/static/images/hlxa_pic4.png" /><span class="bofang_icon"></span>
                    <div class="botm_txtd">
                        <p>我是标题我是标题我是标题我是标题</p>
                    </div>
                </a></li>
                <li><a href="wedding_del.html"><img src="<%=basePath%>/static/images/sjtka_pic3.png" /><span class="bofang_icon"></span>
                    <div class="botm_txtd">
                        <p>我是标题我是标题我是标题我是标题</p>
                    </div>
                </a></li>
                <li><a href="wedding_del.html"><img src="<%=basePath%>/static/images/sjtka_pic2.png" /><span class="bofang_icon"></span>
                    <div class="botm_txtd">
                        <p>我是标题我是标题我是标题我是标题</p>
                    </div>
                </a></li>
                <li><a href="wedding_del.html"><img src="<%=basePath%>/static/images/hlxa_pic5.png" /><span class="bofang_icon"></span>
                    <div class="botm_txtd">
                        <p>我是标题我是标题我是标题我是标题</p>
                    </div>
                </a></li>


            </ul>
        </div><!-- design_list -->


        <div class="sj_fr">
            <div class="hong_tit col_hx"><h2>婚秀排行榜</h2> <a href="wedding.html">更多 ></a></div>

            <div class="phb_con" id="hxphb">
                <div class="hd">
                    <ul></ul>
                </div>

                <div class="hxphb bd">
                    <ul>
                        <li>
                            <a href="wedding_del.html"><img src="<%=basePath%>/static/images/hlxa_pic1.png" /></a>
                            <div class="txt_fr">
                                <h2><a href="design_del.html">天津爱明婚礼会馆</a></h2>
                                <p>2016-07-08</p>
                                <p>地址：艾尔艾尔儿</p>
                            </div>
                        </li>
                        <li>
                            <a href="wedding_del.html"><img src="<%=basePath%>/static/images/hlxa_pic2.png" /></a>
                            <div class="txt_fr">
                                <h2><a href="design_del.html">天津爱明婚礼会馆</a></h2>
                                <p>2016-07-08</p>
                                <p>地址：艾尔艾尔儿</p>
                            </div>
                        </li>
                        <li>
                            <a href="wedding_del.html"><img src="<%=basePath%>/static/images/hlxa_pic4.png" /></a>
                            <div class="txt_fr">
                                <h2><a href="design_del.html">天津爱明天津爱明婚礼会馆婚礼会馆</a></h2>
                                <p>2016-07-08</p>
                                <p>地址：艾尔艾艾尔艾尔儿尔儿</p>
                            </div>
                        </li>
                        <li>
                            <a href="wedding_del.html"><img src="<%=basePath%>/static/images/hlxa_pic5.png" /></a>
                            <div class="txt_fr">
                                <h2><a href="design_del.html">天津爱明婚礼会馆</a></h2>
                                <p>2016-07-08</p>
                                <p>地址：艾尔艾尔儿</p>
                            </div>
                        </li>
                        <li>
                            <a href="wedding_del.html"><img src="<%=basePath%>/static/images/hlxa_pic1.png" /></a>
                            <div class="txt_fr">
                                <h2><a href="design_del.html">天津爱明婚礼会馆</a></h2>
                                <p>2016-07-08</p>
                                <p>地址：艾尔艾尔儿</p>
                            </div>
                        </li>
                        <li>
                            <a href="wedding_del.html"><img src="<%=basePath%>/static/images/hlxa_pic2.png" /></a>
                            <div class="txt_fr">
                                <h2><a href="design_del.html">天津爱明婚礼会馆</a></h2>
                                <p>2016-07-08</p>
                                <p>地址：艾尔艾尔儿</p>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            <script type="text/javascript">
                jQuery("#hxphb").slide({titCell:".hd ul",mainCell:".bd ul",autoPage:true,effect:"top",autoPlay:true,vis:4,trigger:"click"});
            </script>
        </div><!-- sj_fr -->

    </div><!-- hei380px -->


</div><!-- wrap -->

<!-- 道具新品 -->
<div class="bg_hs">
    <div class="wrap">
        <div class="tit_pic"><a href="multimedia.html"><img src="<%=basePath%>/static/images/tit_pic4.png" height="70" width="284" /></a></div>

        <div class="hei380px">


            <div class="design_list da_img">
                <ul class="clearfix">
                    <li><a href="media_del.html"><img src="<%=basePath%>/static/images/dmtk_pic1.png" />
                        <div class="botm_txtd">
                            <p>我是标题</p>
                        </div>
                    </a></li>
                    <li><a href="media_del.html"><img src="<%=basePath%>/static/images/dmtk_pic2.png" />
                        <div class="botm_txtd">
                            <p>我是标题我是标题我是标题我是标题我是标题我是标题</p>
                        </div>
                    </a></li>
                    <li><a href="media_del.html"><img src="<%=basePath%>/static/images/dmtk_pic3.png" />
                        <div class="botm_txtd">
                            <p>我是标题</p>
                        </div>
                    </a></li>
                    <li><a href="media_del.html"><img src="<%=basePath%>/static/images/dmt_pic4.png" />
                        <div class="botm_txtd">
                            <p>我是标题</p>
                        </div>
                    </a></li>
                    <li class="long_wid"><a href="media_del.html"><img src="<%=basePath%>/static/images/dmt_pic1.png" />
                        <div class="botm_txtd">
                            <p>我是标题</p>
                        </div>
                    </a></li>
                    <li><a href="media_del.html"><img src="<%=basePath%>/static/images/dmt_pic6.png" />
                        <div class="botm_txtd">
                            <p>我是标题</p>
                        </div>
                    </a></li>
                    <li><a href="media_del.html"><img src="<%=basePath%>/static/images/dmt_pic7.png" />
                        <div class="botm_txtd">
                            <p>我是标题</p>
                        </div>
                    </a></li>


                </ul>
            </div><!-- design_list -->


            <div class="sj_fr">
                <div class="hong_tit xp_titd col_djxp"><h2>新品发布</h2> <a href="multimedia.html">更多 ></a></div>
                <div class="xpfb_img"> <a href="javascript:"><img src="<%=basePath%>/static/images/xpfb_pic.png" /></a></div>
            </div><!-- sj_fr -->

        </div><!-- hei380px -->



    </div><!-- wrap -->
</div><!-- bg_hs -->





<div class="find_box">
    <h2>找我们，您就对了</h2>
    欢迎全国行业领先品牌企业、知名集团联系洽谈合作
</div>

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
