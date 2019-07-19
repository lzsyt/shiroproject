<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/5/25
  Time: 11:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
</head>
<body><!-- 填写联系方式 -->
<section class="newslatter">
  <div class="container">
    <div class="row">
      <div class="col-md-6">
        <h3>留下联系电话 <span> 稍后我们将联系到您</span></h3>
      </div>
      <div class="col-md-6">
        <input type="test" name="phone" placeholder="请输入您的联系电话">
        <button type="submit" id="submitPhone"  >提交</button>
      </div>
    </div>
  </div>


</section>
<%--<section class="newslatter2">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <p id="description_wrap">光合硅能一直坚持以品质，足容量，不虚标，不作假，承诺的售后质保服务为坚持，目前在行业内具有一定的品牌价值，请一定认准可以提供商标品牌查询资质的正规购买渠道。
          买光合硅能蓄电池请认准天猫旗舰店和湖南前沿科技官网网址<a>www.150ah.com</a>，有蓝标和工商认证为正品。认准光合硅能，有工商执照认证，有百度信誉认证才是正品。</p>
      </div>
      <div class="col-md-6">

      </div>
    </div>
  </div>
</section>--%>
<!-- Footer -->
<footer>
  <div class="container">

    <!-- 友情链接 -->

    <div class="row">

      <!-- Contact -->
      <div class="col-md-4">
        <h4>联系我们</h4>
        <p>地 址：湖南长沙岳麓区</p>
        <p>电 话：0731-86663578</p>
        <p>手 机：17773166613 &nbsp;&nbsp;&nbsp; 13367319068 </p>
        <p>传 真：0731-85116708</p>
        <p>邮 箱：2735122330@qq.com</p>
        <div class="social-links"> <a href="#."><i class="fa fa-facebook"></i></a> <a href="#."><i class="fa fa-twitter"></i></a> <a href="#."><i class="fa fa-linkedin"></i></a> <a href="#."><i class="fa fa-pinterest"></i></a> <a href="#."><i class="fa fa-instagram"></i></a> <a href="#."><i class="fa fa-google"></i></a> </div>
      </div>

      <!-- Categories -->
      <div class="col-md-3">
        <h4>友情链接</h4>
        <ul class="links-footer">
          <li><a href="http://www.150ah.com" style="color: #bd4932">光合硅能</a></li>
          <li><a href="http://yongdong.com.cn">风力发电机</a></li>
          <li><a href="http://guanghe.cn/solarPanel/main">太阳能电池板</a></li>

          <!--   <li><a href="#.">地埋箱</a></li>
             <li><a href="#.">逆变器</a></li>  -->
          <li><a href="http://kongzhiqi.com/solarController/main">控制器</a></li>

        </ul>
      </div>
      <div class="col-md-4">
        <h4>关注我们</h4>
        <img id="btn_img1" src="${path }/static/customer/images/wx.jpg" style="width:135px" alt="光合硅能">
        <img id="btn_img2" src="${path }/static/customer/images/wx2.jpg" style="width:135px" alt="技术">
      </div>


    </div>
  </div>
</footer>

<!-- Rights -->
<div class="rights">
  <div class="container">
    <div class="row">
      <div class="col-sm-6">
        <p>Copyright ©湖南前沿科技有限公司 <a href="http://www.beian.miit.gov.cn" rel="nofollow" style="color: #bd4932" target="_blank" style="color: #bd4932">湘ICP备16021270号-1</a></p>
      </div>
    </div>
  </div>
</div>

<!-- End Footer -->

<!-- GO TO TOP  -->
<a href="#" class="cd-top"><i class="fa fa-angle-up"></i></a>
<!-- GO TO TOP End -->
<script type="text/javascript">

  $(function(){

    //初始化target
    if ("${target}"!=""&&"${target}"!="null"){
      console.log("target:${target}");
      $("#contentPage").attr(src,"${target}");

    }

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
  $("#findProduct").click(function () {
    var search=$("#search").val();
    console.log("search:"+search);
    if (search==null||search==''){

      return false;

    }else {
      $('#contentPage').attr('src', "${path}/customer/search/"+search);


    }
  });
  $("#submitPhone").click(function () {
    var phone=$("input[name='phone']").val();
    var website = "光合硅能";

    if (phone==null||phone==''){
      alert("请输入您的电话");
      return false;

    }
    if(!(/^1(3|4|5|6|7|8|9)\d{9}$/.test(phone))){
      alert("手机号码有误，请重填");
      return false;
    }
    var data={"phone":phone,"website":website};
    $.ajax({
      type: 'POST',
      url: "${path}/customer/customer",
      data: data,
      dataType: "text",
      success: function (result) {
        if (result=="success") {
          alert("提交成功");
        }
      }
    });
  });



</script>
<script>

  /*微信弹出层*/
  $(function(){
    $("#btn_img1").click(function(){
      var img = '<img src="${path }/static/customer/images/wx.jpg" alt="光合硅能"/>';
      layer.open({
        type: 1,
        title: false,
        closeBtn: 0,
        area: ['430px', '430px'],
        shadeClose: true,
        content:img
      });

    })
  });
  $(function(){
    $("#btn_img2").click(function(){
      var img = '<img  src="${path }/static/customer/images/wx2.jpg" alt="技术"/>';
      layer.open({
        type: 1,
        title: false,
        closeBtn: 0,
        area: ['430px', '430px'],
        shadeClose: true,
        content:img
      });

    })
  });

</script>
</body>
</html>
