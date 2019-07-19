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
    <link rel="stylesheet" type="text/css" href="${staticPath }/static/windEnergy/customer/rs-plugin/css/settings.css" media="screen" />
    <link rel="stylesheet" href="${staticPath }/static/windEnergy/customer/css/ionicons.min.css">
    <link rel="stylesheet" href="${staticPath }/static/windEnergy/customer/css/bootstrap.min.css">
    <link rel="stylesheet" href="${staticPath }/static/windEnergy/customer/css/font-awesome.min.css">
    <link rel="stylesheet" href="${staticPath }/static/windEnergy/customer/css/main.css">
    <link rel="stylesheet" href="${staticPath }/static/windEnergy/customer/css/style.css">
    <link rel="stylesheet" href="${staticPath }/static/windEnergy/customer/css/responsive.css">
    <!-- Fonts Online -->
    <link href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i" rel="stylesheet">
   <!-- <%@ include file="/commons/basejs.jsp" %>
    <link rel="stylesheet" type="text/css" href="${staticPath }/static/style/css/main.css">
    <script type="text/javascript" src="${staticPath }/static/js/main.js"></script>-->
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <link href="${staticPath }/static/windEnergy/css/bootstrap.css" rel='stylesheet' type='text/css' />
    <script src="${staticPath }/static/windEnergy/js/jquery.min.js"></script>
    <link rel="shortcut icon" href="${staticPath }/static/images/yongdong.png" type="image/x-icon" />
    <link rel="stylesheet" href="${staticPath }/static/customer/css/font-awesome.min.css">
    <script src="${staticPath }/static/windEnergy/js/jquery.min.js"></script>
    <script type="text/javascript" src="${staticPath }/static/windEnergy/js/jquery.easing.min.js"></script>
    <script type="text/javascript" src="${staticPath }/static/windEnergy/js/jquery.mixitup.min.js"></script>
    <script src="${staticPath }/static/customer/js/layer.js"></script>
    <link href="${staticPath }/static/windEnergy/css/style.css" rel='stylesheet' type='text/css' />
    <link rel='stylesheet' type='text/css'>

    <link href="${staticPath }/static/style/css/en_fontStyle.css" rel='stylesheet' type='text/css' />
    <style>

        #pro-detail p{
            line-height: 28px;
            width: 80%;
            margin-left: 10px;
        }
        /*.pro-description{
            width: 300px;
            height: 250px;
            margin-left: 642px;
            margin-top: -100px;

        }*/
        .pro-description{
            margin-top: 30px;
            margin-bottom: 30px;
        }
        .pro-description li{
            padding: 7px 0;
        }
        .pro-description li span{
            font-size: 14px;
            font-weight: 300;
            color: #333333;
        }
        /*实物展示样式*/
        #dis-kind{
            color: #222222;
            font-weight: bold;
            font-size: 16px;
            padding-bottom: 10px;
            position:relative;
            display: inline-block;

        }
        #dis-kind:after{
            height: 2px;
            width: 100%;
            background-color: #0088CC;
            content: "";
            position: absolute;
            bottom: -6px;
            left: 0;
        }
    </style>
</head>
<body >
<jsp:include page="en_header.jsp"></jsp:include>
<div class="about">
    <div class="container">
        <ul class="about_head">
            <li class="about_head-left"><h1 style="line-height:35px;width: 300px">Product Center</h1></li>
            <li class="about_head-right"><p></p></li>
        </ul>
    </div>
</div>

<!-- Products -->
<section class="padding-top-40 padding-bottom-60">
    <div class="container">
        <div class="row">
