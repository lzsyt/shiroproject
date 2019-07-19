<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/commons/global.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<html>
<head>
    <title>Wind turbine - yongdong new energy co. LTD</title>
  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0,user-scalable=no">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta name="keywords"
        content="small wind turbines, wind and solar hybrid streetlight systems, wind turbines, wind turbine manufacturers, wind turbine prices, small and medium wind turbines, medium wind turbines, Hunan frontier technology, wind and solar hybrid systems, power generation systems, horizontal axis wind power generation Machine, vertical axis wind turbine"/>
  <meta name="description"
        content="The main products of Yongdong New Energy Co., Ltd. include 100W-100kW horizontal-axis wind turbines, vertical-axis wind turbines and other small and medium-sized wind turbines, wind-solar complementary street lamps, wind-solar complementary distributed generation systems, solar street lamps, etc., which can provide customers with One-stop solution for wind power generation, wind and solar hybrid power generation, wind and solar hybrid street lighting, solar street lighting system, solar photovoltaic water lifting system and photovoltaic grid-connected power generation, Tel: 17773166613"/>
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <link href="${staticPath }/static/windEnergy/css/bootstrap.css" rel='stylesheet' type='text/css' />
    <script src="${staticPath }/static/windEnergy/js/jquery.min.js"></script>
    <link href="${staticPath }/static/windEnergy/css/style.css" rel='stylesheet' type='text/css' />
    <link rel="shortcut icon" href="${staticPath }/static/images/yongdong.png" type="image/x-icon" />
    <link href="${staticPath }/static/windEnergy/css/style.css" rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="${staticPath }/static/customer/css/font-awesome.min.css">
    <link rel="shortcut icon" href="${staticPath }/static/images/yongdong.png" type="image/x-icon"/>
    <script type="text/javascript" src="${staticPath }/static/windEnergy/js/jquery.easing.min.js"></script>
    <script type="text/javascript" src="${staticPath }/static/windEnergy/js/jquery.mixitup.min.js"></script>
    <link href="${staticPath }/static/style/css/en_fontStyle.css" rel='stylesheet' type='text/css' />

    <script src="${staticPath }/static/customer/js/layer.js"></script>
    <style>
      #main{
        color: #105b63;
      }
    </style>
</head>
<body>
<jsp:include page="en_header.jsp"></jsp:include>
<div id="content">
    <div id="contentPage">
<%--<jsp:include page="header.jsp"></jsp:include>--%>
<div class="about" >
    <div class="container">
        <ul class="about_head">
            <li class="about_head-left"><h1>新闻详情</h1></li>
            <li class="about_head-right"><p>News Details</p></li>
        </ul>
    </div>
</div>
<div class="container">
    <div class="new-t1">
        <div class="new-t2" style="margin-top: 30px ">
            <span>News Details</span>
        </div>
    </div>
    <div class="t-col-all">
        <div class="t-col-l1">
            <span class="t-col-t1">${news.enNewsName}</span>
            <p class="t-col-t2">Posted Time：<fmt:formatDate value="${news.createTime}" pattern="yyyy-MM-dd HH:mm:ss"/></p>
        </div>
    </div>
</div>

<div class="container">
    <div class="c-col">
        <div class="c-col-l1">
            <p style="margin-bottom: 10px" id="detailNew">${news.enNewsDescription}</p>

        </div>
    </div>
</div>
    </div>
</div>
<!--侧边悬浮聊天对话框-->
<jsp:include page="en_talk.jsp"></jsp:include>
<jsp:include page="en_footer.jsp"></jsp:include>

</body>
<script>
  //解决新闻页面输出标签问题
  var text = '${news.newsContent}';
  function htmlDecode(text){
    //1.首先动态创建一个容器标签元素，如DIV
    var temp = document.createElement("div");
    //2.然后将要转换的字符串设置为这个元素的innerHTML(ie，火狐，google都支持)
    temp.innerHTML = text;
    //3.最后返回这个元素的innerText(ie支持)或者textContent(火狐，google支持)，即得到经过HTML解码的字符串了。
    var output = temp.innerText || temp.textContent;
    temp = null;
    return output;
  }
  var textD = htmlDecode(text);
  $("#detailNew").html(textD);

</script>
</html>







