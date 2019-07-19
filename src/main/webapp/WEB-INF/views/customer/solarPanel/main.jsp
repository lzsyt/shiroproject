<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/3/11
  Time: 14:21
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/commons/global.jsp" %>
<html>
<head>
    <title>太阳能电池板_太阳能电池板价格_太阳能电池板厂家_湖南前沿科技有限公司</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords"
          content="太阳能电池板,太阳能电池板价格,太阳能电池板厂家"/>
    <meta name="description"
          content="湖南前沿科技有限公司是一家专业生产风光电池组件以及风光高科技产品的企业，拥有一流的专业技术队伍及先进的生产检测设备。公司引进了先进生产设备，通过严格的质量控制体系，使得产品具有效能高，寿命长等特点。电话：17773166613"/>
    <meta http-equiv="Cache-Control" content="max-age=7200"/>
    <meta name="viewport" content="width=device-width,shrink-to-fit=no"/>
    <meta name="baidu-site-verification" content="QEMpUmzU1b" />
    <script type="application/x-javascript"> addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);

    function hideURLbar() {
        window.scrollTo(0, 1);
    } </script>
    <link href="${staticPath }/static/windEnergy/css/bootstrap.css" rel='stylesheet' type='text/css'/>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="${staticPath }/static/windEnergy/js/jquery.min.js"></script>
    <script type="application/x-javascript"> addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);

    function hideURLbar() {
        window.scrollTo(0, 1);
    } </script>
    <link href="${staticPath}/static/windEnergy/css/style.css" rel='stylesheet' type='text/css'/>
    <link href="${staticPath }/static/style/css/fontStyle.css" rel='stylesheet' type='text/css'/>
    <link href="${staticPath}/static/style/css/animate.min.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="${staticPath }/static/customer/css/font-awesome.min.css">
    <%-- <script src="${staticPath }/static/js/jquery-3.3.1.js"></script>--%>
    <script type="text/javascript" src="${staticPath}/static/windEnergy/js/responsive-nav.js"></script>
    <script type="text/javascript" src="${staticPath}/static/js/jquery.waypoints.min.js"></script>
    <script src="${staticPath }/static/customer/js/layer.js"></script>

    <style>
        #main {
            color: #105b63;
        }
    </style>

