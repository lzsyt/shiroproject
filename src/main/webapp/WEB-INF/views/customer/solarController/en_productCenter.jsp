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
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <link rel="stylesheet" type="text/css" href="${staticPath }/static/windEnergy/customer/css/main.css">
    <script src="${staticPath }/static/windEnergy/customer/js/vendors/jquery/jquery.min.js"></script>
    <script type="text/javascript" src="${staticPath }/static/customer/js/main.js"></script>
    <!-- JavaScripts -->
    <script src="${staticPath }/static/windEnergy/customer/js/vendors/wow.min.js"></script>
    <script src="${staticPath }/static/windEnergy/customer/js/vendors/bootstrap.min.js"></script>
    <script src="${staticPath }/static/windEnergy/customer/js/vendors/own-menu.js"></script>
    <script src="${staticPath }/static/windEnergy/customer/js/vendors/jquery.sticky.js"></script>
    <script src="${staticPath }/static/windEnergy/customer/js/vendors/owl.carousel.min.js"></script>

    <!-- SLIDER REVOLUTION 4.x SCRIPTS  -->
    <script type="text/javascript" src="${staticPath }/static/windEnergy/customer/rs-plugin/js/jquery.tp.t.min.js"></script>
    <script type="text/javascript" src="${staticPath }/static/windEnergy/customer/rs-plugin/js/jquery.tp.min.js"></script>
    <link rel="stylesheet" type="text/css" href="${staticPath }/static/windEnergy/customer/rs-plugin/css/settings.css" media="screen" />

    <!-- StyleSheets --引用productList-->
    <link rel="stylesheet" href="${staticPath }/static/windEnergy/customer/css/ionicons.min.css">
    <link rel="stylesheet" href="${staticPath }/static/windEnergy/customer/css/bootstrap.min.css">
    <link rel="stylesheet" href="${staticPath }/static/windEnergy/customer/css/font-awesome.min.css">
    <link rel="stylesheet" href="${staticPath }/static/windEnergy/customer/css/main.css">
    <link rel="stylesheet" href="${staticPath }/static/windEnergy/customer/css/style.css">
    <link rel="stylesheet" href="${staticPath }/static/windEnergy/customer/css/responsive.css">
    <link href="${staticPath }/static/style/css/en_fontStyle.css" rel='stylesheet' type='text/css' />
    <!-- GO TO TOP  -->
    <a href="#" class="cd-top"><i class="fa fa-angle-up"></i></a>

    <link href="${staticPath }/static/windEnergy/css/bootstrap.css" rel='stylesheet' type='text/css' />

    <link href="${staticPath }/static/windEnergy/css/style.css" rel='stylesheet' type='text/css' />

    <script src="${staticPath }/static/windEnergy/js/jquery.min.js"></script>


    <style type="text/css">
        .col-list .product article .heart i {
            margin: 7px;
        }
    </style>
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
    #productCenter{
      color:#105b63;
    }
  </style>

</head>
<body>
<jsp:include page="en_header.jsp"></jsp:include>

<div id="content">
    <div  id="contentPage" >

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
                            <div class="item-img" style="width:220.66px;border:1px solid #e2e2e2"> <a href="${path }/en_solarController/en_productDetail/${image.productId}"><img class="img-responsive" src="${staticPath}/static${image.imagePath}${image.fileName}" alt="" style="height:218.66px"></a>  </div>
                        </div>
                        <!-- Content -->
                        <div class="media-body">
                            <div class="row">
                                <!-- Content Left -->
                                <div class="col-sm-7"> <span class="tag"></span> <a href="${path }/en_solarController/en_productDetail/${image.productId}" class="tittle">${image.en_imageTitle}</a>
                                </div>
                                <!-- Content Right -->
                                <div class="col-sm-5 text-center"> <a href="#." class="heart"><i class="fa fa-heart"></i></a> <a href="#." class="heart navi"><i class="fa fa-navicon"></i></a>
                                    <div class="position-center-center">
                                        <a  href="${path }/en_solarController/en_productDetail/${image.productId}" class="btn-round"><i class="icon-basket-loaded"></i> Buy At Once</a> </div>
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
