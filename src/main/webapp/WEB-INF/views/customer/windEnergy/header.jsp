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
<%--    <meta http-equiv="Cache-Control" content="max-age=7200"/>--%>
<%--    <meta name="viewport" content="width=device-width,shrink-to-fit=no">--%>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

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
    /*footer部分a标签样式*/
    .box_5 h3 a{
      color: #fff;
    }
    .box_5{
      text-align: left;
    }
    .aTag{
      color:#105b63;
    }
  </style>
  <%--商桥代码--%>
  <script>
    var _hmt = _hmt || [];
    (function() {
      var hm = document.createElement("script");
      hm.src = "https://hm.baidu.com/hm.js?687b646c15c0035b4f6555c206783dc8";
      var s = document.getElementsByTagName("script")[0];
      s.parentNode.insertBefore(hm, s);
    })();
  </script>
</head>
<body>
      <div class="header">
          <div class="all-header">
              <div class="container-header">
                  <div class="logo" >
                      <img src="${staticPath}/static/windEnergy/images/yongdongLOGO.png" alt="" style="height: 45px;border: transparent;position: relative;top:-3px;"/>
                      <b><span style="font-size: 37px;line-height: 38px;color: #ff7700"><span style="color: #ff77004f;" >永动</span><span>新能源</span></span></b>
                  </div>
                  <div class="header-content">
                      <div class="menu">
                          <a class="toggleMenu" href="#"><img src="${staticPath}/static/windEnergy/images/menu.png" alt="" /> </a>
                          <ul class="nav-box" id="nav-box" style="padding-right: 100px;">
                              <li class="current"><a href="${path}/windEnergy/main" id="main" >首页</a></li>
                              <li><a href="${path}/windEnergy/productCenter" id="productCenter" >产品中心</a></li>
                              <li><a href="${path}/windEnergy/aboutUs" id="aboutUs" >企业文化</a></li>
                              <li><a href="${path}/windEnergy/contact" id="contact" >联系我们</a></li>
                              <li><a href="${path}/windEnergy/case" id="case" >经典案例</a></li>
                          </ul>
                          <div class="nav-right-wrapper"> <span class="call-mun">17773166613</span> </div>
                      </div>
                  </div>
                  <input type="hidden" id="pageId" name="pageId" value="${pageId}">
                  <div id="btns">
                      <a id="btn1" href="javascript:void(0);" ></a>
                      <a id="btn2" href="javascript:void(0);" ></a>
                  </div>
              </div>
              <div class="clearfix"> </div>
              <!----//End-top-nav---->
          </div>
      </div>

  <script>
    $(function() {
      //中英文切换
      //获取参数
      var pageId=$("#pageId").val();

      $("#btn1").click(function () {//中文
        window.location.href="${path}/windEnergy/"+pageId;
      });
      $("#btn2").click(function () {//英文
        window.location.href="${path}/en_windEnergy/en_"+pageId;
      });
      /*if(pageId != null && pageId != undefined && pageId != ''){
        document.getElementById(pageId).click();
      }*/
    });
  </script>
<script>
  $("#nav-box li a").click(function (){
    //设定菜单栏的颜色
    $("#nav-box li a").css("color","#e49002");
  })
</script>

</body>
</html>
