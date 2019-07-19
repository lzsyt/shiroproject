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
    <title>Wind turbine - yongdong new energy co. LTD</title>
    <meta name="baidu-site-verification" content="vcn7SxixYp" />
  <meta name="keywords"
        content="small wind turbines, wind and solar hybrid streetlight systems, wind turbines, wind turbine manufacturers, wind turbine prices, small and medium wind turbines, medium wind turbines, Hunan frontier technology, wind and solar hybrid systems, power generation systems, horizontal axis wind power generation Machine, vertical axis wind turbine"/>
  <meta name="description"
        content="The main products of Yongdong New Energy Co., Ltd. include 100W-100kW horizontal-axis wind turbines, vertical-axis wind turbines and other small and medium-sized wind turbines, wind-solar complementary street lamps, wind-solar complementary distributed generation systems, solar street lamps, etc., which can provide customers with One-stop solution for wind power generation, wind and solar hybrid power generation, wind and solar hybrid street lighting, solar street lighting system, solar photovoltaic water lifting system and photovoltaic grid-connected power generation, Tel: 17773166613"/>
  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0,user-scalable=no">
    <link rel="shortcut icon" href="${staticPath }/static/images/yongdong.png" type="image/x-icon" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <link href="${staticPath }/static/windEnergy/css/bootstrap.css" rel='stylesheet' type='text/css' />
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <!-- Custom Theme files -->
    <link href="${staticPath }/static/windEnergy/css/style.css" rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="${staticPath }/static/customer/css/font-awesome.min.css">
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
    <link href="${staticPath }/static/style/css/en_fontStyle.css" rel='stylesheet' type='text/css' />
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
        /*footer部分a标签字体颜色样式*/
        .box_5 h3 a{
            color: #fff;
        }

    </style>
</head>
<body>
<script>
    $(function() {
        var pageId="";
        //获取地址中的参数
        pageId=$("#pageId").val();
        $("#nav-box li a").click(function () {
            $("#nav-box li a").css("color","#e49002");
            pageId = $(this).attr("id");
            //重新定义地址栏url
            var newUrl = "${path}/en_windEnergy/en_index?pageId="+pageId;
            history.pushState({},"",newUrl);
            $(this).css("color","#105b63");
        });
        $("#btn1").click(function () {//中文
            window.location.href="${path }/windEnergy/index?pageId=" + pageId;//动态
        });
        $("#btn2").click(function () {//英文
            window.location.href="${path }/en_windEnergy/en_index?pageId=" + pageId;//动态
        });
        if(pageId != null && pageId != undefined && pageId != ''){
            // $('#myFrame1').attr('src', "/test/data");
            // document.getElementById("myFrame1").contentWindow.location.reload(true);
            // document.getElementById("myFrame1").src=addr;//动态

            document.getElementById(pageId).click();
        }
    });
</script>
<div class="header">
    <div class="container">
        <input type="hidden" id="pageId" name="pageId" value="${pageId}">
        <div id="btns" style="float: left;position: absolute;right: 30px;">
            <a id="btn1" href="javascript:void(0);" ></a>
            <a id="btn2" href="javascript:void(0);" ></a>
        </div>

        <div class="logo">
            <img src="${staticPath}/static/windEnergy/images/yongdongLOGO.png" alt="" style="height: 45px;border: transparent;position: relative;top:-3px;"/>

            <b><span style="font-size: 37px;line-height: 38px;color: #ff7700"><span style="color: #ff77004f;" >Permanent</span><span > New Energy</span></span></b>
        </div>
        <div class="menu">
            <a class="toggleMenu" href="#"><img src="${staticPath}/static/windEnergy/images/menu.png" alt="" /> </a>
            <ul class="nav-box" id="nav-box">
                <li class="current"><a href="${path}/en_windEnergy/en_main" id="main"  >Home Page</a></li>
                <li><a href="${path}/en_windEnergy/en_productCenter"  id="productCenter" >Product Center</a></li>
                <li><a href="${path}/en_windEnergy/en_aboutUs"  id="aboutUs" >Corporate Culture</a></li>
                <li><a href="${path}/en_windEnergy/en_contact"  id="contact" >Contact Us</a></li>
                <li><a href="${path}/en_windEnergy/en_case"  id="case" >Classic Case</a></li>
            </ul>
            <script type="text/javascript" src="${staticPath}/static/windEnergy/js/responsive-nav.js"></script>

        </div>
        <div class="clearfix"> </div>
        <!----//End-top-nav---->
    </div>
</div>

<div id="content">
    <div id="contentPage">

    </div>
</div>
<!--侧边悬浮聊天对话框-->
<jsp:include page="en_talk.jsp"></jsp:include>

