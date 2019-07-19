<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/commons/global.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
  <title>风力发电机-永动新能源有限公司</title>
  <meta name="viewport"
        content="width=device-width,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0,user-scalable=no">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
  <meta http-equiv="Cache-Control" content="max-age=7200"/>
  <meta name="viewport" content="width=device-width,shrink-to-fit=no"/>
  <meta name="keywords"
        content="小型风力发电机,风光互补路灯系统,太阳能发电系统,家用太阳能发电系统,光伏发电系统,风力发电机,风力发电机厂家,风力发电机价格,小型风力发电机,中小型风力发电机,中型风力发电机,湖南前沿科技,风光互补系统,发电系统,水平轴风力发电机,垂直轴风力发电机"/>
  <meta name="description"
        content="永动新能源有限公司主要产品有100W-100kW水平轴风力发电机、垂直轴风力发电机等中小型风力发电机、风光互补路灯、风光互补分布式发电系统、太阳能灯路灯等，可为客户提供风力发电、风光互补发电、风光互补路灯，太阳能路灯系统、 太阳能光伏提水系统及光伏并网发电等一站式解决方案，电话:17773166613"/>
  <script type="application/x-javascript"> addEventListener("load", function () {
    setTimeout(hideURLbar, 0);
  }, false);

  function hideURLbar() {
    window.scrollTo(0, 1);
  } </script>
  <link rel="stylesheet" type="text/css" href="${staticPath }/static/windEnergy/customer/css/main.css">
  <script src="${staticPath }/static/windEnergy/customer/js/vendors/jquery/jquery.min.js"></script>
  <script type="text/javascript" src="${staticPath }/static/customer/js/main.js"></script>
  <!-- JavaScripts -->
  <script src="${staticPath }/static/windEnergy/customer/js/vendors/wow.min.js"></script>
  <script src="${staticPath }/static/windEnergy/customer/js/vendors/bootstrap.min.js"></script>
  <script src="${staticPath }/static/windEnergy/customer/js/vendors/own-menu.js"></script>
  <script src="${staticPath }/static/windEnergy/customer/js/vendors/jquery.sticky.js"></script>
  <script src="${staticPath }/static/windEnergy/customer/js/vendors/owl.carousel.min.js"></script>
  <link rel="stylesheet" type="text/css" href="${staticPath }/static/windEnergy/customer/rs-plugin/css/settings.css"
        media="screen"/>

  <!-- StyleSheets --引用productList-->
  <link rel="stylesheet" href="${staticPath }/static/windEnergy/customer/css/ionicons.min.css">
  <link rel="stylesheet" href="${staticPath }/static/windEnergy/customer/css/bootstrap.min.css">
  <link rel="stylesheet" href="${staticPath }/static/windEnergy/customer/css/font-awesome.min.css">
  <link rel="stylesheet" href="${staticPath }/static/windEnergy/customer/css/main.css">
  <link rel="stylesheet" href="${staticPath }/static/windEnergy/customer/css/style.css">
  <link rel="stylesheet" href="${staticPath }/static/windEnergy/customer/css/responsive.css">
  <link rel="shortcut icon" href="${staticPath }/static/images/yongdong.png" type="image/x-icon"/>

  <!-- SLIDER REVOLUTION 4.x SCRIPTS  -->
  <script type="text/javascript"
          src="${staticPath }/static/windEnergy/customer/rs-plugin/js/jquery.tp.t.min.js"></script>
  <script type="text/javascript" src="${staticPath }/static/windEnergy/customer/rs-plugin/js/jquery.tp.min.js"></script>
  <!-- GO TO TOP  -->
  <a href="#" class="cd-top"><i class="fa fa-angle-up"></i></a>
  <link href="${staticPath }/static/windEnergy/css/bootstrap.css" rel='stylesheet' type='text/css'/>
  <script src="${staticPath }/static/windEnergy/js/jquery.min.js"></script>
  <style type="text/css">
    .col-list .product article .heart i {
      margin: 7px;
    }
  </style>
  <link rel="shortcut icon" href="${staticPath }/static/images/yongdong.png" type="image/x-icon"/>
  <script type="application/x-javascript"> addEventListener("load", function () {
    setTimeout(hideURLbar, 0);
  }, false);

  function hideURLbar() {
    window.scrollTo(0, 1);
  } </script>
  <link rel="stylesheet" href="${staticPath }/static/customer/css/font-awesome.min.css">
  <link href="${staticPath }/static/windEnergy/css/style.css" rel='stylesheet' type='text/css'/>
  <script type="text/javascript" src="${staticPath }/static/windEnergy/js/jquery.easing.min.js"></script>
  <script type="text/javascript" src="${staticPath }/static/windEnergy/js/jquery.mixitup.min.js"></script>
  <link href="${staticPath }/static/style/css/fontStyle.css" rel='stylesheet' type='text/css'/>
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

    <input type="hidden" id="pageId" name="pageId" value="${pageId}">
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
          <span><a href="http://yongdong.com.cn">首页</a></span><i></i>
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
                  <div class="item-img" style="width:220.66px;border:1px solid #e2e2e2"><a
                    href="${path }/windEnergy/productDetail/${image.productId}"><img class="img-responsive"
                                                                                     src="${staticPath}/static${image.imagePath}${image.fileName}"
                                                                                     alt="" style="height:218.66px"></a>
                  </div>
                </div>
                <!-- Content -->
                <div class="media-body">
                  <div class="row">
                    <!-- Content Left -->
                    <div class="col-sm-7"><span class="tag"></span> <a
                      href="${path }/windEnergy/productDetail/${image.productId}" class="tittle">${image.imageTitle}</a>
                    </div>
                    <!-- Content Right -->
                    <div class="col-sm-5 text-center"><a href="#." class="heart"><i class="fa fa-heart"></i></a> <a
                      href="#." class="heart navi"><i class="fa fa-navicon"></i></a>
                      <div class="position-center-center">
                        <a href="${path }/windEnergy/productDetail/${image.productId}" class="btn-round"><i
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
