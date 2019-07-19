<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/commons/global.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
  <title>企业文化</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
  <meta name="keywords" content="Uibrush Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
    Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design"/>
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
    /*中英文切换按钮样式*/
    #btn1 {
      display: inline-block;
      width: 90px;
      height: 20px;
      border-radius: 10px;
      line-height: 20px;
      background: url(/static/windEnergy/images/language.png) no-repeat 15px 0px;
    }

    #btn2 {
      display: inline-block;
      width: 110px;
      height: 20px;
      border-radius: 50px;
      line-height: 20px;
      background: url(/static/windEnergy/images/language.png) no-repeat -75px 0px;

    }

    /*footer部分a标签样式*/
    .box_5 h3 a {
      color: #fff;
    }
  </style>
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
    /*中英文切换按钮样式*/
    #btn1 {
      display: inline-block;
      width: 90px;
      height: 20px;
      border-radius: 10px;
      line-height: 20px;
      background: url(/static/windEnergy/images/language.png) no-repeat 15px 0px;
    }

    #btn2 {
      display: inline-block;
      width: 110px;
      height: 20px;
      border-radius: 50px;
      line-height: 20px;
      background: url(/static/windEnergy/images/language.png) no-repeat -75px 0px;

    }

    /*footer部分a标签样式*/
    .box_5 h3 a {
      color: #fff;
    }

    #main {
      color: #105b63;
    }
  </style>
</head>
<%--<script>
    //中英文切换
    $(function () {
        var pageId = "";
        //获取地址中的参数
        pageId = $("#pageId").val();
        $("#nav-box li a").click(function () {
            $("#nav-box li a").css("color", "#e49002");
            pageId = $(this).attr("id");
            //重新定义地址栏url
            var newUrl = "${path}/solarPanel/index?pageId=" + pageId;
            history.pushState({}, "", newUrl);
            $(this).css("color", "#105b63");

        });
        $("#btn1").click(function () {//中文
            window.location.href = "${path}/solarPanel/index?pageId=" + pageId;//动态
        });
        $("#btn2").click(function () {//英文
            window.location.href = "${path}/en_solarPanel/en_index?pageId=" + pageId;//动态
        });

        if (pageId != null && pageId != undefined && pageId != '') {
            // $('#myFrame1').attr('src', "/test/data");
            // document.getElementById("myFrame1").contentWindow.location.reload(true);
            // document.getElementById("myFrame1").src=addr;//
            document.getElementById(pageId).click();
        }
    });
</script>--%>

<body>
<jsp:include page="header.jsp"></jsp:include>
<div id="content" style="background: #fff">
  <div id="contentPage">
    <div class="about">
      <div class="container">
        <ul class="about_head">
          <li class="about_head-left"><h1>新闻中心</h1></li>
          <li class="about_head-right"><p>News Details</p></li>
        </ul>
      </div>
    </div>
    <div class="container">
      <div class="new-t1">
        <div class="new-t2" style="margin-top: 30px ">
          <span>新闻详情</span>
        </div>
      </div>
      <div class="t-col-all">
        <div class="t-col-l1">
          <span class="t-col-t1">${news.newsName}</span>
          <p class="t-col-t2">发表时间：<fmt:formatDate value="${news.createTime}" pattern="yyyy-MM-dd HH:mm:ss"/></p>
        </div>
      </div>
    </div>

    <div class="container new-detail">
      <div class="c-col">
        <div class="c-col-l1">
          <p id="detailNew">${news.newsDescription}</p>

        </div>
      </div>
    </div>
    <!--侧边悬浮聊天对话框-->
    <jsp:include page="talk.jsp"></jsp:include>
    <jsp:include page="footer.jsp"></jsp:include>
</body>
<script>
  $("#nav-box li a").click(function () {
    //设定菜单栏的颜色
    $("#nav-box li a").css("color", "#e49002");
  })
</script>
<script>
  //解决新闻页面输出标签问题
  var text = '${news.newsContent}';

  function htmlDecode(text) {
    //1.首先动态创建一个容器标签元素，如DIV
    var temp = document.createElement("div");
    //2.然后将要转换的字符串设置为这个元素的innerHTML(ie，火狐，google都支持)
    temp.innerHTML = text;
    //3.最后返回这个元素的innerText(ie支持)或者textContent(火狐，google支持)，即得到经过HTML解码的字符串了。
    var output = temp.innerText || temp.textContent;
    temp = null;
    return output;
  }

  var textD = htmlDecode(text);
  $("#detailNew").html(textD);

</script>
</html>







