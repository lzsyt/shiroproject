
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/3/11
  Time: 14:21
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/commons/global.jsp" %>
<html>
<head>
    <title>Solar Panel Official Website|Hunan Frontier Technology Co., Ltd.|Solar Panel Manufacturers|Solar Solar Photovoltaic Equipment</title>
    <meta name="keywords" content="Solar Panel official website, Hunan Frontier Technology Co., Ltd., solar panel manufacturers, solar modules, solar panels, solar panels, photovoltaic modules, photovoltaic panels, solar power, solar modules, solar street lights, solar photovoltaic panels, solar power, solar energy Photovoltaic equipment, photovoltaic module manufacturers, PV module prices"/>
    <meta name="description" content="Hunan Frontier Technology Co., Ltd. is a professional manufacturer of wind-emitting battery components and high-tech products. It has a first-class professional technical team and advanced production testing equipment. The company has introduced advanced production equipment and passed the strict quality controller volume, which makes the product have high performance and long life. Phone:+86-731-86663578"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="Cache-Control" content="max-age=7200"/>
    <meta name="baidu-site-verification" content="QEMpUmzU1b" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <link href="${staticPath }/static/windEnergy/css/bootstrap.css" rel='stylesheet' type='text/css' />
    <link href="${staticPath }/static/windEnergy/css/style.css" rel='stylesheet' type='text/css' />
    <link href="${staticPath}/static/style/css/animate.min.css" rel="stylesheet" type="text/css"/>
    <script src="${staticPath }/static/windEnergy/js/jquery.min.js"></script>
    <script type="text/javascript" src="${staticPath }/static/windEnergy/js/jquery.easing.min.js"></script>
    <script type="text/javascript" src="${staticPath }/static/windEnergy/js/jquery.mixitup.min.js"></script>
    <link href="${staticPath }/static/style/css/en_fontStyle.css" rel='stylesheet' type='text/css' />
    <script type="text/javascript" src="${staticPath}/static/windEnergy/js/responsive-nav.js"></script>
    <script type="text/javascript" src="${staticPath}/static/js/jquery.waypoints.min.js"></script>
    <script src="${staticPath }/static/customer/js/layer.js"></script>
  <style>
    #main{
      color:#105b63;
    }
  </style>

</head>
<body>
<jsp:include page="en_header.jsp"></jsp:include>
<div id="content">
    <div  id="contentPage">
<div class="banner">
    <div class="banner_container">
        <div class="wmuSlider example1">
            <div class="wmuSliderWrapper">
                <c:forEach items="${ADImages}" var="adImage" begin="0" end="2">
                    <article style="position: absolute; width: 100%; opacity: 0;">
                        <div class=""  style="margin:auto;">
                            <image src="${staticPath}/static${adImage.imagePath}${adImage.en_fileName}" style="height: 650px"></image>
                        </div>
                    </article>
                </c:forEach>
            </div>
            <a class="wmuSliderPrev">Previous</a><a class="wmuSliderNext">Next</a>
            <script src="${staticPath }/static/windEnergy/js/jquery.wmuSlider.js"></script>
            <script>
                $('.example1').wmuSlider();
            </script>
        </div>
    </div>
</div>
<div class="features-grids text-center box_nav">
    <div class="container container_nav">
        <div class="wind_product">
            <p class="first_p">产品中心</p>
            <p class="second_p">Product Center</p>
            <%--<h1 class="title_size" style="background-color:#d9d9d9 ">产品中心 Product Ceneter</h1>--%>
        </div>
<%--        <c:forEach items="${mainImages}"  var="hot" end="3">--%>
<%--            <div class="col-md-3 features-grid img_nav1" style="width: 337.5px;padding: 0;margin:0 15px">--%>
<%--                <a href="${path}/en_solarPanel/en_productCenter"><img class="img-responsive" src="${staticPath}/static${hot.imagePath}${hot.fileName}" alt=""></a>--%>
<%--                <div ><h3 style="margin: 0;padding: 15px">${hot.en_imageTitle}</h3></div>--%>
<%--            </div>--%>
<%--        </c:forEach>--%>
        <div class="animated scroll_response fadeInLeft" data-animation="fadeInLeft">
        <c:forEach items="${mainImages}"  var="hot" end="3">
            <div class="c-all">
                <div class="t-all-img">
                    <a href="${path}/en_solarPanel/en_productCenter"><img  src="${staticPath}/static${hot.imagePath}${hot.fileName}" alt="" ></a>
                </div>
                <div class="t-all-p">
                    <p>${hot.en_imageTitle}</p>
                </div>
            </div>
        </c:forEach>
        </div>
        <div class="clearfix"> </div>
    </div>
