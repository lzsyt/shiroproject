<!DOCTYPE HTML>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="/commons/global.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>经典案例-太阳能控制器-湖南前沿科技有限公司</title>
    <meta name="keywords" content="风光互补控制器安装,内蒙古大功率风机控制器,太阳能控制器供电照明系统"/>
    <meta name="description" content="我们可以根据客户的需要提供量身定做的产品,努力做到比客户期待的更好."/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="Cache-Control" content="max-age=7200"/>
    <meta name="viewport" content="width=device-width,shrink-to-fit=no"/>
    <%--增加地名，提高本地排名--%>
    <meta name="location" content="province=湖南;city长沙">
    <%--url 唯一化--%>
    <link rel="canonical" href="http://www.kongzhiqi.cn/"/>
    <%--<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>--%>
    <link href="${staticPath }/static/windEnergy/css/bootstrap.css" rel='stylesheet' type='text/css'/>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <!-- Custom Theme files -->
    <link href="${staticPath }/static/windEnergy/css/style.css" rel='stylesheet' type='text/css'/>
    <!--
    <link href='http:///fonts.useso.com/css?family=Open+Sans:300,400,600,700,800' rel='stylesheet' type='text/css'>
    -->
    <!-- start plugins -->
    <script src="${staticPath }/static/windEnergy/js/jquery.min.js"></script>
    <link href="${staticPath }/static/style/css/fontStyle.css" rel='stylesheet' type='text/css'/>
    <style>
        /*
            经典案例图片排版
        */
        .container .blog .col-md-9 {
            width: 100%;
        }

        .container .blog .col-md-9 .blog_left {
            width: 500px;
            float: left;
        }

        #case {
            color: #105b63;
        }

    </style>
  <style>




  </style>
    <script type="application/x-javascript"> addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);

    function hideURLbar() {
        window.scrollTo(0, 1);
    } </script>
    <link href="${staticPath }/static/windEnergy/css/bootstrap.css" rel='stylesheet' type='text/css'/>
    <link href="${staticPath }/static/windEnergy/css/style.css" rel='stylesheet' type='text/css'/>
    <script src="${staticPath }/static/windEnergy/js/jquery.min.js"></script>
    <link rel="stylesheet" href="${staticPath }/static/customer/css/font-awesome.min.css">
    <script type="text/javascript" src="${staticPath }/static/windEnergy/js/jquery.easing.min.js"></script>
    <script type="text/javascript" src="${staticPath }/static/windEnergy/js/jquery.mixitup.min.js"></script>
    <link href="${staticPath }/static/style/css/fontStyle.css" rel='stylesheet' type='text/css'/>
    <script src="${staticPath }/static/customer/js/layer.js"></script>

</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div id="content">
    <div id="contentPage">
        <div class="about">
            <div class="container">
                <ul class="about_head">
                    <li class="about_head-left"><h1>经典案例</h1></li>
                    <li class="about_head-right"><p>Classic Case</p></li>
                </ul>
            </div>
        </div>
      <div class="abo_menu_wrap">
        <div class="main clearfix">
          <div class="bread2">
            <span><a href="http://www.kongzhiqi.com">首页</a></span><i></i>
            <a style="pointer-events:none;">经典案例</a>
          </div>
        </div>
      </div>
      <div class="container_wrapper">
        <div class="case">
          <c:forEach items="${caseImage}" var="caseImage">
            <a>
              <img src="${staticPath}/static${caseImage.imagePath}${caseImage.fileName}" alt="${caseImage.imageDescription}"/>
              <div class="con">${caseImage.imageDescription}</div>
              <div class="cover">
                <span>${caseImage.imageDescription}</span>
                <i></i>
              </div>
            </a>
          </c:forEach>
        </div>
      </div>

    </div>
</div>
<!--侧边悬浮聊天对话框-->
<jsp:include page="talk.jsp"></jsp:include>
<jsp:include page="footer.jsp"></jsp:include>
</body>

</html>

