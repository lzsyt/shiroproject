<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/3/13
  Time: 10:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/commons/global.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
  <script type="text/javascript" src="${staticPath }/static/windEnergy/js/fliplightbox.min.js"></script>
  <script type="text/javascript" src="${staticPath }/static/windEnergy/js/jquery.easing.min.js"></script>
  <script type="text/javascript" src="${staticPath }/static/windEnergy/js/jquery.mixitup.min.js"></script>
  <%--底部悬浮片段--%>
  <style>
    #en_footer_content{
      height:60px;
      padding-top: 15px;
      position: fixed;
      bottom:0;width:100%;
      background-color: #ff7700;
      opacity: 0.8
    }
    #en_footer_content .container{
      color: #fff;
      width: 1425px
    }
    #en_footer_content .container .footer_desc{
      float: left;width: 450px
    }
    #en_footer_content .container .message_wrapper{
      float: left;margin-left:30px;padding: 5px 0px
    }
    #en_footer_content .container .message_wrapper form input{
      width: 240px;
      height: 30px;
      padding-left: 10px;
      font-size: 13px;
    }
    #en_footer_content .container .message_wrapper form .second_input{
      margin-left: 8px
    }
    #en_footer_content .container .message_wrapper form .mes_submit{
      background-color:#ff7700;
      border: 1px solid #fff;
      width: 90px;
      height: 30px;
      font-size: 18px;
      margin-left: 8px;
      color: #fff
    }
    #en_footer_content .container .hotline_wrapper{
      float: left;
      margin-left:30px
    }
    #en_footer_content .container .hotline_wrapper .first_span{
      font-weight: 400;
      font-size: 25px;
      border-right:1px #fff solid;
      padding-right: 10px;
      font-weight: 600;
    }
    #en_footer_content .container .hotline_wrapper .second_span{
      font-size: 28px;font-weight: 600
    }
  </style>
</head>
<body>
<div class="footer">
  <div class="container-fluid container-fluid_box footer-flex">
    <div class="col-md-3 box_5">
      <h3 style="font-size: 30px;color: #989898;vertical-align: middle; margin-bottom:0px;">HuNan Frontier
        Controller</h3>
      <div class="all-contnet">
        <div class="all-img">
          <img src="${staticPath}/static/windEnergy/images/photo_floor.png">
        </div>
        <div class="all-text">
          <p>Tel:</p>
          <p class="text-size" style="font-size: 22px;">+86-731-86663578</p>
        </div>
      </div>
      <div class="footer-list1" style="text-align: left">
        <span>address:Xiaolinzichong Road, Yuhua District, Changsha City, Hunan Province</span><br>
        <span> Skype:windturbine.com</span><br>
        <span>tel:0731-86663578</span><br>
      </div>
    </div>
    <div class="col-md-2 box_5">
      <h3>FriendShip Link</h3>
      <div class="footer-list1">
        <ul>
          <li class="first_li"><a href="http://www.150ah.com/en_customer/en_main">Photosynthetic Silicon Energy</a></li>
          <li class="first_li"><a href="http://www.windturbine.com">Wind Power Generator</a></li>
          <li><a href="http://guanghe.cn/en_solarPanel/en_main">Solar Panel</a></li>
          <li><a href="http://kongzhiqi.com/en_solarController/en_main" style="color: #bd4932">Controller</a></li>
        </ul>
      </div>
    </div>

    <div class="col-md-2 box_5">
      <h3><a href="${path}/en_solarController/en_aboutUs" class="aboutUs">Corporate Culture</a></h3>
      <div class="footer-list1">
        <ul>
          <li><a href="${path}/en_solarController/en_productCenter" class="productCenter">Product Center</a></li>
          <li><a href="${path}/en_solarController/en_aboutUs" class="aboutUs">Corporate Culture</a></li>
          <li><a href="${path}/en_solarController/en_contact" class="contact">Contact Us</a></li>
          <li><a href="${path}/en_solarController/en_case" class="case">Classic Case</a></li>
        </ul>
      </div>
    </div>
    <%--        <div class="col-md-3 box_5">--%>
    <%--            <h3><a href="${path}/en_solarController/en_contact"  class="contact">Contact Us</a></h3>--%>
    <%--            <div class="footer-list">--%>
    <%--                <ul>--%>
    <%--                    <li class="list_top" style="margin: 0"><i class="location"> </i>--%>
    <%--                        <p>Xiaolinzichong Road, Yuhua District, Changsha City, Hunan Province</p></li>--%>
    <%--                    <li class="list_top" style="margin: 0"><i class="phone"> </i>--%>
    <%--                        <p>0731-86663578</p></li>--%>
    <%--                </ul>--%>
    <%--            </div>--%>
    <%--        </div>--%>
    <div class="col-md-4 box_5">
      <h3 style="margin: 0">Watch us</h3>>
      <div>
        <img id="btn_img1" src="${staticPath}/static/windEnergy/talk/images/wx.jpg" style="width:135px" alt="风力发电机">
        <img id="btn_img2" src="${staticPath}/static/windEnergy/talk/images/wx2.jpg" style="width:135px" alt="技术">
      </div>
    </div>
    <div class="col-md-1 box_5">
      <%--<h3><a href="${path}/windEnergy/case"  class="case">经典案例</a></h3>--%>
      <div class="map_box" style="text-align: right">
        <img src="${staticPath}/static/windEnergy/images/map.jpg" alt="地图"/>
        <p class="world">Best selling world</p>
      </div>
    </div>
  </div>
