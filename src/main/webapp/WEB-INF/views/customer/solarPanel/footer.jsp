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
   <%-- <link href="${staticPath }/static/windEnergy/css/bootstrap.css" rel='stylesheet' type='text/css' />
    <link href="${staticPath }/static/windEnergy/css/style.css" rel='stylesheet' type='text/css' />--%>
    <script type="text/javascript" src="${staticPath }/static/windEnergy/js/jquery.easing.min.js"></script>
    <script type="text/javascript" src="${staticPath }/static/windEnergy/js/jquery.mixitup.min.js"></script>
  <style>
    .col-md-2 h3 a{
      color: #fff;
    }
    .col-md-2 h3 a:hover{
      background-color: #333;
    }
  </style>
</head>
<body>
<div class="footer" >
  <div class="container-fluid container-fluid_box">
    <div class="col-md-3 box_5">
      <h3 style="font-size: 30px;color: #989898;vertical-align: middle; margin-bottom:0px;">湖南前沿太阳板</h3>
      <div class="all-contnet">
        <div class="all-img">
          <img src="${staticPath}/static/windEnergy/images/photo_floor.png">
        </div>
        <div class="all-text">
          <p>总机</p>
          <p class="text-size" style="font-size: 27px;">0731-86663578</p>
        </div>
      </div>
      <div class="footer-list1" style="text-align: left">
        <span>地址:湖南长沙市雨花区小林子冲路</span><br>
        <span> 邮编:410000</span><br>
        <span>电话:0731-86663578</span><br>
      </div>
    </div>
    <div class="col-md-2 box_5">
      <h3>友情链接</h3>
      <div class="footer-list1">
        <ul>
          <li><a href="http://www.150ah.com">光合硅能</a></li>
          <li><a href="http://yongdong.com.cn">风力发电机</a></li>
          <li><a href="http://guanghe.cn/solarPanel/main" style="color: #bd4932">太阳能电池板</a></li>
          <li><a href="http://kongzhiqi.com/solarController/main">控制器</a></li>
        </ul>
      </div>
    </div>
    <div class="col-md-2 box_5">
      <h3><a href="${path}/solarPanel/aboutUs"  class="aboutUs">企业文化</a></h3>
      <div class="footer-list1">
        <ul>
          <li><a href="${path}/solarPanel/productCenter"  class="productCenter">产品中心</a></li>
          <li><a href="${path}/solarPanel/aboutUs"  class="aboutUs">企业文化</a></li>
          <li><a href="${path}/solarPanel/contact"  class="contact">联系我们</a></li>
          <li><a href="${path}/solarPanel/case"  class="case">经典案例</a></li>
        </ul>
      </div>
    </div>
    <%--        <div class="col-md-3 box_5">--%>
    <%--            <h3><a href="${path}/solarPanel/contact"  class="contact">联系我们</a></h3>--%>
    <%--            <div class="footer-list">--%>
    <%--                <ul>--%>
    <%--                    <li class="list_top"><i class="location"> </i>--%>
    <%--                        <p>湖南长沙市雨花区小林子冲路</p></li>--%>
    <%--                    <li class="list_top"><i class="phone"> </i>--%>
    <%--                        <p>0731-86663578</p></li>--%>
    <%--                </ul>--%>
    <%--            </div>--%>
    <%--        </div>--%>
    <div class="col-md-4 box_5">
      <h3 style="margin: 0">关注我们</h3>>
      <div >
        <img id="btn_img1" src="${staticPath}/static/windEnergy/talk/images/wx.jpg" style="width:135px" alt="风力发电机">
        <img id="btn_img2" src="${staticPath}/static/windEnergy/talk/images/wx2.jpg" style="width:135px" alt="技术">
      </div>
    </div>
    <div class="col-md-1 box_5">
      <div class="map_box" style="text-align: center">
        <img src="${staticPath}/static/windEnergy/images/map.jpg" alt="地图"/>
        <p class="world">畅销全球</p>
      </div>
    </div>
  </div>
</div>
<div class="footer_bottom footer_bottom_box">
  <div class="container">
    <div class="copy">
      <p>Copyright ©永动新能源有限公司<a href="http://www.beian.miit.gov.cn" rel="nofollow" style="color: #989898" target="_blank">&nbsp;&nbsp;湘ICP备16021270号-4</a></p>
    </div>
    <ul class="footer_social">
      <li><a href=""> <i class="fb"> </i> </a></li>
      <li><a href=""><i class="tw"> </i> </a></li>
      <li><a href=""><i class="instagram"> </i> </a></li>
      <li><a href=""><i class="linkedin"> </i> </a></li>
    </ul>
  </div>
</div>
<div id="content2" class="contact_box" style="z-index: 100">
  <div class="content2-footer">
    <form id="mes_form">
      <input class="inp-first"  id="inp-first" placeholder="请输入姓名">
      <input class="inp-two" id="inp-two" placeholder="请输入电话号码">
      <button id="mes_submit">提交</button>
    </form>
  </div>
</div>
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
  })

</script>
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
  //客户信息提交
  $("#mes_submit").click(function(){

    var name=$("#inp-first").val();
    var phone=$("#inp-two").val();
    if (isNull(name)){
      alert("请输入您的姓名");
      return false;
    }
    if (isNull(phone)){
      alert("请输入您的电话");
      return false;

    }
    if(!(/^1(3|4|5|6|7|8|9)\d{9}$/.test(phone))){
      alert("手机号码有误，请重填");
      return false;
    }
    var website="太阳能电池板";
    var data={"phone":phone,"name":name,"website":website};
    $.ajax({
      type: 'POST',
      url: "${path}/solarPanel/customer",
      data: data,
      dataType: "text",
      success: function (result) {
        if (result=="success") {
          alert("提交成功");
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
</body>

</html>
