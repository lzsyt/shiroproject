<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/3/29
  Time: 9:55
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/commons/global.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>风力发电机-永动新能源有限公司</title>
	  <meta name="baidu-site-verification" content="vcn7SxixYp" />
    <meta name="keywords" content="小型风力发电机,风光互补路灯系统,太阳能发电系统,家用太阳能发电系统,光伏发电系统,风力发电机,风力发电机厂家,风力发电机价格,小型风力发电机,中小型风力发电机,中型风力发电机,湖南前沿科技,风光互补系统,发电系统,水平轴风力发电机,垂直轴风力发电机" />
    <meta name="description" content="永动新能源有限公司主要产品有100W-100kW水平轴风力发电机、垂直轴风力发电机等中小型风力发电机、风光互补路灯、风光互补分布式发电系统、太阳能灯路灯等，可为客户提供风力发电、风光互补发电、风光互补路灯，太阳能路灯系统、 太阳能光伏提水系统及光伏并网发电等一站式解决方案，电话:17773166613" />
  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0,user-scalable=no">
    <link rel="shortcut icon" href="${staticPath }/static/images/yongdong.png" type="image/x-icon" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <link href="${staticPath }/static/windEnergy/css/bootstrap.css" rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="${staticPath }/static/customer/css/font-awesome.min.css">
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <!-- Custom Theme files -->
    <link href="${staticPath }/static/windEnergy/css/style.css" rel='stylesheet' type='text/css' />
    <!--
    <link href='http:///fonts.useso.com/css?family=Open+Sans:300,400,600,700,800' rel='stylesheet' type='text/css'>
    -->
    <!-- start plugins -->
    <script src="${staticPath }/static/windEnergy/js/jquery.min.js"></script>
    <!--
    <script type="text/javascript" src="${staticPath }/static/windEnergy/js/fliplightbox.min.js"></script>
    <script type="text/javascript">
        $('body').flipLightBox()
    </script>
    -->
    <script type="text/javascript" src="${staticPath }/static/windEnergy/js/jquery.easing.min.js"></script>
    <script type="text/javascript" src="${staticPath }/static/windEnergy/js/jquery.mixitup.min.js"></script>
    <link href="${staticPath }/static/style/css/fontStyle.css" rel='stylesheet' type='text/css' />
    <script type="text/javascript" src="${staticPath}/static/windEnergy/js/responsive-nav.js"></script>
    <script src="${staticPath }/static/customer/js/layer.js"></script>

    <style>
        /*中英文切换按钮样式*/
        #btn1{
            display: inline-block;
            width: 90px;
            height: 20px;
            border-radius: 10px;
            line-height: 20px;
            background: url(/static/windEnergy/images/language.png) no-repeat 15px 0px;
        }

        #btn2{
            display: inline-block;
            width: 110px;
            height: 20px;
            border-radius: 50px;
            line-height: 20px;
            background: url(/static/windEnergy/images/language.png) no-repeat -75px 0px;

        }
        /*footer部分a标签样式*/
        .box_5 h3 a{
            color: #fff;
        }
        .box_5{
            text-align: left;
        }

    </style>
    <%--商桥代码--%>
    <script>
        var _hmt = _hmt || [];
        (function() {
            var hm = document.createElement("script");
            hm.src = "https://hm.baidu.com/hm.js?9f3a25bf6d45f0eb41bc68e91645fa69";
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(hm, s);
        })();
    </script>

