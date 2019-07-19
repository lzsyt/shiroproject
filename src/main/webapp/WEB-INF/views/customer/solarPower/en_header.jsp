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
  <script type="text/javascript">

    function login() {
      var name=$("#userphone").val();
      var pwd=$("#pwd").val();
      var userPwd = /^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,16}$/;

      if (name=="" || name==null){
        $("#MyForm")[0].reset();
        $("#sp").html("<div style='color:red;font-size:10px;text-align: left;margin-left:90px;'>Please input a user name</div>");
        return false;
      }
      if (pwd=="" || pwd==null){
        $("#sp").html("<div style='color:red;font-size:10px;text-align: left;margin-left:90px;'>Please input a password</div>");
        return false;
      }else if(!userPwd.test(pwd)){
        $("#sp").html("<div style='color:red;font-size:10px;text-align: left;margin-left:90px;'>Password format is alphanumeric combination</div>");
        return false;
      }

      $.ajax({
        type: "post",
        dataType: "json",
        data: $("#MyForm").serialize(),
        url: "${path}/customer/loginIndex" ,
        success: function (result) {
          if(result!=null && result.length>0){
            document.getElementById('light').style.display='none';
            document.getElementById('hidDIV').style.display='block';
            document.getElementById('lookDiv').style.display='none';
            for (var i=0;i<result.length;i++){
              var option= result[i].name
              document.getElementById("loginId").innerHTML = option;
            }
          }else if(result!=null && result.length==0){
            $("#sp").html("<div  style='color:red;font-size:10px;text-align: left;margin-left:90px;'>User name password capitalization</div>");
            $("#MyForm")[0].reset();
          } else {
            $("#sp").html("<div  style='color:red;font-size:10px;text-align: left;margin-left:90px;'>Error in username or password</div>");
            $("#MyForm")[0].reset();
          }
        },
        error : function() {
          alert('error');
        }
      });
      return false;

    }
    //退出
    function exit(){
      $.ajax({
        type: "post",
        dataType: "text",
        data: $("#registForm").serialize(),
        url: "${path}/customer/loginOutIndex" ,
        success: function (result) {
          if(result=="success"){
            window.location.href="${path}/customer/index";
          }
        },
        error : function() {
          alert('error');
        }
      });
    }
    <!--注册 -->
    function registAll(){

      var mobile =$("#mobile").val();
      var username = $("#username").val();
      var realName = $("#realName").val();
      var userpwd = $("#userpwd").val();
      var userepwd = $("#userepwd").val();
      var message =$("#message").val();
      var sex=$("#selectSex").val();
      console.log(sex);
      //只能输入1-30个以字母开头的字串
      var  uPhone   = /^[1][3,4,5,7,8,9][0-9]{9}$/;
      var  uPwd     = /^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,16}$/;
      var  patrn    = /^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{1,30}$/;
      var  email    =/^(\w-*\.*)+@(\w-?)+(\.\w{2,})+$/;
      var re = /^[\u4E00-\u9FA5]{2,8}$/;

      //手机号验证
      if(mobile=="" || mobile==null){
        $("#spTitle").html("<div style='color:red;font-size:10px;text-align: left;margin-left:90px;'>Please enter your cell phone number</div>");
        return false;
      }else if(!uPhone.test(mobile)){
        $("#spTitle").html("<div style='color:red;font-size:10px;text-align: left;margin-left:90px;'>Incorrect mobile phone number</div>");
        return false;
      }

      if(realName.match(re) == null && realName!=""){
        $("#spTitle").html("<div style='color:red;font-size:10px;text-align: left;margin-left:90px;'>Please enter your real name</div>");
        return false;
      }
      //用户名验证
      if(!patrn.test(username) && username!=""){
        $("#spTitle").html("<div style='color:red;font-size:10px;text-align: left;margin-left:90px;'>User names require combination of letters and numbers,Illegal characters are not allowed</div>");
        return false;
      }else if(username.length>29 && username!=""){
        $("#spTitle").html("<div style='color:red;font-size:10px;text-align: left;margin-left:90px;'>User name length is 2-30 bits</div>");
        return false;
      }
      //密码验证
      if(userpwd=="" || userpwd==null){
        $("#spTitle").html("<div style='color:red;font-size:10px;text-align: left;margin-left:90px;'>Please input a password</div>");
        return false;
      }else if(userpwd.length<6 ){
        $("#spTitle").html("<div style='color:red;font-size:10px;text-align: left;margin-left:90px;'>Password length 6-16 bits</div>");
        return false;
      }else if(!uPwd.test(userpwd)){
        $("#spTitle").html("<div style='color:red;font-size:10px;text-align: left;margin-left:90px;'>Password format is alphanumeric combination</div>");
        return false;
      }
      //确认密码验证
      if(userepwd=="" || userepwd==null){
        $("#spTitle").html("<div style='color:red;font-size:10px;text-align: left;margin-left:90px;'>Please confirm your password</div>");
        return false;
      }else if(userpwd!=userepwd){
        $("#spTitle").html("<div style='color:red;font-size:10px;text-align: left;margin-left:90px;'>Two password inconsistencies</div>");
        return false;
      }
      //邮箱验证
      if(message!="" && !email.test(message)){
        $("#spTitle").html("<div style='color:red;font-size:10px;text-align: left;margin-left:90px;'>Mailbox does not conform to the rules</div>");
        return false;
      }
      $.ajax({
        type: "post",
        dataType: "text",
        data: $("#registForm").serialize(),
        url: "${path}/customer/selectRegistName" ,
        success:function (result) {
          if(result=="success"){
            $("#registForm")[0].reset();
            document.getElementById('registDiv').style.display='none';
          }else if(result=="fail"){
            $("#spTitle").html("<div  style='color:red;font-size:10px;text-align: left;margin-left:90px;'>User name has been used</div>");
            $("#username").val("");
          }else if(result=="phone"){
            $("#spTitle").html("<div  style='color:red;font-size:10px;text-align: left;margin-left:90px;'>Mobile phone number has been registered</div>");
            $("#mobile").val("");
          }
        },
        error : function() {
          alert('error');
        }
      });
      return false;
    }
    <!-- 忘记密码-->
    function forgetLogin(){
      var names = $("#name").val();
      var newpwd = $("#newpwd").val();
      var newspwd = $("#newspwd").val();
      var  uPhone   = /^[1][3,4,5,7,8,9][0-9]{9}$/;
      var  uPwd     = /^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,16}$/;
      var  patrn     = /^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{1,30}$/;
      if(names=="" || names==null){
        $("#forget-sp").html("<div style='color:red;font-size:10px;text-align: left;margin-left:90px;'>enter one user name</div>");
        return false;
      }
      if(newpwd=="" || newpwd==null){
        $("#forget-sp").html("<div style='color:red;font-size:10px;text-align: left;margin-left:90px;'>Please input a password</div>");
        return false;
      }else if(newpwd.length<6 ){
        $("#forget-sp").html("<div style='color:red;font-size:10px;text-align: left;margin-left:90px;'>Password Length 7-16 Bits</div>");
        return false;
      }else if(!uPwd.test(newpwd)){
        $("#forget-sp").html("<div style='color:red;font-size:10px;text-align: left;margin-left:90px;'>Password format is alphanumeric combination</div>");
        return false;
      }

      if(newspwd=="" || newspwd==null){
        $("#forget-sp").html("<div style='color:red;font-size:10px;text-align: left;margin-left:90px;'>Please confirm your password</div>");
        return false;
      }else if(newpwd!=newspwd){
        $("#forget-sp").html("<div style='color:red;font-size:10px;text-align: left;margin-left:90px;'>Two password inconsistencies</div>");
        return false;
      }
    }
    <!-- -检测用户名是否存在 -->
    function CheckUserName(){
      var names = $("#name").val();
      $.ajax({
        type:"post",
        dataType:"text",
        data:"name="+names,
        url: "${path}/customer/selectCheckName" ,
        success:function (result) {
          if(result=="use"){
            $("#forget-sp").html("<div style='color:red;font-size:10px;text-align: left;margin-left:90px;'>User name already exists</div>");
            $("#forgetForm input:text").css("border-color","deepskyblue");
          }else{
            $("#forget-sp").html("<div style='color:red;font-size:10px;text-align: left;margin-left:90px;'>User name does not exist</div>");
            $("#forgetForm input:text").css("border-color","red");
          }
        },
        error : function() {
          alert('error');
        }
      });
    }
  </script>
  <%--中英文切换按钮--%>
  <style>
    /*中英文切换按钮样式*/
    #btn1{
      display: inline-block;
      width: 90px;
      height: 20px;
      border-radius: 10px;
      line-height: 20px;
      background: url(/static/windEnergy/images/language.png) no-repeat 15px 0px;
    }
    #btn2{
      display: inline-block;
      width: 110px;
      height: 20px;
      border-radius: 50px;
      line-height: 20px;
      background: url(/static/windEnergy/images/language.png) no-repeat -75px 0px;
    }
    #description_wrap{
      color: #fff;
    }
  </style>
