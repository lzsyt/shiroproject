<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/3/13
  Time: 11:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/commons/global.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<html>
<head>
  <style>
    /*中英文切换按钮样式*/
    #btn1{
      display: inline-block;
      width: 90px;
      height: 20px;
      border-radius: 10px;
      line-height: 20px;
      background: url(/static/windEnergy/images/language.png) no-repeat 15px 0px;
    }

    #btn2{
      display: inline-block;
      width: 110px;
      height: 20px;
      border-radius: 50px;
      line-height: 20px;
      background: url(/static/windEnergy/images/language.png) no-repeat -75px 0px;

    }
    /*footer部分a标签字体颜色样式*/
    .box_5 h3 a{
      color: #fff;
    }
    /*头部skype与email*/
    #nav-skype .header_wrapper{
      display: flex;align-items: center
    }
    #nav-skype .email_wrapper{
      margin-left: 2px
    }
    #nav-skype .header_wrapper div span{
      color:#555;
      font-size: 23px;
      font-family: fantasy;
    }
  </style>
  <%--百度商桥代码--%>
  <script>
    var _hmt = _hmt || [];
    (function() {
      var hm = document.createElement("script");
      hm.src = "https://hm.baidu.com/hm.js?8c86ab337af1d19c577f534c122121bd";
      var s = document.getElementsByTagName("script")[0];
      s.parentNode.insertBefore(hm, s); })();
  </script>
</head>
<body>
<script>
  //中英文切换
  $(function() {
    //获取参数
    var pageId=$("#pageId").val();

    $("#btn1").click(function () {//中文
      window.location.href="${path }/solarController/"+pageId;//动态
    });
    $("#btn2").click(function () {//英文
      window.location.href="${path }/en_solarController/en_"+pageId;//动态
    });
  });
</script>
<div class="header">
  <div class="all-header">
    <div class="container-header" style="padding: 0px">
    <div class="logo">
      <!--
            <img src="${staticPath}/static/windEnergy/images/yongdongLOGO.png" alt="" style="height: 37px;border: transparent"/>
             -->
      <b><span style="font-size: 37px;line-height: 38px;color: #ff7700"class="span-solar"><span style="color: #ff77004f;" >HuNan Frontier </span><span >Controller</span></span></b>
    </div>
    <div class="menu">
      <a class="toggleMenu" href="#"><img src="${staticPath}/static/windEnergy/images/menu.png" alt="" /> </a>
      <ul class="nav-box" id="nav-box">
        <li class="current"><a href="${path}/en_solarController/en_main" id="main"  >Home</a></li>
        <li><a href="${path}/en_solarController/en_productCenter"  id="productCenter">Product Center</a></li>
        <li><a href="${path}/en_solarController/en_aboutUs"  id="aboutUs">Corporate Culture</a></li>
        <li><a href="${path}/en_solarController/en_contact"  id="contact">Contact Us</a></li>
        <li><a href="${path}/en_solarController/en_case"  id="case">Classic Case</a></li>
      </ul>
      <%--国内--%>
      <%--<div class="nav-right-wrapper"><span class="call-mun">17773166613</span></div>--%>
      <%--国外--%>
      <div id="nav-skype" >
        <div class="header_wrapper skype_wrapper">
          <img src="${staticPath}/static/windEnergy/images/skype_header.jpg" style="display: inline-block;width: 30px"/>
          <div><a href="skype:windturbine.com?chat"><span style="margin-left: 8px">windturbine.com</span></a></div>
        </div>
        <div class="header_wrapper email_wrapper" >
          <img src="${staticPath}/static/windEnergy/images/email_image1.jpg" style="display: inline-block;width: 26px"/>
          <div ><span style="margin-left: 10px">sale@windturbine.com</span></div>
        </div>
      </div>
      <script type="text/javascript" src="${staticPath}/static/windEnergy/js/responsive-nav.js"></script>
    </div>
      <%--<input type="hidden" id="pageId" name="pageId" value="${pageId}">
      <div id="btns">
        <a id="btn1" href="javascript:void(0);" ></a>
        <a id="btn2" href="javascript:void(0);" ></a>
      </div>--%>
    </div>
    <div class="clearfix"> </div>
    <!----//End-top-nav---->
  </div>
</div>
<script>
  $(function(){
    $("#nav-box li a").click(function () {
      $("#nav-box li a").css("color","#e49002");
    })
  })
</script>
</body>
</html>
