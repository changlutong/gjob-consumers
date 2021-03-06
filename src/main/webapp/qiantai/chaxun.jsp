
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>龙盾科技为您提供最好的工作岗位</title>
    <link href="css/select2.css" rel="stylesheet"/>
    <link rel="stylesheet" href="css/style1.css" />
    <script type="text/javascript" src="js/suiyuan.js"></script>

    <script type="text/javascript" src="js/search/area.js"></script>
    <script type="text/javascript" src="js/search/location.js"></script>
    <script type="text/javascript" src="js/search/select2.js"></script>
    <script type="text/javascript" src="js/search/select2_locale_zh-CN.js"></script>

    <script type="text/javascript" src="js/jquery.touchSlider.js"></script>
    <script type="text/javascript" src="js/js.js"></script>
    <script type="text/javascript" src="js/ks-switch.pack.js"></script>
    <link rel="shortcut icon" type="image/ico" href="//img00.zhaopin.cn/new2011/images/ie9.ico" />
    <!-- 这是jquery的核心包  -->
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
    <!-- 这是easyui的核心包  -->
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/easyui/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/util-js.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/easyui/locale/easyui-lang-zh_CN.js"></script>

</head>
<style type="text/css">
    body{
        font: normal 100% 'Arial','Helvetica','Verdana',sans-serif;
        color: #333;
    }
    p {
        padding: 12px 0;
        margin: 0;
        font-size: .8em;
        line-height: 1.5;
    }
    form {
        margin: 0;
    }
    #search_box {
        width: 200px;
        height: 31px;
        background: url(//files.jb51.net/demoimg/200912/bg_search_box.gif);
    }
    #search_box #s {
        float: left;
        padding: 0;
        margin: 6px 0 0 6px;
        border: 0;
        width: 159px;
        background: greenyellow;
        font-size: 1.18em;
    }
    #search_box #go {
        float: right;
        margin: 3px 4px 0 0;
    }
</style>

<body class="bft_bg">
<link rel="stylesheet" href="<%=request.getContextPath()%>/js/easyui/jquery-ui.css">
<script src="<%=request.getContextPath()%>/js/easyui/jquery-1.9.1.js"></script>
<script src="<%=request.getContextPath()%>/js/easyui/jquery-ui.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath()%>/js/easyui/style.css">
<!-- top内容开始 -->
<div class="top">
    <div class="top_a">
        <div class="top_a3">您好，欢迎来到龙盾招聘中心！</div>
    </div>
    <div class="top_bg">
        <div class="top_bga">
            <div class="top_bga_1"></div>
            <div class="top_bga_2">
                <ul>
                    <a href="<%=request.getContextPath()%>/qiantai/index.jsp"><li>登录界面</li></a>
                    <a href="<%=request.getContextPath()%>/company/companyLogin.jsp"><li>我要招聘</li></a>
                    <a href="<%=request.getContextPath()%>/UserIndex/index.jsp"><li>简历中心</li></a>
                    <a href="<%=request.getContextPath()%>/qiantai/shouye.jsp"><li>首页</li></a>

                </ul>
            </div>
        </div>
    </div>
</div>
<!-- top内容结束 -->

<div class="center_blank"></div>
<div id="search_box" style="margin-left: 45%" >

    <div class="ui-widget">
        <label for="tags">标签：</label>
        <input id="tags"><input type="button" value="查询" onclick="getsolrlistclt()">
    </div>
</div>
<div class="center_blank"></div>
<div class="center_blank"></div>
<div class="center_blank"></div>
<div class="center_blank"></div>
<div class="center_blank"></div>

