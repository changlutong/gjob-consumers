<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2018/5/22
  Time: 22:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>龙盾科技为您提供最好的工作岗位</title>
    <link href="css/select2.css" rel="stylesheet"/>
    <link rel="shortcut icon" type="image/ico" href="//img00.zhaopin.cn/new2011/images/ie9.ico" />
    <link rel="stylesheet" href="css/style1.css" />
    <script type="text/javascript" src="js/suiyuan.js"></script>

    <script type="text/javascript" src="js/search/area.js"></script>
    <script type="text/javascript" src="js/search/location.js"></script>
    <script type="text/javascript" src="js/search/select2.js"></script>
    <script type="text/javascript" src="js/search/select2_locale_zh-CN.js"></script>

    <script type="text/javascript" src="js/jquery.touchSlider.js"></script>
    <script type="text/javascript" src="js/js.js"></script>
    <script type="text/javascript" src="js/ks-switch.pack.js"></script>

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

<input type="hidden" id="qitaid"  name="qitaid" value="${tpersonal[0].uuids}"/>

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
                    <a href="http://localhost:8888/qiantai/index.jsp"><li>登录界面</li></a>
                    <a href="http://localhost:8888/company/companyLogin.jsp"><li>我要招聘</li></a>
                    <a href="http://localhost:8888/UserIndex/index.jsp"><li>简历中心</li></a>
                    <a href="http://localhost:8888/qiantai/shouye.jsp"><li>首页</li></a>

                </ul>
            </div>
        </div>
    </div>
</div>
<!-- top内容结束 -->

<div class="center_blank"></div>
<div id="search_box" style="margin-left: 45%" >
    <form id="search_form" method="post" action="#">
        <input type="text" id="s" value="Search" class="swap_value" />
        <input type="image" src="images/btn_search_box.gif" width="25" height="25" id="go" alt="Search" title="Search" />
    </form>
</div>
<!-- 内容开始 -->
<div class="nr">
    <div class="bft_f">
        <div class="bft_f_1">
            <ul>
                <li>职位名称</li>
                <li>地点</li>
                <li>技能要求</li>
                <li>薪资</li>
                <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;操作</li>
            </ul>
        </div>
        <div id="neirongzhanshi"> </div>

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
<script type="text/javascript">
    $(function(){

           var userid = $("#qitaid").val();

        $.ajax({
            url:"<%=request.getContextPath()%>/userdatumController/selectalljobto.do",
            type:"post",
            data:{"userid":userid},
            dataType:"json",
            success:function (zhaopin) {

                var tableDiv = "";

                for(var i =0; i<zhaopin.length; i++){

                    tableDiv+="<div class='bft_f_2'><ul ><li><span>"+zhaopin[i].workname+"</span></li><li>"+zhaopin[i].workspace+"</li> <li>"+zhaopin[i].workinfo+"</li> <li><span id='piaoz'>"+zhaopin[i].salary+"</span></li><li><img src='images/ckxqjpg.jpg' onclick='zweiid(\""+zhaopin[i].id+"\")'/></li> </ul></div>"

                }
                $("#neirongzhanshi").html(tableDiv)
            },
            erro:function () {
                alert("呦呵呵，投递查询失败！！！");
            }
        })
    })
    /**
     * 点击查看详情 跳页面传职位id chakanxiangqing  ,"piaoz":piaoz
     * @param companyid
     */
    function zweiid(companyid){

     //   var piaoz = $("#piaoz").val()
      // location.href="<%=request.getContextPath()%>/qiantai/wodetd.jsp?companyid="+companyid;    tym 跳页面
        $.ajax({
            url:"<%=request.getContextPath()%>/userdatumController/tym.do",
            type:"post",
            data:{"companyid":companyid},
            dataType:"json",
            success:function () {
                location.href="<%=request.getContextPath()%>/qiantai/wodetd.jsp";
            }
        })
    }
</script>

</body>
</html>