</div>
<div class="footer_bottom footer_bottom_box">
  <div class="container">
    <div class="copy">
      <p>Copyright ©Permanent New Energy Co., Ltd.<a href="http://www.beian.miit.gov.cn" rel="nofollow" style="color: #989898" target="_blank">&nbsp;&nbsp;Xiang ICP No. 16021270 No.-3</a></p>
    </div>
    <ul class="footer_social">
      <li><a href="#"> <i class="fb"> </i> </a></li>
      <li><a href="#"><i class="tw"> </i> </a></li>
      <li><a href="#"><i class="instagram"> </i> </a></li>
      <li><a href="#"><i class="linkedin"> </i> </a></li>
    </ul>
  </div>
</div>
<%--<div id="content2" class="contact_box">
  <div>
    <form id="mes_form">
      <input class="inp-first" id="inp-first" placeholder="Please enter your name">
      <input class="inp-two" id="inp-two" placeholder="Please enter your phone number">
      <button id="mes_submit">submit</button>
    </form>
  </div>
</div>--%>
<div id="en_footer_content" >
  <div class="container" >
    <div class="footer_desc"><p>Dear friends, you can apply to our company for free use samples by email. The freight must be borne by yourself.</p></div>
    <div class="message_wrapper">
      <form>
        <input class="first_input"  placeholder="Please Enter Your Name">
        <input class="second_input"   placeholder="Please Enter Your Phone Number">
        <button class="mes_submit">submit</button>
      </form>
    </div>
    <div class="hotline_wrapper" >
      <span class="first_span" >Tel</span>
      <span class="second_span" >+86-731-86663578</span>
    </div>
  </div>
</div>

</body>
<script>
  /*微信弹出层*/
  $(function () {
    $("#btn_img1").click(function () {
      var img = '<img  src="${staticPath}/static/windEnergy/talk/images/wx.jpg" alt="风力发电机"/>';
      layer.open({
        type: 1,
        title: false,
        closeBtn: 0,
        area: ['430px', '430px'],
        shadeClose: true,
        content: img
      });

    })
  });
  $(function () {
    $("#btn_img2").click(function () {
      var img = '<img  src="${staticPath}/static/windEnergy/talk/images/wx2.jpg" alt="技术"/>';
      layer.open({
        type: 1,
        title: false,
        closeBtn: 0,
        area: ['430px', '430px'],
        shadeClose: true,
        content: img
      });

    })
  });

</script>
<script>
  //footer部分页面切换
  $(function () {
    $(".productCenter").click(function () {
      $("#productCenter").click();
    })
    $(".aboutUs").click(function () {
      $("#aboutUs").click();
    })
    $(".contact").click(function () {
      $("#contact").click();
    })
    $(".case").click(function () {
      $("#case").click();
    })
  });
  //客户信息提交
  $("#mes_submit").click(function () {

    var name = $("#inp-first").val();
    var phone = $("#inp-two").val();
    if (isNull(name)) {
      alert("Please enter your name");
      return false;
    }
    if (isNull(phone)) {
      alert("Please enter your phone number");
      return false;

    }
    if(!(/^1(3|4|5|6|7|8|9)\d{9}$/.test(phone))){
      alert("Wrong number, please fill in again");
      return false;
    }
    var website = "控制器";
    var data = {"phone": phone, "name": name, "website": website};
    $.ajax({
      type: 'POST',
      url: "${path}/en_solarController/customer",
      data: data,
      dataType: "text",
      success: function (result) {
        if (result == "success") {
          alert("Submit successfully");
        }
      }
    });
    return false;
  });

  function isNull(value) {
    if (value == null || $.trim(value) == "") {
      return true;
    }
    return false;
  }

</script>
</html>
