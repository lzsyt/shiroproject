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
<head>
  <title>风力发电机-永动新能源有限公司</title>
  <meta name="viewport" content="width=device-width,shrink-to-fit=no"/>
  <meta name="viewport"
        content="width=device-width,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0,user-scalable=no">
  <meta http-equiv="Cache-Control" content="max-age=7200"/>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
  <meta name="keywords"
        content="小型风力发电机,风光互补路灯系统,太阳能发电系统,家用太阳能发电系统,光伏发电系统,风力发电机,风力发电机厂家,风力发电机价格,小型风力发电机,中小型风力发电机,中型风力发电机,湖南前沿科技,风光互补系统,发电系统,水平轴风力发电机,垂直轴风力发电机"/>
  <meta name="description"
        content="永动新能源有限公司主要产品有100W-100kW水平轴风力发电机、垂直轴风力发电机等中小型风力发电机、风光互补路灯、风光互补分布式发电系统、太阳能灯路灯等，可为客户提供风力发电、风光互补发电、风光互补路灯，太阳能路灯系统、 太阳能光伏提水系统及光伏并网发电等一站式解决方案，电话:17773166613"/>
  <script type="application/x-javascript"> addEventListener("load", function () {
    setTimeout(hideURLbar, 0);
  }, false);

  function hideURLbar() {
    window.scrollTo(0, 1);
  } </script>
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
  </style>
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
  <link rel="shortcut icon" href="${staticPath }/static/images/yongdong.png" type="image/x-icon"/>
  <script type="text/javascript" src="${staticPath }/static/windEnergy/js/jquery.easing.min.js"></script>
  <script type="text/javascript" src="${staticPath }/static/windEnergy/js/jquery.mixitup.min.js"></script>
  <link href="${staticPath }/static/style/css/fontStyle.css" rel='stylesheet' type='text/css'/>
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
          <span><a href="http://yongdong.com.cn">首页</a></span><i></i>
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

              <%-- <input type="text" class="text" id="name" value="您的名字" value-en="Your Name" >
               <input type="text" class="text" id="emali" value="邮箱" value-en="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '邮箱';}" style="margin-left:2.7%">--%>

              <input type="text" class="text" id="name" placeholder="您的名字">
              <%--<input type="text" class="text" id="email" placeholder="邮箱"  style="margin-left:2.7%">--%>
              <input type="text" class="text" id="phone" placeholder="电话" style="margin-left:2.7%">
            </div>
            <%--<div class="column_1">
                <!--
                <input type="text" class="text" id="phone" value="电话" value-en="Mobile" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '电话';}">
                -->
                <input type="text" class="text" id="phone" placeholder="电话"  >
            </div>--%>
            <div class="column_3">

              <%--<p contenteditable="true" id="message" style="display: inline-block;height: 200px;width: 540px; border: 1px solid #D5D5D5;color:#BDBDBD;margin-bottom: 8px;font-weight: 100">问题反馈<!--{en}Question Feedback--></p>--%>
              <textarea id="message" placeholder="问题反馈"></textarea>


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
    <!--侧边悬浮聊天对话框-->
    <jsp:include page="talk.jsp"></jsp:include>
    <jsp:include page="footer.jsp"></jsp:include>


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
        var website = "风力发电机";
        if (isNull(name)) {
          alert("请输入您的姓名");
          return false;
        }
        if (isNull(phone)) {
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
          url: "${path}/windEnergy/customer",
          data: data,
          dataType: "text",
          success: function (result) {
            if (result == "success") {
              alert("提交成功");
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
</body>
</div>
</div>
</body>
</html>
