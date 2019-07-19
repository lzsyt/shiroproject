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

    <!-- 前台登录css-->
    <link rel="stylesheet" href="${staticPath }/static/customer/css/loginIndex.css">
    <!-- Fonts Online -->
    <link href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i" rel="stylesheet">
    <script type="text/javascript" src="${staticPath }/static/js/jquery-easyui/jquery.min.js"></script>
    <!-- 前台登录js-->
    <script  src="${staticPath }/static/js/index.js"></script>


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
</head>
<body>

<jsp:include page="en_header.jsp"></jsp:include>
<!-- Page Wrapper -->
<div id="wrap" class="layout-1">

    <!-- Content -->
    <div id="content">
        <section class="padding-top-60 padding-bottom-60">
            <div class="container">

            <!-- Linking -->
        <div class="heading">
            <h2>Common Problem</h2>
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
                    <h2>Maintenance of Silicon Batteries</h2>
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
</div>
<jsp:include page="en_talk.jsp"></jsp:include>
<jsp:include page="en_footer.jsp"></jsp:include>
</body>
</html>
