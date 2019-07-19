<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/3/12
  Time: 9:35
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/commons/global.jsp" %>

<html>
<head>
  <title>关于我们_太阳能电池板_湖南前沿科技有限公司</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
  <meta name="keywords" content="关于我们"/>
  <meta name="description"
        content="湖南前沿科技有限公司是一家专业生产风光电池组件以及风光高科技产品的企业，拥有一流的专业技术队伍及先进的生产检测设备。公司引进了先进生产设备，通过严格的质量控制器体积，使得产品具有效能高，寿命长等特点。电话：17773166613"/>
  <meta http-equiv="Cache-Control" content="max-age=7200"/>
  <meta name="viewport" content="width=device-width,shrink-to-fit=no"/>
  <meta name="baidu-site-verification" content="QEMpUmzU1b"/>

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
  <script src="${staticPath }/static/windEnergy/js/jquery.min.js"></script>
  <!-- Custom Theme files -->
  <link href="${staticPath}/static/windEnergy/css/style.css" rel='stylesheet' type='text/css'/>
  <link href="${staticPath }/static/style/css/fontStyle.css" rel='stylesheet' type='text/css'/>
  <link rel="stylesheet" href="${staticPath }/static/customer/css/font-awesome.min.css">
  <%-- <script src="${staticPath }/static/js/jquery-3.3.1.js"></script>--%>
  <script type="text/javascript" src="${staticPath}/static/windEnergy/js/responsive-nav.js"></script>
  <script src="${staticPath }/static/customer/js/layer.js"></script>
  <style>
    #aboutUs {
      color: #105b63;
    }
  </style>
  <style>
    blockquote, body, button, dd, dl, dt, fieldset, form, h1, h2, h3, h4, h5, h6, hr, input, legend, li, ol, p, pre, td, textarea, th, ul {
      margin: 0;
      padding: 0
    }

    body, button, input, select, textarea {
      font: 12px/1.5 "Microsoft YaHei", "微软雅黑", SimSun, "宋体", sans-serif;
      color: #666;
    }

    ol, ul {
      list-style: none
    }

    a {
      text-decoration: none
    }

    fieldset, img {
      border: 0;
      vertical-align: top;
    }

    a, input, button, select, textarea {
      outline: none;
    }

    a, button {
      cursor: pointer;
    }

    .wrap {
      width: 100%;
      margin-left: auto;
      margin-right: auto;
      margin-bottom: 50px;
      background: #f4f5f9;
    }

    .slidepic {
      position: relative;
      width: 640px;
      height: 370px;
      margin: 0 auto;
    }

    .slidepic ul {
      position: absolute;
      left: 0;
      top: 0;
      z-index: 1;
    }

    .slidepic li {
      position: absolute;
      width: 214px;
      height: 268px;
      left: 213px;
      top: 0;
      transition: 1s;
      cursor: pointer;
    }

    .slidepic img {
      width: 100%;
      height: 100%;
    }

    /* .toggle{
        position: absolute;
        z-index:10;
        width: 100%;
        height: 100%;
    } */
    .slidepic a {
      position: absolute;
      width: 33px;
      height: 33px;
      border: 1px solid #c1c1c1;
      border-radius: 100%;
    }

    .slidepic .prev {
      left: -200px;
      top: 30%;
      background: url(/static/windEnergy/images/left.png) no-repeat 11px 8px;
    }

    .slidepic .next {
      right: -200px;
      top: 30%;
      background: url(/static/windEnergy/images/right.png) no-repeat 11px 8px;
    }

    .abo {
      width: 990px;
      height: 184px;
      background: url(/static/windEnergy/images/abo2.jpg);
      margin: 0 auto;
    }

    /*新增放大 css - 开始*/
    .big-box {
      width: 570px;
      height: 700px;
      position: fixed;
      display: none;
      border-radius: 2%;
      left: 50%;
      margin-left: -285px;
      top: 45%;
      margin-top: -350px;
      z-index: 30;
      background: white;
      -moz-box-shadow: 0 0 10px #888888; /* 老的 Firefox */
      box-shadow: 0 0 10px #888888;
    }

    .big-box .box-icon {
      width: 30px;
      height: 30px;
      border-radius: 100%;
      background: #888;
      position: absolute;
      line-height: 30px;
      text-align: center;
      top: 3px;
      right: 3px;
      color: white;
      font-size: 16px;
      cursor: pointer;
    }

    .big-box .big-img {
      width: 90%;
      height: 90%;
      display: block;
      margin: 35px auto;
    }

    .big-box .big-img img {
      width: 100%;
      height: 100%;
    }

    /*新增放大 - 结束*/
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
          <span><a href="http://www.guanghe.cn">首页</a></span><i></i>
          <a style="pointer-events:none;">企业文化</a>
        </div>
      </div>
    </div>
    <div class="container" style="overflow: hidden">
      <div class="about_top" style="margin: 0 auto;position: relative">
        <div class="col-md-12 about_top-right">
          <h2>经营理念</h2>
          <p>
            湖南前沿科技有限公司是一家专业生产风光电池组件以及风光高科技产品的企业，拥有一流的专业技术队伍及先进的生产检测设备。公司引进了先进生产设备，通过严格的质量控制体系，使得产品具有效能高，寿命长等特点。
          </p>
          <p>
            永动新能源长期重视研究和开发工作，使我们在风电行业相关领域中处于领先地位， 并持续地提供符合客户要求的创新产品。我们拥有一支年轻化、高素质、具有不断开拓精神的科研队伍， 结合现代信息技术，研究开发优质的产品。
          </p>
          <p>
            我们在提供国家产品的同时，也为客户提供优质的服务。我们可以根据客户的需要提供量身定做的产品， 每一个工作环节都必须精益求精是我们的工作作风，满足客户需求是我们的职责，超越客户的期待是我们的价值观。
            我们努力做到比客户期待的更好。
          </p>
        </div>
        <%--<div>
            <img class="img-responsive" src="${staticPath}/static${aboutImage[0].imagePath}${aboutImage[0].fileName}" alt="" style="width: 100%">
        </div>--%>

        <div class="clearfix"></div>
      </div>
      <div class="wrap">
        <div class="slidepic" id="slidepic">
          <ul>
            <li onclick="popImg('${staticPath}/static/images/about/1.png');"><img
              src="${staticPath}/static/images/about/1.png"></li>
            <li onclick="popImg('${staticPath}/static/images/about/2.png');"><img
              src="${staticPath}/static/images/about/2.png"></li>
            <li onclick="popImg('${staticPath}/static/images/about/3.png');"><img
              src="${staticPath}/static/images/about/3.png"></li>
            <li onclick="popImg('${staticPath}/static/images/about/4.png');"><img
              src="${staticPath}/static/images/about/4.png"></li>
            <li onclick="popImg('${staticPath}/static/images/about/5.png');"><img
              src="${staticPath}/static/images/about/5.png"></li>
            <li onclick="popImg('${staticPath}/static/images/about/6.png');"><img
              src="${staticPath}/static/images/about/6.png"></li>
          </ul>
          <a href="javascript:;" class="prev"></a>
          <a href="javascript:;" class="next"></a>
        </div>
        <div class="abo"></div>
      </div>
      <!--新增放大 html - 开始-->
      <div class="big-box">
        <span class="box-icon">Ｘ</span>
        <div class="big-img"></div>
      </div>
      <!--新增放大 html - 结束-->
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

          <div class="clearfix"></div>
        </div>
      </div>
    </div>
    <div class="team text-center">
      <div class="container">
        <h3>产品实例</h3>
        <p>
          公司拥有全套风光电池组件先进制作设备和技术工艺，秉着“诚信经营”的服务宗旨，我们根据客户需求规划设计，为客户量身打造安全、成熟、性价比优越的产品远销于非美、亚洲、欧洲等地区，同时为国内众多企业提供产品。湖南前沿科技有限公司是一家专业生产风光电池组件以及风光高科技产品的企业，拥有一流的专业技术队伍及先进的生产检测设备。公司引进了先进生产设备，通过严格的质量控制体系，使得产品具有效能高，寿命长等特点。</p>
        <c:forEach items="${aboutImage}" var="image" begin="1" end="3">
          <div class="col-md-3 grid_3" style="width: 33%;padding-left: 0px">
            <img class="img-responsive" src="${staticPath}/static${image.imagePath}${image.fileName}"
                 style="height: 300px;width: 350px">
          </div>
        </c:forEach>
      </div>
    </div>
  </div>
