<!DOCTYPE HTML>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="/commons/global.jsp" %>
<html>
<head>
  <title>solarchargecontroller.com Solar Charge Controller</title>
  <meta name="keywords"
        content="Hunan Frontier Technology Co., Ltd., control organ network, controller manufacturer, solar controller, photovoltaic controller, wind and solar hybrid controller, waterproof street light controller, waterproof mains complementary controller, fan controller, blue and white solar controller, green Black shell solar controller, solar MPPT controller, solar gray shell controller, solar charge controller"/>
  <meta name="description"
        content="Hunan Frontier Technology Co., Ltd. adheres to the service tenet of “integrity management”. We design and design according to customer needs, and create perfect products for customers with safe, mature and cost-effective products. They are exported to non-US, Asia, Europe and other regions. We provide various types of solar controller components for many domestic solar energy product development enterprises. They are well-known in the solar energy industry for their exquisite workmanship and superior performance. They are recognized and trusted by customers and peers. Contact number: +86-731-86663578"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="${staticPath }/static/windEnergy/css/bootstrap.css" rel='stylesheet' type='text/css' />

    <link href="${staticPath }/static/windEnergy/css/style.css" rel='stylesheet' type='text/css' />


    <style>
        /*
        经典案例图片排版
        */
        .container .blog .col-md-9{
        width: 100%;
        }
        .container .blog .col-md-9 .blog_left{
        width: 500px;
        float:left;
        }
    </style>
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <link href="${staticPath }/static/windEnergy/css/bootstrap.css" rel='stylesheet' type='text/css' />

    <link rel="stylesheet" href="${staticPath }/static/customer/css/font-awesome.min.css">
    <script src="${staticPath }/static/windEnergy/js/jquery.min.js"></script>
    <script type="text/javascript" src="${staticPath }/static/windEnergy/js/jquery.easing.min.js"></script>
    <script type="text/javascript" src="${staticPath }/static/windEnergy/js/jquery.mixitup.min.js"></script>
    <link href="${staticPath }/static/style/css/en_fontStyle.css" rel='stylesheet' type='text/css' />
    <script src="${staticPath }/static/customer/js/layer.js"></script>
  <style>
    #case{
      color:#105b63;
    }
  </style>

</head>
<body>
<jsp:include page="en_header.jsp"></jsp:include>
<div id="content">
    <div  id="contentPage" >
<div class="about">
    <div class="container">
        <ul class="about_head">
            <li class="about_head-left"><h1>经典案例</h1></li>
            <li class="about_head-right"><p>Classic Case</p></li>
        </ul>
    </div>
</div>
<div class="ejlnNav">
    <div class="ejlmNacIn">
        <div class="ejlmNR fontcolor1">
            <a href="${path}/en_solarController/en_main">Home</a>
            &nbsp;&nbsp;/&nbsp;&nbsp;
            <a>Case sharing</a>
        </div>
    </div>
</div>
<div class="container header-content">
    <div class="blog">
        <ul class="img_all">
            <c:forEach items="${caseImage}" var="caseImage">
                <li style="text-align: center">
                        <%--                   <p style="padding-bottom: 20px"><fmt:formatDate value="${caseImage.updateTime}" pattern="yyyy-MM-dd HH:mm:ss"/></p>--%>
                    <a href="#">
                        <img src="${staticPath}/static${caseImage.imagePath}${caseImage.fileName}" alt="" style="width:400px">
                    </a>
                            <p style="margin: 15px 0 0 0;font-size: 16px;font-family: '微软雅黑', '黑体', '新宋体', 'Arial Unicode MS';height: 30px;width:400px">${caseImage.en_imageDescription}</p>
                </li>
            </c:forEach>
        </ul>
    </div>
</div>
    </div>
</div>
<!--侧边悬浮聊天对话框-->
<jsp:include page="en_talk.jsp"></jsp:include>
<jsp:include page="en_footer.jsp"></jsp:include>
</body>
</html>
