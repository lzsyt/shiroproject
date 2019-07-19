<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/3/11
  Time: 14:21
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
  <script type="application/x-javascript"> addEventListener("load", function () {
    setTimeout(hideURLbar, 0);
  }, false);

  function hideURLbar() {
    window.scrollTo(0, 1);
  } </script>
  <link href="${staticPath }/static/windEnergy/css/bootstrap.css" rel='stylesheet' type='text/css'/>
  <link href="${staticPath }/static/windEnergy/css/style.css" rel='stylesheet' type='text/css'/>
  <link rel="stylesheet" href="${staticPath }/static/customer/css/font-awesome.min.css">
  <link rel="stylesheet" href="${staticPath}/static/style/css/animate.min.css" type="text/css"/>
  <script src="${staticPath }/static/windEnergy/js/jquery.min.js"></script>
  <script type="text/javascript" src="${staticPath }/static/windEnergy/js/jquery.easing.min.js"></script>
  <script type="text/javascript" src="${staticPath }/static/windEnergy/js/jquery.mixitup.min.js"></script>
  <link href="${staticPath }/static/style/css/en_fontStyle.css" rel='stylesheet' type='text/css'/>
  <script src="${staticPath}/static/js/jquery.waypoints.min.js"></script>
  <script src="${staticPath }/static/customer/js/layer.js"></script>
  <style>
    #main{
      color:#105b63;
    }
  </style>

