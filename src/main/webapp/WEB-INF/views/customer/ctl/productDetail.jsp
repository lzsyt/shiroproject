<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/commons/global.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name="author" content="M_Adnan" />
    <!-- Document Title -->
    <title>前沿科技</title>

    <!-- SLIDER REVOLUTION 4.x CSS SETTINGS -->
    <link rel="stylesheet" type="text/css" href="${staticPath }/static/customer/rs-plugin/css/settings.css" media="screen" />

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
<body >

<!-- Products -->
<section class="padding-top-40 padding-bottom-60">
    <div class="container">
        <div class="row">



<!-- Content -->
<div id="content">


<!-- Products -->
<div class="col-md-9">
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
                <div class="col-xs-7"> <span class="tags">电池</span>
                    <h5>${product.productName}</h5>
                    <p class="rev"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i> <i class="fa fa-star-o"></i> <span class="margin-left-10">5 Review(s)</span></p>


                    <a  target="_blank"  href="https://guangheguineng.tmall.com/shop/view_shop.htm?shop_id=113563151" class="btn-round"><i class="icon-basket-loaded margin-right-5"></i> 购买</a> </div>
            </div>
        </div>

        <!-- Details Tab Section-->
        <div class="item-tabs-sec">

            <!-- Nav tabs -->
            <ul class="nav" role="tablist">
                <li role="presentation" class="active"><a href="#pro-detil"  role="tab" data-toggle="tab">详情</a></li>
            </ul>

            <!-- Tab panes -->
            <div class="tab-content">
                <div role="tabpanel" class="tab-pane fade in active" id="pro-detil">



                    <div>
                        <c:forEach items="${images}" begin="2" var="images" >
                             <img src="${staticPath}/static${images.imagePath}${images.fileName}" alt="" >
                        </c:forEach>
                        <c:forEach items="${detailImages}"  var="detail" >
                            <img src="${staticPath}/static${detail.imagePath}${detail.fileName}" alt="" >
                        </c:forEach>
                    </div>

                </div>

            </div>
        </div>
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
    <script type="text/javascript" >

    </script>
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