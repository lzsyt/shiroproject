<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/commons/global.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
  <title>产品中心-太阳能控制器-湖南前沿科技有限公司</title>
  <meta name="keywords"
        content="防水路灯控制器,风光互补大功率控制器,风机控制器,太阳能MPPT控制器"/>
  <meta name="description"
        content="公司用于将近十来种控制器产品,具有过充保护、过放保护、过压保护、温度补偿等功能,为客户提供质量可靠的产品."/>
  <%--增加地名，提高本地排名--%>
  <meta name="location" content="province=湖南;city长沙">
  <%--url 唯一化--%>
  <link rel="canonical" href="http://www.kongzhiqi.cn/"/>

  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
  <meta http-equiv="Cache-Control" content="max-age=7200"/>
  <meta name="viewport" content="width=device-width,shrink-to-fit=no"/>
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

  <!-- SLIDER REVOLUTION 4.x SCRIPTS  -->
  <script type="text/javascript"
          src="${staticPath }/static/windEnergy/customer/rs-plugin/js/jquery.tp.t.min.js"></script>
  <script type="text/javascript"
          src="${staticPath }/static/windEnergy/customer/rs-plugin/js/jquery.tp.min.js"></script>
  <link rel="stylesheet" type="text/css" href="${staticPath }/static/windEnergy/customer/rs-plugin/css/settings.css"
        media="screen"/>

  <!-- StyleSheets --引用productList-->
  <link rel="stylesheet" href="${staticPath }/static/windEnergy/customer/css/ionicons.min.css">
  <link rel="stylesheet" href="${staticPath }/static/windEnergy/customer/css/bootstrap.min.css">
  <link rel="stylesheet" href="${staticPath }/static/windEnergy/customer/css/font-awesome.min.css">
  <link rel="stylesheet" href="${staticPath }/static/windEnergy/customer/css/main.css">
  <link rel="stylesheet" href="${staticPath }/static/windEnergy/customer/css/style.css">
  <link rel="stylesheet" href="${staticPath }/static/windEnergy/customer/css/responsive.css">
  <link href="${staticPath }/static/style/css/fontStyle.css" rel='stylesheet' type='text/css'/>
  <!-- GO TO TOP  -->
  <a href="#" class="cd-top"><i class="fa fa-angle-up"></i></a>
  <link href="${staticPath }/static/windEnergy/css/bootstrap.css" rel='stylesheet' type='text/css'/>

  <link href="${staticPath }/static/windEnergy/css/style.css" rel='stylesheet' type='text/css'/>

  <script src="${staticPath }/static/windEnergy/js/jquery.min.js"></script>

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
  <link href="${staticPath }/static/windEnergy/css/style.css" rel='stylesheet' type='text/css'/>
  <script src="${staticPath }/static/windEnergy/js/jquery.min.js"></script>
  <link rel="stylesheet" href="${staticPath }/static/customer/css/font-awesome.min.css">
  <script type="text/javascript" src="${staticPath }/static/windEnergy/js/jquery.easing.min.js"></script>
  <script type="text/javascript" src="${staticPath }/static/windEnergy/js/jquery.mixitup.min.js"></script>
  <link href="${staticPath }/static/style/css/fontStyle.css" rel='stylesheet' type='text/css'/>
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
          <span><a href="http://www.kongzhiqi.com">首页</a></span><i></i>
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
                    href="${path }/solarController/productDetail/${image.productId}">
                    <img class="img-responsive"
                         src="${staticPath}/static${image.imagePath}${image.fileName}" alt="控制器产品图片"
                         style="height:218.66px"></a></div>
                </div>
                <!-- Content -->
                <div class="media-body">
                  <div class="row">
                    <!-- Content Left -->
                    <div class="col-sm-7"><span class="tag"></span> <a
                      href="${path }/solarController/productDetail/${image.productId}"
                      class="tittle">${image.imageTitle}</a>
                    </div>
                    <!-- Content Right -->
                    <div class="col-sm-5 text-center"><a href="#." class="heart"><i
                      class="fa fa-heart"></i></a> <a href="#." class="heart navi"><i
                      class="fa fa-navicon"></i></a>
                      <div class="position-center-center">
                        <a href="${path }/solarController/productDetail/${image.productId}"
                           class="btn-round"><i class="icon-basket-loaded"></i> 立刻购买</a></div>
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
