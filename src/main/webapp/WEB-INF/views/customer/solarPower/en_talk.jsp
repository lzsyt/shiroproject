<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/3/13
  Time: 14:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
</head>
<body>
<!--在线聊天的悬浮框-->
<div class="suspension">
  <div class="suspension-box">
    <a href="#" class="a a-service "><i class="i"></i></a>

    <a href="javascript:;" class="a a-service-phone "><i class="i"></i></a>
    <a href="javascript:;" class="a a-qrcode"><i class="i"></i></a>
    <div class="d d-service">
      <i class="arrow"></i>
      <div class="inner-box">
        <div class="d-service-item clearfix">
          <a target="_blank" href="tencent://Message/?Uin=3334909494&websiteName=http://www.150ah.com/=&Menu=yes" rel="nofollow" class="clearfix"><span class="circle"><i class="i-qq"></i></span><h3>qq customer service 1</h3></a>
        </div>
        <div class="d-service-item clearfix">
          <a target="_blank" href="tencent://Message/?Uin=2790181576&websiteName=http://www.150ah.com/=&Menu=yes" rel="nofollow" class="clearfix"><span class="circle"><i class="i-qq"></i></span><h3>qq customer service 2</h3></a>
        </div>

      </div>
    </div>

    <div class="d d-service-phone">
      <i class="arrow"></i>
      <div class="inner-box">
        <div class="d-service-item clearfix">
          <span class="circle"><i class="i-tel"></i></span>
          <div class="text">
            <p>Hotline</p>
            <p class="red number">0731-86663578</p>
          </div>
        </div>
        <div class="d-service-item clearfix">
          <span class="circle"><i class="i-tel"></i></span>

          <div class="text">
            <p>Exclusive customer service telephone</p>
            <p class="red number">17773166613</p>
            <p class="red number">13367319068</p>
          </div>
        </div>
      </div>
    </div>
    <div class="d d-qrcode">
      <i class="arrow"></i>
      <div class="inner-box">
        <div class="qrcode-img"><img style="height: 100px;width: 100px" src="${path }/static/customer/images/wx.jpg" alt="光合硅能"></div>
        <div class="qrcode-img"><img style="height: 100px;width: 100px" src="${path }/static/customer/images/wx2.jpg" alt="技术"></div>
        <p>Wechat Service Number</p>
      </div>
    </div>

  </div>
</div>

</body>
<script>

  /* ----- 侧边悬浮 ---- */
  $(document).on("mouseenter", ".suspension .a", function(){
    var _this = $(this);
    var s = $(".suspension");
    var isService = _this.hasClass("a-service");
    var isServicePhone = _this.hasClass("a-service-phone");
    var isQrcode = _this.hasClass("a-qrcode");
    var isali = _this.hasClass("a-service-ali");



    if(isService){ s.find(".d-service").show().siblings(".d").hide();}
    if(isServicePhone){ s.find(".d-service-phone").show().siblings(".d").hide();}
    if(isQrcode){ s.find(".d-qrcode").show().siblings(".d").hide();}
    if(isali){ s.find(".d-service-ali").show().siblings(".d").hide();}

  });
</script>
</html>
