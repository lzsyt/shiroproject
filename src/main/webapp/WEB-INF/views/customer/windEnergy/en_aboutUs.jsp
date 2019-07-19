<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/3/12
  Time: 9:35
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ include file="/commons/global.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Wind turbine - yongdong new energy co. LTD</title>
  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0,user-scalable=no">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta name="keywords"
        content="small wind turbines, wind and solar hybrid streetlight systems, wind turbines, wind turbine manufacturers, wind turbine prices, small and medium wind turbines, medium wind turbines, Hunan frontier technology, wind and solar hybrid systems, power generation systems, horizontal axis wind power generation Machine, vertical axis wind turbine"/>
  <meta name="description"
        content="The main products of Yongdong New Energy Co., Ltd. include 100W-100kW horizontal-axis wind turbines, vertical-axis wind turbines and other small and medium-sized wind turbines, wind-solar complementary street lamps, wind-solar complementary distributed generation systems, solar street lamps, etc., which can provide customers with One-stop solution for wind power generation, wind and solar hybrid power generation, wind and solar hybrid street lighting, solar street lighting system, solar photovoltaic water lifting system and photovoltaic grid-connected power generation, Tel: 17773166613"/>
    <meta http-equiv="Cache-Control" content="max-age=7200"/>
    <meta name="viewport" content="width=device-width,shrink-to-fit=no"/>
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <script src="${staticPath }/static/windEnergy/js/jquery.min.js"></script>
    <link rel="shortcut icon" href="${staticPath }/static/images/yongdong.png" type="image/x-icon" />
    <link href="${staticPath }/static/windEnergy/css/bootstrap.css" rel='stylesheet' type='text/css' />
    <link href="${staticPath }/static/windEnergy/css/style.css" rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="${staticPath }/static/customer/css/font-awesome.min.css">
    <link rel="shortcut icon" href="${staticPath }/static/images/yongdong.png" type="image/x-icon"/>
    <script type="text/javascript" src="${staticPath }/static/windEnergy/js/jquery.easing.min.js"></script>
    <script type="text/javascript" src="${staticPath }/static/windEnergy/js/jquery.mixitup.min.js"></script>
    <link href="${staticPath }/static/style/css/en_fontStyle.css" rel='stylesheet' type='text/css' />
    <script src="${staticPath }/static/customer/js/layer.js"></script>
  <style>
    #aboutUs{
      color: #105b63;
    }
  </style>
</head>
<body>
<jsp:include page="en_header.jsp"></jsp:include>
<div id="content">
    <div id="contentPage">

<div class="about" >
    <div class="container">
        <ul class="about_head">
            <li class="about_head-left"><h1>企业文化</h1></li>
            <li class="about_head-right"><p>corporate culture</p></li>
        </ul>
    </div>
