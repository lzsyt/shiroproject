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
  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0,user-scalable=no">
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

        /*footer部分a标签字体颜色样式*/
        .box_5 h3 a {
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
  <%--商桥代码--%>
  <script>
    var _hmt = _hmt || [];
    (function() {
      var hm = document.createElement("script");
      hm.src = "https://hm.baidu.com/hm.js?6f051e49e363174a37d42c2de6e28bb2";
      var s = document.getElementsByTagName("script")[0];
      s.parentNode.insertBefore(hm, s);
    })();
  </script>

</head>
<body>
<script>
    //中英文切换
    $(function () {
        //获取参数
        var pageId = $("#pageId").val();

        $("#btn1").click(function () {//中文
            window.location.href = "${path }/windEnergy/" + pageId;//动态
        });
        $("#btn2").click(function () {//英文
            window.location.href = "${path }/en_windEnergy/en_" + pageId;//动态
        });
    });
</script>
<div class="header">
    <div class="all-header">
        <div class="container-header">
            <div class="logo">
                <img src="${staticPath}/static/windEnergy/images/yongdongLOGO.png" alt=""
                     style="height: 45px;border: transparent;position: relative;top:-3px;"/>

                <b><span style="font-size: 37px;line-height: 38px;color: #ff7700"class="span-solar"><span
                        style="color: #ff77004f;">Permanent</span><span>New Energy</span></span></b>

            </div>
            <div class="header-content">
                <div class="menu">
                    <a class="toggleMenu" href="#"><img src="${staticPath}/static/windEnergy/images/menu.png" alt=""/>
                    </a>
                    <ul class="nav-box" id="nav-box">
                        <li class="current"><a href="${path}/en_windEnergy/en_main" id="main">Home</a></li>
                        <li><a href="${path}/en_windEnergy/en_productCenter" id="productCenter">Product Center</a></li>
                        <li><a href="${path}/en_windEnergy/en_aboutUs" id="aboutUs">Corporate Culture</a></li>
                        <li><a href="${path}/en_windEnergy/en_contact" id="contact">Contact Us</a></li>
                        <li><a href="${path}/en_windEnergy/en_case" id="case">Classic Case</a></li>
                    </ul>

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
            </div>
            <%--<input type="hidden" id="pageId" name="pageId" value="${pageId}">
            <div id="btns">
                <a id="btn1" href="javascript:void(0);"></a>
                <a id="btn2" href="javascript:void(0);"></a>
            </div>--%>
        </div>
        <div class="clearfix"></div>
        <!----//End-top-nav---->
    </div>
</div>
<script>
    $("#nav-box li a").click(function () {
        //设定菜单栏的颜色
        $("#nav-box li a").css("color", "#e49002");
    })
</script>
</body>
</html>
