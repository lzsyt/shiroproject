<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/commons/global.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <title>关于我们-太阳能控制器-湖南前沿科技有限公司</title>
    <meta name="keywords" content="关于我们"/>
    <meta name="description" content="满足客户需求是我们的职责,超越客户的期待是我们的价值观."/>

    <%--增加地名，提高本地排名--%>
    <meta name="location" content="province=湖南;city长沙">
    <%--url 唯一化--%>
    <link rel="canonical" href="http://www.kongzhiqi.cn/"/>


    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="Cache-Control" content="max-age=7200"/>
    <meta name="viewport" content="width=device-width,shrink-to-fit=no"/>
    <script type="application/x-javascript"> addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);

    function hideURLbar() {
        window.scrollTo(0, 1);
    } </script>
    <link href="${staticPath }/static/windEnergy/css/bootstrap.css" rel='stylesheet' type='text/css'/>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="${staticPath }/static/windEnergy/js/jquery.min.js"></script>
    <!-- Custom Theme files -->
    <link href="${staticPath }/static/windEnergy/css/style.css" rel='stylesheet' type='text/css'/>
    <link href="${staticPath }/static/style/css/fontStyle.css" rel='stylesheet' type='text/css'/>
    <script type="application/x-javascript"> addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);

    function hideURLbar() {
        window.scrollTo(0, 1);
    } </script>
    <link href="${staticPath }/static/windEnergy/css/bootstrap.css" rel='stylesheet' type='text/css'/>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <!-- Custom Theme files -->
    <link href="${staticPath }/static/windEnergy/css/style.css" rel='stylesheet' type='text/css'/>
    <!--
    <link href='http:///fonts.useso.com/css?family=Open+Sans:300,400,600,700,800' rel='stylesheet' type='text/css'>
    -->
    <!-- start plugins -->
    <script src="${staticPath }/static/windEnergy/js/jquery.min.js"></script>
    <link rel="stylesheet" href="${staticPath }/static/customer/css/font-awesome.min.css">
    <script type="text/javascript" src="${staticPath }/static/windEnergy/js/jquery.easing.min.js"></script>
    <script type="text/javascript" src="${staticPath }/static/windEnergy/js/jquery.mixitup.min.js"></script>
    <link href="${staticPath }/static/style/css/fontStyle.css" rel='stylesheet' type='text/css'/>
    <script src="${staticPath }/static/customer/js/layer.js"></script>
    <style>
        #aboutUs {
            color: #105b63;
        }

    </style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div id="content">
    <div id="contentPage">
        <div class="about">
            <div class="container">
                <ul class="about_head">
                    <li class="about_head-left"><h1>企业文化</h1></li>
                    <li class="about_head-right"><p>Enterprise Culture</p></li>
                </ul>
            </div>
        </div>
      <div class="abo_menu_wrap">
        <div class="main clearfix">
          <div class="bread2">
            <span><a href="http://www.kongzhiqi.com">首页</a></span><i></i>
            <a style="pointer-events:none;">企业文化</a>
          </div>
        </div>
      </div>
      <div class="container">
            <%--<div class="about_top">
                <div class="col-md-6 box_6">

                    &lt;%&ndash;<c:forEach items="${aboutImage}" var="image">
                        <img class="img-responsive" src="${staticPath}/static${image.imagePath}${image.fileName}" alt="" >
                    </c:forEach>&ndash;%&gt;
                    <img class="img-responsive" src="${staticPath}/static${aboutImage[0].imagePath}${aboutImage[0].fileName}" alt="" >
                </div>
                <div class="col-md-6 about_top-right">
                    <h2>经营理念</h2>
                    <p>
                        湖南前沿科技有限公司是一家专业生产风光电池组件以及风光高科技产品的企业，拥有一流的专业技术队伍及先进的生产检测设备。公司引进了先进生产设备，通过严格1的质量控制器体积，使得产品具有效能高，寿命长等特点。
                    </p>
                    <p>
                        永动新能源长期重视研究和开发工作，使我们在风电行业相关领域中处于领先地位， 并持续地提供符合客户要求的创新产品。我们拥有一支年轻化、高素质、具有不断开拓精神的科研队伍， 结合现代信息技术，研究开发优质的产品。
                    </p>
                    <p>
                        我们在提供国家产品的同时，也为客户提供优质的服务。我们可以根据客户的需要提供量身定做的产品， 每一个工作环节都必须精益求精是我们的工作作风，满足客户需求是我们的职责，超越客户的期待是我们的价值观。 我们努力做到比客户期待的更好。
                    </p>
                </div>
                <div class="clearfix"> </div>
            </div>--%>
            <div class="about_top" style="margin: 0 auto">
                <div class="col-md-12 about_top-right">
                    <h2>经营理念</h2>
                    <p>
                        湖南前沿科技有限公司是一家专业生产风光电池组件以及风光高科技产品的企业，拥有一流的专业技术队伍及先进的生产检测设备。公司引进了先进生产设备，通过严格的质量控制体系，使得产品具有效能高，寿命长等特点。
                    </p>
                    <p>
                        永动新能源长期重视研究和开发工作，使我们在风电行业相关领域中处于领先地位， 并持续地提供符合客户要求的创新产品。我们拥有一支年轻化、高素质、具有不断开拓精神的科研队伍，
                        结合现代信息技术，研究开发优质的产品。
                    </p>
                    <p>
                        我们在提供国家产品的同时，也为客户提供优质的服务。我们可以根据客户的需要提供量身定做的产品，
                        每一个工作环节都必须精益求精是我们的工作作风，满足客户需求是我们的职责，超越客户的期待是我们的价值观。 我们努力做到比客户期待的更好。
                    </p>
                </div>
                <div class="col-md-12 box_6">

                    <%--<c:forEach items="${aboutImage}" var="image">
                        <img class="img-responsive" src="${staticPath}/static${image.imagePath}${image.fileName}" alt="" >
                    </c:forEach>--%>
                    <img class="img-responsive"
                         src="${staticPath}/static${aboutImage[0].imagePath}${aboutImage[0].fileName}" alt="控制器页文化图片"
                         style="height: 100%;">
                </div>

                <div class="clearfix"></div>
            </div>
        </div>
        <div class="box_4">
            <div class="container">
                <div class="projects text-center">
                    <div class="col-sm-3 grid_2" style="width: 33.33%">
                        <i class="icon1"> </i>
                        <h4 style="padding-top: 15px">优质服务</h4>
                    </div>
                    <div class="col-sm-3 grid_2" style="width: 33.33%">
                        <i class="icon2"> </i>
                        <h4 style="padding-top: 15px">行业经验</h4>
                    </div>
                    <div class="col-sm-3 grid_2" style="width: 33.33%">
                        <i class="icon3"> </i>
                        <h4 style="padding-top: 15px">品质保证</h4>
                    </div>
                    <%--<div class="col-sm-3 grid_2">
                        <i class="icon4"> </i>
                        <h3>765</h3>
                        <h4>错误修复</h4>
                    </div>--%>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
        <div class="team text-center">
            <div class="container">
                <!--
        <h3>厂房实例</h3>
        <p> 公司拥有全套风光电池组件先进制作设备和技术工艺，秉着“诚信经营”的服务宗旨，我们根据客户需求规划设计，为客户量身打造安全、成熟、性价比优越的产品远销于非美、亚洲、欧洲等地区，同时为国内众多企业提供产品。</p>

        <c:forEach items="${aboutImage}" var="image" end="2">
            <div class="col-md-3 grid_3" style="margin-left: 72px;width: 28%;margin-right: -53px;">
                <img class="img-responsive" src="${staticPath}/static${image.imagePath}${image.fileName}" alt="" style="height: 192px;width: 289px">
            </div>
        </c:forEach>
        -->
                <div class="col-md-3 grid_3" style="margin-left: 72px;width: 100%;margin-right: -53px;height: 100%;">
                    <img class="img-responsive"
                         src="${staticPath}/static${aboutImage[1].imagePath}${aboutImage[1].fileName}" alt="控制器页文化图片"
                         style="height: 100%;">
                </div>

                <div class="clearfix"></div>
            </div>
        </div>
        <%--<jsp:include page="footer.jsp"></jsp:include>--%>

    </div>
</div>
<!--侧边悬浮聊天对话框-->
<jsp:include page="talk.jsp"></jsp:include>
<jsp:include page="footer.jsp"></jsp:include>
</body>

</html>