<div class="footer">
    <div class="container-fluid container-fluid_box">
        <div class="col-md-3 box_5">
            <h3 style="font-size: 30px;color: #989898;vertical-align: middle; margin-bottom:0px;">Permanent  New Energy</h3>
            <div class="all-contnet">
                <div class="all-img">
                    <img src="${staticPath}/static/windEnergy/images/photo_floor.png">
                </div>
                <div class="all-text">
                    <p>switchboard </p>
                    <p class="text-size" style="font-size: 27px;">0731-86663578</p>
                </div>
            </div>
            <div class="footer-list1" style="text-align: left">
                <span>address:Xiaolinzichong Road, Yuhua District, Changsha City, Hunan Province</span><br>
                <span> postcode:410000</span><br>
                <span>tel:0731-86663578</span><br>
            </div>
        </div>
        <div class="col-md-2 box_5">
            <h3>FriendShip Link</h3>
            <div class="footer-list1">
                <ul>
                    <li class="first_li"><a href="http://www.150ah.com">Photosynthetic Silicon Energy</a></li>
                    <li class="first_li"><a href="http://www.yongdong.cn" style="color: #bd4932">Wind Power Generator</a></li>
                    <li><a href="http://www.150ah.com/solarPanel/index">Solar Panel</a></li>
                    <li><a href="http://www.150ah.com/solarController/index">Controller</a></li>
                </ul>
            </div>
        </div>

        <div class="col-md-2 box_5">
            <h3><a href="${path}/en_windEnergy/en_aboutUs"  class="aboutUs">Corporate Culture</a></h3>
            <div class="footer-list1">
                <ul>
                    <li><a href="${path}/en_windEnergy/en_productCenter"  class="productCenter">Product Center</a></li>
                    <li><a href="${path}/en_windEnergy/en_aboutUs"  class="aboutUs">Corporate Culture</a></li>
                    <li><a href="${path}/en_windEnergy/en_contact"  class="contact">Contact Us</a></li>
                    <li><a href="${path}/en_windEnergy/en_case"  class="case">Classic Case</a></li>
                </ul>
            </div>
        </div>
<%--        <div class="col-md-3 box_5">--%>
<%--            <h3><a href="${path}/en_windEnergy/en_contact"  class="contact">Contact Us</a></h3>--%>
<%--            <div class="footer-list">--%>
<%--                <ul>--%>
<%--                    <li class="list_top" style="margin: 0"><i class="location"> </i>--%>
<%--                        <p>Xiaolinzichong Road, Yuhua District, Changsha City, Hunan Province</p></li>--%>
<%--                    <li class="list_top" style="margin: 0"><i class="phone"> </i>--%>
<%--                        <p>0731-86663578</p></li>--%>
<%--                </ul>--%>
<%--            </div>--%>
<%--        </div>--%>
        <div class="col-md-4 box_5">
            <h3 style="margin: 0">Watch us</h3>>
            <div>
                <img id="btn_img1" src="${staticPath}/static/windEnergy/talk/images/wx.jpg" style="width:135px" alt="风力发电机">
                <img id="btn_img2" src="${staticPath}/static/windEnergy/talk/images/wx2.jpg" style="width:135px" alt="技术">
            </div>
        </div>
        <div class="col-md-1 box_5">
            <%--<h3><a href="${path}/windEnergy/case"  class="case">经典案例</a></h3>--%>
            <div class="map_box" style="text-align: right">
                <img src="${staticPath}/static/windEnergy/images/map.jpg" alt="地图" />
                <p class="world">Best selling world</p>
            </div>
        </div>
    </div>

</div>
<div class="footer_bottom footer_bottom_box">
    <div class="container">
        <div class="copy">
            <p>Copyright ©Permanent New Energy Co., Ltd. <a href="http://www.miitbeian.gov.cn" rel="nofollow" style="color: #989898" target="_blank">&nbsp;&nbsp;HunanICP equipment18010512-1</a></p>
        </div>
        <ul class="footer_social">
            <li><a href="#"> <i class="fb"> </i> </a></li>
            <li><a href="#"><i class="tw"> </i> </a></li>
            <li><a href="#"><i class="instagram"> </i> </a></li>
            <li><a href="#"><i class="linkedin"> </i> </a></li>
        </ul>
    </div>
</div>

<div id="content2" class="contact_box">
    <div>
        <form id="mes_form">
            <input class="inp-first"  id="inp-first" placeholder="Please enter your name">
            <input class="inp-two" id="inp-two" placeholder="Please enter your phone number">
            <button id="mes_submit">submit</button>
        </form>
    </div>
</div>

</body>
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
        var website="风力发电机";
        var data={"phone":phone,"name":name,"website":website};
        $.ajax({
            type: 'POST',
            url: "${path}/en_windEnergy/customer",
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

