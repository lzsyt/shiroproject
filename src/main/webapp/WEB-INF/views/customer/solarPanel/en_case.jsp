<!DOCTYPE HTML>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="/commons/global.jsp" %>
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
    <!--
    <link href='http:///fonts.useso.com/css?family=Open+Sans:300,400,600,700,800' rel='stylesheet' type='text/css'>
    -->
    <!-- start plugins -->
    <script src="${staticPath }/static/windEnergy/js/jquery.min.js"></script>
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
    #case{
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
            <li class="about_head-left"><h1>经典案例</h1></li>
            <li class="about_head-right"><p>CLASSIC CASE</p></li>
        </ul>
    </div>
</div>
<div class="ejlnNav">
    <div class="ejlmNacIn">
        <div class="ejlmNR fontcolor1">
            <a href="${path}/solarPanel/en_main">Home Page</a>
            &nbsp;&nbsp;/&nbsp;&nbsp;
            <a>Case sharing</a>
        </div>
    </div>
</div>

<div class="container header-content">
    <div class="blog">
        <ul class="img_all">
            <c:forEach items="${caseImage}" var="caseImage">
                <li style="text-align: center;">
                    <a href="#">
                        <img src="${staticPath}/static${caseImage.imagePath}${caseImage.fileName}" alt="" style="width:400px" height="290px">
                    </a>
                    <p style="margin: 15px 0 0 0;font-size: 16px;font-family: '微软雅黑', '黑体', '新宋体', 'Arial Unicode MS';height: 40px;width:400px">${caseImage.en_imageDescription}</p>
                </li>
            </c:forEach>
        </ul>
    </div>
</div>
</div>


</div>
</div>
<!--侧边悬浮聊天对话框-->
<jsp:include page="en_talk.jsp"></jsp:include>
<jsp:include page="en_footer.jsp"></jsp:include>
</body>

</html>



