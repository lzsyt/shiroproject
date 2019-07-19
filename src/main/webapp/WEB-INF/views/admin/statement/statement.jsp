<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script src="https://code.highcharts.com/highcharts.js"></script>
    <script src="http://code.jquery.com/jquery-latest.js"></script>
</head>

<body>

<div>
    <label>按月查询</label>
    <select id="month">
        <option value=""></option>
    </select>
    <button id="quaryMonth">查询</button>
</div>

<div id="container" style="min-width:400px;height:400px;"></div>
<script>

    var highcharts;


    $.getJSON("${pageContext.request.contextPath}/statment/data", function (data) {
        highcharts = Highcharts.chart('container', {
            series: [{
                data: data[1]
            }],
            xAxis: {
                categories: data[0]
            },
            title: {
                text: data[2]
            },
            subtitle: {
                text: '数据来源: 湖南前沿科技有限公司'
            },
        });

        var month = $("#month")
        var dateMonth = data[0];
        for (var i = 0; i < dateMonth.length; i++) {
            month.append('<option value="' + dateMonth[i] + '">' + dateMonth[i] + '</option>');
        }

    })

    $("#quaryMonth").click(function () {
        var month = $("#month").val();
        console.log(month);
        month = month.substring(0, month.lastIndexOf("月"));
        console.log("month:" + month);
        $.getJSON("${pageContext.request.contextPath}/statment/quaryMonth/" + month, function (data) {
            highcharts.xAxis[0].update({
                categories: data[0]
            });
            highcharts.series[0].update({
                data: data[1]
            })
        })


    })



</script>
</body>

</html>