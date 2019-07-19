<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/commons/global.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>太阳能电池板官网|湖南前沿科技有限公司|太阳能电池板厂家|太阳能阳能光伏设备</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords" content="太阳能电池板官网，湖南前沿科技有限公司,太阳能电池板厂家,太阳能组件,太阳能电池板,太阳能板,光伏组件,光伏电池板,太阳能供电，太阳能组件,太阳能路灯,太阳能光伏板,太阳能发电,太阳能光伏设备，光伏组件生产厂家,光伏组件价格"/>
    <meta name="description" content="湖南前沿科技有限公司是一家专业生产风光电池组件以及风光高科技产品的企业，拥有一流的专业技术队伍及先进的生产检测设备。公司引进了先进生产设备，通过严格的质量控制器体积，使得产品具有效能高，寿命长等特点。电话：17773166613"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="baidu-site-verification" content="QEMpUmzU1b" />
    <script type="application/x-javascript"> addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);

    function hideURLbar() {
        window.scrollTo(0, 1);
    } </script>
    <link href="${staticPath }/static/windEnergy/css/bootstrap.css" rel='stylesheet' type='text/css'/>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="${staticPath }/static/windEnergy/js/jquery.min.js"></script>
    <!-- Custom Theme files -->
    <link href="${staticPath}/static/windEnergy/css/style.css" rel='stylesheet' type='text/css'/>
    <link href="${staticPath }/static/style/css/fontStyle.css" rel='stylesheet' type='text/css'/>
    <link rel="stylesheet" href="${staticPath }/static/customer/css/font-awesome.min.css">
   <%-- <script src="${staticPath }/static/js/jquery-3.3.1.js"></script>--%>
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
        .box_5 h3 a {
            color: #fff;
        }
    </style>
</head>
<body >
<script>
    //中英文切换
    $(function () {
        var pageId = "";
        //获取地址中的参数
        pageId = $("#pageId").val();
        $("#nav-box li a").click(function () {
            $("#nav-box li a").css("color", "#e49002");
            pageId = $(this).attr("id");
            //重新定义地址栏url
            var newUrl = "${path}/solarPanel/index?pageId=" + pageId;
            history.pushState({}, "", newUrl);
            $(this).css("color", "#105b63");

        });
        $("#btn1").click(function () {//中文
            window.location.href = "${path}/solarPanel/index?pageId=" + pageId;//动态
        });
        $("#btn2").click(function () {//英文
            window.location.href = "${path}/en_solarPanel/en_index?pageId=" + pageId;//动态
        });

        if (pageId != null && pageId != undefined && pageId != '') {
            // $('#myFrame1').attr('src', "/test/data");
            // document.getElementById("myFrame1").contentWindow.location.reload(true);
            // document.getElementById("myFrame1").src=addr;//
            document.getElementById(pageId).click();
        }
    });
</script>
<div class="header">
    <div class="container">
        <input type="hidden" id="pageId" name="pageId" value="${pageId}">
        <div id="btns" style="float: left;position: absolute;right: 30px;">
            <a id="btn1" href="javascript:void(0);"></a>
            <a id="btn2" href="javascript:void(0);"></a>
        </div>
        <div class="logo">
            <b><span style="font-size: 37px;line-height: 38px;color: #ff7700"><span
                    style="color: #ff77004f;">湖南前沿</span>太阳能电池板</span></b>
        </div>
        <div class="menu">
            <a class="toggleMenu" href="#"><img src="${staticPath}/static/windEnergy/images/menu.png" alt=""/> </a>
            <ul class="nav-box" id="nav-box">
                <li class="current"><a href="${path}/solarPanel/main" id="main" class="myframe" >首页</a>
                </li>
                <li><a href="${path}/solarPanel/productCenter" id="productCenter" class="myframe"
                       >产品中心</a></li>
                <li><a href="${path}/solarPanel/aboutUs" id="aboutUs" class="myframe" >企业文化</a></li>
                <li><a href="${path}/solarPanel/contact" id="contact" class="myframe" >联系我们</a></li>
                <li><a href="${path}/solarPanel/case" id="case" class="myframe" >经典案例</a></li>
            </ul>


        </div>

        <div class="clearfix"></div>
        <!----//End-top-nav---->
        <div class="nav-right" > <span class="call-mun">17773166613</span> </div>
    </div>