</head>
<body>

    <script>
        $(function() {
            //中英文切换
            var pageId="";

            //获取地址中的参数
            pageId=$("#pageId").val();
            $("#nav-box li a").click(function () {
                //设定菜单栏的颜色
                $("#nav-box li a").css("color","#e49002");
                pageId = $(this).attr("id");
                //重新定义地址栏url
                var newUrl = "${path}/windEnergy/index?pageId="+pageId;
                history.pushState({},"",newUrl);
                //改变菜单栏点击后的颜色
                $(this).css("color","#105b63");
            });
            $("#btn1").click(function () {//中文
                window.location.href="${path}/windEnergy/index?pageId=" + pageId;//动态
            });
            $("#btn2").click(function () {//英文
                window.location.href="${path}/en_windEnergy/en_index?pageId=" + pageId;//动态
            });
            if(pageId != null && pageId != undefined && pageId != ''){
                document.getElementById(pageId).click();
            }
        });
    </script>
    <div class="header">
        <div class="container">
            <input type="hidden" id="pageId" name="pageId" value="${pageId}">
            <div id="btns" style="float: left;position: absolute;right: 30px;top:15px">
                <a id="btn1" href="javascript:void(0);" ></a>
                <a id="btn2" href="javascript:void(0);" ></a>
            </div>

            <div class="logo" >
                <img src="${staticPath}/static/windEnergy/images/yongdongLOGO.png" alt="" style="height: 45px;border: transparent;position: relative;top:-3px;"/>
                <b><span style="font-size: 37px;line-height: 38px;color: #ff7700"><span style="color: #ff77004f;" >永动</span><span>新能源</span></span></b>
            </div>
            <div class="menu">
                <a class="toggleMenu" href="#"><img src="${staticPath}/static/windEnergy/images/menu.png" alt="" /> </a>
                <ul class="nav-box" id="nav-box">
                    <li class="current"><a href="${path}/windEnergy/main" id="main" class="myframe"  >首页</a></li>
                    <li><a href="${path}/windEnergy/productCenter" id="productCenter" class="myframe"  >产品中心</a></li>
                    <li><a href="${path}/windEnergy/aboutUs" id="aboutUs" class="myframe"  >企业文化</a></li>
                    <li><a href="${path}/windEnergy/contact" id="contact" class="myframe"  >联系我们</a></li>
                    <li><a href="${path}/windEnergy/case" id="case" class="myframe"  >经典案例</a></li>
                </ul>


            </div>

            <div class="clearfix"> </div>
            <!----//End-top-nav---->
        </div>

        <div class="nav-right"> <span class="call-mun">17773166613</span> </div>

    </div>

<div id="content">
    <div  id="contentPage">


    </div>
</div>
    <!--侧边悬浮聊天对话框-->
    <jsp:include page="talk.jsp"></jsp:include>

<div class="footer">
    <div class="container-fluid container-fluid_box">
<%--        <div class="col-md-3 box_5">--%>
<%--            <h3><a href="${path}/windEnergy/contact"  class="contact">联系我们</a></h3>--%>
<%--            <div class="footer-list">--%>
<%--                <ul>--%>
<%--                    <li class="list_top"><i class="location"> </i>--%>
<%--                        <p>湖南长沙市雨花区小林子冲路</p></li>--%>
<%--                    <li class="list_top"><i class="phone"> </i>--%>
<%--                        <p>0731-86663578</p></li>--%>
<%--                </ul>--%>
<%--            </div>--%>
<%--        </div>--%>
    <div class="col-md-3 box_5">
        <h3 style="font-size: 30px;color: #989898;vertical-align: middle; margin-bottom:0px;">永动新能源</h3>
        <div class="all-contnet">
            <div class="all-img">
                <img src="${staticPath}/static/windEnergy/images/photo_floor.png">
            </div>
            <div class="all-text">
                <p>总机</p>
                <p class="text-size" style="font-size: 27px;">0731-86663578</p>
            </div>
        </div>
        <div class="footer-list1" style="text-align: left">
           <span>地址:湖南长沙市雨花区小林子冲路</span><br>
            <span> 邮编:410000</span><br>
            <span>电话:0731-86663578</span><br>
        </div>
    </div>
        <div class="col-md-2 box_5">
            <h3>友情链接</h3>
            <div class="footer-list1">
                <ul>
                    <li><a href="http://www.150ah.com">光合硅能</a></li>
                    <li><a href="http://www.yongdong.cn" style="color: #bd4932">风力发电机</a></li>
                    <li><a href="http://www.150ah.com/solarPanel/index">太阳能电池板</a></li>
                    <li><a href="http://www.150ah.com/solarController/index">控制器</a></li>
                </ul>
            </div>
        </div>
        <div class="col-md-2 box_5">
            <h3><a href="${path}/windEnergy/aboutUs"  class="aboutUs">企业文化</a></h3>
            <div class="footer-list1">
                <ul>
                    <li><a href="${path}/windEnergy/productCenter"  class="productCenter">产品中心</a></li>
                    <li><a href="${path}/windEnergy/aboutUs"  class="aboutUs">企业文化</a></li>
                    <li><a href="${path}/windEnergy/contact"  class="contact">联系我们</a></li>
                    <li><a href="${path}/windEnergy/case"  class="case">经典案例</a></li>
                </ul>
            </div>
        </div>


        <div class="col-md-4 box_5" >
            <h3 style="margin: 0">关注我们</h3>>
            <div>
                <img id="btn_img1" src="${staticPath}/static/windEnergy/talk/images/wx.jpg" style="width:135px" alt="风力发电机">
                <img id="btn_img2" src="${staticPath}/static/windEnergy/talk/images/wx2.jpg" style="width:135px;" alt="技术">
            </div>
        </div>
        <div class="col-md-1 box_5">
            <%--<h3><a href="${path}/windEnergy/case"  class="case">经典案例</a></h3>--%>
                <div class="map_box" style="text-align: right">
                    <img src="${staticPath}/static/windEnergy/images/map.jpg" alt="地图" />
                    <p class="world">畅销全球</p>
                </div>
        </div>
    </div>
