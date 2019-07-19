<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="/commons/global.jsp" %>
<html>
<head>
  <title>太阳能电池板_太阳能电池板价格_太阳能电池板厂家_湖南前沿科技有限公司</title>
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
  <link href="${staticPath }/static/windEnergy/css/bootstrap.css" rel='stylesheet' type='text/css'/>

  <link href="${staticPath }/static/windEnergy/css/style.css" rel='stylesheet' type='text/css'/>

  <script src="${staticPath }/static/js/jquery-3.3.1.js"></script>
  <script src="${staticPath }/static/customer/js/layer.js"></script>

  <!-- 点击图片放大效果js -->

  <!-- 点击图片放大效果css -->
  <link href="${staticPath }/static/style/css/fontStyle.css" rel='stylesheet' type='text/css'/>
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
    #case {
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
          <li class="about_head-left"><h1>经典案例</h1></li>
          <li class="about_head-right"><p>CLASSIC CASE</p></li>
        </ul>
      </div>
    </div>
    <div class="abo_menu_wrap">
      <div class="main clearfix">
        <div class="bread2">
          <span><a href="http://www.guanghe.cn">首页</a></span><i></i>
          <a style="pointer-events:none;">经典案例</a>
        </div>
      </div>
    </div>
    <div class="container_wrapper">
      <div class="case">
        <c:forEach items="${caseImage}" var="caseImage">
          <a>
            <img src="${staticPath}/static${caseImage.imagePath}${caseImage.fileName}" alt="${caseImage.imageDescription}"/>
            <div class="con">${caseImage.imageDescription}</div>
            <div class="cover">
              <span>${caseImage.imageDescription}</span>
              <i></i>
            </div>
          </a>
        </c:forEach>
      </div>
    </div>
  </div>
</div>
<!--侧边悬浮聊天对话框-->
<jsp:include page="talk.jsp"></jsp:include>
<jsp:include page="footer.jsp"></jsp:include>
</body>

</html>

