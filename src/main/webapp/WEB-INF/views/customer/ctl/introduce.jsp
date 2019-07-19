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
                <h2>简介</h2>
                <hr >
            </div>
                <div class="panel-group" style="line-height: 20px" id="accordion">
                    <p >
                        市场上流行的太阳能控制器，主要有普通太阳能控制器、PWM太阳能控制器和MPPT太阳能控制器。
                    </p>
                    <p>
                        普通太阳能控制器是第一代技术，工作原理是直接把太阳能电池板的输出挂到电池端口，当蓄电池充足后就断开，
                        因为蓄电池内阻的原因，很难把蓄电池充满，而且太阳能电池板没有完全利用起来，充电转换效率为只有70～76%，
                        已经被市场淘汰，基本上很少有人用。
                    </p>
                    <p>
                        PWM太阳能控制器是第二代技术，现在市场上最多，工作方式是采用PWM控制方式，相对于普通太阳能控制器，
                        已经进步了很多，可以解决电池不满的问题，充电转换效率为MPPT太阳能控制器是第三代技术，最高端的太阳能控制器。
                        MPPT太阳能控制器,是指具备“最大功率点跟踪”（MaximumPowerPointTracking）功能的太阳能控制器，是PWM太阳能控制器
                        的升级换代产品，MPPT太阳能控制器能够实时检测太阳能板电压和电流，并不断追踪最大功率（P=U*I），
                        使系统始终以最大功率对蓄电池进行充电，MPPT跟踪效率为99%，整个系统发电效率高达到97%，并且对电池拥有优秀的管理，
                        分为MPPT充电、恒压均充电和恒压浮充电。随着技术的进步和能源的节约，MPPT太阳能控制器取代传统PWM太阳能控制器的趋势是不可逆转的

                    </p>


                </div>
        </div>

    </section>
        <section>
            <div class= "container">

                <!-- Linking -->
                <div class="heading">
                    <h2>功能</h2>
                    <hr >
                </div>
                <div class="panel-group" >
                    <p >
                        新型太阳能控制器具有以下主要功能：
                    </p>
                    <p>
                        1、过充保护：充电电压高于保护电压时，自动关断对蓄电池充电，此后当电压掉至维持电压时，蓄电池进入浮充状态，当低于恢复电压后浮充关闭，进入均充状态。
                    <p>
                    <p>
                        2、过放保护：当蓄电池电压低于保护电压时，控制器自动关闭输出以保护蓄电池不受损坏；当蓄电池再次充电后，又能自动恢复供电。

                    </p>
                    <p >
                        3、负载过流及短路保护:负载电流超过10A或负载短路后,熔断丝熔断，更换后可继续使用。
                    </p>
                    <p>
                        4、过压保护：当电压过高时，自动关闭输出，保护电器不受损坏。
                    <p>
                    <p>
                        5、具有防反充功能：采用肖特基二极管防止蓄电池向太阳能电池充电。

                    </p>
                    <p>
                        6、具有防雷击功能：当出现雷击的时候，压敏电阻可以防止雷击，保护控制器不受损坏。
                    <p>
                    <p>
                        7、太阳能电池反接保护：太阳能电池“ +”“ -” 极性接反,纠正后可继续使用。

                    </p>
                    <p >
                        8、蓄电池反接保护：蓄电池“ +”“ -” 极性接反，熔断丝熔断，更换后可继续使用
                    </p>
                    <p>
                        9、蓄电池开路保护：万一蓄电池开路，若在太阳能电池正常充电时，控制器将限制负载两端电压，以保证负载不被损伤，若在夜间或太阳能电池不充电时，控制器由于自身得不到电力，不会有任何动作。
                    <p>
                    <p>
                        10、具有温度补偿功能。

                    </p>
                    <p>
                        11、自检：当控制器受到自然因数影响或人为操作不当时，可以让控制器自检，让人知道控制器是否完好，减少了很多不必须要的工时，为赢得工程质量和工期创造条件。

                    </p>
                    <p>
                        12、恢复间隔：是为过充或过放保护所做的恢复间隔，以避免线电阻或电池的自恢复特点造成负载的工作斗动。
                    <p>
                    <p>
                        13、温度补偿：监视电池的温度，对充放值进很修正，让电池工作在理想状态。

                    </p>
                    <p >
                        14、光控：多用于自动灯具，当环境足够亮时，控制器就会自动关闭负载输出；而环境暗下来后又会自动开启负载，以实现自动控制的功能。
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