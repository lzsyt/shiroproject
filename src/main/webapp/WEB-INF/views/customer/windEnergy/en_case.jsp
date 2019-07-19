<!DOCTYPE HTML>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="/commons/global.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
  <title>Wind turbine - yongdong new energy co. LTD</title>
  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0,user-scalable=no">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
  <meta name="keywords"
        content="small wind turbines, wind and solar hybrid streetlight systems, wind turbines, wind turbine manufacturers, wind turbine prices, small and medium wind turbines, medium wind turbines, Hunan frontier technology, wind and solar hybrid systems, power generation systems, horizontal axis wind power generation Machine, vertical axis wind turbine"/>
  <meta name="description"
        content="The main products of Yongdong New Energy Co., Ltd. include 100W-100kW horizontal-axis wind turbines, vertical-axis wind turbines and other small and medium-sized wind turbines, wind-solar complementary street lamps, wind-solar complementary distributed generation systems, solar street lamps, etc., which can provide customers with One-stop solution for wind power generation, wind and solar hybrid power generation, wind and solar hybrid street lighting, solar street lighting system, solar photovoltaic water lifting system and photovoltaic grid-connected power generation, Tel: 17773166613"/>
  <meta http-equiv="Cache-Control" content="max-age=7200"/>
  <meta name="viewport" content="width=device-width,shrink-to-fit=no"/>
  <link href="${staticPath }/static/windEnergy/css/bootstrap.css" rel='stylesheet' type='text/css'/>
  <script src="${staticPath }/static/windEnergy/js/jquery.min.js"></script>
  <link rel="shortcut icon" href="${staticPath }/static/images/yongdong.png" type="image/x-icon"/>
  <script type="application/x-javascript"> addEventListener("load", function () {
    setTimeout(hideURLbar, 0);
  }, false);

  function hideURLbar() {
    window.scrollTo(0, 1);
  } </script>
  <link href="${staticPath }/static/windEnergy/css/bootstrap.css" rel='stylesheet' type='text/css'/>
  <link href="${staticPath }/static/windEnergy/css/style.css" rel='stylesheet' type='text/css'/>
  <link rel="stylesheet" href="${staticPath }/static/customer/css/font-awesome.min.css">
  <script type="text/javascript" src="${staticPath }/static/windEnergy/js/jquery.easing.min.js"></script>
  <script type="text/javascript" src="${staticPath }/static/windEnergy/js/jquery.mixitup.min.js"></script>
  <link href="${staticPath }/static/style/css/en_fontStyle.css" rel='stylesheet' type='text/css'/>
  <script src="${staticPath }/static/customer/js/layer.js"></script>
  <style>
    #case {
      color: #105b63;
    }
  </style>
</head>
<body>
<jsp:include page="en_header.jsp"></jsp:include>
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
    <div class="ejlnNav">
      <div class="ejlmNacIn">
        <div class="ejlmNR fontcolor1">
          <a href="${path}/windEnergy/main">Home</a>
          &nbsp;&nbsp;/&nbsp;&nbsp;
          <a>Case sharing</a>
        </div>
      </div>
    </div>
    <div class="container" style="width: 1500px">
      <div class="blog">
        <ul class="img_all">
          <c:forEach items="${caseImage}" var="caseImage">
            <li style="text-align: center">
              <a href="#">
                <img src="${staticPath}/static${caseImage.imagePath}${caseImage.fileName}" alt=""
                     style="width:400px;">
              </a>
              <p style="margin: 15px 0 0 0;font-size: 16px;font-family: '微软雅黑', '黑体', '新宋体', 'Arial Unicode MS';height: 30px;">${caseImage.en_imageDescription}</p>
            </li>
          </c:forEach>
        </ul>
      </div>
    </div>

    <script>
      $(function () {
        //点击首页跳到首页
        $('.ejlnNav .ejlmNacIn .ejlmNR a').on('click', function () {
          parent.$(window.parent.document).find('#main').click();
        });
      })
    </script>
  </div>
</div>
<!--侧边悬浮聊天对话框-->
<jsp:include page="en_talk.jsp"></jsp:include>
<jsp:include page="en_footer.jsp"></jsp:include>
</body>
</html>
