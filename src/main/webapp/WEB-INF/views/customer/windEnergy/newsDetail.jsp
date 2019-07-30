<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/commons/global.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
  <title>${news.title}</title>
  <meta name="keywords"
        content="${news.keyword}"/>
  <meta name="description"
        content="${news.description}"/>
  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0,user-scalable=no">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <link rel="shortcut icon" href="${staticPath }/static/images/yongdong.png" type="image/x-icon"/>
  <script type="application/x-javascript"> addEventListener("load", function () {
    setTimeout(hideURLbar, 0);
  }, false);

  function hideURLbar() {
    window.scrollTo(0, 1);
  } </script>
  <link href="${staticPath }/static/windEnergy/css/bootstrap.css" rel='stylesheet' type='text/css'/>
  <link rel="stylesheet" href="${staticPath }/static/customer/css/font-awesome.min.css">

  <link href="${staticPath }/static/windEnergy/css/style.css" rel='stylesheet' type='text/css'/>

  <script src="${staticPath }/static/windEnergy/js/jquery.min.js"></script>

  <script type="text/javascript" src="${staticPath }/static/windEnergy/js/jquery.easing.min.js"></script>
  <script type="text/javascript" src="${staticPath }/static/windEnergy/js/jquery.mixitup.min.js"></script>
  <link href="${staticPath }/static/style/css/fontStyle.css" rel='stylesheet' type='text/css'/>
  <link rel="shortcut icon" href="${staticPath }/static/images/yongdong.png" type="image/x-icon"/>
  <script type="text/javascript" src="${staticPath}/static/windEnergy/js/responsive-nav.js"></script>
  <script src="${staticPath }/static/customer/js/layer.js"></script>
  <style>
    #main {
      color: #105b63;
    }
  </style>
</head>

<body>
<jsp:include page="header.jsp"></jsp:include>
<div id="content" style="background: #fff">
  <div id="contentPage">
    <%--<jsp:include page="header.jsp"></jsp:include>--%>
    <div class="about">
      <div class="container">
        <ul class="about_head">
          <li class="about_head-left"><h1>新闻中心</h1></li>
          <li class="about_head-right"><p>News Details</p></li>
        </ul>
      </div>
    </div>
    <div class="container" >
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







