<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/commons/global.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>产品详情-太阳能控制器-湖南前沿科技有限公司</title>
    <meta name="keywords"
          content="产品详情,产品参数"/>
    <meta name="description"
          content="公司生产的控制器具有功耗低、充电效率高、工作模式多、质量轻、安全性高等特点."/>
    <%--增加地名，提高本地排名--%>
    <meta name="location" content="province=湖南;city长沙">
    <%--url 唯一化--%>
    <link rel="canonical" href="http://www.kongzhiqi.cn/"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>

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
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="${staticPath }/static/windEnergy/js/jquery.min.js"></script>
    <!-- Custom Theme files -->
    <link href="${staticPath }/static/windEnergy/css/bootstrap.css" rel='stylesheet' type='text/css'/>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
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
<div class="about">
    <div class="container">
        <ul class="about_head">
            <li class="about_head-left"><h1 style="line-height:35px">产品中心</h1></li>
            <li class="about_head-right"><p></p></li>
        </ul>
    </div>
</div>
<div class="abo_menu_wrap">
  <div class="main clearfix">
    <div class="bread2">
      <span><a href="http://www.kongzhiqi.com">首页</a></span><i></i>
      <a href="http://www.kongzhiqi.com/solarController/productCenter">产品中心</a><i></i>
      <a style="pointer-events:none;">产品详情</a>
    </div>
  </div>
</div>
<!-- Products -->
<section class="padding-top-40 padding-bottom-60">
    <div class="container">
        <div class="row">
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
                                                    <li data-thumb="${staticPath}/static${mimage.imagePath}${mimage.fileName}">
                                                        <img
                                                                src="${staticPath}/static${mimage.imagePath}${mimage.fileName}"
                                                                alt="控制器产品图片"></li>
                                                </c:forEach>
                                                <c:forEach items="${images}" end="1" var="images">
                                                    <li data-thumb="${staticPath}/static${images.imagePath}${images.fileName}">
                                                        <img
                                                                src="${staticPath}/static${images.imagePath}${images.fileName}"
                                                                alt="控制器产品参数图片"></li>
                                                </c:forEach>
                                            </ul>
                                        </div>
                                    </article>
                                </div>
                                <!-- Item Content -->
                                <div class="col-xs-7" style="padding:20px 120px ">
                                    <h5>${product.productName}</h5>
                                    <p class="rev"><i class="fa fa-star"></i><i class="fa fa-star"></i><i
                                            class="fa fa-star"></i><i
                                            class="fa fa-star"></i> <i class="fa fa-star-o"></i> <span
                                            class="margin-left-10">5 Review(s)</span></p>
                                    <div class="pro-description">
                                        <ul>
                                            <li><span>产品概要:${product.productSynopsis}</span></li>
                                            <li><span>产品描述:${product.productDescription}</span></li>
                                            <li><span>单价:￥${product.price}</span></li>
                                            <li><span>更新时间:<fmt:formatDate value="${mainImage[0].updateTime}"
                                                                           pattern="yyyy-MM-dd HH:mm:ss"/></span></li>
                                        </ul>
                                    </div>

                                    <a target="_blank"
                                       href="https://guangheguineng.tmall.com/shop/view_shop.htm?shop_id=113563151"
                                       class="btn-round"><i class="icon-basket-loaded margin-right-5"></i> 立刻购买</a>
                                </div>
                            </div>
                        </div>

                        <!-- Details Tab Section-->
                        <div class="item-tabs-sec">
                            <!--后期增加的产品描述-->

                            <!-- Nav tabs -->
                            <%--
                            <ul class="nav" role="tablist" style="margin-top: -150px">
                                <!--
                                <li role="presentation" class="active" style="margin-top: 150px"><a href="#pro-detil"  role="tab" data-toggle="tab">详情</a></li>
                                -->
                            </ul>
                            --%>

                            <!-- Tab panes -->

                            <div class="tab-content">
                                <div role="tabpanel" class="tab-pane fade in active" id="pro-detail"
                                     style="margin-top: 60px">
                                    <!--
                                    <p>
                                        YD-HT 风力发电机差别优势。</br>
                                    </p>
                                    <p>1、启动风速低，最低可答1.9m/s。（乃尔启动风速3m/s）升级款风机在1.9m/s带载条件是可以进行微转。其他厂家风机在同等条件下则不足以启动风机。（其他厂家空载情况下启动风速平均2.0-2.5m/s）。</p>
                                    <p>2、功率效率高，实际功率可达标称功率，实测功率高于S型300W。与M型300W相差无几。</p>
                                    <p>3、体积偏小，便于安装。</p>
                                    <p>    M型300W:  重9.6kg   风轮直径1.35M（原厂家）</p>
                                    <p>   YD-300W:    重8kg    风轮直径1.3M（新款）</p>
                                    <p>  重量较低，叶片长度减小。叶片减小，重量减轻，但是同等环境条件下发电效率相同甚至更优，方便安装</p>
                                    <p>4、材质优质，尾翼用ABS材质。大多厂家使用不锈钢材质。重量增加，我们产品重量更轻稳定性更强，在高风速情况下抖动不会很大。如果重量较重，对塔架的标准要求会很高，杆径则需更粗，否则塔杆整体会不稳定。</p>
                                    <p>5、电机安装主轴长。针对于风较大的地区安装更加牢固，防止叶片飞车（在大风时候脱落）。</p>
                                    <p>6、线圈厚度比其他厂家风机线圈更厚，效率可达更高（有对比图）</p>
                                    <p>7、转子磁铁厚，磁性强，发电性能更优越。（有对比图）</p>
                                     -->


                                    <div style="margin-top: 30px">
                                        <h3 style="border-bottom: 1px solid #e5e5e5;padding-bottom: 5px"><a
                                                id="dis-kind" style="border-bottom: 2px solid #0088cc;">详情</a></h3>
                                        <c:forEach items="${images}" begin="2" var="images">
                                            <img src="${staticPath}/static${images.imagePath}${images.fileName}"
                                                 alt="控制器产品描述图片">
                                        </c:forEach>
                                        <c:forEach items="${detailImages}" var="detail">
                                            <img src="${staticPath}/static${detail.imagePath}${detail.fileName}"
                                                 alt="控制器产品描述图片"
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
                    <link rel="stylesheet" type="text/css"
                          href="${staticPath }/static/windEnergy/customer/css/main.css">
                    <script src="${staticPath }/static/windEnergy/customer/js/vendors/jquery/jquery.min.js"></script>
                    <script type="text/javascript" src="${staticPath }/static/windEnergy/customer/js/main.js"></script>
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
                    <!-- GO TO TOP  -->
                    <a href="#" class="cd-top"><i class="fa fa-angle-up"></i></a>
                    <!-- GO TO TOP End -->
                </div>
            </div>

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
</section>
<jsp:include page="footer.jsp"/>
<!--侧边悬浮聊天对话框-->
<%--<jsp:include page="talk.jsp"></jsp:include>--%>
<%--<jsp:include page="footer.jsp"></jsp:include>--%>

</body>

</html>

