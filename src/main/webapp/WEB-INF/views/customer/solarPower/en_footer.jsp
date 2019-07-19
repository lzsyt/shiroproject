<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/5/25
  Time: 16:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
</head>
<body>

<!-- 填写联系方式 -->
<section class="newslatter">
  <div class="container">
    <div class="row">
      <div class="col-md-6">
        <h3>Leave a contact number <span> We will contact you later</span></h3>
      </div>
      <div class="col-md-6">
        <input type="test" name="phone" placeholder="Please enter your contact number">
        <button type="submit" id="submitPhone">Submit</button>
      </div>
    </div>
  </div>


</section>
<!-- Footer -->
<footer>
  <div class="container">

    <!-- 友情链接 -->

    <div class="row">

      <!-- Contact -->
      <div class="col-md-4">
        <h4>Contact Us</h4>
        <p>Address: Yuelu District, Changsha, Hunan</p>
        <p>Telephone：0731-86663578</p>
        <p>Mobile Phone：17773166613 &nbsp;&nbsp;&nbsp; 13367319068 </p>
        <p>Fax：0731-85116708</p>
        <p>Email：2735122330@qq.com</p>
        <div class="social-links"><a href="#."><i class="fa fa-facebook"></i></a> <a href="#."><i
          class="fa fa-twitter"></i></a> <a href="#."><i class="fa fa-linkedin"></i></a> <a href="#."><i
          class="fa fa-pinterest"></i></a> <a href="#."><i class="fa fa-instagram"></i></a> <a href="#."><i
          class="fa fa-google"></i></a></div>
      </div>

      <!-- Categories -->
      <div class="col-md-3">
        <h4>Friendship link</h4>
        <ul class="links-footer">
          <li><a href="ttp://www.150ah.com/en_customer/en_main" style="color: #bd4932">Photosynthetic silicon energy</a></li>
          <li><a href="http://www.windturbine.com">Wind Turbines</a></li>
          <li><a href="http://guanghe.cn/en_solarPanel/en_main">Solar Panel</a></li>
          <!--  <li><a href="#.">Buried box</a></li>
            <li><a href="#.">Inverter</a></li> -->
          <li><a href="http://kongzhiqi.com/en_solarController/en_main">Controller</a></li>
        </ul>
      </div>


    </div>
  </div>
</footer>

<!-- Rights -->
<div class="rights">
  <div class="container">
    <div class="row">
      <div class="col-sm-6">
        <p>Copyright ©Hunan Frontier Technology Co., Ltd. <a href="http://www.beian.miit.gov.cn" rel="nofollow" style="color: #bd4932"
                                                             target="_blank">Xiang ICP No. 16021270 No.-1</a></p>
      </div>
    </div>
  </div>
</div>

<!-- End Footer -->

<!-- GO TO TOP  -->
<a href="#" class="cd-top"><i class="fa fa-angle-up"></i></a>
<!-- GO TO TOP End -->
</div>
</body>

<script type="text/javascript">

  function calcPageHeight(doc) {
    var cHeight = Math.max(doc.body.clientHeight, doc.documentElement.clientHeight);
    var sHeight = Math.max(doc.body.scrollHeight, doc.documentElement.scrollHeight);
    var height = Math.max(cHeight, sHeight);
    return height;
  }

  $(function () {

    $(document).on("mouseleave", ".suspension, .suspension .a-top", function () {
      $(".suspension").find(".d").hide();
    });
    $(document).on("mouseenter", ".suspension .a-top", function () {
      $(".suspension").find(".d").hide();
    });
    $(document).on("click", ".suspension .a-top", function () {
      $("html,body").animate({scrollTop: 0});
    });
    $(window).scroll(function () {
      var st = $(document).scrollTop();
      var $top = $(".suspension .a-top");
      if (st > 400) {
        $top.css({display: 'block'});
      } else {
        if ($top.is(":visible")) {
          $top.hide();
        }
      }
    });

  });
  $("#findProduct").click(function () {
    var search = $("#search").val();
    console.log("search:" + search);
    if (search == null || search == '') {

      return false;

    } else {
      $('#contentPage').attr('src', "${path}/customer/search/" + search);


    }
  });
  $("#submitPhone").click(function () {
    var phone = $("input[name='phone']").val();
    var website = "光合硅能";
    if (phone == null || phone == '') {
      alert("Please enter your phone number");
      return false;

    }
    if(!(/^1(3|4|5|6|7|8|9)\d{9}$/.test(phone))){
      alert("Wrong number, please fill in again");
      return false;
    }
    var data = {"phone": phone, "website": website};
    $.ajax({
      type: 'POST',
      url: "${path}/customer/customer",
      data: data,
      dataType: "text",
      success: function (result) {
        if (result == "success") {
          alert("Submit successfully");
        }
      }
    });
  });
</script>
</html>
