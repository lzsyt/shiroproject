<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/3/13
  Time: 11:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/commons/global.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <style>
        /*中英文切换按钮样式*/
        #btn1 {
            display: inline-block;
            width: 90px;
            height: 20px;
            border-radius: 10px;
            line-height: 20px;
            background: url(/static/windEnergy/images/language.png) no-repeat 15px 0px;
        }

        #btn2 {
            display: inline-block;
            width: 110px;
            height: 20px;
            border-radius: 50px;
            line-height: 20px;
            background: url(/static/windEnergy/images/language.png) no-repeat -75px 0px;

        }

        /*footer部分a标签样式*/
        .box_5 h3 a {
            color: #fff;
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
    $(function () {
        //获取参数
        var pageId = $("#pageId").val();

        $("#btn1").click(function () {//中文
            window.location.href = "${path }/solarController/" + pageId;//动态
        });
        $("#btn2").click(function () {//英文
            window.location.href = "${path }/en_solarController/en_" + pageId;//动态
        });
    });
</script>


<div class="top-bar" style="height: 30px;background: #f8f8f8">
    <div class="container" style="line-height: 30px;padding-left: 14px;">
        <span style="font-family: 微软雅黑;font-size: 13px;">欢迎进入<strong class="nav-t"><a href="http://www.kongzhiqi.com/">湖南前沿科技有限公司</a></strong>-太阳能控制器官网!</span>
    </div>
</div>

<div class="header">
    <div class="all-header">
        <div class="container-header">
            <div class="logo">
                <b><span style="font-size: 37px;line-height: 38px;color: #ff7700" class="span-solar"><span
                        style="color: #ff77004f;">湖南前沿</span><span>控制器</span></span></b>
            </div>
            <div class="menu">
                <a class="toggleMenu" href="#"><img src="${staticPath}/static/windEnergy/images/menu.png" alt=""/> </a>
                <ul class="nav-box" id="nav-box">
                    <li class="current"><a href="${path}/solarController/main" id="main" class="myframe">首页</a></li>
                    <li><a href="${path}/solarController/productCenter" id="productCenter" class="myframe">产品中心</a></li>
                    <li><a href="${path}/solarController/aboutUs" id="aboutUs" class="myframe">企业文化</a></li>
                    <li><a href="${path}/solarController/contact" id="contact" class="myframe">联系我们</a></li>
                    <li><a href="${path}/solarController/case" id="case" class="myframe">经典案例</a></li>
                    <li><a href="${path}/solarController/newsCenter" id="newsCenter" class="myframe">新闻中心</a></li>
                </ul>
                <div class="nav-right-wrapper"><span class="call-mun">17773166613</span></div>
                <script type="text/javascript" src="${staticPath}/static/windEnergy/js/responsive-nav.js"></script>
            </div>
            <input type="hidden" id="pageId" name="pageId" value="${pageId}">
            <div id="btns">
                <a id="btn1" href="javascript:void(0);"></a>
                <a id="btn2" href="javascript:void(0);"></a>
            </div>
        </div>
        <div class="clearfix"></div>
        <!----//End-top-nav---->

    </div>
</div>
<script>
    $(function () {
        $("#nav-box li a").click(function () {
            $("#nav-box li a").css("color", "#e49002");
        })
    })
</script>
</body>
</html>
