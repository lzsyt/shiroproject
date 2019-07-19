<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/3/13
  Time: 14:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/commons/global.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <link rel="stylesheet" href="${staticPath}/static/windEnergy/talk/css/style.css" type="text/css">
  <style type="text/css">
    /*更改英文页面talk小图标*/
    .suspension .d-service-item .i-qq{
      width:44px;
      height:44px;
      background:url(${staticPath}/static/windEnergy/talk/images/skype_talk1.png) no-repeat center 15px;
      display:block;
      transition:all .2s;
      background-color: #f1f1f3;
      border-radius:50%;
      overflow:hidden;}
  </style>
</head>
<body>



<div class="suspension">
    <div class="suspension-box">
      <a target="_blank" href="skype:windturbine.com?chat " class="a a-service "><img src="${staticPath}/static/windEnergy/talk/images/skype_talk2.png" style="width: 26px;margin:9px 9px " /></a>
        <a href="javascript:;" class="a a-service-phone "><i class="i"></i></a>
        <a href="javascript:;" class="a a-qrcode"><i class="i"></i></a>

        <a href="javascript:;" class="a a-top"><i class="i"></i></a>
        <div class="d d-service">
            <i class="arrow"></i>
            <div class="inner-box">
               <%-- <div class="d-service-item clearfix">
                    <a href="#" class="clearfix">
                        <span class="circle"><i class="i-qq"></i></span>
                        <a href="tencent://Message/?Uin=3334909494&websiteName=http://www.150ah.com/=&Menu=yes">Consulting online QQ customer service</a>

                    </a>
                </div>--%>
                   <div class="d-service-item clearfix">
                     <a target="_blank" href="skype:windturbine.com?chat" rel="nofollow" class="clearfix"><span class="circle"><i class="i-qq"></i></span><h3 style="line-height: 25px">Skype:<br><span>windturbine.com</span></h3></a>
                   </div>
                   <%--<div class="d-service-item clearfix">
                       <a target="_blank" href="tencent://Message/?Uin=2790181576&websiteName=http://www.150ah.com/=&Menu=yes" class="clearfix"><span class="circle"><i class="i-qq"></i></span><h3>qq customer service 2</h3></a>
                   </div>--%>
            </div>
        </div>
        <div class="d d-service-phone">
            <i class="arrow"></i>
            <div class="inner-box">
                <div class="d-service-item clearfix">
                    <span class="circle"><i class="i-tel"></i></span>
                    <div class="text">
                        <p style="font-size: small">Hotline</p>
                        <p class="red number">+86-731-86663578</p>
                    </div>
                </div>
                <div class="d-service-item clearfix">
                    <span class="circle"><i class="i-tel"></i></span>
                    <div class="text">
                        <p style="font-size: small">Exclusive customer service telephone</p>
                        <p class="red number">+86-17773166613</p>
                        <p class="red number">+86-13367319068</p>
                    </div>
                </div>

            </div>
        </div>
        <div class="d d-qrcode">
            <i class="arrow"></i>
            <div class="inner-box">
                <div class="qrcode-img"><img src="${staticPath}/static/windEnergy/talk/images/wx.jpg" style="width:100px;height:100px" alt=""></div>
                <div class="qrcode-img"><img src="${staticPath}/static/windEnergy/talk/images/wx2.jpg" style="width:100px;height:100px" alt=""></div>
                <p>Wechat Service Number</p>
            </div>
        </div>

    </div>
</div>

<script type="text/javascript" src="${staticPath}/static/windEnergy/talk/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript">
    $(document).ready(function(){

        /* ----- 侧边悬浮 ---- */
        $(document).on("mouseenter", ".suspension .a", function(){
            var _this = $(this);
            var s = $(".suspension");
            var isService = _this.hasClass("a-service");
            var isServicePhone = _this.hasClass("a-service-phone");
            var isQrcode = _this.hasClass("a-qrcode");
            if(isService){ s.find(".d-service").show().siblings(".d").hide();}
            if(isServicePhone){ s.find(".d-service-phone").show().siblings(".d").hide();}
            if(isQrcode){ s.find(".d-qrcode").show().siblings(".d").hide();}
        });
        $(document).on("mouseleave", ".suspension, .suspension .a-top", function(){
            $(".suspension").find(".d").hide();
        });
        $(document).on("mouseenter", ".suspension .a-top", function(){
            $(".suspension").find(".d").hide();
        });
        $(document).on("click", ".suspension .a-top", function(){
            $("html,body").animate({scrollTop: 0});
        });
        $(window).scroll(function(){
            var st = $(document).scrollTop();
            var $top = $(".suspension .a-top");
            if(st > 400){
                $top.css({display: 'block'});
            }else{
                if ($top.is(":visible")) {
                    $top.hide();
                }
            }
        });

    });
</script>


</body>
</html>
