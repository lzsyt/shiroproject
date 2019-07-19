<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/commons/global.jsp" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name="author" content="M_Adnan" />
    <meta name="baidu-site-verification" content="UC04SFA0NB" />
    <!-- Document Title -->
    <title>前沿科技</title>

    <!-- SLIDER REVOLUTION 4.x CSS SETTINGS -->
    <link rel="stylesheet" type="text/css" href="${staticPath }/static/customer/rs-plugin/css/settings.css" media="screen" />
    <link rel="shortcut icon" href="${staticPath }/static/images/favicon.png" type="image/x-icon" />
    <!-- StyleSheets -->
    <link rel="stylesheet" href="${staticPath }/static/customer/css/ionicons.min.css">
    <link rel="stylesheet" href="${staticPath }/static/customer/css/bootstrap.min.css">
    <link rel="stylesheet" href="${staticPath }/static/customer/css/font-awesome.min.css">
    <link rel="stylesheet" href="${staticPath }/static/customer/css/main.css">
    <link rel="stylesheet" href="${staticPath }/static/customer/css/style.css">
    <link rel="stylesheet" href="${staticPath }/static/customer/css/responsive.css">

    <!-- Fonts Online -->
    <link href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i" rel="stylesheet">
    <!-- <%@ include file="/commons/basejs.jsp" %>
    <link rel="stylesheet" type="text/css" href="${staticPath }/static/style/css/main.css">
    <script type="text/javascript" src="${staticPath }/static/js/main.js"></script>-->