</head>
<body>
<jsp:include page="en_header.jsp"></jsp:include>
<%--为了增加权重，添加隐藏的H1标签--%>
<H1 style="display: none">网站首页</H1>
<div id="content">
  <div id="contentPage">
    <div class="banner">
      <div class="banner_container">
        <div class="wmuSlider example1">
          <div class="wmuSliderWrapper">
            <c:forEach items="${ADImages}" begin="0" end="2" var="adImage">
              <article style="position: absolute; width: 100%; opacity: 0;">
                <div class="" style="margin:auto;">
                  <image src="${staticPath}/static${adImage.imagePath}${adImage.en_fileName}"></image>
                </div>
              </article>
            </c:forEach>
          </div>
          <a class="wmuSliderPrev">Previous</a><a class="wmuSliderNext">Next</a>
          <script src="${staticPath }/static/windEnergy/js/jquery.wmuSlider.js"></script>
          <script>
            $('.example1').wmuSlider();
          </script>
        </div>
      </div>
    </div>



    <div class="features-grids text-center box_nav">
      <div class="container container_nav">
        <div class="wind_product">
          <p class="first_p">产品中心</p>
          <p class="second_p">Product Center</p>
          <%--<h1 class="title_size" style="background-color:#d9d9d9 ">产品中心 Product Ceneter</h1>--%>
        </div>
        <div class="animated scroll_response fadeInLeft" data-animation="fadeInLeft">
        <c:forEach items="${mainImages}" var="hot" end="3">
          <div class="c-all">
            <div class="t-all-img">
              <a href="${path}/en_solarController/en_productCenter"><img
                src="${staticPath}/static${hot.imagePath}${hot.fileName}" alt=""></a>
            </div>
            <div class="t-all-p">
              <p>${hot.en_imageTitle}</p>
            </div>
          </div>
        </c:forEach>
        </div>
        <div class="clearfix"></div>
      </div>
    </div>
    <div class="box_1">
      <div class="container">
        <%--        <h3>About<span class="m_1">Us</span></h3>--%>
        <%--        <p>Permanent New Energy has attached great importance to research and development for a long time, so that we are in the leading position in the relevant fields of--%>
        <%--            wind power industry, and continue to do so.Provide innovative products that meet customer requirements. We have a young, high-quality, continuous development.--%>
        <%--                  Spiritual research team, combined with modern information technology, research and development of high-quality products.</p>--%>
        <%--        <a href="${path}/en_solarController/en_aboutUs"  title="Read More" class="btn1" id="aboutUs">Understanding Details</a>--%>
        <div class="content-img-left">
          <div class="img-text-left">
            <div class="img-l1">
              <img src="http://www.listenenergy.cn/img/z16.png" alt="关于我们背景">
            </div>
            <div class="text-l1">
              <span>About Us</span>
            </div>
            <div class="text-l2">
                <span>Permanent New Energy has attached great importance to research and development for a long time, so that we are in the leading position in the relevant fields of
            wind power industry, and continue to do so.Provide innovative products that meet customer requirements. We have a young, high-quality, continuous development.
                  Spiritual research team, combined with modern information technology, research and development of high-quality products.</span>
            </div>
            <div class="btn-l1">
              <a href="${path}/solarController/aboutUs" title="Read More" class="btn1" id="aboutUs">Understanding
                Details</a>
            </div>
          </div>
          <div class="img-text-right">
            <div class="img-r1">
              <img src="http://www.listenenergy.cn/img/z17.png" alt="高楼背景">
            </div>
            <div class="text-r1">
              <span>Enterprise Honor</span>
            </div>
            <div class="text-r2">
              <span>Our integrity, strength and product quality recognized by the industry</span>
            </div>
            <div class="btn-r2">
              <a href="${path}/solarController/aboutUs" title="Read More" class="right-btn">Understanding Details</a>
            </div>
          </div>
        </div>
      </div>

    </div>
  </div>
  <div class="box_2 box_nav">
    <div class="container">
      <div class="wind_product">
        <p class="first_p">工程案例</p>
        <p class="second_p">Project Case</p>
      </div>
      <div class="product j_imglist img_nav2">
        <c:forEach var="demo" end="2" items="${caseImage}">
          <div class="col-md-3 features-grid img_nav1" style="width: 33.33%;text-align: center">
            <a href="${path}/en_solarController/en_case"><img class="img-responsive"
                                                              style="width: 365px;float: left;margin-right: 15px;"
                                                              src="${staticPath}/static${demo.imagePath}${demo.fileName}"
                                                              alt=""></a>
              <%--  <div>经典案例描述</div>--%>
            <div>${demo.en_imageDescription}</div>
          </div>
        </c:forEach>
      </div>
      <div class="clearfix"></div>
    </div>
  </div>
  <%--<jsp:include page="en_footer.jsp"></jsp:include>--%>
  <%--新闻中心--%>
  <%--
  <div class="container">
    <div class="t-all">
      <div class="t-left-l1">
        <div class="t-son">
          <div class="befor-t"></div>
          <span>News Center</span>
        </div>
      </div>
    </div>
    <div class="ul-all">
      <div class="ul-list">
        <ul class="u1">
          <c:forEach items="${newsList}" var="newV">
            <li>
              <div class="li-all">
                <div class="li-d1">
                  <a href="${path }/solarController/en_newsDetail/${newV.newsId}">
                    <span style="color: rgb(102,102,102);font-size: 27px"><fmt:formatDate value="${newV.createTime}"
                                                                                          pattern="dd"/></span><br>
                    <span><fmt:formatDate value="${newV.createTime}" pattern="yyyy/MM"/></span>
                  </a>
                </div>
                <div class="li-t1">
                  <a href="${path }/solarController/en_newsDetail/${newV.newsId}">
                    <p class="p1">${newV.enNewsName}</p>
                  </a>
                  <p class="p2">${newV.enNewsDescription}</p>
                </div>
              </div>
            </li>
          </c:forEach>
        </ul>
      </div>
    </div>
  </div>--%>
</div>
</div>
<script src="${staticPath}/static/js/common.js"></script>
<script>
  $(function(){
    var oM =$(".scroll_response").attr("data-animation");
    $(".scroll_response").removeClass(oM).css("visibility","hidden");
    window.onscroll= function(){
      //变量t是滚动条滚动时，距离顶部的距离
      var t = document.documentElement.scrollTop||document.body.scrollTop;
      if(t>=400){
        $(".scroll_response").addClass(oM).css("visibility","visible");
      }
    }
  })
</script>
<!--侧边悬浮聊天对话框-->
<jsp:include page="en_talk.jsp"></jsp:include>
<jsp:include page="en_footer.jsp"></jsp:include>

</body>


</html>

