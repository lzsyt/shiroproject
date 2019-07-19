<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/commons/global.jsp" %>
<html>
<head>
  <!-- Document Title -->
  <title>光合硅能蓄电池唯一【官网】|光合硅能电池公司官网|光合硅能蓄电池厂家</title>
  <meta name="keywords" content="光合硅能蓄电池,硅能蓄电池,硅能电池,光合硅能电池官网,光合硅能电池,光合硅能蓄电池官网,光合硅能,
,太阳能储能电池,光合硅能电池官网,蓄电池厂家,发电系统,湖南前沿,前沿科技" />
  <meta name="description" content="光合硅能一直坚持以品质，足容量，不虚标，不作假，承诺的售后质保服务为坚持，目前在行业内具有一定的品牌价值，请一定认准可以提供商标品牌查询资质的正规购买渠道。买光合硅能蓄电池请认准天猫旗舰店和湖南前沿科技官网网址www.150ah.com，有蓝标和工商认证为正品。认准光合硅能，有工商执照认证，有百度信誉认证才是正品。联系电话：17773166613" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name="author" content="M_Adnan" />
    <meta name="baidu-site-verification" content="UC04SFA0NB" />
    <!-- SLIDER REVOLUTION 4.x CSS SETTINGS -->
    <link rel="stylesheet" type="text/css" href="${staticPath }/static/customer/rs-plugin/css/settings.css" media="screen" />
    <link rel="shortcut icon" href="${staticPath }/static/images/favicon.png" type="image/x-icon" />
    <!-- StyleSheets -->
    <link rel="stylesheet" href="${staticPath }/static/customer/css/ionicons.min.css">
    <link rel="stylesheet" href="${staticPath }/static/customer/css/bootstrap.min.css">
    <link rel="stylesheet" href="${staticPath }/static/customer/css/font-awesome.min.css">
    <link rel="stylesheet" href="${staticPath }/static/customer/css/main.css">
    <link rel="stylesheet" href="${staticPath }/static/customer/css/style.css">
    <link rel="stylesheet" href="${staticPath }/static/customer/css/responsive.css">


    <!-- Fonts Online -->
    <link href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i" rel="stylesheet">
<style>
    .panel-title {
        cursor: pointer;
        font-size:13px;
        color: #5C5C5C


    }
    .panel :hover{
        background:#FFFFFF;
    }

</style>
    <!-- 前台登录css-->
    <link rel="stylesheet" href="${staticPath }/static/customer/css/loginIndex.css">
    <!-- Fonts Online -->
    <link href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i" rel="stylesheet">
    <script type="text/javascript" src="${staticPath }/static/js/jquery-easyui/jquery.min.js"></script>
    <!-- 前台登录js-->
    <script  src="${staticPath }/static/js/index.js"></script>
    <script src="${staticPath }/static/customer/js/layer.js"></script>
  <style>
    #question{
      color: #105b63;
    }
  </style>

</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<!-- Page Wrapper -->
<div id="wrap" class="layout-1">
    <!-- Content -->
    <div id="content">
      <!-- Linking -->
      <div class="linking">
        <div class="container">
          <ol class="breadcrumb">
            <li><a target="myframe" href="http://www.150ah.com">首页</a></li>
            <li class="active">常见问答</li>
          </ol>
        </div>
      </div>
        <section class="padding-top-60 padding-bottom-60" style="padding-top: 0 !important">
            <div class="container">

            <!-- Linking -->
        <div class="heading">
            <h2>常见问题</h2>
            <hr>
        </div>
            <div class="container">
                <div class="panel-group" id="accordion">
                    <c:forEach items="${questions}" var="q"  varStatus="status" >

                    <div class="panel panel-default"  style="font-size:13px;">

                            <div class="panel-heading" style="padding: 0px 8px;">
                                <h4 class="panel-title" >
                                    <a data-toggle="collapse" data-parent="#accordion"
                                       href="#${q.id}">
                                        ${status.index+1}、${q.question}
                                    </a>
                                </h4>
                            </div>
                            <div id="${q.id}" class="panel-collapse collapse in">
                                <div class="panel-body">
                                  ${q.answer}
                                </div>
                            </div>
                    </div>
                    </c:forEach>

                </div>
                </div>
                <div class="heading">
                    <h2>硅能电池的养护</h2>
                    <hr>
                </div>
                <div class="container">
                    <div class="panel-group" id="intro">
                        <c:forEach items="${introduce}" var="introduce"  varStatus="status" >

                            <div class="panel panel-default"  style="font-size:13px;">

                                <div class="panel-heading" style="padding: 0px 8px;">
                                    <h4 class="panel-title" >
                                        <a data-toggle="collapse" data-parent="#accordion"
                                           href="#${introduce.id}">
                                                ${status.index+1}、${introduce.question}
                                        </a>
                                    </h4>
                                </div>
                                <div id="${introduce.id}" class="panel-collapse collapse in">
                                    <div class="panel-body">
                                            ${introduce.answer}
                                    </div>
                                </div>
                            </div>
                        </c:forEach>

                    </div>
                </div>
            </div>
        </section>
    </div>
    <!-- End Content -->

    <!-- End Footer -->
    <!-- End Page Wrapper -->
    <script src="${staticPath }/static/customer/js/vendors/jquery/jquery.min.js"></script>
    <script type="text/javascript" src="${staticPath }/static/customer/js/main.js"></script>
    <!-- JavaScripts -->
    <script src="${staticPath }/static/customer/js/vendors/wow.min.js"></script>
    <script src="${staticPath }/static/customer/js/vendors/bootstrap.min.js"></script>
    <script src="${staticPath }/static/customer/js/vendors/own-menu.js"></script>
    <script src="${staticPath }/static/customer/js/vendors/jquery.sticky.js"></script>
    <script src="${staticPath }/static/customer/js/vendors/owl.carousel.min.js"></script>

    <!-- SLIDER REVOLUTION 4.x SCRIPTS  -->
    <script type="text/javascript" src="${staticPath }/static/customer/rs-plugin/js/jquery.tp.t.min.js"></script>
    <script type="text/javascript" src="${staticPath }/static/customer/rs-plugin/js/jquery.tp.min.js"></script>
    <!-- GO TO TOP  -->
    <a href="#" class="cd-top"><i class="fa fa-angle-up"></i></a>
    <!-- GO TO TOP End -->
</div>


<!-- End Page Wrapper -->
<link rel="stylesheet" type="text/css" href="${staticPath }/static/customer/css/main.css">
<link rel="stylesheet" type="text/css" href="${staticPath }/static/customer/css/talkStyle.css?v=10">

<script src="${staticPath }/static/customer/js/vendors/jquery/jquery.min.js"></script>
<!-- JavaScripts -->
<script src="${staticPath }/static/customer/js/vendors/wow.min.js"></script>
<script src="${staticPath }/static/customer/js/vendors/bootstrap.min.js"></script>
<script src="${staticPath }/static/customer/js/vendors/own-menu.js"></script>
<script src="${staticPath }/static/customer/js/vendors/jquery.sticky.js"></script>
<script src="${staticPath }/static/customer/js/vendors/owl.carousel.min.js"></script>
<!-- SLIDER REVOLUTION 4.x SCRIPTS  -->
<script type="text/javascript" src="${staticPath }/static/customer/rs-plugin/js/jquery.tp.t.min.js"></script>
<script type="text/javascript" src="${staticPath }/static/customer/rs-plugin/js/jquery.tp.min.js"></script>
<script src="${staticPath }/static/customer/js/vendors/owl.carousel.min.js"></script>


<jsp:include page="talk.jsp"></jsp:include>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
