<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/3/13
  Time: 10:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <link href="${staticPath }/static/windEnergy/css/bootstrap.css" rel='stylesheet' type='text/css' />
    <link href="${staticPath }/static/windEnergy/css/style.css" rel='stylesheet' type='text/css' />
    <script src="${staticPath }/static/windEnergy/js/jquery.min.js"></script>
    <script type="text/javascript" src="${staticPath }/static/windEnergy/js/jquery.easing.min.js"></script>
    <script type="text/javascript" src="${staticPath }/static/windEnergy/js/jquery.mixitup.min.js"></script>
</head>
<body>

<div class="footer">
  <div class="container-fluid container-fluid_box footer-flex">
    <div class="col-md-3 box_5">
      <h3 style="font-size: 30px;color: #989898;vertical-align: middle; margin-bottom:0px;">Hunan Frontier Solar Panel</h3>
      <div class="all-contnet">
        <div class="all-img">
          <img src="${staticPath}/static/windEnergy/images/photo_floor.png">
        </div>
        <div class="all-text">
          <p>switchboard </p>
          <p class="text-size" style="font-size: 27px;">0731-86663578</p>
        </div>
      </div>
      <div class="footer-list1" style="text-align: left">
        <span>address:Xiaolinzichong Road, Yuhua District, Changsha City, Hunan Province</span><br>
        <span> postcode:410000</span><br>
        <span>tel:0731-86663578</span><br>
      </div>
    </div>
    <div class="col-md-2 box_5">
      <h3>FriendShip Link</h3>
      <div class="footer-list1">
        <ul>
          <li class="first_li"><a href="http://www.150ah.com/en_customer/en_main">Photosynthetic Silicon Energy</a></li>
          <li class="first_li"><a href="http://www.windturbine.com">Wind Turbines</a></li>
          <li><a href="http://guanghe.cn/en_solarPanel/en_main" style="color: #bd4932">Solar Panel</a></li>
          <li><a href="http://kongzhiqi.com/en_solarController/en_main">Controller</a></li>
        </ul>
      </div>
    </div>

    <div class="col-md-2 box_5">
      <h3><a href="${path}/en_solarPanel/en_aboutUs" target="myframe" class="aboutUs">Corporate Culture</a></h3>
      <div class="footer-list1">
        <ul>
          <li><a href="${path}/en_solarPanel/en_productCenter" target="myframe" class="productCenter">Product Center</a></li>
          <li><a href="${path}/en_solarPanel/en_aboutUs" target="myframe" class="aboutUs">Corporate Culture</a></li>
          <li><a href="${path}/en_solarPanel/en_contact" target="myframe" class="contact">Contact Us</a></li>
          <li><a href="${path}/en_solarPanel/en_case" target="myframe" class="case">Classic Case</a></li>
        </ul>
      </div>
    </div>
    <%--        <div class="col-md-3 box_5">--%>
    <%--            <h3><a href="${path}/en_solarPanel/en_contact" target="myframe" class="contact">Contact Us</a></h3>--%>
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
      <%--<h3><a href="${path}/windEnergy/case" target="myframe" class="case">经典案例</a></h3>--%>
      <div class="map_box" style="text-align: right">
        <img src="${staticPath}/static/windEnergy/images/map.jpg" alt="地图" />
        <p class="world">Best selling world</p>
      </div>
    </div>
  </div>
</div>
<div class="footer_bottom footer_bottom_box">
  <div class="container">
    <div class="copy">
      <p>Copyright ©Permanent New Energy Co., Ltd.<a href="http://www.beian.miit.gov.cn" rel="nofollow" style="color: #989898" target="_blank">&nbsp;&nbsp;Xiang ICP No. 16021270 No.-4</a></p>
    </div>
    <ul class="footer_social">
      <li><a href="#"> <i class="fb"> </i> </a></li>
      <li><a href="#"><i class="tw"> </i> </a></li>
      <li><a href="#"><i class="instagram"> </i> </a></li>
      <li><a href="#"><i class="linkedin"> </i> </a></li>
    </ul>
  </div>
</div>
<div id="content2" class="contact_box">
  <div>
    <form id="mes_form">
      <input class="inp-first"  id="inp-first" placeholder="Please enter your name">
      <input class="inp-two" id="inp-two" placeholder="Please enter your phone number">
      <button id="mes_submit">submit</button>
    </form>
  </div>
</div>

</body>
<script>
  /*微信弹出层*/
  $(function(){
    $("#btn_img1").click(function(){
      var img = '<img  src="${staticPath}/static/windEnergy/talk/images/wx.jpg" alt="风力发电机"/>';
      layer.open({
        type: 1,
        title: false,
        closeBtn: 0,
        area: ['430px', '430px'],
        shadeClose: true,
        content:img
      });

    })
  });
  $(function(){
    $("#btn_img2").click(function(){
      var img = '<img  src="${staticPath}/static/windEnergy/talk/images/wx2.jpg" alt="技术"/>';
      layer.open({
        type: 1,
        title: false,
        closeBtn: 0,
        area: ['430px', '430px'],
        shadeClose: true,
        content:img
      });

    })
  });

</script>

<script>
  //footer部分页面切换
  $(function(){
    $(".productCenter").click(function(){
      $("#productCenter").click();
    })
    $(".aboutUs").click(function(){
      $("#aboutUs").click();
    })
    $(".contact").click(function(){
      $("#contact").click();
    })
    $(".case").click(function(){
      $("#case").click();
    })
  });
  //客户信息提交
  $("#mes_submit").click(function(){

    var name=$("#inp-first").val();
    var phone=$("#inp-two").val();
    if (isNull(name)){
      alert("Please enter your name");
      return false;
    }
    if (isNull(phone)){
      alert("Please enter your phone number");
      return false;

    }
    if(!(/^1(3|4|5|6|7|8|9)\d{9}$/.test(phone))){
      alert("Wrong number, please fill in again");
      return false;
    }
    var website="太阳能电池板";
    var data={"phone":phone,"name":name,"website":website};
    $.ajax({
      type: 'POST',
      url: "${path}/en_solarPanel/customer",
      data: data,
      dataType: "text",
      success: function (result) {
        if (result=="success") {
          alert("Submit successfully");
        }
      }
    });
    return false;
  });
  function isNull(value) {
    if (value==null||$.trim(value)==""){
      return true;
    }
    return false;
  }

</script>
</html>
