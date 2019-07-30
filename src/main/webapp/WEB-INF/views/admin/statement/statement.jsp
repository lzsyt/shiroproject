<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <script src="https://code.highcharts.com/highcharts.js"></script>
    <script src="http://code.jquery.com/jquery-latest.js"></script>
</head>

<body>

<div>
    <label>按年查询</label>
    <select id="year" onchange="changeYear()">
        <option value=""></option>
    </select>
    <label>按月查询</label>
    <select id="month">
        <option value=""></option>
    </select>

    <button id="quary">查询</button>
</div>

<div id="container" style="min-width:400px;height:400px;"></div>
<script>

    var highcharts;

    init();

    //初式化
    function init() {
        // 初始化
        $.getJSON("${pageContext.request.contextPath}/statment/data", function (data) {
            highcharts = Highcharts.chart('container', {
                series: [{
                    name: '光合硅能',
                    data: data[1]
                }, {
                    name: '控制器',
                    data: data[2]
                }, {
                    name: '风机',
                    data: data[3]
                }, {
                    name: '太阳能板',
                    data: data[4]
                }, {
                    name: '手机',
                    data: data[5]
                }],
                xAxis: {
                    categories: data[0]
                },
                yAxis: {
                    title: {
                        text: '访客量 (人次)'
                    }
                },
                plotOptions: {
                    line: {
                        dataLabels: {
                            // 开启数据标签
                            enabled: true
                        },
                        // 关闭鼠标跟踪，对应的提示框、点击事件会失效
                        enableMouseTracking: false
                    }
                },
                title: {
                    text: '湖南前沿科技各个网站访客量'
                }
            });

            //初始化月份
            if (document.getElementById('month').options.length == 1) {
                var month = $("#month")
                for (var i = 0; i < data[0].length; i++) {
                    var str = data[0][i]
                    month.append('<option value="' + str + '">' + str + '</option>');
                }
            }

            //初始化年份
            if (document.getElementById('year').options.length == 1) {
                var year = $("#year")
                var dateyear = data[6];
                for (var i = 0; i < dateyear.length; i++) {
                    year.append('<option value="' + dateyear[i] + '">' + '20' + dateyear[i] + '</option>');
                }
            }
            $("#month").val('所有');
            $("#year").val('19');
        })
    }

    //
    $("#quary").click(function () {

        var month = $("#month").val();
        var year = $("#year").val();

        month = month.substring(0, month.lastIndexOf("月"));

        $.getJSON("${pageContext.request.contextPath}/statment/data?month=" + month + '&year=' + year, function (data) {
            highcharts = Highcharts.chart('container', {
                series: [{
                    name: '光合硅能',
                    data: data[1]
                }, {
                    name: '控制器',
                    data: data[2]
                }, {
                    name: '风机',
                    data: data[3]
                }, {
                    name: '太阳能板',
                    data: data[4]
                }, {
                    name: '手机',
                    data: data[5]
                }],
                xAxis: {
                    categories: data[0]
                },
                yAxis: {
                    title: {
                        text: '访客量 (人次)'
                    }
                },
                plotOptions: {
                    line: {
                        dataLabels: {
                            // 开启数据标签
                            enabled: true
                        },
                        // 关闭鼠标跟踪，对应的提示框、点击事件会失效
                        enableMouseTracking: false
                    }
                },
                title: {
                    text: '湖南前沿科技各个网站访客量'
                }
            });

        });


    })

    function changeYear() {

        $("#month").empty();


        var year=$("#year").val();
        console.log(year)

        $.getJSON("${pageContext.request.contextPath}/statment/quaryMonth?year=" + year, function (data) {

            var month = $("#month")
            month.append('<option value="' + '' + '">' + '' + '</option>');

            for (var i = 0; i < data[0].length; i++) {
                var str = data[0][i]
                console.log(data[0][i])
                month.append('<option value="' + str + '">' + str + '</option>');
            }


        });
    }


</script>
</body>

</html>