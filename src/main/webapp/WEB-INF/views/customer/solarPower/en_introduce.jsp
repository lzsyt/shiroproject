<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/commons/global.jsp" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name="author" content="M_Adnan" />
    <meta name="baidu-site-verification" content="UC04SFA0NB" />
    <!-- Document Title -->
    <title>Frontier Technology</title>

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
    #dropdown{
      color: #105b63;
    }

</style>
    <!-- 前台登录css-->
    <link rel="stylesheet" href="${staticPath }/static/customer/css/loginIndex.css">
    <!-- Fonts Online -->
    <link href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i" rel="stylesheet">
    <script type="text/javascript" src="${staticPath }/static/js/jquery-easyui/jquery.min.js"></script>
    <!-- 前台登录js-->
    <script  src="${staticPath }/static/js/index.js"></script>


</head>
<body>
<jsp:include page="en_header.jsp"></jsp:include>
<!-- Page Wrapper -->
<div id="wrap" class="layout-1">
    <!-- Content -->
    <div id="content">
        <section class="padding-top-60 padding-bottom-60">
            <div class= "container">

            <!-- Linking -->
        <div class="heading">
            <h2>Data download</h2>
            <hr>
        </div>
            <div class="container">
                <div class="panel-group" id="accordion">
                    <c:forEach var="intro" items="${files}" varStatus="status">
                    <div class="panel-heading" style="padding: 8px 8px;">
                            ${status.index+1}、${intro.question} <a style="margin-left: 15px;color: #ff8e09" href="${staticPath}/customer/download?path=${intro.filePath}">Download</a>
                    </div>
                    </c:forEach>
                </div>
                </div>
            </div>
        </section>
    </div>
    <!-- End Content -->



</div>

<!-- End Page Wrapper -->
<link rel="stylesheet" type="text/css" href="${staticPath }/static/customer/css/main.css">
<link rel="stylesheet" type="text/css" href="${staticPath }/static/customer/css/talkStyle.css?v=10">
<script type="text/javascript" src="${staticPath }/static/customer/js/main.js"></script>

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

</body>
<jsp:include page="en_talk.jsp"></jsp:include>
<jsp:include page="en_footer.jsp"></jsp:include>
</html>