</div>
<div class="container">
    <%--<div class="about_top">
        <div class="col-md-6 box_6">

            <img class="img-responsive" src="${staticPath}/static${aboutImage[0].imagePath}${aboutImage[0].en_fileName}" alt="" >
        </div>
        <div class="col-md-6 about_top-right">
            <h2>Management Idea</h2>
            <p>

                Hunan Frontier Technology Co., Ltd. is a professional manufacturer of wind photovoltaic cell components and high-tech products, with first-class professional technical team and advanced production and testing equipment. The company introduced advanced production equipment, through strict quality control device volume, so that the product has high efficiency, long life and other characteristics.
            </p>
            <p>

                Permanent New Energy has attached great importance to research and development for a long time, so that we are in the leading position in the relevant fields of wind power industry, and continue to provide innovative products that meet customer requirements. We have a young, high-quality and pioneering team of scientific research, combined with modern information technology, research and development of high-quality products.
            </p>
            <p>

                While providing national products, we also provide high-quality services for our customers. We can provide tailor-made products according to the needs of customers. Every link of work must strive for perfection is our style of work. It is our duty to meet the needs of customers. It is our value to surpass the expectations of customers. We strive to do better than our customers expect.
            </p>
        </div>
        <div class="clearfix"> </div>
    </div>--%>
        <div class="about_top" style="padding-left: 150px">
            <div class="col-md-10 about_top-right">
                <h2>Business philosophy</h2>
                <p>
                  Hunan frontier technology co., LTD. Is a professional manufacturer of scenery battery components and scenery high-tech products, with first-class professional technical team and advanced production and testing equipment.The company introduced advanced production equipment, through strict quality control system, so that the products have high efficiency, long life and other characteristics.
                </p>
                <p>
                  Permanent New Energy has long been focusing on research and development, which has enabled us to take the lead in related fields of the wind power industry and continue to provide innovative products that meet customer requirements. We have a young, high-quality, continuous pioneering research team that combines modern information technology to research and develop quality products.
                </p>
                <p>
                  We provide high quality services to our customers while providing national products. We can provide tailor-made products according to the needs of customers. Every work step must be refined. It is our work style. It is our duty to meet customer needs. It is our value to exceed customer expectations. We strive to do better than our customers expect.
                </p>
            </div>
            <div class="col-md-10 box_6" style="margin-top:50px">

                <%--<c:forEach items="${aboutImage}" var="image">
                    <img class="img-responsive" src="${staticPath}/static${image.imagePath}${image.fileName}" alt="" >
                </c:forEach>--%>
                <img class="img-responsive" src="${staticPath}/static${aboutImage[0].imagePath}${aboutImage[0].fileName}" alt="" >
            </div>

            <div class="clearfix"> </div>
        </div>
</div>
<div class="box_4">
    <div class="container">
        <div class="projects text-center">
            <div class="col-sm-3 grid_2" style="width: 33.33%">
                <i class="icon1"> </i>
                <h4 style="padding-top: 15px">quality service</h4>
            </div>
            <div class="col-sm-3 grid_2" style="width: 33.33%">
                <i class="icon2"> </i>
                <h4 style="padding-top: 15px">Industry experience</h4>
            </div>
            <div class="col-sm-3 grid_2" style="width: 33.33%">
                <i class="icon3"> </i>
                <h4 style="padding-top: 15px">Quality assurance</h4>
            </div>
           <%-- <div class="col-sm-3 grid_2">
                <i class="icon4"> </i>
                <h3>765</h3>
                <h4>Mismatch Repair</h4>
            </div>--%>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<div class="team text-center">
    <div class="container">
        <h3>Product Instance</h3>
        <p>The company has a full set of advanced production equipment and technology for wind-emitting battery components. With the service tenet of “integrity management”, we plan and design according to customer needs, and create safe, mature and cost-effective products for customers, which are exported to non-US, In Asia, Europe and other regions, it also provides products for many domestic enterprises. The main products of Permanent New Energy Co., Ltd. include 100W-100kW horizontal-axis wind turbines, vertical-axis wind turbines and other small and medium-sized wind turbines, wind-solar complementary street lamps, wind-solar complementary distributed generation systems, solar street lamps, etc., which can provide customers with One-stop solutions for wind power generation, wind and solar hybrid power generation, wind and solar hybrid street lights, solar street light systems, solar photovoltaic water lifting systems and photovoltaic grid-connected power generation.</p>
        <c:forEach items="${aboutImage}" var="image" begin="1" end="3" >
            <div class="col-md-3 grid_3" style="margin-left: 5px;width: 33%;margin-right: -13px;">
                <img class="img-responsive" src="${staticPath}/static${image.imagePath}${image.fileName}" alt="" style="height: 300px">
            </div>
        </c:forEach>
        <div class="clearfix"> </div>
    </div>

</div>
<%--<jsp:include page="en_footer.jsp"></jsp:include>--%>

</div>
</div>
<!--侧边悬浮聊天对话框-->
<jsp:include page="en_talk.jsp"></jsp:include>
<jsp:include page="en_footer.jsp"></jsp:include>
</body>


</html>