</head>
<body>
<script>
  //中英文切换
  $(function() {
    //获取参数
    var pageId=$("#pageId").val();

    $("#btn1").click(function () {//中文
      window.location.href="${path }/customer/"+pageId;//动态
    });
    $("#btn2").click(function () {//英文
      window.location.href="${path }/en_customer/en_"+pageId;//动态
    });
  });
</script>
<%--商桥代码--%>
<script>
  var _hmt = _hmt || [];
  (function() {
    var hm = document.createElement("script");
    hm.src = "https://hm.baidu.com/hm.js?7c1a5dd1374927e84e62a256f1e2dfa7";
    var s = document.getElementsByTagName("script")[0];
    s.parentNode.insertBefore(hm, s);
  })();
</script>
<!-- Page Wrapper -->
<div id="wrap" class="layout-1">
  <input type="hidden" id="pageId" name="pageId" value="${pageId}">
  <div id="btns" style="float: left;position: absolute;right: 30px;top:4px">
    <a id="btn1" href="javascript:void(0);" ></a>
    <a id="btn2" href="javascript:void(0);" ></a>
  </div>
  <!-- Top bar -->
  <div class="top-bar" style="height: 30px">
    <div class="container">
      <div class="right-sec">
        <ul>
          <li style="border-right: none">
            <div id="lookDiv">
              <a onclick="openDivlog()" >Login</a>&nbsp;|
              <a onclick="openDivreg()">Register</a>
            </div>
            <div id="hidDIV" style="display: none;">
              <a onclick="openDialogs()" id="loginId"></a>&nbsp;|
              <a onclick="openDivreg()">Register</a>
            </div>

        </ul>

      </div>
    </div>
  </div>
  <!-- 登录-->
  <div id="light" class="content">
    <form class="form-signin"  id="MyForm" onsubmit="return false;">
      <table id="mytable">
        <tr>
          <td>
            <a id="aTitle" href = "javascript:void(0)" onclick = "closeDialog()"><dic id="xTitle">x</dic></a>
            <h3 id="h">User login</h3>
          </td>
        </tr>
        <tr>
          <td class="mtd" colspan="2">
            <input name="loginName" type="text" id="userphone"  class="form-control" placeholder="Please enter your username or mobile phone number" />
          </td>
        </tr>
        <tr>
          <td class="mtd" colspan="2">
            <input name="password" type="password" id="pwd" class="form-control" placeholder="Please input a password" />
            <span id="sp"></span>
          </td>
        </tr>
        <tr >
          <td class="mtd" colspan="2">
            <button  id="sub" type="button" onclick="login()">Login</button>
          </td>
        </tr>
        <tr >
          <td >
            <a onclick="openForget()" id="forget-pwd">Forget password</a>
          </td>
        </tr>
      </table>
    </form>
    <!-- 修改-->
    <form class="form-signin"  id="forgetForm" onsubmit="return false;" style="display: none;">
      <table id="forget-table">
        <tr>
          <td>
            <a id="forget-aTitle" href = "javascript:void(0)" onclick = "closeDialog()"><dic id="xTitle">x</dic></a>
            <h3 id="forget-h">Retrieve password</h3>
          </td>
        </tr>
        <tr>
          <td class="forget-mtd" colspan="2">
            <input name="name" type="text" id="name" id="forgetName" class="form-control" onblur="CheckUserName()" placeholder="Please enter your username or mobile phone number" />
          </td>
        </tr>
        <tr>
          <td class="forget-mtd" colspan="2">
            <input name="password" type="password" id="newpwd" class="form-control" placeholder="Please enter a new password" />
          </td>
        </tr>
        <tr>
          <td class="forget-mtd" colspan="2">
            <input name="repassword" type="password" id="newspwd" class="form-control" placeholder="Please confirm your password" />
            <span id="forget-sp"></span>
          </td>
        </tr>
        <tr >
          <td class="forget-mtd" colspan="2">
            <button  id="forget-sub" type="button" onclick="forgetLogin()">Confirm</button>
          </td>
        </tr>
      </table>
    </form>
  </div>
  <!-- 退出-->
  <div id="useInfo">
    <form id="exitForm" method="post">
      <table id="loginOutTab">
        <tr>
          <td> <button type="button" id="subButton" onclick="exit()">Quit</button></td>
        </tr>
      </table>
    </form>
  </div>
  <!-- 注册-->
  <div id="registDiv" class="white_content">
    <form class="form-signin"  id="registForm" onsubmit="return false;">
      <table id="registTable">
        <tr>
          <td>
            <a id="aTitles" href = "javascript:void(0)" onclick = "closeDialog()"><dic id="xTitles">x</dic></a>
            <h3 id="hs">User registration</h3>
          </td>
        </tr>
        <tr>
          <td class="mtd" colspan="2">
            <input name="mobile" type="text" id="mobile"  class="form-control" placeholder="Please enter your cell phone number" />
            <span class="footTitle">*</span>
          </td>
        </tr>
        <tr>
          <td class="mtd" colspan="2">
            <input name="name" type="text" id="username"  class="form-control"  placeholder="Enter one user name" />
          </td>
        </tr>
        <tr>
          <td class="mtd" colspan="2">
            <input name="realName" type="text" id="realName"  class="form-control"  placeholder="Please enter your real name" />
          </td>
        </tr>
        <tr>
          <td class="mtd" colspan="2">
            <input name="password" type="password" id="userpwd" class="form-control"  placeholder="Please input a password" />
            <span class="footTitle">*</span>
          </td>
        </tr>
        <tr>
          <td class="mtd" colspan="2">
            <input name="repassword" type="password" id="userepwd" class="form-control"  placeholder="Please confirm your password" />
            <span class="footTitle">*</span>
          </td>
        </tr>
        <tr>
          <td class="mtd" colspan="2" >
            <input name="message" type="text"  id="message" class="form-control" placeholder="Please enter your mailbox" />
          </td>
        </tr>
        <tr>
          <td class="mtd" colspan="2">
            <select  class="form-control" id="sex" name="sex">
              <option value="0" selected>Please choose</option>
              <option value="1" >male</option>
              <option value="2">female</option>
            </select>
            <span id="spTitle"></span>
          </td>
        </tr>
        <tr >
          <td class="mtd" colspan="2">
            <button  id="regist" type="button" onclick="registAll()">Register</button>
          </td>
        </tr>

      </table>
    </form>
  </div>
  <!-- Header -->
  <header>
    <%-- <div class="container">
      <div class="logo"> <a  href="${path }/customer/main"><img src="${staticPath}/static/customer/images/ghlogo.png" alt="" ></a> </div>
      <div class="search-cate">
          <select class="selectpicker">
              <option> 电池</option>
          </select>
          <input type="search" id="search" placeholder="请输入您要搜索的商品">
          <button class="submit" id="findProduct" type="submit"><i class="icon-magnifier"></i></button>
      </div>

  </div>--%>
    <!-- Nav -->
    <nav class="navbar ownmenu" style="min-height: 20px">
      <div style="margin-left: 20px;float: left;">
        <img src="${staticPath}/static/customer/images/ghlogo.png" style="margin-top: 3px" alt=""/> <span style="font-size: 27px;line-height: 38px;font-weight:600">Photosynthetic Silicon Energy</span>
      </div>

      <div class="container" style="margin-left: 500px">




        <!-- Navbar Header -->
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#nav-open-btn" aria-expanded="false"> <span><i class="fa fa-navicon"></i></span> </button>
        </div>
        <!-- NAV -->
        <div class="collapse navbar-collapse" id="nav-open-btn">
          <ul class="nav" id="nav-box">
            <li class="dropdown" style="width: 200px;background:#ff8e09;text-align: left">
              <!--
                            <a  data-toggle="dropdown" href="#"><i class="fa fa-list-ul"></i> 类别 </a>

                            <ul  class="dropdown-menu" aria-labelledby="dLabel">
                                <li><a    href="${path }/customer/productsCenter">光合硅能</a></li>
                                <li><a    href="${path }/customer/productsCenter?productType=3">太阳能电池板</a></li>
                            </ul>
                            -->
            </li>
            <li><a href="${path }/en_customer/en_main" id="main" >Home Page </a></li>
            <li><a href="${path }/en_customer/en_productsCenter" id="productsCenter" > Product Center </a></li>
            <li><a href="${path }/en_customer/en_aboutUs" id="aboutUs" > Corporate Culture </a></li>
            <li><a href="${path }/en_customer/en_contact" id="contact" > Contact Us</a></li>
            <li><a href="${path }/en_customer/en_case" id="case" > Classic Case</a></li>
            <li class="dropdown" style="width: 180px;text-align: left">
              <a data-toggle="dropdown"  href="#" id="dropdown"> Technical Support </a>
              <ul class="dropdown-menu" aria-labelledby="dLabel">
                <li><a    id="question" href="${path}/en_customer/en_answer">Frequently asked questions</a></li>
                <li><a    id="download" href="${path}/en_customer/en_introduce">Data download</a></li>
                <%--
                                                <li><a    href="#"> 光合硅能正品打假</a></li>
                --%>
              </ul>
            </li>

          </ul>
        </div>

        <!-- NAV RIGHT -->
        <div class="nav-right" style="margin-top: 10px"> <span class="call-mun" style="font-size: 16px"><i class="fa fa-phone"></i> <strong>Telephone:</strong> 0731-86663578</span> </div>
      </div>
    </nav>
  </header>
</body>
<script>
  $("#nav-box li a").click(function (){
    //设定菜单栏的颜色
    $("#nav-box li a").css("color","#fff");
    $(this).css("color","#105b63");
  })
</script>
</html>
