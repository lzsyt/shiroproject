<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/commons/global.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Photosynthetic silicon energy battery only [official website]|photosynthetic silicon energy battery company official website|photosynthetic silicon energy battery manufacturer</title>
    <meta name="keywords" content="Photosynthetic silicon energy storage battery, silicon energy storage battery, silicon energy battery, photosynthetic silicon energy battery official website, photosynthetic silicon energy battery, photosynthetic silicon energy battery official website, photosynthetic silicon energy,
    , solar energy storage battery, photosynthetic silicon energy battery official website, battery manufacturer, power generation system, Hunan frontier, cutting-edge technology" />
    <meta name="description" content="Photosynthetic silicon can always adhere to the quality, full capacity, non-virtual standard, not fake, the promised after-sales warranty service is adhered to, and currently has a certain brand value in the industry, please be sure to provide a formal purchase channel for trademark brand inquiry qualification. . Buy Photosynthetic Silicon Energy Battery Please look for the Tmall flagship store and Hunan Frontier Technology website www.150ah.com, with blue label and industrial and commercial certification as genuine. Look for photosynthetic silicon energy, have a business license certification, Baidu credit certification is genuine. Contact number: +86-731-86663578" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name="author" content="zmn" />
    <meta name="baidu-site-verification" content="UC04SFA0NB" />
    <link rel="shortcut icon" href="${staticPath }/static/images/favicon.png" type="image/x-icon" />
    <!-- SLIDER REVOLUTION 4.x CSS SETTINGS -->
    <link rel="stylesheet" type="text/css" href="${staticPath }/static/customer/rs-plugin/css/settings.css" media="screen" />
    <!-- StyleSheets -->
    <link rel="stylesheet" href="${staticPath }/static/customer/css/ionicons.min.css">
    <link rel="stylesheet" href="${staticPath }/static/customer/css/bootstrap.min.css">
    <link rel="stylesheet" href="${staticPath }/static/customer/css/font-awesome.min.css">
    <link rel="stylesheet" href="${staticPath }/static/customer/css/main.css">
    <link rel="stylesheet" href="${staticPath }/static/customer/css/style.css">
    <link rel="stylesheet" href="${staticPath }/static/customer/css/responsive.css">
    <!-- 前台登录css-->
    <link rel="stylesheet" href="${staticPath }/static/customer/css/loginIndex.css">
    <!-- Fonts Online -->
    <link href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i" rel="stylesheet">
    <script type="text/javascript" src="${staticPath }/static/js/jquery-easyui/jquery.min.js"></script>
    <!-- 前台登录js-->
    <script  src="${staticPath }/static/js/index.js"></script>

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
        .btn1{
            display: inline-block;
            width: 70px;
            height: 20px;
            border-radius:10px ;
            color: #2a2a2a;
            font-weight: 300;
            line-height: 20px;
            text-align:center;
            font-size: 14px;


        }
        .btn1:hover{
            text-decoration:none;
            background: #ffe16d;
        }

        .btn2:hover{
            text-decoration:none;
            background: #ffe16d;
        }

        .btn2{
            display: inline-block;
            width: 70px;
            height: 18px;
            border-radius:50px ;
            color: #2a2a2a;
            font-weight: 300;
            line-height: 18px;
            text-align:center;
            font-size: 14px;
            background: #ff7700;
        }
    </style>
</head>
<body>
<script>

   $(function() {
       var pageId="";
       //获取地址中的参数
       pageId=$("#pageId").val();
       $(".nav a").click(function () {
           $(".nav a").css("color","#fff");
           pageId = $(this).attr("id");
           //重新定义地址栏url
           var newUrl = "${path}/en_customer/en_index?pageId="+pageId;
           history.pushState({},"",newUrl);
           $(this).css("color","#105b63")
       });
       $(".btn1").click(function () {//中文
           window.location.href="${path }/customer/index?pageId=" + pageId;//动态
       });
       $(".btn2").click(function () {//英文
           window.location.href="${path }/en_customer/en_index?pageId=" + pageId;//动态
       });
       if(pageId != null && pageId != undefined && pageId != ''){
           // $('#myFrame1').attr('src', "/test/data");
           // document.getElementById("myFrame1").contentWindow.location.reload(true);
           // document.getElementById("myFrame1").src=addr;//动态

           document.getElementById(pageId).click();
       }
   });
</script>
<!-- Page Wrapper -->
<div id="wrap" class="layout-1">
    <input type="hidden" id="pageId" name="pageId" value="${pageId}">
    <div id="btns" style="float: left;position: absolute;right: 30px;top:4px">
        <a class="btn1" href="javascript:void(0);" >中文</a>
        <a class="btn2" href="javascript:void(0);" >English</a>
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
                    <ul class="nav">
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
                            <a data-toggle="dropdown"  href="#" > Technical Support </a>
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

    <!-- Content -->
    <div id="content">
        <dov  id="contentPage">

        </dov>
    </div>
    <!-- 填写联系方式 -->
    <section class="newslatter">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <h3>Leave a contact number <span> We will contact you later</span></h3>
                </div>
                <div class="col-md-6">
                    <input type="test" name="phone" placeholder="Please enter your contact number">
                    <button type="submit" id="submitPhone"  >Submit</button>
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
                    <div class="social-links"> <a href="#."><i class="fa fa-facebook"></i></a> <a href="#."><i class="fa fa-twitter"></i></a> <a href="#."><i class="fa fa-linkedin"></i></a> <a href="#."><i class="fa fa-pinterest"></i></a> <a href="#."><i class="fa fa-instagram"></i></a> <a href="#."><i class="fa fa-google"></i></a> </div>
                </div>

                <!-- Categories -->
                <div class="col-md-3">
                    <h4>Friendship link</h4>
                    <ul class="links-footer">
                        <li><a href="http://www.150ah.com" style="color: #bd4932">Photosynthetic silicon energy</a></li>
                        <li><a href="http://www.yongdong.cn">Wind power generator</a></li>
                        <li><a href="http://www.150ah.com/solarPanel/index">Solar panels</a></li>
                      <!--  <li><a href="#.">Buried box</a></li>
                        <li><a href="#.">Inverter</a></li> -->
                        <li><a href="http://www.150ah.com/solarController/index">Controller</a></li>
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
                    <p>Copyright ©Hunan Frontier Technology Co., Ltd. <a href="http://www.miitbeian.gov.cn" rel="nofollow" style="color: #bd4932" target="_blank">HunanICP equipment16021270号-1</a></p>
                </div>
            </div>
        </div>
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

<script type="text/javascript">
    $(function(){
        //初始化target
       if ("${target}"!=""&&"${target}"!="null"){
           console.log("target:${target}");
           $("#contentPage").attr(src,"${target}");
       }
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
            alert("Please enter your phone number");
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
                    alert("Submit successfully");
                }
            }
        });
    });
</script>
</body>
</html>