</div>
<!--侧边悬浮聊天对话框-->
<jsp:include page="talk.jsp"></jsp:include>
<jsp:include page="footer.jsp"></jsp:include>
</body>
<%--荣誉证书图片切换--%>
<script type="text/javascript">
  $(function () {
    var $slidepic = $('#slidepic');
    var aLi = $slidepic.find('li');
    var timer = null;
    var off = true;
    //定义li定位数据
    var pos = [
      {
        width: 214,
        height: 268,
        left: 0,
        top: 83,
        opacity: 0,
        z: 2,
      },
      {
        width: 214,
        height: 268,
        left: 0,
        top: 83,
        opacity: 0.8,
        z: 3
      },
      {
        width: 253,
        height: 310,
        left: 193,
        top: 55,
        opacity: 1,
        z: 4
      },
      {
        width: 214,
        height: 268,
        left: 426,
        top: 83,
        opacity: 0.8,
        z: 3
      },
      {
        width: 214,
        height: 268,
        left: 426,
        top: 83,
        opacity: 0,
        z: 2
      }, {
        width: 214,
        height: 268,
        left: 0,
        top: 83,
        opacity: 0,
        z: 2
      },
    ]
    //设置li定位
    fnMove()
    //上一个按钮
    $('.prev').on('click', function () {
      if (off) {
        clearInterval(timer);
        off = false;
        fnMove(true)
      }
    })
    //下一个按钮
    $('.next').on('click', function () {
      if (off) {
        clearInterval(timer);
        off = false;
        fnMove(false)
      }
    })

    //li运动函数
    function fnMove(b) {
      if (typeof(b) != 'undefined') {//判断参数有没有传，没有就设置li位置，传了就是按钮点击
        if (b) {
          pos.unshift(pos.pop())
        } else {
          pos.push(pos.shift())
        }
      }
      $.each(pos, function (i, val) {
        aLi.eq(i).css('z-index', pos[i].z).stop().animate(pos[i], 300, function () {
          off = true;
        });
      });
    }

    //开启定时器自动播放
    timer = setInterval(function () {
      fnMove(true)
    }, 3000);

    $slidepic.hover(function () {
      clearInterval(timer)
    }, function () {
      clearInterval(timer)
      timer = setInterval(function () {
        fnMove(true)
      }, 3000)
    });

  })
  /*新增放大 js - 开始*/
  //图片关闭按钮点击事件
  $(".box-icon").click(function () {
    $(document).trigger("click");
  });

  //阻止大图冒泡事件
  $(".big-box").click(function (event) {
    event.stopPropagation(); //阻止事件向上冒泡
  });

  /*新增放大 js - 开始*/
  //大图展开事件
  function popImg(img_url) {
    $(".big-box").slideDown(500, function () {
      $(".big-box").children(".big-img").html("<img src='" + img_url + "'/>");
      $(".big-box").children(".box-icon").css("display", "block");
      $(document).one("click", function () { //对document绑定一个影藏Div方法
        $(".box-icon").css("display", "none");
        $(".big-box").hide(1500, function () {
          $(".big-box").children(".big-img").empty();
        });
      });
    });
  }

  /*新增放大 js - 结束*/
</script>
</html>
