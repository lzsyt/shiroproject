<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/commons/global.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name="author" content="M_Adnan" />
    <!-- Document Title -->
    <title>前沿科技</title>

    <!-- SLIDER REVOLUTION 4.x CSS SETTINGS -->
    <link rel="stylesheet" type="text/css" href="${staticPath }/static/customer/rs-plugin/css/settings.css" media="screen" />

    <!-- StyleSheets -->
    <link rel="stylesheet" href="${staticPath }/static/customer/css/ionicons.min.css">
    <link rel="stylesheet" href="${staticPath }/static/customer/css/bootstrap.min.css">
    <link rel="stylesheet" href="${staticPath }/static/customer/css/font-awesome.min.css">
    <link rel="stylesheet" href="${staticPath }/static/customer/css/main.css">
    <link rel="stylesheet" href="${staticPath }/static/customer/css/style.css">
    <link rel="stylesheet" href="${staticPath }/static/customer/css/responsive.css">


    <!-- Fonts Online -->
    <link href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i" rel="stylesheet">
<style>

    .panel :hover{
        background:#FFFFFF;
    }
p{
 text-indent:2em;
    width: 90%;
    margin-left: 15px;
    line-height: 28px;
}
</style>
</head>
<body>
<!-- Page Wrapper -->
<div id="wrap" class="layout-1">

    <div class="linking">
        <div class="container">
            <ol class="breadcrumb">
                <li><a target="myframe"href="${path }/ctl/main">首页</a></li>
                <li class="active">技术支持</li>
            </ol>
        </div>
    </div>

    <!-- Content -->
    <div id="content">
        <section >
            <div class="container">

            <div class="heading">
                <h2>保护模式</h2>
                <hr >
            </div>
                <div class="panel-group" style="line-height: 20px" id="accordion">
                    <p >
                        1、直充保护点电压：直充也叫急充，属于快速充电，一般都是在蓄电池电压较低的时候用大电流和相对高电压对蓄电池充电，
                        但是，有个控制点，也叫保护点，就是上表中的数值，当充电时蓄电池端电压高于这些保护值时，应停止直充。
                        直充保护点电压一般也是“过充保护点”电压，充电时蓄电池端电压不能高于这个保护点，否则会造成过充电，对蓄电池是有损害的。

                    </p>
                    <p>
                        2、均充控制点电压：直充结束后，蓄电池一般会被充放电控制器静置一段时间，让其电压自然下落，
                        当下落到“恢复电压”值时，会进入均充状态。为什么要设计均充？就是当直充完毕之后，
                        可能会有个别电池“落后”（端电压相对偏低），为了将这些个别分子拉回来，使所有的电池端电压具有均匀一致性，
                        所以就要以高电压配以适中的电流再充那么一小会，可见所谓均充，也就是“均衡充电”。均充时间不宜过长，
                        一般为几分钟~十几分钟，时间设定太长反而有害。对配备一块两块蓄电池的小型系统而言，均充意义不大。
                        所以，路灯控制器一般不设均充，只有两个阶段。

                    </p>
                    <p>
                        3、浮充控制点电压：一般是均充完毕后，蓄电池也被静置一段时间，使其端电压自然下落，当下落至“维护电压”点时，
                        就进入浮充状态，类似于“涓流充电”（即小电流充电），电池电压一低就充上一点，一低就充上一点，一股一股地来，
                        以免电池温度持续升高，这对蓄电池来说是很有好处的，因为电池内部温度对充放电的影响很大。
                        其实PWM方式主要是为了稳定蓄电池端电压而设计的，通过调节脉冲宽度来减小蓄电池充电电流。这是非常科学的充电管理制度。
                        具体来说就是在充电后期、蓄电池的剩余电容量（SOC）>80%时，就必须减小充电电流，
                        以防止因过充电而过多释气（氧气、氢气和酸气）。
                    </p>
                    <p>
                        4、过放保护终止电压：这比较好理解。蓄电池放电不能低于这个值，这是国标的规定。蓄电池厂家虽然也有自己的保护参数
                        （企标或行标），但最终还是要向国标靠拢的。需要注意的是，为了安全起见，
                        一般将12V电池过放保护点电压人为加上0.3v作为温度补偿或控制电路的零点漂移校正，
                        这样12V电池的过放保护点电压即为：11.10v，那么24V系统的过放保护点电压就为22.20V 。
                        统PWM太阳能控制器的趋势是不可逆转的

                    </p>


                </div>
        </div>

    </section>

    </div>


    <!-- End Content -->




    <!-- End Footer -->
    <!-- End Page Wrapper -->
    <script src="${staticPath }/static/customer/js/vendors/jquery/jquery.min.js"></script>
    <script type="text/javascript" src="${staticPath }/static/customer/js/main.js"></script>
    <!-- JavaScripts -->
    <script src="${staticPath }/static/customer/js/vendors/wow.min.js"></script>
    <script src="${staticPath }/static/customer/js/vendors/bootstrap.min.js"></script>
    <script src="${staticPath }/static/customer/js/vendors/own-menu.js"></script>
    <script src="${staticPath }/static/customer/js/vendors/jquery.sticky.js"></script>
    <script src="${staticPath }/static/customer/js/vendors/owl.carousel.min.js"></script>

    <!-- SLIDER REVOLUTION 4.x SCRIPTS  -->
    <script type="text/javascript" src="${staticPath }/static/customer/rs-plugin/js/jquery.tp.t.min.js"></script>
    <script type="text/javascript" src="${staticPath }/static/customer/rs-plugin/js/jquery.tp.min.js"></script>
    <!-- GO TO TOP  -->
    <a href="#" class="cd-top"><i class="fa fa-angle-up"></i></a>
    <!-- GO TO TOP End -->
</div>

</body>
</html>