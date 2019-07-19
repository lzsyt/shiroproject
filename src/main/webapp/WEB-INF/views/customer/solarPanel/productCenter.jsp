<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="/commons/global.jsp" %>
<html>
<head>
  <title>太阳能电池板官网|湖南前沿科技有限公司|太阳能电池板厂家|太阳能阳能光伏设备</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
  <meta name="keywords"
        content="太阳能电池板官网，湖南前沿科技有限公司,太阳能电池板厂家,太阳能组件,太阳能电池板,太阳能板,光伏组件,光伏电池板,太阳能供电，太阳能组件,太阳能路灯,太阳能光伏板,太阳能发电,太阳能光伏设备，光伏组件生产厂家,光伏组件价格"/>
  <meta name="description"
        content="湖南前沿科技有限公司是一家专业生产风光电池组件以及风光高科技产品的企业，拥有一流的专业技术队伍及先进的生产检测设备。公司引进了先进生产设备，通过严格的质量控制器体积，使得产品具有效能高，寿命长等特点。电话：17773166613"/>
  <meta http-equiv="Cache-Control" content="max-age=7200"/>
  <meta name="viewport" content="width=device-width,shrink-to-fit=no"/>
  <meta name="baidu-site-verification" content="QEMpUmzU1b"/>
  <script type="application/x-javascript"> addEventListener("load", function () {
    setTimeout(hideURLbar, 0);
  }, false);

  function hideURLbar() {
    window.scrollTo(0, 1);
  } </script>
  <link rel="stylesheet" type="text/css" href="${staticPath }/static/windEnergy/customer/css/main.css">
  <script src="${staticPath }/static/windEnergy/customer/js/vendors/jquery/jquery.min.js"></script>
  <!-- JavaScripts -->
  <script src="${staticPath }/static/windEnergy/customer/js/vendors/wow.min.js"></script>
  <script src="${staticPath }/static/windEnergy/customer/js/vendors/bootstrap.min.js"></script>
  <script src="${staticPath }/static/windEnergy/customer/js/vendors/own-menu.js"></script>
  <script src="${staticPath }/static/windEnergy/customer/js/vendors/jquery.sticky.js"></script>
  <script src="${staticPath }/static/windEnergy/customer/js/vendors/owl.carousel.min.js"></script>
  <script src="${staticPath }/static/customer/js/main.js"></script>

  <!-- SLIDER REVOLUTION 4.x SCRIPTS  -->
  <script type="text/javascript"
          src="${staticPath }/static/windEnergy/customer/rs-plugin/js/jquery.tp.t.min.js"></script>
  <script type="text/javascript" src="${staticPath }/static/windEnergy/customer/rs-plugin/js/jquery.tp.min.js"></script>
  <link rel="stylesheet" type="text/css" href="${staticPath }/static/windEnergy/customer/rs-plugin/css/settings.css"
        media="screen"/>
  <!-- StyleSheets --引用productList-->
  <link rel="stylesheet" href="${staticPath }/static/windEnergy/customer/css/ionicons.min.css">
  <link rel="stylesheet" href="${staticPath }/static/windEnergy/customer/css/bootstrap.min.css">
  <link rel="stylesheet" href="${staticPath }/static/windEnergy/customer/css/font-awesome.min.css">
  <link rel="stylesheet" href="${staticPath }/static/windEnergy/customer/css/main.css">
  <link rel="stylesheet" href="${staticPath }/static/windEnergy/customer/css/style.css">
  <link rel="stylesheet" href="${staticPath }/static/windEnergy/customer/css/responsive.css">
  <!-- GO TO TOP  -->
  <a href="#" class="cd-top"><i class="fa fa-angle-up"></i></a>
  <link href="${staticPath }/static/windEnergy/css/bootstrap.css" rel='stylesheet' type='text/css'/>
  <link href="${staticPath }/static/windEnergy/css/style.css" rel='stylesheet' type='text/css'/>
  <script src="${staticPath }/static/windEnergy/js/jquery.min.js"></script>
  <link href="${staticPath }/static/style/css/fontStyle.css" rel='stylesheet' type='text/css'/>
  <style type="text/css">
    .col-list .product article .heart i {
      margin: 7px;
    }
  </style>
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
    #productCenter {
      color: #105b63;
    }
  </style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div id="content">
  <div id="contentPage">
    <div class="about">
      <div class="container">
        <ul class="about_head">
          <li class="about_head-left"><h1>产品中心</h1></li>
          <li class="about_head-right"><p>Product Center</p></li>
        </ul>
      </div>
    </div>
    <div class="abo_menu_wrap">
      <div class="main clearfix">
        <div class="bread2">
          <span><a href="http://guanghe.cn">首页</a></span><i></i>
          <a style="pointer-events:none;">产品中心</a>
        </div>
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
                  <div class="item-img" style="width:330px;border:1px solid #e2e2e2"><a
                    href="${path }/solarPanel/productDetail/${image.productId}"><img class="img-responsive"
                                                                                     src="${staticPath}/static${image.imagePath}${image.fileName}"
                                                                                     alt=""></a></div>
                </div>
                <!-- Content -->
                <div class="media-body">
                  <div class="row">
                    <!-- Content Left -->
                    <div class="col-sm-7"><span class="tag"></span> <a
                      href="${path }/solarPanel/productDetail/${image.productId}" class="tittle">${image.imageTitle}</a>
                    </div>
                    <!-- Content Right -->
                    <div class="col-sm-5 text-center"><a href="#." class="heart"><i class="fa fa-heart"></i></a> <a
                      href="#." class="heart navi"><i class="fa fa-navicon"></i></a>
                      <div class="position-center-center">
                        <a href="${path }/solarPanel/productDetail/${image.productId}" class="btn-round"><i
                          class="icon-basket-loaded"></i> 立刻购买</a></div>
                    </div>
                  </div>
                </div>
              </article>
            </div>
          </c:forEach>
        </div>
      </div>

    </div>

  </div>
</div>
<!--侧边悬浮聊天对话框-->
<jsp:include page="talk.jsp"></jsp:include>
<jsp:include page="footer.jsp"></jsp:include>

</body>

</html>