<!-- 内容开始 -->
<div class="nr">
    <div class="bft_f">
        <div class="bft_f_1">
            <ul>
                <li>公司电话</li>
                <li>职位</li>
                <li>技能要求</li>
                <li>薪资</li>
                <li></li>
            </ul>
        </div>
        <div id="neirongzhanshi">

        </div>

        <div class="bft_f_3">
            <ul>
                <li>第<span  id="dangqianye">1</span>页</li>
                <li><a href="java:script" onclick="tiaoshouye()">首页</a></li>
                <li><a href="java:script" onclick="shangyiye()">上一页</a> </li>
                <li><a href="java:script" onclick="xiayiye()">下一页</a> </li>
                <li><a href="java:script" onclick="tiaoweiye()">尾页</a></li>
                <li>共<span   id="zongyeshu"></span>页</li>
            </ul>
        </div>
    </div>
    <!--   -->
    <!-- 友情链接开始 -->
    <div class="blank"></div>
    <div class="link">
        <div class="link_a">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;友情链接</div>
        <div class="link_b">
            <ul>
                <li><a href=""><img src="images/link_pic.jpg" /></a></li>
                <li><a href=""><img src="images/link_pic2.jpg" /></a></li>
                <li><a href=""><img src="images/link_pic3.jpg" /></a></li>
                <li><a href=""><img src="images/link_pic4.jpg" /></a></li>
                <li><a href=""><img src="images/link_pic.jpg" /></a></li>
                <li><a href=""><img src="images/link_pic2.jpg" /></a></li>
                <li><a href=""><img src="images/link_pic3.jpg" /></a></li>
            </ul>
        </div>
    </div>
    <!-- 友情链接结束 -->

    <!-- 底部内容开始 -->
    <div class="blank"></div>
    <div class="blank"></div>
    <div class="button">
        <a href="">关于我们</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="">商务合作</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="">网站声明</a>&nbsp;&nbsp;|&nbsp;&nbsp;
        <a href="">联系方式</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="">服务中心</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="">加入我们</a><br />
        版权所有©龙盾科技1951-2951  招聘网    京88888888号 <a href="http://www.jinkeit.cn" target="_blank">龙盾之家</a>
    </div>
    <!-- 底部内容结束 -->
</div>
<div class="submenu"></div>
<!-- 搜索内容结束 -->

</div>
<!-- 帮众结束 -->
</div>
<!-- 内容结束 -->

<!-- alpha div -->
<div id="maskLayer" style="display:none;">
    <iframe id="maskLayer_iframe" frameBorder=0 scrolling=no style="filter:alpha(opacity=50)"></iframe>
    <div id="alphadiv" style="filter:alpha(opacity=50);-moz-opacity:0.5;opacity:0.5"></div>
    <div id="drag">
        <h3 id="drag_h"></h3>
        <div id="drag_con"></div><!-- drag_con end -->
    </div>
