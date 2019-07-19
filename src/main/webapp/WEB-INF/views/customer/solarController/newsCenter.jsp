<!DOCTYPE HTML>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/commons/global.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
  <title>新闻中心-太阳能控制器-湖南前沿科技有限公司</title>
  <meta name="keywords" content="新闻中心"/>
  <meta name="description" content="我们可以根据客户的需要提供量身定做的产品,努力做到比客户期待的更好."/>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
  <meta http-equiv="Cache-Control" content="max-age=7200"/>
  <meta name="viewport" content="width=device-width,shrink-to-fit=no"/>
  <%--增加地名，提高本地排名--%>
  <meta name="location" content="province=湖南;city长沙">
  <%--url 唯一化--%>
  <link rel="canonical" href="http://www.kongzhiqi.cn/"/>
  <link href="${staticPath }/static/windEnergy/css/bootstrap.css" rel='stylesheet' type='text/css'/>
  <link href="${staticPath }/static/windEnergy/css/style.css" rel='stylesheet' type='text/css'/>
  <script src="${staticPath }/static/windEnergy/js/jquery.min.js"></script>
  <link rel="stylesheet" href="${staticPath }/static/customer/css/font-awesome.min.css">
  <script type="text/javascript" src="${staticPath }/static/windEnergy/js/jquery.easing.min.js"></script>
  <script type="text/javascript" src="${staticPath }/static/windEnergy/js/jquery.mixitup.min.js"></script>
  <script type="text/javascript" src="${staticPath }/static/windEnergy/js/bootstrap-paginator.js"></script>
  <link href="${staticPath }/static/style/css/fontStyle.css" rel='stylesheet' type='text/css'/>
  <script src="${staticPath }/static/customer/js/layer.js"></script>
  <style>
    *{
      margin: 0;
      padding: 0;
    }
    ul,li{
      list-style:none;
    }

    #box1{
      margin-bottom: 50px;
    }

    #new li{
      width: 100%;
      height: 150px;
      border: 1px solid #cfcfcf;
      padding: 4px 20px;
      margin-bottom: -1px;
      cursor: pointer;
      transition:1s;
      -moz-transition: 1s; /* Firefox 4 */
      -webkit-transition: 1s; /* Safari and Chrome */
      -o-transition: 1s; /* Opera */
    }

    #new li .date{
      width: 160px;
      text-align: center;
      margin-top: 40px;
      float: left;
    }
    #new li .date b{
      font-size: 32px;
      display: block;
      line-height: 34px;
      font-weight: 800;
      color: #666666;
    }
    #new li .date i{
      font-size: 20px;
      display: block;
      font-style: normal;
      color: #888888;
    }

    #new li .hr{
      float:left;
      width: 1px;
      height: 50px;
      margin-top: 40px;
      background: #cfcfcf;
    }

    #new li .con{
      width: 620px;
      margin-top: 23px;
      margin-left: 30px;
      float: left;
    }
    #new li .con span{
      display: block;
      font-size: 18px;
      line-height: 36px;
      color: #333333;
    }
    #new li .con p{
      line-height: 24px;
      color: #888888;
      text-overflow: ellipsis;
      overflow: hidden;
      display: -webkit-box;
      -webkit-line-clamp: 2;
      -webkit-box-orient: vertical;
    }

    #new li .icon{
      display: block;
      float: right;
      width: 33px;
      height: 33px;
      background: url(/static/windEnergy/images/new_17.png) no-repeat 12px 8px;
      margin-right: 44px;
      border: 1px solid #c3c3c3;
      border-radius: 100%;
      margin-top: 45px;
      line-height: 30px;
      text-align: center;
      font-style: normal;
      font-size: 26px;
      color: #b3b3b3;

    }

    #new li:hover .con span{
      color: #fe6a12;

    }

    #new li:hover .icon{
      color: #fe6a12;
      border: 1px solid #fe6a12;
    }

    #new li:hover {
      padding: 10px 50px;
      width: 100%;
      height: 150px;
      transition:1s;
      -moz-transition: 1s; /* Firefox 4 */
      -webkit-transition: 1s; /* Safari and Chrome */
      -o-transition: 1s; /* Opera */
    }
    #newsCenter{
      color: #105b63;
    }

  </style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div id="content">
  <div id="contentPage">
    <div class="about">
      <div class="container">
        <ul class="about_head">
          <li class="about_head-left"><h1>新闻中心</h1></li>
          <li class="about_head-right"><p>News Center</p></li>
        </ul>
      </div>
    </div>
    <%--<div class="ejlnNav">
      <div class="ejlmNacIn">
        <div class="ejlmNR fontcolor1">
          <a href="http://kongzhiqi.com/solarController/main">首页</a>
          &nbsp;&nbsp;/&nbsp;&nbsp;
          <a>新闻列表</a>
        </div>
      </div>
    </div>--%>
    <div class="abo_menu_wrap">
      <div class="main clearfix">
        <div class="bread2">
          <span><a href="http://www.kongzhiqi.com">首页</a></span><i></i>
          <a style="pointer-events:none;">新闻中心</a>
        </div>
      </div>
    </div>
    <div class="container">
      <div class="row col-md-12" id="box1">
        <ul id="new">
            <c:forEach items="${page.getRecords() }" var="news">
              <li>
                <div class="date">
                  <b><fmt:formatDate value="${news.createTime}" pattern="MM-dd"/></b>
                  <i><fmt:formatDate value="${news.createTime}" pattern="yyyy"/></i>
                </div>
                <div class="hr"></div>
                <div class="con">
                  <a href="/solarController/newsDetail/${news.newsId}">
                  <span>${news.newsName}</span>
                  <p>${news.newsDescription}</p>
                  </a>
                </div>
                <a href="/solarController/newsDetail/${news.newsId}">
                <i class="icon"></i>
                </a>
              </li>
            </c:forEach>
        </ul>

      </div>
      <div class="row " style="text-align: center">
        <!-- 分页条信息 -->
        <div class="col-md-12">
          <nav aria-label="Page navigation">
            <ul class="pagination">
              <li><a href="${staticPath }/solarController/newsCenter?pg=1">首页</a></li>
              <c:if test="${page.hasPrevious() }">
                <li><a href="${staticPath }/solarController/newsCenter?pg=${page.getCurrent()-1}"
                       aria-label="Previous"> <span aria-hidden="true">上一页</span>
                </a></li>
              </c:if>
              <li class="active"><a href="#">${page.getCurrent() }</a></li>

              <c:if test="${page.hasNext() }">
                <li><a href="${staticPath }/solarController/newsCenter?pg=${page.getCurrent()+1 }"
                       aria-label="Next"> <span aria-hidden="true">下一页</span>
                </a></li>
              </c:if>
              <li><a href="${staticPath }/solarController/newsCenter?pg=${page.getPages()}">末页</a></li>
              <li><a style="margin-left: 10px;text-decoration:none;pointer-events:none">总共<b>${page.getTotal()}</b>条纪录，共<b>${page.getPages()}</b>页</a></li>
            </ul>
          </nav>
        </div>
      </div>
    </div>
  </div>
</div>
<!--侧边悬浮聊天对话框-->
<jsp:include page="talk.jsp"></jsp:include>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>

