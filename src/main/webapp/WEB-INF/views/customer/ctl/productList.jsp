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
<body>
<!-- Page Wrapper -->
<div id="wrap" class="layout-1">



    <!-- Content -->
    <div id="content">
        <!-- Linking -->
        <div class="linking">
            <div class="container">
                <ol class="breadcrumb">
                    <li><a target="myframe"href="${path }/ctl/main">首页</a></li>
                    <li class="active">产品列表</li>
                </ol>
            </div>
        </div>
            <div class="container">

                <!-- heading -->
                <div class="tab-content">
                    <div class="col-list">
                        <!-- Product -->
                        <c:if test="${empty imageList}">
                           对不起你搜索的商品不存在

                        </c:if>
                        <c:forEach items="${imageList}" var="image">
                            <div class="product">
                                <article>
                                    <!-- Product img -->
                                    <div class="media-left">
                                        <div class="item-img" style="border:1px solid #e2e2e2"> <img class="img-responsive" style="height: 220px" src="${staticPath}/static${image.imagePath}${image.fileName}" alt="" >  </div>
                                    </div>
                                    <!-- Content -->
                                    <div class="media-body">
                                        <div class="row">
                                            <!-- Content Left -->
                                            <div class="col-sm-7"> <span class="tag"></span> <a href="#." class="tittle">${image.imageTitle}</a>

                                            </div>
                                            <!-- Content Right -->
                                            <div class="col-sm-5 text-center"> <a href="#." class="heart"><i class="fa fa-heart"></i></a> <a href="#." class="heart navi"><i class="fa fa-navicon"></i></a>
                                                <div class="position-center-center">
                                                    <a href="${path }/customer/productDetail/${image.productId}" class="btn-round"><i class="icon-basket-loaded"></i> Add to Cart</a> </div>
                                            </div>
                                        </div>
                                    </div>
                                </article>
                            </div>
                        </c:forEach>


                    </div>
                    </div>
                <!-- heading -->


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

    <!-- SLIDER REVOLUTION 4.x SCRIPTS  -->
    <script type="text/javascript" src="${staticPath }/static/customer/rs-plugin/js/jquery.tp.t.min.js"></script>
    <script type="text/javascript" src="${staticPath }/static/customer/rs-plugin/js/jquery.tp.min.js"></script>
    <!-- GO TO TOP  -->
    <a href="#" class="cd-top"><i class="fa fa-angle-up"></i></a>
    <!-- GO TO TOP End -->
</div>

</body>
</html>