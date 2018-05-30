<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/05/24
  Time: 16:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%--<script src="https://img.hcharts.cn/jquery/jquery-1.8.3.min.js"></script>
    <script src="https://img.hcharts.cn/highcharts/modules/exporting.js"></script>
    <script src="https://img.hcharts.cn/highcharts/highcharts.js"></script>
    <script src="https://img.hcharts.cn/highcharts-plugins/highcharts-zh_CN.js"></script>--%>
    <script src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
    <script src="http://code.highcharts.com/highcharts.js"></script>
</head>
<body>

        <div id="financeiner" style="min-width:400px;height:400px">

        </div>

        <script >
            var ioiru = [];
            var iou = [];

            $(function(){

                $.ajax({
                    url:"<%=request.getContextPath()%>/financeController/queryfinance.do",
                    type:"post",
                    dataType:'json',
                    async:false,
                    success:function(aa){
                        for (var i = 0; i < aa.length; i++) {
                           /* var oo = "'"+aa[i].dates+"'"*/
                            ioiru[i] = aa[i].dates
                            iou[i] = aa[i].financetotal
                    /*      alert(iou)*/
                           /* alert(aa)
                            alert(ioiru)*/

                        }
                    },
                    error:function(){

                    }
                })
            })



            $(document).ready(function() {
                var chart = {
                    type: 'column'
                };
                var title = {
                    text: '财务统计'

                };
                var subtitle = {
                    text: '<h6>一天之内RMB<h6>'

                };
                var xAxis = {
                    categories: ioiru,
                    crosshair: true

                };
                var yAxis = {
                    min: 0,
                    title: {
                        text: '中华人民共和国的法定货币(/￥)'
                    }
                };
                var tooltip = {
                    headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
                    pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
                    '<td style="padding:0"><b>{point.y:.1f}￥</b></td></tr>',
                    footerFormat: '</table>',
                    shared: true,
                    useHTML: true
                };

                var plotOptions = {
                    column: {
                        pointPadding: 0.2,
                        borderWidth: 0
                    }
                };

                var credits = {
                    enabled: false
                };

                var series= [{
                    name: '财务统计',
                    data: iou
                }];

                var json = {};
                json.chart = chart;
                json.title = title;
                json.subtitle = subtitle;
                json.tooltip = tooltip;
                json.xAxis = xAxis;
                json.yAxis = yAxis;
                json.series = series;
                json.plotOptions = plotOptions;
                json.credits = credits;
                $('#financeiner').highcharts(json);

            });




        </script>
</body>
</html>
