<!DOCTYPE HTML>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="/commons/global.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
  <title>风力发电机-永动新能源有限公司</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
  <meta http-equiv="Cache-Control" content="max-age=7200"/>
  <meta name="viewport" content="width=device-width,shrink-to-fit=no"/>
  <meta name="viewport"
        content="width=device-width,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0,user-scalable=no">
  <meta name="keywords"
        content="小型风力发电机,风光互补路灯系统,太阳能发电系统,家用太阳能发电系统,光伏发电系统,风力发电机,风力发电机厂家,风力发电机价格,小型风力发电机,中小型风力发电机,中型风力发电机,湖南前沿科技,风光互补系统,发电系统,水平轴风力发电机,垂直轴风力发电机"/>
  <meta name="description"
        content="永动新能源有限公司主要产品有100W-100kW水平轴风力发电机、垂直轴风力发电机等中小型风力发电机、风光互补路灯、风光互补分布式发电系统、太阳能灯路灯等，可为客户提供风力发电、风光互补发电、风光互补路灯，太阳能路灯系统、 太阳能光伏提水系统及光伏并网发电等一站式解决方案，电话:17773166613"/>
  <link href="${staticPath }/static/windEnergy/css/bootstrap.css" rel='stylesheet' type='text/css'/>
  <link rel="shortcut icon" href="${staticPath }/static/images/yongdong.png" type="image/x-icon"/>
  <script src="${staticPath }/static/windEnergy/js/jquery.min.js"></script>
  <link rel="shortcut icon" href="${staticPath }/static/images/yongdong.png" type="image/x-icon"/>
  <script type="application/x-javascript"> addEventListener("load", function () {
    setTimeout(hideURLbar, 0);
  }, false);

  function hideURLbar() {
    window.scrollTo(0, 1);
  } </script>
  <link href="${staticPath }/static/windEnergy/css/bootstrap.css" rel='stylesheet' type='text/css'/>
  <link rel="stylesheet" href="${staticPath }/static/customer/css/font-awesome.min.css">
  <link href="${staticPath }/static/windEnergy/css/style.css" rel='stylesheet' type='text/css'/>
  <script type="text/javascript" src="${staticPath }/static/windEnergy/js/jquery.easing.min.js"></script>
  <script type="text/javascript" src="${staticPath }/static/windEnergy/js/jquery.mixitup.min.js"></script>
  <link href="${staticPath }/static/style/css/fontStyle.css" rel='stylesheet' type='text/css'/>
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
          <span><a href="http://yongdong.com.cn">首页</a></span><i></i>
          <a style="pointer-events:none;">经典案例</a>
        </div>
      </div>
    </div>

   <%-- <div class="container case-container">
      <div class="blog">
        <ul class="img_all">
          <c:forEach items="${caseImage}" var="caseImage">
            <li style="text-align: center">
              <a href="#">
                <img src="${staticPath}/static${caseImage.imagePath}${caseImage.fileName}" alt=""
                     style="width:400px;">
              </a>
              <p
                style="margin: 15px 0 0 0;font-size: 16px;font-family: '微软雅黑', '黑体', '新宋体', 'Arial Unicode MS';height: 25px;">${caseImage.imageDescription}</p>
            </li>
          </c:forEach>
        </ul>
      </div>
    </div>--%>
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
