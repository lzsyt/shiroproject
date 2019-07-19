<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/commons/global.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Wind turbine - yongdong new energy co. LTD</title>
  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0,user-scalable=no">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta name="keywords"
        content="small wind turbines, wind and solar hybrid streetlight systems, wind turbines, wind turbine manufacturers, wind turbine prices, small and medium wind turbines, medium wind turbines, Hunan frontier technology, wind and solar hybrid systems, power generation systems, horizontal axis wind power generation Machine, vertical axis wind turbine"/>
  <meta name="description"
        content="The main products of Yongdong New Energy Co., Ltd. include 100W-100kW horizontal-axis wind turbines, vertical-axis wind turbines and other small and medium-sized wind turbines, wind-solar complementary street lamps, wind-solar complementary distributed generation systems, solar street lamps, etc., which can provide customers with One-stop solution for wind power generation, wind and solar hybrid power generation, wind and solar hybrid street lighting, solar street lighting system, solar photovoltaic water lifting system and photovoltaic grid-connected power generation, Tel: 17773166613"/>
    <meta http-equiv="Cache-Control" content="max-age=7200"/>
    <meta name="viewport" content="width=device-width,shrink-to-fit=no"/>
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <link rel="stylesheet" type="text/css" href="${staticPath }/static/windEnergy/customer/css/main.css">
    <script src="${staticPath }/static/windEnergy/customer/js/vendors/jquery/jquery.min.js"></script>
    <script type="text/javascript" src="${staticPath }/static/customer/js/main.js"></script>
    <link rel="shortcut icon" href="${staticPath }/static/images/yongdong.png" type="image/x-icon"/>
    <!-- JavaScripts -->
    <script src="${staticPath }/static/windEnergy/customer/js/vendors/wow.min.js"></script>
    <script src="${staticPath }/static/windEnergy/customer/js/vendors/bootstrap.min.js"></script>
    <script src="${staticPath }/static/windEnergy/customer/js/vendors/own-menu.js"></script>
    <script src="${staticPath }/static/windEnergy/customer/js/vendors/jquery.sticky.js"></script>
    <script src="${staticPath }/static/windEnergy/customer/js/vendors/owl.carousel.min.js"></script>
    <link rel="stylesheet" type="text/css" href="${staticPath }/static/windEnergy/customer/rs-plugin/css/settings.css" media="screen" />
    <link rel="stylesheet" href="${staticPath }/static/windEnergy/customer/css/ionicons.min.css">
    <link rel="stylesheet" href="${staticPath }/static/windEnergy/customer/css/bootstrap.min.css">
    <link rel="stylesheet" href="${staticPath }/static/windEnergy/customer/css/font-awesome.min.css">
    <link rel="stylesheet" href="${staticPath }/static/windEnergy/customer/css/main.css">
    <link rel="stylesheet" href="${staticPath }/static/windEnergy/customer/css/style.css">
    <link rel="stylesheet" href="${staticPath }/static/windEnergy/customer/css/responsive.css">
    <script type="text/javascript" src="${staticPath }/static/windEnergy/customer/rs-plugin/js/jquery.tp.t.min.js"></script>
    <script type="text/javascript" src="${staticPath }/static/windEnergy/customer/rs-plugin/js/jquery.tp.min.js"></script>
    <a href="#" class="cd-top"><i class="fa fa-angle-up"></i></a>
    <link href="${staticPath }/static/windEnergy/css/bootstrap.css" rel='stylesheet' type='text/css' />
    <script src="${staticPath }/static/windEnergy/js/jquery.min.js"></script>
    <link rel="shortcut icon" href="${staticPath }/static/images/yongdong.png" type="image/x-icon" />
    <link href="${staticPath }/static/windEnergy/css/style.css" rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="${staticPath }/static/customer/css/font-awesome.min.css">
    <script type="text/javascript" src="${staticPath }/static/windEnergy/js/jquery.easing.min.js"></script>
    <script type="text/javascript" src="${staticPath }/static/windEnergy/js/jquery.mixitup.min.js"></script>
    <script src="${staticPath }/static/customer/js/layer.js"></script>
    <link href="${staticPath }/static/style/css/en_fontStyle.css" rel='stylesheet' type='text/css' />
    <style type="text/css">
        .col-list .product article .heart i {
            margin: 7px;
        }
         #productCenter{
           color: #105b63;
         }
    </style>
</head>
<body>
<%--<jsp:include page="en_header.jsp"></jsp:include>--%>
<jsp:include page="en_header.jsp"></jsp:include>
<div id="content">
    <div id="contentPage">

<div class="about" >
    <div class="container">
        <ul class="about_head">
            <li class="about_head-left"><h1>产品中心</h1></li>
            <li class="about_head-right"><p>Product Center</p></li>
        </ul>
    </div>
</div>

<div class="container">
    <!-- heading -->

    <div class="tab-content">
        <div class="col-list" style="margin-top: 30px">
            <!-- Product -->
            <c:if test="${empty imageList}">
                Sorry, the item you searched does not exist.
            </c:if>
            <c:forEach items="${imageList}" var="image">
                <div class="product">
                    <article>
                        <!-- Product img -->
                        <div class="media-left">
                            <div class="item-img" style="width:220.66px;border:1px solid #e2e2e2"> <a href="${path }/en_windEnergy/en_productDetail/${image.productId}"><img class="img-responsive" src="${staticPath}/static${image.imagePath}${image.fileName}" alt="" style="height:218.66px"></a>  </div>
                        </div>
                        <!-- Content -->
                        <div class="media-body">
                            <div class="row">
                                <!-- Content Left -->
                                <div class="col-sm-7"> <span class="tag"></span> <a href="${path }/en_windEnergy/en_productDetail/${image.productId}" class="tittle">${image.en_imageTitle}</a>
                                </div>
                                <!-- Content Right -->
                                <div class="col-sm-5 text-center"> <a href="#." class="heart"><i class="fa fa-heart"></i></a> <a href="#." class="heart navi"><i class="fa fa-navicon"></i></a>
                                    <div class="position-center-center">
                                        <a  href="${path }/en_windEnergy/en_productDetail/${image.productId}" class="btn-round"><i class="icon-basket-loaded"></i> Buy At Once</a> </div>
                                </div>
                            </div>
                        </div>
                    </article>
                </div>
            </c:forEach>
        </div>
    </div>
</div>

<%--    <jsp:include page="en_footer.jsp"></jsp:include>--%>

</div>
</div>
<!--侧边悬浮聊天对话框-->
<jsp:include page="en_talk.jsp"></jsp:include>
<jsp:include page="en_footer.jsp"></jsp:include>
</body>

</html>
