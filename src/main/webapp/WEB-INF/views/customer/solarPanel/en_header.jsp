<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/3/13
  Time: 11:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
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
    /*footer部分a标签字体颜色样式*/
    .box_5 h3 a{
      color: #fff;
    }
  </style>
  <%--百度商桥代码--%>
  <script>
    var _hmt = _hmt || [];
    (function() {
      var hm = document.createElement("script");
      hm.src = "https://hm.baidu.com/hm.js?ccf2910f7b1da3f78356c93da4dc2ba3";
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
      window.location.href="${path }/solarPanel/"+pageId;//动态
    });
    $("#btn2").click(function () {//英文
      window.location.href="${path }/en_solarPanel/en_"+pageId;//动态
    });
  });
</script>

<div class="header">
  <div class="all-header">
    <div class="container-header" style="padding: 0px">
    <div class="logo">
      <b><span style="font-size: 37px;line-height: 38px;color: #ff7700"class="span-solar"><span style="color: #ff77004f;" >Hunan Frontier </span><span >Solar Panel</span></span></b>
    </div>
    <div class="menu">
      <a class="toggleMenu" href="#"><img src="${staticPath}/static/windEnergy/images/menu.png" alt="" /> </a>
      <ul class="nav-box" id="nav-box">
        <li class="current"><a href="${path}/en_solarPanel/en_main" id="main" target="myframe" >Home Page</a></li>
        <li><a href="${path}/en_solarPanel/en_productCenter" target="myframe" id="productCenter">Product Center</a></li>
        <li><a href="${path}/en_solarPanel/en_aboutUs" target="myframe" id="aboutUs">Corporate Culture</a></li>
        <li><a href="${path}/en_solarPanel/en_contact" target="myframe" id="contact">Contact Us</a></li>
        <li><a href="${path}/en_solarPanel/en_case" target="myframe" id="case">Classic Case</a></li>
      </ul>
      <div class="nav-right-wrapper"><span class="call-mun">17773166613</span></div>
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
  $(function(){
    $("#nav-box li a").click(function () {
      $("#nav-box li a").css("color","#e49002");
    })
  })
</script>
</body>
</html>
