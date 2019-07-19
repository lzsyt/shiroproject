<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/commons/global.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
  <meta name="author" content="M_Adnan"/>
  <meta name="baidu-site-verification" content="QEMpUmzU1b" />
  <!-- Document Title -->
  <title>太阳能电池板官网|湖南前沿科技有限公司|太阳能电池板厂家|太阳能阳能光伏设备</title>
  <meta name="keywords"
        content="太阳能电池板官网，湖南前沿科技有限公司,太阳能电池板厂家,太阳能组件,太阳能电池板,太阳能板,光伏组件,光伏电池板,太阳能供电，太阳能组件,太阳能路灯,太阳能光伏板,太阳能发电,太阳能光伏设备，光伏组件生产厂家,光伏组件价格"/>
  <meta name="description"
        content="湖南前沿科技有限公司是一家专业生产风光电池组件以及风光高科技产品的企业，拥有一流的专业技术队伍及先进的生产检测设备。公司引进了先进生产设备，通过严格的质量控制器体积，使得产品具有效能高，寿命长等特点。电话：17773166613"/>

  <!-- SLIDER REVOLUTION 4.x CSS SETTINGS -->
  <link rel="stylesheet" type="text/css" href="${staticPath }/static/windEnergy/customer/rs-plugin/css/settings.css"
        media="screen"/>

  <!-- StyleSheets -->
  <link rel="stylesheet" href="${staticPath }/static/windEnergy/customer/css/ionicons.min.css">
  <link rel="stylesheet" href="${staticPath }/static/windEnergy/customer/css/bootstrap.min.css">
  <link rel="stylesheet" href="${staticPath }/static/windEnergy/customer/css/font-awesome.min.css">
  <link rel="stylesheet" href="${staticPath }/static/windEnergy/customer/css/main.css">
  <link rel="stylesheet" href="${staticPath }/static/windEnergy/customer/css/style.css">
  <link rel="stylesheet" href="${staticPath }/static/windEnergy/customer/css/responsive.css">

  <!-- Fonts Online -->
  <link href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i"
        rel="stylesheet">
  <script type="application/x-javascript"> addEventListener("load", function () {
    setTimeout(hideURLbar, 0);
  }, false);

  function hideURLbar() {
    window.scrollTo(0, 1);
  } </script>
  <link href="${staticPath }/static/windEnergy/css/bootstrap.css" rel='stylesheet' type='text/css'/>
  <script src="${staticPath }/static/windEnergy/js/jquery.min.js"></script>
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
  <link rel="stylesheet" href="${staticPath }/static/customer/css/font-awesome.min.css">
  <%-- <script src="${staticPath }/static/js/jquery-3.3.1.js"></script>--%>
  <script type="text/javascript" src="${staticPath}/static/windEnergy/js/responsive-nav.js"></script>
  <script src="${staticPath }/static/customer/js/layer.js"></script>

  <!-- Custom Theme files -->
  <link href="${staticPath}/static/windEnergy/css/style.css" rel='stylesheet' type='text/css'/>
  <link rel='stylesheet' type='text/css'>

  <link href="${staticPath }/static/style/css/fontStyle.css" rel='stylesheet' type='text/css'/>
  <style>
    #productCenter {
      color: #105b63;
    }
    .menu li a{
      font-size: 16.8px;
    }
  </style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<div class="about">
  <div class="container">
    <ul class="about_head">
      <li class="about_head-left"><h1 style="line-height:35px">产品中心</h1></li>
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
                          <li data-thumb="${staticPath}/static${mimage.imagePath}${mimage.fileName}"><img
                            src="${staticPath}/static${mimage.imagePath}${mimage.fileName}" alt=""></li>
                        </c:forEach>
                        <c:forEach items="${images}" end="1" var="images">
                          <li data-thumb="${staticPath}/static${images.imagePath}${images.fileName}"><img
                            src="${staticPath}/static${images.imagePath}${images.fileName}" alt=""></li>
                        </c:forEach>
                      </ul>
                    </div>
                  </article>
                </div>
                <!-- Item Content -->
                <div class="col-xs-7" style="padding:20px 120px ">
                  <h5>${product.productName}</h5>
                  <p class="rev"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i
                    class="fa fa-star"></i> <i class="fa fa-star-o"></i> <span class="margin-left-10">5 Review(s)</span>
                  </p>
                  <div class="pro-description">
                    <ul>
                      <li><span>产品概要:${product.productSynopsis}</span></li>
                      <li><span>产品描述:${product.productDescription}</span></li>
                      <li><span>单价:￥${product.price}</span></li>
                      <li><span>更新时间:<fmt:formatDate value="${mainImage[0].updateTime}"
                                                     pattern="yyyy-MM-dd HH:mm:ss"/></span></li>
                    </ul>
                  </div>

                  <a target="_blank" href="https://guangheguineng.tmall.com/shop/view_shop.htm?shop_id=113563151"
                     class="btn-round"><i class="icon-basket-loaded margin-right-5"></i> 立刻购买</a></div>
              </div>
            </div>

            <!-- Details Tab Section-->
            <div class="item-tabs-sec">
              <!--后期增加的产品描述-->

              <!-- Nav tabs -->
              <ul class="nav" role="tablist" style="margin-top: -150px">
                <li role="presentation" class="active" style="margin-top: 100px"><a href="#pro-detil" role="tab"
                                                                                    data-toggle="tab">详情</a></li>
              </ul>


              <!-- Tab panes -->
              <div class="tab-content">
                <div role="tabpanel" class="tab-pane fade in active" id="pro-detail" style="margin-top: 60px">
                  <p>
                    太阳能板介绍</br>
                  </p>
                  <p>1、全新升级5栅线，光电转化率20%左右。</p>
                  <p>2、选用正A类单晶硅电池片，足功率，不虚标，真材实料充电更快。</p>
                  <p>3、无缝层压技术，无气泡，排列整齐，高效转化。</p>
                  <p>4、适用范围广，有光就能发电，家用，监控，市政工程，路灯照明等。</p>

                  <div style="margin-top: 30px">
                    <h3 style="border-bottom: 1px solid #e5e5e5;padding-bottom: 5px"><a id="dis-kind">产品参数</a></h3>
                    <c:forEach items="${images}" begin="2" var="images">
                      <img src="${staticPath}/static${images.imagePath}${images.fileName}" alt=""
                           style="margin-top: 20px"">
                    </c:forEach>
                    <c:forEach items="${detailImages}" var="detail">
                      <img src="${staticPath}/static${detail.imagePath}${detail.fileName}" alt=""
                           style="width: 1000px;margin-top: 20px">
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
          <script type="text/javascript">

          </script>
          <!-- SLIDER REVOLUTION 4.x SCRIPTS  -->
          <script type="text/javascript"
                  src="${staticPath }/static/windEnergy/customer/rs-plugin/js/jquery.tp.t.min.js"></script>
          <script type="text/javascript"
                  src="${staticPath }/static/windEnergy/customer/rs-plugin/js/jquery.tp.min.js"></script>
          <!-- GO TO TOP  -->
          <a href="#" class="cd-top"><i class="fa fa-angle-up"></i></a>
          <!-- GO TO TOP End -->
        </div>
      </div>
    </div>
  </div>
</section>


<!--侧边悬浮聊天对话框-->
<%--<jsp:include page="talk.jsp"></jsp:include>--%>
<jsp:include page="footer.jsp"></jsp:include>
</body>
<script>
  $("#nav-box li a").click(function (){
    //设定菜单栏的颜色
    $("#nav-box li a").css("color","#e49002");
  })
</script>
</html>