</div><!-- maskLayer end -->
</div>
<!-- alpha div end -->
<script>
$(function(){
    var data01=null;
    $.ajax({
        url:"<%=request.getContextPath()%>/jobController/getjobname.do",
        type:"post",
        dataType:"json",
        async:false,
        success:function (zhaopin) {

            //            <li><span>龙盾科技</span></li>
//            <li>业务员</li>
//            <li>熟练操作电脑，熟悉网络</li>
//            <li>200元/天</li>
//            <li><img src="images/shenqing.jpg" /></li>
//
//            var str="";
//            for(i=0;i<zhaopin.length;i++){
//
//                str +="<div class='bft_f_2'> <ul ><li><span>"+zhaopin[i].companyphone+"</span></li>" +
//                    "<li>"+zhaopin[i].workname+"</li>" +
//                    "<li>"+zhaopin[i].workinfo+"</li>" +
//                    "<li>"+zhaopin[i].salary+"</li>" +
//                    "<li><img src='images/shenqing.jpg'  onclick='toudijianli(\""+zhaopin[i].id+"\")'  /></li></ul></div>"
//
//            }
//            $("#neirongzhanshi").html(str);
            data01=zhaopin;
        },
        error:function () {
            alert("出问题啦")
        }
    })
    var data1=data01;
    var availableTags = data1;
    $( "#tags" ).autocomplete({
        source: availableTags
    })



    $.ajax({
        url:"<%=request.getContextPath()%>/solrController/getsolrjoblist.do",
        data:{"page":1},
        type:"post",
        dataType:"json",
        async:false,
        success:function (zhaopin) {


            var str="";
            for(i=0;i<zhaopin.rows.length;i++){

                str +="<div class='bft_f_2'> <ul ><li><span>"+zhaopin.rows[i].companyphone+"</span></li>" +
                    "<li>"+zhaopin.rows[i].workname+"</li>" +
                    "<li>"+zhaopin.rows[i].workinfo+"</li>" +
                    "<li>"+zhaopin.rows[i].salary+"</li>" +
                    "<li><img src='images/shenqing.jpg'  onclick='toudijianli(\""+zhaopin.rows[i].id+"\")'  /></li></ul></div>"

            }
            var zongyetiaoshu= zhaopin.total
            $("#neirongzhanshi").html(str);
            $("#zongyeshu").html(Math.ceil(zongyetiaoshu/10));

        },
        error:function () {
            alert("出问题啦")
        }
    })

})

    function getsolrlistclt() {
                var aa =$("#tags").val();
                $.ajax({
                    url:"<%=request.getContextPath()%>/solrController/getsolrjoblist.do",
                    data:{"queryname":aa},
                    type:"post",
                    dataType:"json",
                    async:false,
                    success:function (xiangqing) {

//            <li><span>龙盾科技</span></li>
//            <li>业务员</li>
//            <li>熟练操作电脑，熟悉网络</li>
//            <li>200元/天</li>
//            <li><img src="images/shenqing.jpg" /></li>

                        var str="";
                        for(i=0;i<xiangqing.rows.length;i++){

                            str +="<div class='bft_f_2'> <ul ><li><span>"+xiangqing.rows[i].companyphone+"</span></li>" +
                                "<li>"+xiangqing.rows[i].workname+"</li>" +
                                "<li>"+xiangqing.rows[i].workinfo+"</li>" +
                                "<li>"+xiangqing.rows[i].salary+"</li>" +
                                "<li><img src='images/shenqing.jpg'  onclick='toudijianli(\""+xiangqing.rows[i].id+"\")'  /></li></ul></div>"

                        }

                        $("#neirongzhanshi").html(str);
                        $("#zongyeshu").html(Math.ceil(xiangqing.total/10));
                    },
                    error:function () {
                        alert("出问题啦")
                    }
                })



}
    function toudijianli(jobid){

        $.ajax({
            url:"<%=request.getContextPath()%>/companycltController/toudijianli.do",
            data:{"jobid":jobid},
            type:"post",
            dataType:"json",
            success:function (zhaopin) {
                alert("投递成功")
            },
            erro:function () {
                alert("呦呵呵，投递简历查询失败！！！");
            }
        })

    }
    function tiaoweiye(){
        var pages =document.getElementById("zongyeshu").innerText;

        var dangqianye=document.getElementById("dangqianye").innerText;

        if(pages==dangqianye){

            alert("已经是尾页")
        }else{

        $.ajax({
            url:"<%=request.getContextPath()%>/solrController/getsolrjoblist.do",
            data:{"page":pages},
            type:"post",
            dataType:"json",
            async:false,
            success:function (zhaopin) {


                var str="";
                for(i=0;i<zhaopin.rows.length;i++){

                    str +="<div class='bft_f_2'> <ul ><li><span>"+zhaopin.rows[i].companyphone+"</span></li>" +
                        "<li>"+zhaopin.rows[i].workname+"</li>" +
                        "<li>"+zhaopin.rows[i].workinfo+"</li>" +
                        "<li>"+zhaopin.rows[i].salary+"</li>" +
                        "<li><img src='images/shenqing.jpg'  onclick='toudijianli(\""+zhaopin.rows[i].id+"\")'  /></li></ul></div>"

                }

                $("#neirongzhanshi").html(str);
                $("#dangqianye").html((zhaopin.page/10)+1);

            },
            error:function () {
                alert("出问题啦")
            }
        })
        }
    }
    function tiaoshouye(){
        var pages=1;

        var dangqianye=document.getElementById("dangqianye").innerText;
        if(dangqianye==1){

        alert("已经是首页")

        }else{
        $.ajax({
            url:"<%=request.getContextPath()%>/solrController/getsolrjoblist.do",
            data:{"page":pages},
            type:"post",
            dataType:"json",
            async:false,
            success:function (zhaopin) {


                var str="";
                for(i=0;i<zhaopin.rows.length;i++){

                    str +="<div class='bft_f_2'> <ul ><li><span>"+zhaopin.rows[i].companyphone+"</span></li>" +
                        "<li>"+zhaopin.rows[i].workname+"</li>" +
                        "<li>"+zhaopin.rows[i].workinfo+"</li>" +
                        "<li>"+zhaopin.rows[i].salary+"</li>" +
                        "<li><img src='images/shenqing.jpg'  onclick='toudijianli(\""+zhaopin.rows[i].id+"\")'  /></li></ul></div>"

                }

                $("#neirongzhanshi").html(str);
                $("#dangqianye").html(zhaopin.page+1);

            },
            error:function () {
                alert("出问题啦")
            }
        })
        }
    }
    function xiayiye(){

        var dangqianye=document.getElementById("dangqianye").innerText;
        var zongyeshu=document.getElementById("zongyeshu").innerText;

        if(dangqianye==zongyeshu){

            alert("已经是尾页了")
        }else{

        var dangqianyes= parseInt(dangqianye)+1;

        $.ajax({
            url:"<%=request.getContextPath()%>/solrController/getsolrjoblist.do",
            data:{"page":dangqianyes},
            type:"post",
            dataType:"json",
            async:false,
            success:function (zhaopin) {


                var str="";
                for(i=0;i<zhaopin.rows.length;i++){

                    str +="<div class='bft_f_2'> <ul ><li><span>"+zhaopin.rows[i].companyphone+"</span></li>" +
                        "<li>"+zhaopin.rows[i].workname+"</li>" +
                        "<li>"+zhaopin.rows[i].workinfo+"</li>" +
                        "<li>"+zhaopin.rows[i].salary+"</li>" +
                        "<li><img src='images/shenqing.jpg'  onclick='toudijianli(\""+zhaopin.rows[i].id+"\")'  /></li></ul></div>"

                }

                $("#neirongzhanshi").html(str);
                $("#dangqianye").html((zhaopin.page/10)+1);

            },
            error:function () {
                alert("出问题啦")
            }
        })
        }
    }
    function shangyiye(){
        var dangqianye=document.getElementById("dangqianye").innerText;


        if(dangqianye==1){

            alert("已经是首页了")
        }else{

            var dangqianyes= parseInt(dangqianye)-1;

            $.ajax({
                url:"<%=request.getContextPath()%>/solrController/getsolrjoblist.do",
                data:{"page":dangqianyes},
                type:"post",
                dataType:"json",
                async:false,
                success:function (zhaopin) {


                    var str="";
                    for(i=0;i<zhaopin.rows.length;i++){

                        str +="<div class='bft_f_2'> <ul ><li><span>"+zhaopin.rows[i].companyphone+"</span></li>" +
                            "<li>"+zhaopin.rows[i].workname+"</li>" +
                            "<li>"+zhaopin.rows[i].workinfo+"</li>" +
                            "<li>"+zhaopin.rows[i].salary+"</li>" +
                            "<li><img src='images/shenqing.jpg'  onclick='toudijianli(\""+zhaopin.rows[i].id+"\")'  /></li></ul></div>"

                    }

                    $("#neirongzhanshi").html(str);
                    $("#dangqianye").html((zhaopin.page/10)+1);

                },
                error:function () {
                    alert("出问题啦")
                }
            })
        }
    }



</script>

</body>
</html>
