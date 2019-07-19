<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/commons/global.jsp" %>
<html>
<head>
  <!-- Document Title -->
  <title>光合硅能蓄电池唯一【官网】|光合硅能电池公司官网|光合硅能蓄电池厂家</title>
  <meta name="keywords" content="光合硅能蓄电池,硅能蓄电池,硅能电池,光合硅能电池官网,光合硅能电池,光合硅能蓄电池官网,光合硅能,
,太阳能储能电池,光合硅能电池官网,蓄电池厂家,发电系统,湖南前沿,前沿科技"/>
  <meta name="description"
        content="光合硅能一直坚持以品质，足容量，不虚标，不作假，承诺的售后质保服务为坚持，目前在行业内具有一定的品牌价值，请一定认准可以提供商标品牌查询资质的正规购买渠道。买光合硅能蓄电池请认准天猫旗舰店和湖南前沿科技官网网址www.150ah.com，有蓝标和工商认证为正品。认准光合硅能，有工商执照认证，有百度信誉认证才是正品。联系电话：17773166613"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
  <meta name="author" content="M_Adnan"/>
  <meta name="baidu-site-verification" content="UC04SFA0NB" />
  <link rel="shortcut icon" href="${staticPath }/static/images/favicon.png" type="image/x-icon" />


  <!-- SLIDER REVOLUTION 4.x CSS SETTINGS -->
  <link rel="stylesheet" type="text/css" href="${staticPath }/static/customer/rs-plugin/css/settings.css"
        media="screen"/>

  <!-- StyleSheets -->
  <link rel="stylesheet" href="${staticPath }/static/customer/css/ionicons.min.css">
  <link rel="stylesheet" href="${staticPath }/static/customer/css/bootstrap.min.css">
  <link rel="stylesheet" href="${staticPath }/static/customer/css/font-awesome.min.css">
  <link rel="stylesheet" href="${staticPath }/static/customer/css/main.css">
  <link rel="stylesheet" href="${staticPath }/static/customer/css/style.css">
  <link rel="stylesheet" href="${staticPath }/static/customer/css/responsive.css">

  <!-- Fonts Online -->
  <link href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i"
        rel="stylesheet">
  <!-- <%@ include file="/commons/basejs.jsp" %>
    <link rel="stylesheet" type="text/css" href="${staticPath }/static/style/css/main.css">
    <script type="text/javascript" src="${staticPath }/static/js/main.js"></script>-->
  <!-- 前台登录css-->
  <link rel="stylesheet" href="${staticPath }/static/customer/css/loginIndex.css">
  <!-- Fonts Online -->
  <link href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i"
        rel="stylesheet">
  <script type="text/javascript" src="${staticPath }/static/js/jquery-easyui/jquery.min.js"></script>
  <!-- 前台登录js-->
  <script src="${staticPath }/static/js/index.js"></script>
  <script src="${staticPath }/static/customer/js/layer.js"></script>
  <style>
    #aboutUs{
      color: #105b63;
    }
  </style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div id="wrap" class="layout-1">
  <!-- Content -->
  <div id="content">
    <!-- Linking -->
    <div class="linking">
      <div class="container">
        <ol class="breadcrumb">
          <li><a target="myframe" href="http://www.150ah.com">首页</a></li>
          <li class="active">企业文化</li>
        </ol>
      </div>
    </div>
    <div class="container">

      <!-- heading -->
      <div class="heading">
        <h2>关于我们</h2>
        <hr>
      </div>
      <div class="tab-content">
        <p role="tabpanel" class="tab-pane fade in active" id="pro-detil">


          湖南前沿科技有限公司是一家专业生产风光电池组件以及风光高科技产品的企业，拥有一流的专业技术队伍及先进的生产检测设备。
          公司引进了最先进的专业生产设备，通过完美的生产工艺和严格的质量控制体系，使产品具有效能高、寿命长等特点。</p>

        <p>
          公司拥有全套风光电池组件先进制作设备和技术工艺，秉着“诚信经营”的服务宗旨，我们根据客户需求规划设计，为客户量身打造安全、成熟、
          性价比优越的完美产品产品远销于非美、亚洲、欧洲等地区，同时为国内众多太阳能产品开发企业提供各种型号太阳能电池组件以其工艺精湛、性能优越而享誉太阳能行业，
          深受广大客户以及同行的认可与信赖。</p>
        <p>
          湖南前沿科技有限公司将继续以诚信服务、优良品质、服务周全的经营理念，携全体员工，与广大客户共同努力，为创造绿色新能源，
          推动绿色新能源利用，勇于创新，不断进取，客户至上为宗旨，紧随世界新潮流，促进人与自然社会的和谐发展而不懈努力！
        </p>


        <div>
          <c:forEach items="${aboutImage}" end="0" var="about">
            <img src="${staticPath}/static${about.imagePath}${about.fileName}" alt="">
          </c:forEach>

        </div>


      </div>
      <!-- heading -->
      <div class="heading">
        <h2>企业荣誉</h2>
        <hr>
      </div>
      <div>
        <c:forEach items="${aboutImage}" begin="1" var="about">
          <img src="${staticPath}/static${about.imagePath}${about.fileName}" alt="">
        </c:forEach>

      </div>
    </div>
  </div>
  <!-- End Content -->

  <!-- End Footer -->
  <!-- End Page Wrapper -->
  <link rel="stylesheet" type="text/css" href="${staticPath }/static/customer/css/main.css">
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

<!-- End Footer -->

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