</div>

<div id="content">
    <div id="contentPage">

    </div>
</div>
<!--侧边悬浮聊天对话框-->
<jsp:include page="talk.jsp"></jsp:include>

<div class="footer">
    <div class="container-fluid container-fluid_box">
        <div class="col-md-3 box_5">
            <h3 style="font-size: 30px;color: #989898;vertical-align: middle; margin-bottom:0px;">湖南前沿太阳板</h3>
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
                    <li><a href="http://www.yongdong.cn">风力发电机</a></li>
                    <li><a href="http://www.150ah.com/solarPanel/index" style="color: #bd4932">太阳能电池板</a></li>
                    <li><a href="http://www.150ah.com/solarController/index">控制器</a></li>
                </ul>
            </div>
        </div>

        <div class="col-md-2 box_5">
            <h3><a href="${path}/solarPanel/aboutUs"  class="aboutUs">企业文化</a></h3>
            <div class="footer-list1">
                <ul>
                    <li><a href="${path}/solarPanel/productCenter"  class="productCenter">产品中心</a></li>
                    <li><a href="${path}/solarPanel/aboutUs"  class="aboutUs">企业文化</a></li>
                    <li><a href="${path}/solarPanel/contact"  class="contact">联系我们</a></li>
                    <li><a href="${path}/solarPanel/case"  class="case">经典案例</a></li>
                </ul>
            </div>
        </div>
<%--        <div class="col-md-3 box_5">--%>
<%--            <h3><a href="${path}/solarPanel/contact"  class="contact">联系我们</a></h3>--%>
<%--            <div class="footer-list">--%>
<%--                <ul>--%>
<%--                    <li class="list_top"><i class="location"> </i>--%>
<%--                        <p>湖南长沙市雨花区小林子冲路</p></li>--%>
<%--                    <li class="list_top"><i class="phone"> </i>--%>
<%--                        <p>0731-86663578</p></li>--%>
<%--                </ul>--%>
<%--            </div>--%>
<%--        </div>--%>
        <div class="col-md-4 box_5">
            <h3 style="margin: 0">关注我们</h3>>
            <div >
                <img id="btn_img1" src="${staticPath}/static/windEnergy/talk/images/wx.jpg" style="width:135px" alt="风力发电机">
                <img id="btn_img2" src="${staticPath}/static/windEnergy/talk/images/wx2.jpg" style="width:135px" alt="技术">
            </div>
        </div>
        <div class="col-md-1 box_5">
            <div class="map_box" style="text-align: right">
                <img src="${staticPath}/static/windEnergy/images/map.jpg" alt="地图"/>
                <p class="world">畅销全球</p>
            </div>
        </div>
    </div>
</div>
<div class="footer_bottom footer_bottom_box">
    <div class="container">
        <div class="copy">
            <p>Copyright ©永动新能源有限公司<a href="http://www.miitbeian.gov.cn" rel="nofollow" style="color: #989898" target="_blank">&nbsp;&nbsp;湘ICP备16021270号-1</a></p>
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
    //footer部分页面切换
    $(function () {
        $(".productCenter").click(function () {
            $("#productCenter").click();
        })
        $(".aboutUs").click(function () {
            $("#aboutUs").click();
        })
        $(".contact").click(function () {
            $("#contact").click();
        })
        $(".case").click(function () {
            $("#case").click();
        })
    })

</script>
<script>
    /*微信弹出层*/
    $(function(){
        $("#btn_img1").click(function(){
            var img = '<img  src="${staticPath}/static/windEnergy/talk/images/wx.jpg" alt="风力发电机"/>';
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
        var website="太阳能电池板";
        var data={"phone":phone,"name":name,"website":website};
        $.ajax({
            type: 'POST',
            url: "${path}/solarPanel/customer",
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
