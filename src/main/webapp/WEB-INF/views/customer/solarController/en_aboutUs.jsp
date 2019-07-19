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
    <script src="${staticPath }/static/windEnergy/js/jquery.min.js"></script>
    <!-- Custom Theme files -->
    <link href="${staticPath }/static/windEnergy/css/style.css" rel='stylesheet' type='text/css' />
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
    #aboutUs{
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
            <li class="about_head-left"><h1>企业文化</h1></li>
            <li class="about_head-right"><p>Enterprise Culture</p></li>
        </ul>
    </div>
</div>

<div class="container">
    <div class="about_top" style="margin: 0 auto">
        <div class="col-md-12 about_top-right">
            <h2>Management Idea</h2>
            <p>
              Hunan frontier technology co., LTD. Is a professional manufacturer of scenery battery components and scenery high-tech products, with first-class professional technical team and advanced production and testing equipment.The company introduced advanced production equipment, through strict quality control system, so that the products have high efficiency, long life and other characteristics.
            </p>
            <p>
                Permanent New Energy has attached great importance to research and development for a long time, so that we are in the leading position in the relevant fields of wind power industry, and continue to provide innovative products that meet customer requirements. We have a young, high-quality and pioneering team of scientific research, combined with modern information technology, research and development of high-quality products.
            </p>
            <p>
                While providing national products, we also provide high-quality services for our customers. We can provide tailor-made products according to the needs of customers. Every link of work must strive for perfection is our style of work. It is our duty to meet the needs of customers. It is our value to surpass the expectations of customers. We strive to do better than our customers expect.
            </p>
        </div>
        <div class="col-md-12 box_6" >

            <%--<c:forEach items="${aboutImage}" var="image">
                <img class="img-responsive" src="${staticPath}/static${image.imagePath}${image.fileName}" alt="" >
            </c:forEach>--%>
            <img class="img-responsive" src="${staticPath}/static${aboutImage[0].imagePath}${aboutImage[0].en_fileName}" alt="" style="height: 100%;">
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
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<div class="team text-center">
    <div class="container">
     <%--   <h3>Workshop Example</h3>
        <p>
            The company has a complete set of advanced manufacturing equipment and technology of wind photovoltaic cell components, adhering to the service purpose of "honest management", we plan and design according to customer needs, tailor-made safe, mature, cost-effective products are exported to non-United States, Asia, Europe and other regions, while providing products for many domestic enterprises.
        </p>
        <c:forEach items="${aboutImage}" var="image" end="2">
            <div class="col-md-3 grid_3" style="margin-left: 72px;width: 28%;margin-right: -53px;">
                <img class="img-responsive" src="${staticPath}/static${image.imagePath}${image.fileName}" alt="" style="height: 192px;width: 289px">
            </div>
        </c:forEach>--%>
         <div class="col-md-3 grid_3" style="margin-left: 72px;width: 100%;margin-right: -53px;">
             <img class="img-responsive" src="${staticPath}/static${aboutImage[1].imagePath}${aboutImage[1].en_fileName}" alt="" style="height: 100%">
         </div>

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


