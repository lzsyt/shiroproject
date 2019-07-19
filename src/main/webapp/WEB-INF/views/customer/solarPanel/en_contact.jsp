<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/commons/global.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Solar Panel Official Website|Hunan Frontier Technology Co., Ltd.|Solar Panel Manufacturers|Solar Solar Photovoltaic Equipment</title>
    <meta name="keywords" content="Solar Panel official website, Hunan Frontier Technology Co., Ltd., solar panel manufacturers, solar modules, solar panels, solar panels, photovoltaic modules, photovoltaic panels, solar power, solar modules, solar street lights, solar photovoltaic panels, solar power, solar energy Photovoltaic equipment, photovoltaic module manufacturers, PV module prices"/>
    <meta name="description" content="Hunan Frontier Technology Co., Ltd. is a professional manufacturer of wind-emitting battery components and high-tech products. It has a first-class professional technical team and advanced production testing equipment. The company has introduced advanced production equipment and passed the strict quality controller volume, which makes the product have high performance and long life. Phone:+86-731-86663578"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="Cache-Control" content="max-age=7200"/>
    <meta name="baidu-site-verification" content="QEMpUmzU1b" />
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
    <script type="text/javascript" src="${staticPath}/static/windEnergy/js/responsive-nav.js"></script>
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
    <div  id="contentPage">
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
                        <h5>+0731-86663578</h5>
                    </li>
                    <div class="clearfix"> </div>
                </ul>
                <ul class="address">
                    <i class="msg"> </i>
                    <li class="address_desc">
                        <h5><a href="malito:mail@demolink.org">2735122330@qq.com</a></h5>
                    </li>
                    <div class="clearfix"> </div>
                </ul>
            </div>
            <div class="col-md-6 contact_right">
                <h2>Contact Us</h2>
                <form>
                    <div class="column_2">
                        <input type="text" class="text" id="name" placeholder="Your Name" >
                        <input type="text" class="text" id="email" placeholder="Email" style="margin-left:2.7%">
                    </div>
                    <div class="column_1">
                        <input type="text" class="text" id="phone" placeholder="Phone" >
                    </div>
                    <div class="column_3">
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
            var name = $("#name").val();
            var phone = $("#phone").val();
            var message = $("#message").val();
            var website = "太阳能电池板";
            if (name=="Your Name" || name==null){
                alert("Please enter your name");
                return false;
            }
            if (phone=="Phone" || phone==null){
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
        })
    </script>
    </div>
</div>
<!--侧边悬浮聊天对话框-->
<jsp:include page="en_talk.jsp"></jsp:include>
<jsp:include page="en_footer.jsp"></jsp:include>
</body>

</html>
