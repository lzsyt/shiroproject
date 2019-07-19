<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/commons/global.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name="author" content="M_Adnan" />
    <!-- Document Title -->
    <title>前沿科技</title>

    <!-- SLIDER REVOLUTION 4.x CSS SETTINGS -->
    <link rel="stylesheet" type="text/css" href="${staticPath }/static/customer/rs-plugin/css/settings.css" media="screen" />

    <!-- StyleSheets -->
    <link rel="stylesheet" href="${staticPath }/static/customer/css/ionicons.min.css">
    <link rel="stylesheet" href="${staticPath }/static/customer/css/bootstrap.min.css">
    <link rel="stylesheet" href="${staticPath }/static/customer/css/font-awesome.min.css">
    <link rel="stylesheet" href="${staticPath }/static/customer/css/main.css">
    <link rel="stylesheet" href="${staticPath }/static/customer/css/style.css">
    <link rel="stylesheet" href="${staticPath }/static/customer/css/responsive.css">

    <!-- Fonts Online -->
    <link href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i" rel="stylesheet">

</head>
<body>
<!-- Page Wrapper -->
<div id="wrap" class="layout-1">
    <!-- Content -->
    <section class="contact-sec padding-top-40 padding-bottom-80">
        <div class="container">

            <!-- MAP -->
            <section class="map-block margin-bottom-40">
                <div  class="map-wrapper" id="allmap"></div>

            </section>
            <!-- Conatct -->
            <div class="contact">
                <div class="contact-form">
                    <!-- FORM  -->
                    <form role="form" id="contact_form" class="contact-form" onsubmit="return false;">
                        <div class="row">
                            <div class="col-md-8">

                                <!-- Payment information -->
                                <div class="heading">
                                    <h2>联系我们</h2>
                                </div>
                                <ul class="row">
                                    <li class="col-sm-6">
                                        <label>您的名字
                                            <input type="text" class="form-control" name="name" id="name" placeholder="">
                                        </label>
                                    </li>
                                    <li class="col-sm-6">
                                        <label>电话
                                            <input type="text" class="form-control" name="phone" id="phone" placeholder="">
                                        </label>
                                    </li>
                                    <li class="col-sm-12">
                                        <label>问题
                                            <textarea class="form-control" name="message" id="message" rows="5" placeholder=""></textarea>
                                        </label>
                                    </li>
                                    <li class="col-sm-12 no-margin">
                                        <button type="submit" value="submit" class="btn-round" id="btn_submit">提交</button>
                                    </li>
                                </ul>
                            </div>

                            <!-- Conatct Infomation -->
                            <div class="col-md-4">
                                <div class="contact-info">
                                    <h5>前沿科技</h5>
                                    <hr>
                                    <h6>地 址:</h6>
                                    <p>湖南长沙市雨花区小林子冲路</p>

                                    <h6>手机:</h6>
                                    <p>17773166613&nbsp;&nbsp;&nbsp; 13367319068</p>
                                    <h6>电 话:</h6>
                                    <p> 0731-86663578</p>
                                    <h6>邮 箱:</h6>
                                    <p>2735122331@qq.com</p>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
    <!-- End Content -->




    <!-- End Footer -->
    <!-- End Page Wrapper -->
    <link rel="stylesheet" type="text/css" href="${staticPath }/static/customer/css/main.css">



    <!-- JavaScripts -->
    <script src="${staticPath }/static/customer/js/vendors/jquery/jquery.min.js"></script>
    <script src="${staticPath }/static/customer/js/vendors/wow.min.js"></script>
    <script src="${staticPath }/static/customer/js/vendors/bootstrap.min.js"></script>
    <script src="${staticPath }/static/customer/js/vendors/own-menu.js"></script>
    <script src="${staticPath }/static/customer/js/vendors/jquery.sticky.js"></script>
    <script src="${staticPath }/static/customer/js/vendors/owl.carousel.min.js"></script>

    <!-- SLIDER REVOLUTION 4.x SCRIPTS  -->
    <script type="text/javascript" src="${staticPath }/static/rs-plugin/js/jquery.tp.t.min.js"></script>
    <script type="text/javascript" src="${staticPath }/static/rs-plugin/js/jquery.tp.min.js"></script>
    <script src="${staticPath }/static/customer/js/main.js"></script>
    <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=E41731c7d1a53880cb260435793df872"></script>
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


        $("#btn_submit").click(function () {
            var name=$("#name").val();
            var phone=$("#phone").val();
            var message=$("#message").val();
            if (isNull(name)){
                alert("请输入您的姓名");
                return false;
            }
            if (isNull(phone)){
                alert("请输入您的电话");
                return false;

            }
            var data={"phone":phone,"name":name,"message":message};
            $.ajax({
                type: 'POST',
                url: "${path}/customer/customer",
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
                alert($.trim(value)=="");
                return true;
            }
            return false;
            
        }
    </script>
    <!-- GO TO TOP  -->
    <a href="#" class="cd-top"><i class="fa fa-angle-up"></i></a>
    <!-- GO TO TOP End -->
</div>

</body>
</html>