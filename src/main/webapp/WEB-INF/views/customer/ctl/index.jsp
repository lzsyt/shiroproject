<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/commons/global.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name="author" content="zmn" />
    <!-- Document Title -->
    <title>光合硅能蓄电池 唯一【官网】</title>
    <meta name="keywords" content="光合硅能蓄电池 唯一【官网】 湖南前沿科技太阳能电池板 风光互补系统 发电系统 湖南前沿 前沿科技" />
    <meta name="description" content="光合硅能蓄电池 湖南前沿科技有限公司 太阳能电池板 发电系统 湖南前沿 前沿科技" />
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
                   $("#sp").html("<div style='color:red;font-size:10px;text-align: left;margin-left:90px;'>请输入用户名</div>");
                   return false;
               }
               if (pwd=="" || pwd==null){
                   $("#sp").html("<div style='color:red;font-size:10px;text-align: left;margin-left:90px;'>请输入密码</div>");
                   return false;
               }else if(!userPwd.test(pwd)){
                   $("#sp").html("<div style='color:red;font-size:10px;text-align: left;margin-left:90px;'>密码格式为字母数字组合</div>");
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
                       $("#sp").html("<div  style='color:red;font-size:10px;text-align: left;margin-left:90px;'>用户名密码区分大写</div>");
                       $("#MyForm")[0].reset();
                   } else {
                       $("#sp").html("<div  style='color:red;font-size:10px;text-align: left;margin-left:90px;'>用户名或者密码错误</div>");
                       $("#MyForm")[0].reset();
                   }
                },
                error : function() {
                    alert('错误');
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
                    alert('错误');
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
                      $("#spTitle").html("<div style='color:red;font-size:10px;text-align: left;margin-left:90px;'>请输入手机号</div>");
                      return false;
                 }else if(!uPhone.test(mobile)){
                      $("#spTitle").html("<div style='color:red;font-size:10px;text-align: left;margin-left:90px;'>手机号不正确</div>");
                      return false;
                 }

                 if(realName.match(re) == null && realName!=""){
                     $("#spTitle").html("<div style='color:red;font-size:10px;text-align: left;margin-left:90px;'>请输入真实姓名</div>");
                     return false;
                 }
                 //用户名验证
                  if(!patrn.test(username) && username!=""){
                      $("#spTitle").html("<div style='color:red;font-size:10px;text-align: left;margin-left:90px;'>用户名要求字母数字组合，不允许有非法字符</div>");
                      return false;
                  }else if(username.length>29 && username!=""){
                      $("#spTitle").html("<div style='color:red;font-size:10px;text-align: left;margin-left:90px;'>用户名长度为2-30位</div>");
                      return false;
                  }
                 //密码验证
                 if(userpwd=="" || userpwd==null){
                      $("#spTitle").html("<div style='color:red;font-size:10px;text-align: left;margin-left:90px;'>请输入密码</div>");
                      return false;
                 }else if(userpwd.length<6 ){
                      $("#spTitle").html("<div style='color:red;font-size:10px;text-align: left;margin-left:90px;'>密码长度为6-16位</div>");
                      return false;
                 }else if(!uPwd.test(userpwd)){
                      $("#spTitle").html("<div style='color:red;font-size:10px;text-align: left;margin-left:90px;'>密码格式为字母数字组合</div>");
                      return false;
                 }
                 //确认密码验证
                 if(userepwd=="" || userepwd==null){
                      $("#spTitle").html("<div style='color:red;font-size:10px;text-align: left;margin-left:90px;'>请确认密码</div>");
                      return false;
                 }else if(userpwd!=userepwd){
                      $("#spTitle").html("<div style='color:red;font-size:10px;text-align: left;margin-left:90px;'>两次密码不一致</div>");
                      return false;
                 }
                 //邮箱验证
                 if(message!="" && !email.test(message)){
                       $("#spTitle").html("<div style='color:red;font-size:10px;text-align: left;margin-left:90px;'>邮箱不符合规则</div>");
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
                              $("#spTitle").html("<div  style='color:red;font-size:10px;text-align: left;margin-left:90px;'>用户名已经被使用</div>");
                              $("#username").val("");
                          }else if(result=="phone"){
                              $("#spTitle").html("<div  style='color:red;font-size:10px;text-align: left;margin-left:90px;'>手机号已经注册</div>");
                              $("#mobile").val("");
                          }
                      },
                      error : function() {
                          alert('错误');
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
                   $("#forget-sp").html("<div style='color:red;font-size:10px;text-align: left;margin-left:90px;'>请输入用户名</div>");
                   return false;
               }
               if(newpwd=="" || newpwd==null){
                   $("#forget-sp").html("<div style='color:red;font-size:10px;text-align: left;margin-left:90px;'>请输入密码</div>");
                   return false;
               }else if(newpwd.length<6 ){
                   $("#forget-sp").html("<div style='color:red;font-size:10px;text-align: left;margin-left:90px;'>密码长度为7-16位</div>");
                   return false;
               }else if(!uPwd.test(newpwd)){
                   $("#forget-sp").html("<div style='color:red;font-size:10px;text-align: left;margin-left:90px;'>密码格式为字母数字组合</div>");
                   return false;
               }

               if(newspwd=="" || newspwd==null){
                   $("#forget-sp").html("<div style='color:red;font-size:10px;text-align: left;margin-left:90px;'>请确认密码</div>");
                   return false;
               }else if(newpwd!=newspwd){
                   $("#forget-sp").html("<div style='color:red;font-size:10px;text-align: left;margin-left:90px;'>两次密码不一致</div>");
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
                            $("#forget-sp").html("<div style='color:red;font-size:10px;text-align: left;margin-left:90px;'>用户名已存在</div>");
                            $("#forgetForm input:text").css("border-color","deepskyblue");
                        }else{
                            $("#forget-sp").html("<div style='color:red;font-size:10px;text-align: left;margin-left:90px;'>用户名不存在</div>");
                            $("#forgetForm input:text").css("border-color","red");
                        }
                   },
                   error : function() {
                       alert('错误');
                   }
               });
           }
    </script>

    <style>

    </style>