</div>
<div class="footer_bottom footer_bottom_box">
    <div class="container">
        <div class="copy">
            <p>Copyright ©永动新能源有限公司 <a href="http://www.miitbeian.gov.cn" rel="nofollow" style="color: #989898" target="_blank" >&nbsp;&nbsp;湘ICP备18010512号-1</a></p>
        </div>
        <ul class="footer_social">
            <li><a href=""> <i class="fb"> </i> </a></li>
            <li><a href=""><i class="tw"> </i> </a></li>
            <li><a href=""><i class="instagram"> </i> </a></li>
            <li><a href=""><i class="linkedin"> </i> </a></li>
        </ul>
    </div>
</div>
    <div id="content2" class="contact_box">
        <div>
            <form id="mes_form">
                <input class="inp-first"  id="inp-first" placeholder="请输入姓名">
                <input class="inp-two" id="inp-two" placeholder="请输入电话号码">
                <button id="mes_submit">提交</button>
            </form>
        </div>
    </div>


</body>
<script>
    /*微信弹出层*/
    $(function(){
        $("#btn_img1").click(function(){
            var img = '<img src="${staticPath}/static/windEnergy/talk/images/wx.jpg" alt="风力发电机"/>';
            layer.open({
                type: 1,
                title: false,
                closeBtn: 0,
                area: ['430px', '430px'],
                shadeClose: true,
                content:img
            });

        })
    });
    $(function(){
        $("#btn_img2").click(function(){
            var img = '<img  src="${staticPath}/static/windEnergy/talk/images/wx2.jpg" alt="技术"/>';
            layer.open({
                type: 1,
                title: false,
                closeBtn: 0,
                area: ['430px', '430px'],
                shadeClose: true,
                content:img
            });

        })
    });
</script>

<script>
    //footer部分页面切换
    $(function(){
        $(".productCenter").click(function(){
            $("#productCenter").click();
        })
        $(".aboutUs").click(function(){
            $("#aboutUs").click();
        })
        $(".contact").click(function(){
            $("#contact").click();
        })
        $(".case").click(function(){
            $("#case").click();
        })
    })
    //客户信息提交
    $("#mes_submit").click(function(){

        var name=$("#inp-first").val();
        var phone=$("#inp-two").val();
        if (isNull(name)){
            alert("请输入您的姓名");
            return false;
        }
        if (isNull(phone)){
            alert("请输入您的电话");
            return false;

        }
        var website="风力发电机";
        var data={"phone":phone,"name":name,"website":website};
        $.ajax({
            type: 'POST',
            url: "${path}/windEnergy/customer",
            data: data,
            dataType: "text",
            success: function (result) {
                if (result=="success") {
                    alert("提交成功");
                }
            }
        });
        return false;
    });
    function isNull(value) {
        if (value==null||$.trim(value)==""){
            return true;
        }
        return false;
    }
</script>
</html>