<!-- Content -->
            <div id="content">
            <!-- Products -->
            <div class="col-md-9" style="width: 100%">
                <div class="product-detail">
                    <div class="product">
                        <div class="row">
                            <!-- Slider Thumb -->
                            <div class="col-xs-5">
                                <article class="slider-item on-nav">
                                    <div class="thumb-slider">
                                        <ul class="slides">


                                            <c:forEach items="${mainImage}" var="mimage">
                                                <li data-thumb="${staticPath}/static${mimage.imagePath}${mimage.fileName}"> <img src="${staticPath}/static${mimage.imagePath}${mimage.fileName}" alt="" > </li>
                                            </c:forEach>
                                            <c:forEach items="${images}" end="1" var="images" >
                                                <li data-thumb="${staticPath}/static${images.imagePath}${images.fileName}"> <img src="${staticPath}/static${images.imagePath}${images.fileName}" alt="" > </li>
                                            </c:forEach>
                                        </ul>
                                    </div>
                                </article>
                            </div>
                            <!-- Item Content -->
                            <div class="col-xs-7" style="padding:20px 120px ">
                                <h5>${product.en_productName}</h5>
                                <p class="rev"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i> <i class="fa fa-star-o"></i> <span class="margin-left-10">5 Review(s)</span></p>

                                <!--后期增加的产品描述-->
                                <div class="pro-description">
                                    <ul>
                                        <li><span>Product overview:${product.en_productSynopsis}</span></li>
                                        <li><span>Product description:${product.en_productDescription}</span></li>
                                        <li><span>Unit price: Negotiable</span></li>
                                        <li><span>Update time: ${mainImage[0].updateTime}</span></li>
                                    </ul>
                                </div>
                                <a  target="_blank"  href="https://guangheguineng.tmall.com/shop/view_shop.htm?shop_id=113563151" class="btn-round"><i class="icon-basket-loaded margin-right-5"></i> Buy At Once</a> </div>
                        </div>
                    </div>

                    <!-- Details Tab Section-->
                    <div class="item-tabs-sec" >


                        <!-- Nav tabs -->
                        <ul class="nav" role="tablist" style="margin-top: -150px">
                            <li role="presentation" class="active" style="margin-top: 150px"><a href="#pro-detil"  role="tab" data-toggle="tab">Details</a></li>
                        </ul>


                        <!-- Tab panes -->
                        <div class="tab-content" style="top: -50px;">
                            <div role="tabpanel" class="tab-pane fade in active" id="pro-detail" style="margin-top: 60px">

                                <p>
                                  Upgraded YD wind turbines have different advantages.</br>
                                </p>
                                <p>1. The starting wind speed is low, and the minimum is 1.9m/s. The upgraded fan can be slightly rotated at 1.9m/s. Ordinary fans are not enough to start the fan under the same conditions.</p>
                                <p>2. The power efficiency is high, the actual power can reach the nominal power, and the measured power is higher than the S-type 300W. It is almost the same as the ordinary M-type 300W.</p>
                                <p>Ordinary M type 300W: Weight 9.6kg Wind wheel diameter 1.35M (general)</p>
                                <p>Upgrade YD-300W: Weight 8kg wind wheel diameter 1.3M (upgrade).</p>
                                <p>3. The weight is lower and the length of the blade is reduced. The blade is reduced and the weight is reduced, but the power generation efficiency is the same or even better under the same environmental conditions, and the installation is convenient.</p>
                                <p>4, the material is high quality, the tail is made of ABS material. The old models are made of stainless steel. As the weight increases, the upgraded product is lighter in weight and more stable, and the jitter is not large at high wind speeds. If the weight is heavy, the standard requirements for the tower will be high, and the rod diameter will need to be thicker, otherwise the tower will be unstable overall.</p>
                                <p>5. The length of the motor installation spindle. It is more secure for installation in areas with large winds, preventing blade flying (falling off during high winds).</p>
                                <p>6. The thickness of the upgraded coil is thicker than that of the ordinary fan coil, and the efficiency can be higher. The rotor magnet is thick, magnetic, and the power generation performance is superior.</p>


                                <div style="margin-top: 30px">
                                    <h3 style="border-bottom: 1px solid #e5e5e5;padding-bottom: 5px"><a id="dis-kind">Product parameters</a></h3>
                                    <c:forEach items="${images}" begin="2" var="images" >
                                         <img src="${staticPath}/static${images.imagePath}${images.fileName}" alt="" >
                                    </c:forEach>
                                    <c:forEach items="${detailImages}"  var="detail" >
                                        <img src="${staticPath}/static${detail.imagePath}${detail.fileName}" alt="" style="width: 100%;margin-top: 20px" >
                                    </c:forEach>
                                </div>

                            </div>

                        </div>
                    </div>
                </div>

                <!-- End Content -->




                <!-- End Footer -->
                <!-- End Page Wrapper -->
                <link rel="stylesheet" type="text/css" href="${staticPath }/static/windEnergy/customer/css/main.css">
                <script src="${staticPath }/static/windEnergy/customer/js/vendors/jquery/jquery.min.js"></script>
                <script type="text/javascript" src="${staticPath }/static/windEnergy/customer/js/main.js"></script>
                <!-- JavaScripts -->
                <script src="${staticPath }/static/windEnergy/customer/js/vendors/wow.min.js"></script>
                <script src="${staticPath }/static/windEnergy/customer/js/vendors/bootstrap.min.js"></script>
                <script src="${staticPath }/static/windEnergy/customer/js/vendors/own-menu.js"></script>
                <script src="${staticPath }/static/windEnergy/customer/js/vendors/jquery.sticky.js"></script>
                <script src="${staticPath }/static/windEnergy/customer/js/vendors/owl.carousel.min.js"></script>
                <script type="text/javascript" >

                </script>
                <!-- SLIDER REVOLUTION 4.x SCRIPTS  -->
                <script type="text/javascript" src="${staticPath }/static/windEnergy/customer/rs-plugin/js/jquery.tp.t.min.js"></script>
                <script type="text/javascript" src="${staticPath }/static/windEnergy/customer/rs-plugin/js/jquery.tp.min.js"></script>
                <!-- GO TO TOP  -->
                <a href="#" class="cd-top"><i class="fa fa-angle-up"></i></a>
                <!-- GO TO TOP End -->
            </div>
            </div>
        </div>
    </div>
</section>
    </div>
</div>
<!--侧边悬浮聊天对话框-->
<%--<jsp:include page="en_talk.jsp"></jsp:include>--%>
<jsp:include page="en_footer.jsp"></jsp:include>
</body>


</html>

