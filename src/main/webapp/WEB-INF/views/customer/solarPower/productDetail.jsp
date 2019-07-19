<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/commons/global.jsp" %>
<html>
<head>
  <!-- Document Title -->
  <title>光合硅能蓄电池唯一【官网】|光合硅能电池公司官网|光合硅能蓄电池厂家</title>
  <meta name="keywords" content="光合硅能蓄电池,硅能蓄电池,硅能电池,光合硅能电池官网,光合硅能电池,光合硅能蓄电池官网,光合硅能,
,太阳能储能电池,光合硅能电池官网,蓄电池厂家,发电系统,湖南前沿,前沿科技"/>
  <meta name="description"
        content="光合硅能一直坚持以品质，足容量，不虚标，不作假，承诺的售后质保服务为坚持，目前在行业内具有一定的品牌价值，请一定认准可以提供商标品牌查询资质的正规购买渠道。买光合硅能蓄电池请认准天猫旗舰店和湖南前沿科技官网网址www.150ah.com，有蓝标和工商认证为正品。认准光合硅能，有工商执照认证，有百度信誉认证才是正品。联系电话：17773166613"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
  <meta name="author" content="M_Adnan"/>
  <meta name="baidu-site-verification" content="UC04SFA0NB"/>

  <link rel="shortcut icon" href="${staticPath }/static/images/favicon.png" type="image/x-icon"/>
  <!-- SLIDER REVOLUTION 4.x CSS SETTINGS -->
  <link rel="stylesheet" type="text/css" href="${staticPath }/static/customer/rs-plugin/css/settings.css"
        media="screen"/>

  <!-- StyleSheets -->
  <link rel="stylesheet" href="${staticPath }/static/customer/css/ionicons.min.css">
  <link rel="stylesheet" href="${staticPath }/static/customer/css/bootstrap.min.css">
  <link rel="stylesheet" href="${staticPath }/static/customer/css/font-awesome.min.css">
  <link rel="stylesheet" href="${staticPath }/static/customer/css/main.css">
  <link rel="stylesheet" href="${staticPath }/static/customer/css/style.css">
  <link rel="stylesheet" href="${staticPath }/static/customer/css/responsive.css">

  <!-- Fonts Online -->
  <link href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i"
        rel="stylesheet">
  <!-- <%@ include file="/commons/basejs.jsp" %>
    <link rel="stylesheet" type="text/css" href="${staticPath }/static/style/css/main.css">
    <script type="text/javascript" src="${staticPath }/static/js/main.js"></script>-->
  <style>

    #pro-detail p {
      line-height: 28px;
      width: 80%;
      margin-left: 10px;
    }
  </style>
</head>
<!-- 前台登录css-->
<link rel="stylesheet" href="${staticPath }/static/customer/css/loginIndex.css">
<!-- Fonts Online -->
<link href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i" rel="stylesheet">
<script type="text/javascript" src="${staticPath }/static/js/jquery-easyui/jquery.min.js"></script>
<!-- 前台登录js-->
<script src="${staticPath }/static/js/index.js"></script>
<script src="${staticPath }/static/customer/js/layer.js"></script>
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
<link rel="stylesheet" type="text/css" href="${staticPath }/static/customer/css/talkStyle.css?v=10">

<!-- SLIDER REVOLUTION 4.x SCRIPTS  -->
<script type="text/javascript" src="${staticPath }/static/customer/rs-plugin/js/jquery.tp.t.min.js"></script>
<script type="text/javascript" src="${staticPath }/static/customer/rs-plugin/js/jquery.tp.min.js"></script>
<style>
  #productsCenter {
    color: #105b63;
  }
</style>
<body>

<jsp:include page="header.jsp"></jsp:include>

<%--<jsp:include page="talk.jsp"></jsp:include>--%>
<!-- Products -->
<!-- Linking -->
<div class="linking">
  <div class="container">
    <ol class="breadcrumb" style="background: #f4f5f9">
      <li><a target="myframe" href="http://www.150ah.com">首页</a></li>
      <li class="active"><a target="myframe" href="${path}/customer/productsCenter">产品中心</a></li>
      <li class="active">产品详情</li>
    </ol>
  </div>
</div>
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


                  <a target="_blank" href="https://guangheguineng.tmall.com/shop/view_shop.htm?shop_id=113563151"
                     class="btn-round"><i class="icon-basket-loaded margin-right-5"></i> 立刻购买</a></div>
              </div>
            </div>

            <!-- Details Tab Section-->
            <div class="item-tabs-sec">

              <!-- Nav tabs -->
              <ul class="nav" role="tablist">
                <li role="presentation" class="active" style="margin-top: 60px"><a href="#pro-detil" role="tab"
                                                                                   data-toggle="tab">详情</a></li>
              </ul>


              <!-- Tab panes -->
              <div class="tab-content">
                <div role="tabpanel" class="tab-pane fade in active" id="pro-detail" style="margin-top: 60px">

                  <p>
                    光合硅能电池属新型环保电池，在使用过程中无任何危害，电池在破坏后，不会泄露对环境带来危害的物质。</br>
                  </p>
                  <p>
                    它的内阻比铅酸蓄电池小30%～50%。极小的内阻使得光合硅能蓄电池系列产品的大电流充放电性能、自放电性能
                    、抗衰减性能、浮充性能、使用寿命、安全性能均优于目前正在使用的国内外铅酸蓄电池和胶体蓄电池。对于气温环境和地域环境具有极强的适应能力，
                    可于海底6000米以上和海拔4000米以下环境使用；在-40℃～70℃范围内仍可正常工作；在环境温度-40℃条件下，容量仍可保持在40％以上。自放电小，
                    完全充电后，常温存放2年仍可正常使用；在正常使用情况下，浮充运行可达10年以上，动力系列循环充电次数大于400充次， 军供蓄电池按维护方案循环充电次数可达700充次以上。
                    贮存期和使用寿命为现有蓄电池的两倍以上。 资源是有限的，新技术的发展要以资源可再生为前提。 锂资源有限，锂离子废旧电池目前基本无法回收，
                    即使回收，成本太高，如果锂离子电池不解决回收问题，将会严重污染环境。 光合硅能电池主要材料铅回收率超过99%， 是世界上回收率最高的电池，
                    随着技术的发展和国家环保的要求，回收率有望接近99.9%。密封、免维护、极大地减少了蓄电池维护工作量和维护费用，
                    减少了因维护不良造成的蓄电池损坏。 荷电状态出厂与贮存，启动时无需添加电解液，初充电准备时间是现有蓄电池的1/20,安装方便，即装即用。
                  </p>


                  <div>
                    <c:forEach items="${images}" begin="2" var="images">
                      <img src="${staticPath}/static${images.imagePath}${images.fileName}" alt=""
                           style="margin-top:20px">
                    </c:forEach>
                    <c:forEach items="${detailImages}" var="detail">
                      <img src="${staticPath}/static${detail.imagePath}${detail.fileName}" alt=""
                           style="margin-top:20px">
                    </c:forEach>
                  </div>

                </div>

              </div>
            </div>
          </div>

          <!-- End Content -->

          <jsp:include page="talk.jsp"></jsp:include>
          <!-- GO TO TOP  -->
          <a href="#" class="cd-top"><i class="fa fa-angle-up"></i></a>
          <!-- GO TO TOP End -->
        </div>
      </div>
    </div>
  </div>
</section>
</body>

<jsp:include page="footer.jsp"></jsp:include>
</html>
