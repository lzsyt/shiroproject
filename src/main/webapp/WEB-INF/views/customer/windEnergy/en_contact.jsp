<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/3/12
  Time: 11:18
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
  <script type="application/x-javascript"> addEventListener("load", function () {
    setTimeout(hideURLbar, 0);
  }, false);

  function hideURLbar() {
    window.scrollTo(0, 1);
  } </script>
  <link href="${staticPath }/static/windEnergy/css/bootstrap.css" rel='stylesheet' type='text/css'/>
  <script src="${staticPath }/static/windEnergy/js/jquery.min.js"></script>
  <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=E41731c7d1a53880cb260435793df872"></script>
  <style>
    ul.about_head li.about_head-left {
      border-right: 4px solid #105b63;
      width: 20%;
    }

    ul.about_head {
      padding: 8.5em 0 0 0;
      margin: 0;
      list-style: none;
      text-align: center;
    }
     #contact{
       color: #105b63;
     }
  </style>
  <link rel="shortcut icon" href="${staticPath }/static/images/yongdong.png" type="image/x-icon"/>
  <script type="application/x-javascript"> addEventListener("load", function () {
    setTimeout(hideURLbar, 0);
  }, false);

  function hideURLbar() {
    window.scrollTo(0, 1);
  } </script>
  <link href="${staticPath }/static/windEnergy/css/style.css" rel='stylesheet' type='text/css'/>
  <link rel="stylesheet" href="${staticPath }/static/customer/css/font-awesome.min.css">
  <script type="text/javascript" src="${staticPath }/static/windEnergy/js/jquery.easing.min.js"></script>
  <script type="text/javascript" src="${staticPath }/static/windEnergy/js/jquery.mixitup.min.js"></script>
  <link href="${staticPath }/static/style/css/en_fontStyle.css" rel='stylesheet' type='text/css'/>
  <link rel="shortcut icon" href="${staticPath }/static/images/yongdong.png" type="image/x-icon"/>
  <script src="${staticPath }/static/customer/js/layer.js"></script>

</head>

<body>
<jsp:include page="en_header.jsp"></jsp:include>
<div id="content">
  <div id="contentPage">
    <div class="about">
      <div class="container">
        <ul class="about_head">
          <li class="about_head-left"><h1>联系我们</h1></li>
          <li class="about_head-right"><p>Contact Us</p></li>
        </ul>
      </div>
    </div>
    <div class="container">
      <div class="blog">
        <div class="col-md-6 contact_left">
          <h2>Frontier Technology</h2>
          <!-- MAP -->
          <section class="map-block margin-bottom-40">
            <div class="map-wrapper" id="allmap" style="height: 300px;margin-bottom:20px;"></div>
          </section>
          <ul class="address">
            <i class="location"> </i>
            <li class="address_desc">
              <h5>Xiaolinzichong Road, Yuhua District, Changsha City, Hunan Province</h5>
            </li>
            <div class="clearfix"></div>
          </ul>
          <ul class="address">
            <i class="phone"> </i>
            <li class="address_desc">
              <h5>+86-731-86663578</h5>
            </li>
            <div class="clearfix"></div>
          </ul>
          <ul class="address">
            <i class="msg"> </i>
            <li class="address_desc">
              <h5><a href="malito:mail@demolink.org">sale@windturbine.com</a></h5>
            </li>
            <div class="clearfix"></div>
          </ul>
        </div>
        <div class="col-md-6 contact_right">
          <h2>Contact Us</h2>
          <form>
            <div class="column_2">
              <input type="text" class="text" id="email" placeholder="Your Email" style="width: 100%">
             <%-- <input type="text" class="text" id="phone" placeholder="Phone" style="margin-left:2.7%">--%>
            </div>
            <div class="column_3">
              <textarea id="message" placeholder="Feedback Question"></textarea>
            </div>
            <div class="form-submit1">
              <label id="submitForm" class="btn btn-primary btn-normal btn-inline " target="_self"><input type="submit"
                                                                                                          value="submit"></label>
            </div>
            <div class="clearfix"></div>
          </form>
        </div>
        <div class="clearfix"></div>
      </div>
    </div>
    <%--<jsp:include page="en_footer.jsp"></jsp:include>--%>
    <!-- Begin Map Script-->
    <script type="text/javascript">
      // 百度地图API功能
      var map = new BMap.Map("allmap");    // 创建Map实例
      map.centerAndZoom(new BMap.Point(112.996469, 28.182525), 11);  // 初始化地图,设置中心点坐标和地图级别
      var point = new BMap.Point(112.996469, 28.182525);
      map.centerAndZoom(point, 15);
      var marker = new BMap.Marker(point);        // 创建标注
      map.addOverlay(marker);                     // 将标注添加到地图中
      //添加地图类型控件
      map.addControl(new BMap.MapTypeControl({
        mapTypes: [
          BMAP_NORMAL_MAP,
          BMAP_HYBRID_MAP
        ]
      }));
      map.setCurrentCity("长沙");          // 设置地图显示的城市 此项是必须设置的
      map.enableScrollWheelZoom(true);     //开启鼠标滚轮缩放

      $("#submitForm").click(function () {
        var email = $("#email").val();
        var message = $("#message").val();
        var website = "风力发电机-英文";
        if (isNull(email)) {
          alert("Please enter your email");
          return false;
        }
        var data = {"email": email, "message": message, "website": website};
        $.ajax({
          type: 'POST',
          url: "${path}/en_windEnergy/customer",
          data: data,
          dataType: "text",
          success: function (result) {
            if (result == "success") {
              alert("Submitted successfully");
            }
          }
        });
        return false;
      });

      function isNull(value) {
        if (value == null || $.trim(value) == "") {
          alert($.trim(value) == "");
          return true;
        }
        return false;
      }
    </script>
  </div>
</div>
<!--侧边悬浮聊天对话框-->
<jsp:include page="en_talk.jsp"></jsp:include>
<jsp:include page="en_footer.jsp"></jsp:include>

</body>
</html>