</div>
<div class="box_1">
    <div class="container">
<%--        <h3>About<span class="m_1">Us</span></h3>--%>
<%--        <p>Solar power, a gift shared with nature, is the essence of the intense collision between technology and natural energy.--%>
<%--                </br>This is the hope of green energy, this is the crystallization of science and technology!--%>
<%--                  </br>We are not the producers, we are only the porters of nature.</p>--%>
<%--        <a href="${path}/en_solarPanel/en_aboutUs" title="Read More" class="btn1" id="aboutUs">Understanding Details</a>--%>
    <div class="content-img-left">
        <div class="img-text-left">
            <div class="img-l1">
                <img src="http://www.listenenergy.cn/img/z16.png" alt="关于我们背景">
            </div>
            <div class="text-l1">
                <span>About Us</span>
            </div>
            <div class="text-l2">
                <span>Solar power, a gift shared with nature, is the essence of the intense collision between technology and natural energy.This is the hope of green energy, this is the crystallization of science and technology!We are not the producers, we are only the porters of nature.</span>
            </div>
            <div class="btn-l1">
                <a href="${path}/en_solarPanel/en_aboutUs"  title="Read More" class="btn1" id="aboutUs">Understanding Details</a>
            </div>
        </div>
        <div class="img-text-right">
            <div class="img-r1">
                <img src="http://www.listenenergy.cn/img/z17.png" alt="高楼背景">
            </div>
            <div class="text-r1">
                <span>Enterprise Honor</span>
            </div>
            <div class="text-r2">
                <span>Our integrity, strength and product quality recognized by the industry</span>
            </div>
            <div class="btn-r2">
                <a href="${path}/en_solarPanel/en_aboutUs"  title="Read More" class="right-btn" >Understanding Details</a>
            </div>
        </div>
    </div>
    </div>
    </div>
</div>
<div class="box_2 box_nav">
    <div class="container">
        <div class="wind_product" >
            <p class="first_p">工程案例</p>
            <p class="second_p">Project Case</p>
        </div>
            <div class="product j_imglist img_nav2">
                <c:forEach var="demo" end="2" items="${caseImage}">
                    <div class="col-md-3 features-grid img_nav1" style="width: 33.33%;text-align: center">
                        <a href="${path}/en_solarPanel/en_case"><img class="img-responsive" style="width: 365px;float: left;margin-right: 15px;" src="${staticPath}/static${demo.imagePath}${demo.fileName}" alt="" ></a>
                        <%--  <div>经典案例描述</div>--%>
                        <div>${demo.en_imageDescription}</div>
                    </div>
                </c:forEach>
            </div>
        <div class="clearfix"> </div>
    </div>
</div>
<%--新闻中心--%>
  <%--
<div class="container">
    <div class="t-all">
        <div class="t-left-l1">
            <div class="t-son">
                <div class="befor-t"></div>
                <span>News Center</span>
            </div>
        </div>
    </div>
    <div class="ul-all">
        <div class="ul-list">
            <ul class="u1">
                <c:forEach items="${newsList}" var="newV">
                    <li>
                        <div class="li-all">
                            <div class="li-d1">
                                <a href="${path }/solarPanel/en_newsDetail/${newV.newsId}">
                                    <span style="color: rgb(102,102,102);font-size: 27px"><fmt:formatDate value="${newV.createTime}" pattern="dd"/></span><br>
                                    <span><fmt:formatDate value="${newV.createTime}" pattern="yyyy/MM"/></span>
                                </a>
                            </div>
                            <div class="li-t1">
                                <a href="${path }/solarPanel/en_newsDetail/${newV.newsId}">
                                    <p class="p1">${newV.enNewsName}</p>
                                </a>
                                <p class="p2">${newV.enNewsDescription}</p>
                            </div>
                        </div>
                    </li>
                </c:forEach>
            </ul>
        </div>
    </div>
</div>--%>

</div>
</div>
<script src="${staticPath}/static/js/common.js"></script>
<script>
    $(function(){
        var oM =$(".scroll_response").attr("data-animation");
        $(".scroll_response").removeClass(oM).css("visibility","hidden");
        window.onscroll= function(){
            //变量t是滚动条滚动时，距离顶部的距离
            var t = document.documentElement.scrollTop||document.body.scrollTop;
            if(t>=400){
                $(".scroll_response").addClass(oM).css("visibility","visible");
            }
        }
    })
</script>
<!--侧边悬浮聊天对话框-->
<jsp:include page="en_talk.jsp"></jsp:include>
<jsp:include page="en_footer.jsp"></jsp:include>

</body>

</html>