</head>
<body>
<!-- Page Wrapper -->
<div id="wrap" class="layout-1">

    <!-- Slid Sec -->
    <section class="slid-sec">
        <div class="container">
            <div class="container-fluid">
                <div class="row">

                    <!-- Main Slider  -->
                    <div class="col-md-9 no-padding">

                        <!-- Main Slider Start -->
                        <div class="tp-banner-container">
                            <div class="tp-banner">
                                <ul>

                                    <!-- SLIDE  -->
                                    <c:forEach items="${ADImages}" var="li">

                                        <li data-transition="random" data-slotamount="7" data-masterspeed="300"  data-saveperformance="off" >
                                            <!-- MAIN IMAGE -->
                                            <img src="${staticPath}/static${li.imagePath}${li.fileName}"  alt="slider"  data-bgposition="center bottom" data-bgfit="cover" data-bgrepeat="no-repeat">



                                            <!-- LAYER NR. 2 -->
                                            <div class="tp-caption sfr tp-resizeme"
                                                 data-x="left" data-hoffset="60"
                                                 data-y="center" data-voffset="-60"
                                                 data-speed="800"
                                                 data-start="1000"
                                                 data-easing="Power3.easeInOut"
                                                 data-splitin="chars"
                                                 data-splitout="none"
                                                 data-elementdelay="0.03"
                                                 data-endelementdelay="0.1"
                                                 data-endspeed="300"
                                                 style="z-index: 6; font-size:50px; color:#0088cc; font-weight:800; white-space: nowrap;">${li.imageTitle} </div>

                                            <!-- LAYER NR. 3 -->
                                            <div class="tp-caption sfl tp-resizeme"
                                                 data-x="left" data-hoffset="60"
                                                 data-y="center" data-voffset="0"
                                                 data-speed="800"
                                                 data-start="1200"
                                                 data-easing="Power3.easeInOut"
                                                 data-splitin="none"
                                                 data-splitout="none"
                                                 data-elementdelay="0.1"
                                                 data-endelementdelay="0.1"
                                                 data-endspeed="300"
                                                 style="z-index: 7;  font-size:24px; color:#888888; font-weight:500; max-width: auto; max-height: auto; white-space: nowrap;">${li.imageDescription} </div>

                                            <!-- LAYER NR. 4 -->
                                            <div class="tp-caption lfb tp-resizeme scroll"
                                                 data-x="left" data-hoffset="60"
                                                 data-y="center" data-voffset="80"
                                                 data-speed="800"
                                                 data-start="1300"
                                                 data-easing="Power3.easeInOut"
                                                 data-elementdelay="0.1"
                                                 data-endelementdelay="0.1"
                                                 data-endspeed="300"
                                                 data-scrolloffset="0"
                                                 style="z-index: 8;"><a target="_blank" href="https://guangheguineng.tmall.com/shop/view_shop.htm?shop_id=113563151" class="btn-round big">立刻购买</a> </div>
                                        </li>
                                    </c:forEach>





                                </ul>
                            </div>
                        </div>
                    </div>

                    <!-- Main Slider  -->
                    <div class="col-md-3 no-padding">

                        <!-- New line required  -->
                        <div class="product">
                            <div class="like-bnr">
                                <div class="position-center-center">
                                </div>
                            </div>
                        </div>

                        <!-- 促销活动  -->
                        <div class="week-sale-bnr">
                            <h4>本周 <span>活动!</span></h4>
                            <p>所有在线商品
                                都享受特价优惠</p>
                            <a target="_blank"  href="https://guangheguineng.tmall.com/shop/view_shop.htm?shop_id=113563151" class="btn-round">立即购买</a> </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Content -->
    <div id="content">



        <!-- tab Section -->
        <section class="featur-tabs padding-top-60 padding-bottom-60">
            <div class="container">

                <!-- Nav tabs -->
                <ul class="nav nav-tabs nav-pills margin-bottom-40" role="tablist">
                    <li role="presentation" class="active"><a href="#featur" aria-controls="featur" role="tab" data-toggle="tab">正品保障</a></li>

                </ul>

                <!-- Tab panes -->
                <div class="tab-content">

                    <c:forEach items="${aboutImage}"  begin="1" var="about" >
                        <img src="${staticPath}/static${about.imagePath}${about.fileName}" alt="" >
                    </c:forEach>



                </div>
            </div>
        </section>
        <div class="container">


            <!-- Main Tabs Sec -->



            <!-- Top Selling Week -->
            <section class="light-gry-bg padding-top-60 padding-bottom-30" style="width: 1170px">
                <div class="container">

                    <!-- heading -->
                    <div class="heading">
                        <h2>一周热销榜</h2>
                        <hr>
                    </div>

                    <!-- Items -->
                    <div class="item-col-5">

                        <!-- Product -->
                        <div class="product col-2x">
                            <div class="like-bnr">
                                <div class="position-center-center">

                                </div>
                            </div>
                        </div>

                        <!-- Product -->
                        <c:forEach items="${mainImages}" end="7" var="hot">
                        <div class="product">
                            <article> <img class="img-responsive" src="${staticPath}/static${hot.imagePath}${hot.fileName}" alt="" > <span class="sale-tag">hot</span>

                                <!-- Content -->
                                <span class="tag">硅能电池</span> <a href="${path }/customer/productDetail/${hot.productId}" class="tittle"> ${hot.imageTitle}</a>
                                <!-- Reviews -->
                                <a href="${path }/customer/productDetail/${hot.productId}" class="cart-btn"><i class="icon-basket-loaded"></i></a> </article>
                        </div>


                        </c:forEach>



            </section>
            <section class="padding-top-60 padding-bottom-60">
                <div class="container">

                    <!-- heading -->
                    <div class="heading">
                        <h2>经典案例</h2>
                        <hr>
                    </div>
                    <div id="blog-slide" class="with-nav">
                        <c:forEach var="demo" items="${caseImage}">
                            <div class="blog-post">
                                <article> <img class="img-responsive" src="${staticPath}/static${demo.imagePath}${demo.fileName}" alt="" ><span><i class="fa fa-bookmark-o"></i> ${demo.updateTime}</span>
                                    <p>${demo.imageDescription} </p>
                                </article>
                            </div>
                        </c:forEach>




                    </div>
                </div>
            </section>




        </div>
        <!-- End Content -->




        <!-- End Footer -->
        <!-- End Page Wrapper -->
        <link rel="stylesheet" type="text/css" href="${staticPath }/static/customer/css/main.css">
        <script src="${staticPath }/static/customer/js/vendors/jquery/jquery.min.js"></script>
        <script type="text/javascript" src="${staticPath }/static/customer/js/main.js"></script>
        <!-- JavaScripts -->
        <script src="${staticPath }/static/customer/js/vendors/wow.min.js"></script>
        <script src="${staticPath }/static/customer/js/vendors/bootstrap.min.js"></script>
        <script src="${staticPath }/static/customer/js/vendors/own-menu.js"></script>
        <script src="${staticPath }/static/customer/js/vendors/jquery.sticky.js"></script>
        <script src="${staticPath }/static/customer/js/vendors/owl.carousel.min.js"></script>

        <!-- SLIDER REVOLUTION 4.x SCRIPTS  -->
        <script type="text/javascript" src="${staticPath }/static/customer/rs-plugin/js/jquery.tp.t.min.js"></script>
        <script type="text/javascript" src="${staticPath }/static/customer/rs-plugin/js/jquery.tp.min.js"></script>

        <!-- GO TO TOP  -->
        <a href="#" class="cd-top"><i class="fa fa-angle-up"></i></a>
        <!-- GO TO TOP End -->
    </div>
</div>
</body>
</html>
