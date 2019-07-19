<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/commons/global.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
  <title>solarchargecontroller.com Solar Charge Controller</title>
  <meta name="keywords"
        content="Hunan Frontier Technology Co., Ltd., control organ network, controller manufacturer, solar controller, photovoltaic controller, wind and solar hybrid controller, waterproof street light controller, waterproof mains complementary controller, fan controller, blue and white solar controller, green Black shell solar controller, solar MPPT controller, solar gray shell controller, solar charge controller"/>
  <meta name="description"
        content="Hunan Frontier Technology Co., Ltd. adheres to the service tenet of “integrity management”. We design and design according to customer needs, and create perfect products for customers with safe, mature and cost-effective products. They are exported to non-US, Asia, Europe and other regions. We provide various types of solar controller components for many domestic solar energy product development enterprises. They are well-known in the solar energy industry for their exquisite workmanship and superior performance. They are recognized and trusted by customers and peers. Contact number: +86-731-86663578"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />

    <!-- SLIDER REVOLUTION 4.x CSS SETTINGS -->
    <link rel="stylesheet" type="text/css" href="${staticPath }/static/windEnergy/customer/rs-plugin/css/settings.css" media="screen" />

    <!-- StyleSheets -->
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
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <link href="${staticPath }/static/windEnergy/css/bootstrap.css" rel='stylesheet' type='text/css' />
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="${staticPath }/static/windEnergy/js/jquery.min.js"></script>
    <link href="${staticPath }/static/windEnergy/css/style.css" rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="${staticPath }/static/customer/css/font-awesome.min.css">
    <script type="text/javascript" src="${staticPath }/static/windEnergy/js/jquery.easing.min.js"></script>
    <script type="text/javascript" src="${staticPath }/static/windEnergy/js/jquery.mixitup.min.js"></script>
    <link href="${staticPath }/static/style/css/en_fontStyle.css" rel='stylesheet' type='text/css' />
  <script src="${staticPath }/static/customer/js/layer.js"></script>
    <link rel='stylesheet' type='text/css'>
    <style>

        #pro-detail p{
            line-height: 28px;
            width: 80%;
            margin-left: 10px;
        }
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

         #productCenter{
           color:#105b63;
         }

    </style>


</head>
<body>
<jsp:include page="en_header.jsp"></jsp:include>
<div class="about" >
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
                                        <li><span>Product outline:${product.en_productSynopsis}</span></li>
                                        <li><span>Product Profile Product Description:${product.en_productDescription}</span></li>
                                        <li><span>Unit price: ￥${product.price}</span></li>
                                        <li><span>Update time: ${mainImage[0].updateTime}</span></li>
                                    </ul>
                                </div>
                                <a  target="_blank"  href="https://guangheguineng.tmall.com/shop/view_shop.htm?shop_id=113563151" class="btn-round"><i class="icon-basket-loaded margin-right-5"></i> Buy At Once</a> </div>
                        </div>
                    </div>
                    <!-- Details Tab Section-->
                    <div class="item-tabs-sec" >
                        <%--<!-- Nav tabs -->
                        <ul class="nav" role="tablist" style="margin-top: -150px">
                            <!--
                            <li role="presentation" class="active" style="margin-top: 150px"><a href="#pro-detil"  role="tab" data-toggle="tab">Details</a></li>
                            -->
                        </ul>--%>
                        <!-- Tab panes -->
                        <div class="tab-content" style="top: -50px;">
                            <div role="tabpanel" class="tab-pane fade in active" id="pro-detail" style="margin-top: 60px">
                                <!--
                                <p>
                                    YD-HT Differential Advantages of Wind Turbines。</br>
                                </p>
                                <p>1、Low start-up wind speed, minimum answer 1.9m/s.（Neil start-up wind speed 3m/s) Upgraded fan with 1.9m/s load condition can be slightly rotated.Fans from other manufacturers are not enough to start the fans under the same conditions.(The average start-up wind speed of other manufacturers is 2.0-2.5m/s under no-load condition).</p>
                                <p>2、The power efficiency is high, the actual power can reach the nominal power, and the measured power is higher than S-type 300W. It is almost the same as M-type 300W.</p>
                                <p>3、Small size, easy to install.</p>
                                <p>   M-type 300W:  Heavy 9.6kg   Wind wheel diameter 1.35M (original manufacturer)</p>
                                <p>   YD-300W:    Heavy 8kg Wind wheel diameter 1.3M (new model)</p>
                                <p>  The weight is lower and the length of blade decreases. The blades are reduced and the weight is reduced, but the power generation efficiency is the same or even better under the same environmental conditions, which is convenient for installation.</p>
                                <p>4. High quality material, ABS material for tail wing. Most manufacturers use stainless steel materials.With the increase of weight, our products are lighter and more stable, and will not tremble very much at high wind speed. If the weight is heavy, the standard requirement for the tower will be very high, and the diameter of the tower will be thicker, otherwise the whole tower will be unstable.</p>
                                <p>5、Motor mounting spindle length. Installation is stronger in windy areas to prevent blade flying (falling off in strong wind).</p>
                                <p>6、 The coil thickness is thicker and more efficient than that of other manufacturers.</p>
                                <p>7、Rotor magnet is thicker, magnetic and has better power generation performance. (Contrast chart)</p>
                                -->

                                <div style="margin-top: 30px">
                                    <h2 style="border-bottom: 1px solid #e5e5e5;padding-bottom: 5px"><a id="dis-kind" style="font-size: 24px">Detail</a></h2>
                                    <c:forEach items="${images}" begin="2" var="images" >
                                         <img src="${staticPath}/static${images.imagePath}${images.fileName}" alt="" >
                                    </c:forEach>
                                    <c:forEach items="${detailImages}"  var="detail" >
                                        <img src="${staticPath}/static${detail.imagePath}${detail.fileName}" alt="" style="width: 1000px;margin-top: 20px" >
                                    </c:forEach>
                                </div>

                            </div>

                        </div>
                    </div>
                </div>

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

