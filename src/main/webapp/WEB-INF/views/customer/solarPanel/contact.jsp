<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="/commons/global.jsp" %>
<html>
<head>
  <title>太阳能电池板官网|湖南前沿科技有限公司|太阳能电池板厂家|太阳能阳能光伏设备</title>
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
  <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
  <!-- Custom Theme files -->
  <link href="${staticPath }/static/windEnergy/css/style.css" rel='stylesheet' type='text/css'/>
  <!-- start plugins -->
  <script src="${staticPath }/static/windEnergy/js/jquery.min.js"></script>
  <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=E41731c7d1a53880cb260435793df872"></script>

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
    #contact {
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
          <li class="about_head-left"><h1>联系我们</h1></li>
          <li class="about_head-right"><p>Contact Us</p></li>
        </ul>
      </div>
    </div>
    <div class="abo_menu_wrap">
      <div class="main clearfix">
        <div class="bread2">
          <span><a href="http://www.guanghe.cn">首页</a></span><i></i>
          <a style="pointer-events:none;">联系我们</a>
        </div>
      </div>
    </div>
    <div class="container">
      <div class="blog">
        <div class="col-md-6 contact_left">
          <h2>前沿科技</h2>
          <!-- MAP -->
          <section class="map-block margin-bottom-40">
            <div class="map-wrapper" id="allmap" style="height: 300px;margin-bottom:20px;"></div>
          </section>
          <ul class="address">
            <i class="location"> </i>
            <li class="address_desc">
              <h5>湖南长沙市雨花区小林子冲路</h5>
            </li>
            <div class="clearfix"></div>
          </ul>
          <ul class="address">
            <i class="phone"> </i>
            <li class="address_desc">
              <h5>+0731-86663578</h5>
            </li>
            <div class="clearfix"></div>
          </ul>
          <ul class="address">
            <i class="msg"> </i>
            <li class="address_desc">
              <h5><a href="malito:mail@demolink.org">2735122330@qq.com</a></h5>
            </li>
            <div class="clearfix"></div>
          </ul>
        </div>
        <div class="col-md-6 contact_right">
          <h2>联系我们</h2>
          <form>
            <div class="column_2">
              <input type="text" class="text" id="name" value="您的名字" onfocus="this.value = '';"
                     onblur="if (this.value == '') {this.value = '您的名字';}">
              <input type="text" class="text" id="emali" value="邮箱" onfocus="this.value = '';"
                     onblur="if (this.value == '') {this.value = '邮箱';}" style="margin-left:2.7%">
            </div>
            <div class="column_1">
              <input type="text" class="text" id="phone" value="电话" onfocus="this.value = '';"
                     onblur="if (this.value == '') {this.value = '电话';}">
            </div>
            <div class="column_3">
              <textarea value="问题反馈" id="message" onfocus="this.value = '';"
                        onblur="if (this.value == '') {this.value = '问题反馈';}">问题反馈</textarea>
            </div>
            <div class="form-submit1">
              <label id="submitForm" class="btn btn-primary btn-normal btn-inline " target="_self"><input type="submit"
                                                                                                          value="提交"></label>
            </div>
            <div class="clearfix"></div>
          </form>
        </div>
        <div class="clearfix"></div>
      </div>
    </div>

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
        var name = $("#name").val();
        var phone = $("#phone").val();
        var message = $("#message").val();
        var website = "太阳能电池板";
        if (name == "您的名字" || name == null) {
          alert("请输入您的姓名");
          return false;
        }

        if (phone == "电话" || phone == null) {
          alert("请输入您的电话");
          return false;
        }
        if (!(/^1(3|4|5|6|7|8|9)\d{9}$/.test(phone))) {
          alert("手机号码有误，请重填");
          return false;
        }
        var data = {"phone": phone, "name": name, "message": message, "website": website};
        $.ajax({
          type: 'POST',
          url: "${path}/solarPanel/customer",
          data: data,
          dataType: "text",
          success: function (result) {
            if (result == "success") {
              alert("提交成功");
            }
          }
        });
        return false;
      })
    </script>
  </div>
</div>
<!--侧边悬浮聊天对话框-->
<jsp:include page="talk.jsp"></jsp:include>
<jsp:include page="footer.jsp"></jsp:include>

</body>

</html>