</head>
<body>
<!-- Page Wrapper -->
<div id="wrap" class="layout-1">
    <!-- Top bar -->
    <div class="top-bar" style="height: 30px">
        <div class="container">
            <div class="right-sec">
                <ul>
                    <li>
                        <div id="lookDiv">
                               <a onclick="openDivlog()" >登录</a>&nbsp;/
                               <a onclick="openDivreg()">注册</a>
                         </div>
                         <div id="hidDIV" style="display: none;">
                               <a onclick="openDialogs()" id="loginId"></a>&nbsp;/
                               <a onclick="openDivreg()">注册</a>
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
                         <h3 id="h">用户登录</h3>
                    </td>
                </tr>
                <tr>
                    <td class="mtd" colspan="2">
                        <input name="loginName" type="text" id="userphone"  class="form-control" placeholder="请输入用户名或手机号码" />
                    </td>
                </tr>
                <tr>
                    <td class="mtd" colspan="2">
                        <input name="password" type="password" id="pwd" class="form-control" placeholder="请输入密码" />
                        <span id="sp"></span>
                    </td>
                </tr>
                <tr >
                    <td class="mtd" colspan="2">
                        <button  id="sub" type="button" onclick="login()">登录</button>
                    </td>
                </tr>
                <tr >
                    <td >
                        <a onclick="openForget()" id="forget-pwd">忘记密码</a>
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
                        <h3 id="forget-h">找回密码</h3>
                    </td>
                </tr>
                <tr>
                    <td class="forget-mtd" colspan="2">
                        <input name="name" type="text" id="name" id="forgetName" class="form-control" onblur="CheckUserName()" placeholder="请输入用户名或手机号码" />
                    </td>
                </tr>
                <tr>
                    <td class="forget-mtd" colspan="2">
                        <input name="password" type="password" id="newpwd" class="form-control" placeholder="请输入新密码" />
                    </td>
                </tr>
                <tr>
                    <td class="forget-mtd" colspan="2">
                        <input name="repassword" type="password" id="newspwd" class="form-control" placeholder="请确认密码" />
                        <span id="forget-sp"></span>
                    </td>
                </tr>
                <tr >
                    <td class="forget-mtd" colspan="2">
                        <button  id="forget-sub" type="button" onclick="forgetLogin()">确定</button>
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
                        <td> <button type="button" id="subButton" onclick="exit()">退出</button></td>
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
                        <h3 id="hs">用户注册</h3>
                    </td>
                </tr>
                <tr>
                    <td class="mtd" colspan="2">
                        <input name="mobile" type="text" id="mobile"  class="form-control" placeholder="请输入手机号码" />
                        <span class="footTitle">*</span>
                    </td>
                </tr>
                <tr>
                    <td class="mtd" colspan="2">
                        <input name="name" type="text" id="username"  class="form-control"  placeholder="请输入用户名" />
                    </td>
                </tr>
                <tr>
                    <td class="mtd" colspan="2">
                        <input name="realName" type="text" id="realName"  class="form-control"  placeholder="请输入真实姓名" />
                    </td>
                </tr>
                <tr>
                    <td class="mtd" colspan="2">
                        <input name="password" type="password" id="userpwd" class="form-control"  placeholder="请输入密码" />
                        <span class="footTitle">*</span>
                    </td>
                </tr>
                <tr>
                    <td class="mtd" colspan="2">
                        <input name="repassword" type="password" id="userepwd" class="form-control"  placeholder="请确认密码" />
                        <span class="footTitle">*</span>
                    </td>
                </tr>
                <tr>
                    <td class="mtd" colspan="2" >
                        <input name="message" type="text"  id="message" class="form-control" placeholder="请输入邮箱" />
                    </td>
                </tr>
                <tr>
                    <td class="mtd" colspan="2">
                        <select  class="form-control" id="sex" name="sex">
                            <option value="0" selected>请选择</option>
                            <option value="1" >男</option>
                            <option value="2">女</option>
                        </select>
                        <span id="spTitle"></span>
                    </td>
                </tr>
                <tr >
                    <td class="mtd" colspan="2">
                        <button  id="regist" type="button" onclick="registAll()">注册</button>
                    </td>
                </tr>

            </table>
        </form>
    </div>
    <!-- Header -->
    <header>

        <!-- Nav -->
        <nav class="navbar ownmenu" style="min-height: 20px">
           <div style="margin-left: 20px;float: left;">
               <img src="${staticPath}/static/customer/images/ghlogo.png" style="margin-top: 3px" alt=""/> <span style="font-size: 27px;line-height: 38px;font-weight:600">光合硅能</span>
           </div>

            <div class="container" style="margin-left: 300px">




                <!-- Navbar Header -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#nav-open-btn" aria-expanded="false"> <span><i class="fa fa-navicon"></i></span> </button>
                </div>
                <!-- NAV -->
                <div class="collapse navbar-collapse" id="nav-open-btn">
                    <ul class="nav">
                        <li class="dropdown" style="width: 200px;background:#ff8e09;text-align: left">
                            <a  data-toggle="dropdown" href="#"><i class="fa fa-list-ul"></i> 类别 </a>
                            <ul  class="dropdown-menu" aria-labelledby="dLabel">
                                <li><a   target="myframe" href="${path }/ctl/productsCenter">控制器</a></li>
                            </ul>
                        </li>
                        <li><a href="${path }/ctl/main" target="myframe">首页 </a></li>
                        <li><a href="${path }/ctl/productsCenter" target="myframe"> 产品中心 </a></li>
                        <li><a href="${path }/ctl/aboutUs" target="myframe"> 企业文化 </a></li>
                        <li><a href="${path }/ctl/contact" target="myframe"> 联系我们 </a></li>
                        <li><a href="${path }/ctl/case" target="myframe"> 经典案例 </a></li>
                        <li class="dropdown" style="width: 100px;text-align: left">
                            <a data-toggle="dropdown"  href="#"> 技术支持 </a>
                            <ul class="dropdown-menu" aria-labelledby="dLabel">
                                <li><a   target="myframe" href="${path}/ctl/introduce">简介</a></li>
                                <li><a   target="myframe" href="${path}/ctl/install">安装</a></li>
                                <li><a   target="myframe"  href="${path}/ctl/protectMode">保护模式</a></li>

                            </ul>
                        </li>

                    </ul>
                </div>

                <!-- NAV RIGHT -->
                <div class="nav-right" style="margin-top: 10px"> <span class="call-mun"><i class="fa fa-phone"></i> <strong>电话:</strong> 0731-86663578</span> </div>
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
                        <a target="_blank" href="tencent://Message/?Uin=3334909494&websiteName=http://www.150ah.com/=&Menu=yes" rel="nofollow" class="clearfix"><span class="circle"><i class="i-qq"></i></span><h3>咨询在线qq客服</h3></a>
                    </div>
                    <div class="d-service-item clearfix">
                        <a target="_blank" href="tencent://Message/?Uin=2790181576&websiteName=http://www.150ah.com/=&Menu=yes" rel="nofollow" class="clearfix"><span class="circle"><i class="i-qq"></i></span><h3>咨询在线qq客服</h3></a>
                    </div>

                </div>
            </div>

            <div class="d d-service-phone">
                <i class="arrow"></i>
                <div class="inner-box">
                    <div class="d-service-item clearfix">
                        <span class="circle"><i class="i-tel"></i></span>
                        <div class="text">
                            <p>服务热线</p>
                            <p class="red number">0731-86663578</p>
                        </div>
                    </div>
                    <div class="d-service-item clearfix">
                        <span class="circle"><i class="i-tel"></i></span>

                        <div class="text">
                            <p>专属客服电话</p>
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
                    <p>微信服务号</p>
                </div>
            </div>

        </div>
    </div>
    <!-- Content -->
    <div id="content" style="padding: 0px" >
        <iframe  id="contentPage"  name="myframe"  frameborder="0"frameborder="0" src="${path }/ctl/main" marginwidth="0"  marginheight="0"width="100%" height="100%"  frameborder="0" scrolling="no" ></iframe>
    </div>
    <!-- 填写联系方式 -->
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
                    <p>手 机：17773166613 &nbsp;&nbsp;&nbsp;13367319068 </p>
                    <p>传 真：0731-85116708</p>
                    <p>邮 箱：2735122330@qq.com</p>
                    <div class="social-links"> <a href="#."><i class="fa fa-facebook"></i></a> <a href="#."><i class="fa fa-twitter"></i></a> <a href="#."><i class="fa fa-linkedin"></i></a> <a href="#."><i class="fa fa-pinterest"></i></a> <a href="#."><i class="fa fa-instagram"></i></a> <a href="#."><i class="fa fa-google"></i></a> </div>
                </div>

                <!-- Categories -->
                <div class="col-md-3">
                    <h4>友情链接</h4>
                    <ul class="links-footer">
                        <li><a href="#.">太阳能电池板</a></li>
                        <li><a href="#.">风力发电机</a></li>
                        <li><a href="#.">地埋箱</a></li>
                        <li><a href="#.">逆变器</a></li>
                        <li><a href="#.">控制器</a></li>

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
                    <p>Copyright ©湖南前沿科技有限公司湘ICP备16021270号-1</p>
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

    function calcPageHeight(doc) {
        var cHeight = Math.max(doc.body.clientHeight, doc.documentElement.clientHeight);
        var sHeight = Math.max(doc.body.scrollHeight, doc.documentElement.scrollHeight);
        var height  = Math.max(cHeight, sHeight);
        return height;
    }
    //根据ID获取iframe对象
    var ifr = document.getElementById('contentPage')
    var content = document.getElementById('content')

    ifr.onload = function() {

        //解决打开高度太高的页面后再打开高度较小页面滚动条不收缩
        ifr.style.height='0px';
        var iDoc = ifr.contentDocument || ifr.document;
        var height = calcPageHeight(iDoc);
        console.log("height:"+height);
        if(height < 850){
            height = 850;
        }
        content.style.height= height + 'px';
        ifr.style.height = height + 'px';

    }

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

        if (phone==null||phone==''){
            alert("请输入您的电话");
            return false;

        }
        var data={"phone":phone};
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
</body>
</html>