</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div id="content">
    <div id="contentPage">

        <div class="banner">
            <div class="banner_container">
                <div class="wmuSlider example1">
                    <div class="wmuSliderWrapper">
                        <c:forEach items="${ADImages}" var="adImage" begin="0" end="2">
                            <article style="position: absolute; width: 100%; opacity: 0;">
                                <div class="" style="margin:auto;">
                                    <image src="${staticPath}/static${adImage.imagePath}${adImage.fileName}"
                                           style="height: 650px"></image>
                                </div>
                            </article>
                        </c:forEach>
                    </div>
                    <a class="wmuSliderPrev">Previous</a><a class="wmuSliderNext">Next</a>
                    <script src="${staticPath }/static/windEnergy/js/jquery.wmuSlider.js"></script>
                    <script>
                        $('.example1').wmuSlider();
                    </script>
                </div>
            </div>
        </div>

        <div class="features-grids text-center box_nav">
            <div class="container container_nav">
                <div class="wind_product">
                    <p class="first_p">产品中心</p>
                    <p class="second_p">Product Center</p>
                </div>
                <%--        <c:forEach items="${mainImages}"  var="hot" end="3">--%>
                <%--            <div class="col-md-3 features-grid img_nav1" style="width: 337.5px;padding: 0;margin:0 15px">--%>
                <%--                <a href="${path}/solarPanel/productCenter"><img class="img-responsive ShakeAndBorder" src="${staticPath}/static${hot.imagePath}${hot.fileName}" alt="" ></a>--%>
                <%--                <div ><h3 style="margin: 0;padding: 15px">${hot.imageTitle}</h3></div>--%>
                <%--            </div>--%>
                <%--        </c:forEach>--%>
                <div class="animated scroll_response fadeInLeft" data-animation="fadeInLeft">
                    <c:forEach items="${mainImages}" var="hot" end="3">
                        <div class="c-all">
                            <div class="t-all-img">
                                <a href="${path}/solarPanel/productCenter"><img
                                        src="${staticPath}/static${hot.imagePath}${hot.fileName}" alt=""></a>
                            </div>
                            <div class="t-all-p">
                                <p>${hot.imageTitle}</p>
                            </div>
                        </div>
                    </c:forEach>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
        <div class="box_1">
            <div class="container">
                <%--        <h3>关于 <span class="m_1">我们</span></h3>--%>
                <%--        <p>太阳能发电，与大自然分享的礼物，这是科技与自然能源激情碰撞的精华，--%>
                <%--                </br>这是绿色能源的希望，这是科技与技术的结晶！--%>
                <%--                  </br>我们不是生产者，我们只是大自然的搬运工。</p>--%>
                <%--        <a href="${path}/solarPanel/aboutUs" title="Read More" class="btn1" id="aboutUs" >了解 详情</a>--%>
                <div class="content-img-left">
                    <div class="img-text-left">
                        <div class="img-l1">
                            <img src="http://www.listenenergy.cn/img/z16.png" alt="关于我们背景">
                        </div>
                        <div class="text-l1">
                            <span>关于我们</span>
                        </div>
                        <div class="text-l2">
                            <span>太阳能发电，与大自然分享的礼物，这是科技与自然能源激情碰撞的精华，这是绿色能源的希望，这是科技与技术的结晶！我们不是生产者，我们只是大自然的搬运工。</span>
                        </div>
                        <div class="btn-l1">
                            <a href="${path}/solarController/aboutUs" title="Read More" class="btn1" id="aboutUs">了解
                                详情</a>
                        </div>
                    </div>
                    <div class="img-text-right">
                        <div class="img-r1">
                            <img src="http://www.listenenergy.cn/img/z17.png" alt="高楼背景">
                        </div>
                        <div class="text-r1">
                            <span>企业荣誉</span>
                        </div>
                        <div class="text-r2">
                            <span>我们的诚信、实力和产品质量获得业界的认可</span>
                        </div>
                        <div class="btn-r2">
                            <a href="${path}/solarController/aboutUs" title="Read More" class="right-btn">了解 详情</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="box_2 box_nav" style="background: rgb(255,255,255)">
        <div class="container">
            <div class="wind_product">
                <p class="first_p">工程案例</p>
                <p class="second_p">Project Case</p>
            </div>
            <div class="product j_imglist img_nav2">
                <%--<c:forEach var="demo" end="2" items="${caseImage}">
                    <div class="col-md-3 features-grid img_nav1" style="width: 33.33%;text-align: center">
                        <a href="${path}/solarPanel/case"><img class="img-responsive"
                                                               style="width: 365px;float: left;margin-right: 15px;"
                                                               src="${staticPath}/static${demo.imagePath}${demo.fileName}"
                                                               alt=""></a>
                            &lt;%&ndash;  <div>经典案例描述</div>&ndash;%&gt;
                        <div>${demo.imageDescription}</div>
                    </div>
                </c:forEach>--%>
                  <div class="container_wrapper">
                    <div class="case">
                      <c:forEach items="${caseImage}" var="caseImage" end="2">
                        <a href="${path}/solarPanel/case">
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
            <div class="clearfix"></div>
        </div>
    </div>
    <%--新闻中心--%>
    <div style="background: rgb(255,255,255)">
        <div class="container">
            <div class="t-all">
                <div class="t-left-l1">
                    <div class="t-son">
                        <div class="befor-t"></div>
                        <span>新闻中心</span>
                    </div>
                </div>
            </div>
            <div class="ul-all">
                <div class="ul-list">
                    <ul class="u1">
                        <c:forEach items="${newsList}" var="newV" end="5">
                            <li>
                                <div class="li-all">
                                    <div class="li-d1">
                                        <a href="${path }/solarPanel/newsDetail/${newV.newsId}">
                                            <span style="color: rgb(102,102,102);font-size: 27px"><fmt:formatDate
                                                    value="${newV.createTime}" pattern="dd"/></span><br>
                                            <span><fmt:formatDate value="${newV.createTime}" pattern="yyyy/MM"/></span>
                                        </a>
                                    </div>
                                    <div class="li-t1">
                                        <a href="${path }/solarPanel/newsDetail/${newV.newsId}">
                                            <p class="p1">${newV.newsName}</p>
                                        </a>
                                        <p class="p2">${newV.newsDescription}</p>
                                    </div>
                                </div>
                            </li>
                        </c:forEach>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
<script src="${staticPath}/static/js/common.js"></script>
<script>
    $(function(){
        var oM =$(".scroll_response").attr("data-animation");
        $(".scroll_response").removeClass(oM).css("visibility","hidden");
        window.onscroll= function(){
            //变量t是滚动条滚动时，距离顶部的距离
            var t = document.documentElement.scrollTop||document.body.scrollTop;
            if(t>=400){
                $(".scroll_response").addClass(oM).css("visibility","visible");
            }
        }
    })
</script>
<!--侧边悬浮聊天对话框-->
<jsp:include page="talk.jsp"></jsp:include>
<jsp:include page="footer.jsp"></jsp:include>


</body>

</html>
