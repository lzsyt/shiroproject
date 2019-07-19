<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/3/11
  Time: 14:21
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/commons/global.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>风力发电机_永动新能源有限公司</title>
  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0,user-scalable=no">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="风力发电机" />
    <meta name="description" content="永动新能源有限公司主要产品有100W-100kW水平轴风力发电机、垂直轴风力发电机等中小型风力发电机、风光互补路灯、风光互补分布式发电系统、太阳能灯路灯等，可为客户提供风力发电、风光互补发电、风光互补路灯，太阳能路灯系统、 太阳能光伏提水系统及光伏并网发电等一站式解决方案，电话:17773166613" />
    <meta http-equiv="Cache-Control" content="max-age=7200"/>
    <meta name="viewport" content="width=device-width,shrink-to-fit=no"/>
    <meta name="baidu-site-verification" content="QRt235kYS8" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <link href="${staticPath }/static/windEnergy/css/bootstrap.css" rel='stylesheet' type='text/css' />
    <script src="${staticPath }/static/windEnergy/js/jquery.min.js"></script>
    <link rel="shortcut icon" href="${staticPath }/static/images/yongdong.png" type="image/x-icon" />
    <link rel="stylesheet" href="${staticPath }/static/customer/css/font-awesome.min.css">
    <link rel="stylesheet" href="${staticPath}/static/style/css/animate.min.css"/>
    <link href="${staticPath }/static/windEnergy/css/style.css" rel='stylesheet' type='text/css' />
    <link rel="shortcut icon" href="${staticPath }/static/images/yongdong.png" type="image/x-icon"/>
    <script type="text/javascript" src="${staticPath }/static/windEnergy/js/jquery.easing.min.js"></script>
    <script type="text/javascript" src="${staticPath }/static/windEnergy/js/jquery.mixitup.min.js"></script>
    <link href="${staticPath }/static/style/css/fontStyle.css" rel='stylesheet' type='text/css' />
    <script type="text/javascript" src="${staticPath}/static/windEnergy/js/responsive-nav.js"></script>
    <script src="${staticPath}/static/js/jquery.waypoints.min.js"></script>
    <script src="${staticPath }/static/customer/js/layer.js"></script>

    <style>
        #main{
          color: #105b63;
        }
    </style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="banner">
    <div class="banner_container">
        <div class="wmuSlider example1">
            <div class="wmuSliderWrapper">
                <c:forEach items="${ADImages}" var="adImage" begin="0" end="2">
                    <article style="position: absolute; width: 100%; opacity: 0;">
                        <div class=""  style="margin:auto;">
                            <image src="${staticPath}/static${adImage.imagePath}${adImage.fileName}" ></image>
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
            <div class="animated scroll_response fadeInLeft" data-animation="fadeInLeft">
            <c:forEach items="${mainImages}"  var="hot" end="3">
                <div class="c-all">
                    <div class="t-all-img">
                        <a href="${path}/windEnergy/productCenter"><img  src="${staticPath}/static${hot.imagePath}${hot.fileName}" alt="" ></a>
                    </div>
                    <div class="t-all-p">
                        <p>${hot.imageTitle}</p>
                    </div>
                </div>
            </c:forEach>
            </div>

            <div class="clearfix"> </div>
    </div>
</div>

<div class="box_1">
    <div class="container">
<%--        <h3>关于<span class="m_1">我们</span></h3>--%>
<%--        <P>永动新能源长期重视研究和开发工作，使我们在风电行业相关领域中处于领先地位，并持续地提供符合客户要求的--%>
<%--          创新产品。我们拥有一支年轻化、高素质、 具有不断开拓精神的科研队伍， 结合现代信息技术，研究开发--%>
<%--             优质的产品。本公司将以诚信服务、优良品质、服务周全的经营理念，携全体员工，与广大客户共同--%>
<%--                努力，为创造绿色新能源，推动绿色新能源利用，勇于创新，不断进取， 客户至上为宗旨，--%>
<%--                      紧随世界新潮流，促进人与自然社会的和谐发展而不懈努力！</p>--%>
<%--        <a href="${path}/windEnergy/aboutUs" title="Read More" class="btn1" id ="aboutUs">了解 详情</a>--%>
    <div class="content-img-left">
        <div class="img-text-left">
            <div class="img-l1">
                <img src="http://www.listenenergy.cn/img/z16.png" alt="关于我们背景">
            </div>
            <div class="text-l1">
                <span>关于我们</span>
            </div>
            <div class="text-l2">
                <span> 永动新能源长期重视研究和开发工作，使我们在风电行业相关领域中处于领先地位，并持续地提供符合客户要求的
          创新产品。我们拥有一支年轻化、高素质、 具有不断开拓精神的科研队伍， 结合现代信息技术，研究开发
             优质的产品。本公司将以诚信服务、优良品质、服务周全的经营理念，携全体员工，与广大客户共同
                努力，为创造绿色新能源，推动绿色新能源利用，勇于创新，不断进取， 客户至上为宗旨，
                      紧随世界新潮流，促进人与自然社会的和谐发展而不懈努力！</span>
            </div>
            <div class="btn-l1">
                <a href="${path}/windEnergy/aboutUs"  title="Read More" class="btn1" id="aboutUs">了解 详情</a>
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
                <a href="${path}/windEnergy/aboutUs"  title="Read More" class="right-btn" >了解 详情</a>
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
                        <a href="${path}/windEnergy/case" >
                            <img class="img-responsive" style="width: 365px;float: left;margin-right: 15px;" src="${staticPath}/static${demo.imagePath}${demo.fileName}" alt="" >
                        </a>
                        <div>${demo.imageDescription}</div>
                    </div>
                </c:forEach>--%>
                  <div class="container_wrapper">
                    <div class="case">
                      <c:forEach items="${caseImage}" var="caseImage" end="2">
                        <a href="${path}/windEnergy/case">
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
</div>
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
                                    <a href="${path }/windEnergy/newsDetail/${newV.newsId}">
                                        <span style="color: rgb(102,102,102);font-size: 27px"><fmt:formatDate value="${newV.createTime}" pattern="dd"/></span><br>
                                        <span><fmt:formatDate value="${newV.createTime}" pattern="yyyy/MM"/></span>
                                    </a>
                                </div>
                                <div class="li-t1">
                                    <a href="${path }/windEnergy/newsDetail/${newV.newsId}">
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

</div>
</body>

</html>
