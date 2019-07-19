<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/3/12
  Time: 11:18
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/commons/global.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
  <title>solarchargecontroller.com Solar Charge Controller</title>
  <meta name="keywords"
        content="Hunan Frontier Technology Co., Ltd., control organ network, controller manufacturer, solar controller, photovoltaic controller, wind and solar hybrid controller, waterproof street light controller, waterproof mains complementary controller, fan controller, blue and white solar controller, green Black shell solar controller, solar MPPT controller, solar gray shell controller, solar charge controller"/>
  <meta name="description"
        content="Hunan Frontier Technology Co., Ltd. adheres to the service tenet of “integrity management”. We design and design according to customer needs, and create perfect products for customers with safe, mature and cost-effective products. They are exported to non-US, Asia, Europe and other regions. We provide various types of solar controller components for many domestic solar energy product development enterprises. They are well-known in the solar energy industry for their exquisite workmanship and superior performance. They are recognized and trusted by customers and peers. Contact number: +86-731-86663578"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <link href="${staticPath }/static/windEnergy/css/bootstrap.css" rel='stylesheet' type='text/css' />
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <!-- Custom Theme files -->
    <link href="${staticPath }/static/windEnergy/css/style.css" rel='stylesheet' type='text/css' />
    <!-- start plugins -->
    <script src="${staticPath }/static/windEnergy/js/jquery.min.js"></script>
    <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=E41731c7d1a53880cb260435793df872"></script>
    <link href="${staticPath }/static/style/css/en_fontStyle.css" rel='stylesheet' type='text/css' />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <link href="${staticPath }/static/windEnergy/css/bootstrap.css" rel='stylesheet' type='text/css' />
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <!-- Custom Theme files -->
    <link href="${staticPath }/static/windEnergy/css/style.css" rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="${staticPath }/static/customer/css/font-awesome.min.css">
    <!--
    <link href='http:///fonts.useso.com/css?family=Open+Sans:300,400,600,700,800' rel='stylesheet' type='text/css'>
    -->
    <!-- start plugins -->
    <script src="${staticPath }/static/windEnergy/js/jquery.min.js"></script>
    <!--
    <script type="text/javascript" src="${staticPath }/static/windEnergy/js/fliplightbox.min.js"></script>
    <script type="text/javascript">
        $('body').flipLightBox()
    </script>
    -->
    <script type="text/javascript" src="${staticPath }/static/windEnergy/js/jquery.easing.min.js"></script>
    <script type="text/javascript" src="${staticPath }/static/windEnergy/js/jquery.mixitup.min.js"></script>
    <link href="${staticPath }/static/style/css/en_fontStyle.css" rel='stylesheet' type='text/css' />
    <script src="${staticPath }/static/customer/js/layer.js"></script>
  <style>
    #contact{
      color:#105b63;
    }
  </style>

</head>
<body>
<jsp:include page="en_header.jsp"></jsp:include>
<div id="content">
    <div  id="contentPage" >
<div class="about" >
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
                    <div class="clearfix"> </div>
                </ul>
                <ul class="address">
                    <i class="phone"> </i>
                    <li class="address_desc">
                        <h5>+86-731-86663578</h5>
                    </li>
                    <div class="clearfix"> </div>
                </ul>
                <ul class="address">
                    <i class="msg"> </i>
                    <li class="address_desc">
                        <h5><a href="malito:mail@demolink.org">sale@windturbine.com</a></h5>
                    </li>
                    <div class="clearfix"> </div>
                </ul>
            </div>
            <div class="col-md-6 contact_right">
                <h2>Contact Us</h2>
                <form>
                    <div class="column_2">

                       <%-- <input type="text" class="text" id="name" value="您的名字" value-en="Your Name" >
                        <input type="text" class="text" id="emali" value="邮箱" value-en="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '邮箱';}" style="margin-left:2.7%">--%>

                        <input type="text" class="text" id="name" placeholder="Your Name" >
                        <%--<input type="text" class="text" id="email" placeholder="Email" style="margin-left:2.7%">--%>
                           <input type="text" class="text" id="phone" placeholder="Phone" style="margin-left:2.7%">
                    </div>
                    <%--<div class="column_1">
                        <!--
                        <input type="text" class="text" id="phone" value="电话" value-en="Mobile" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '电话';}">
                        -->
                        <input type="text" class="text" id="phone" placeholder="Phone" >
                    </div>--%>
                    <div class="column_3">

                        <%--<p contenteditable="true" id="message" style="display: inline-block;height: 200px;width: 540px; border: 1px solid #D5D5D5;color:#BDBDBD;margin-bottom: 8px;font-weight: 100">问题反馈<!--{en}Question Feedback--></p>--%>
                        <textarea id="message" placeholder="Feedback Question"></textarea>


                    </div>
                    <div class="form-submit1">
                        <label id="submitForm" class="btn btn-primary btn-normal btn-inline " target="_self"><input type="submit" value="submit"></label>
                    </div>
                    <div class="clearfix"> </div>
                </form>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
<%--<jsp:include page="en_footer.jsp"></jsp:include>--%>
    <!-- Begin Map Script-->
    <script type="text/javascript">
        // 百度地图API功能
        var map = new BMap.Map("allmap");    // 创建Map实例
        map.centerAndZoom(new BMap.Point(112.996469,28.182525), 11);  // 初始化地图,设置中心点坐标和地图级别
        var point = new BMap.Point(112.996469,28.182525);
        map.centerAndZoom(point, 15);
        var marker = new BMap.Marker(point);        // 创建标注
        map.addOverlay(marker);                     // 将标注添加到地图中
        //添加地图类型控件
        map.addControl(new BMap.MapTypeControl({
            mapTypes:[
                BMAP_NORMAL_MAP,
                BMAP_HYBRID_MAP
            ]}));
        map.setCurrentCity("长沙");          // 设置地图显示的城市 此项是必须设置的
        map.enableScrollWheelZoom(true);     //开启鼠标滚轮缩放

        $("#submitForm").click(function(){
          /*  var name = $("#name").val();
            var emali = $("#emali").val();
            var phone = $("#phone").val();
            var message = $("#message").val();
            if (name=="您的名字" || name==null){
                alert("请输入您的姓名");
                return false;
            }
            if (emali=="邮箱" || emali==null){
                alert("请输入您的邮箱");
                return false;
            }
            if (phone=="电话" || phone==null){
                alert("请输入您的电话");
                return false;
            }
            return false;*/
            var name=$("#name").val();
            var phone=$("#phone").val();
            var message=$("#message").val();
            var website = "控制器";
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
            var data={"phone":phone,"name":name,"message":message,"website":website};
            $.ajax({
                type: 'POST',
                url: "${path}/en_solarController/customer",
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
                alert($.trim(value)=="");
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
