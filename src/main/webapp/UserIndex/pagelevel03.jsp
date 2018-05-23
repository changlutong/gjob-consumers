<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2018/5/21
  Time: 16:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>用户简历</title>
    <link href="css/demo.css" rel="stylesheet" type="text/css">
    <link rel="shortcut icon" type="image/ico" href="//img00.zhaopin.cn/new2011/images/ie9.ico" />
    <script src="js/jquery-1.10.2.min.js" type="text/javascript"></script>
    <!--Framework-->
    <script src="js/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script src="js/jquery-ui.js" type="text/javascript"></script>
    <!--End Framework-->
    <script src="js/jquery.ffform.js" type="text/javascript"></script>

</head>
<body class="flipInX animated">
<input type="hidden" id="qitaid"  name="qitaid" value="${tpersonal[0].uuids}"/>
<div class="demos-buttons">
    <h3>
        风格</h3>
    <a href="index.jsp" class="submit active">默认</a><br />
    <a href="flipin.jsp" class="submit">摇晃</a>
    <a href="fromright.jsp"  class="submit">插入</a>
    <br>
    <a href="bouncy.jsp" class="submit">逐步增大</a>
    <a href="fadein.jsp" class="submit">缓慢</a><br>
    <a href="roatebottom.jsp" class="submit">从底部旋转</a>
    <br>
    <a href="fromtop.jsp" class="submit">下降</a><br>
    <a href="pagelevel01.jsp" class="submit">整体晃动</a><br>
    <a href="pagelevel02.jsp" class="submit">整体晃动从底部旋转</a><br>
    <a href="pagelevel03.jsp" class="submit">整体晃动从右部插入</a>
</div>
<section id="getintouch" class="fadeInRightBig animated">
    <div class="container" style="border-bottom: 0;">
        <h1>
            <span>用户简历 查看!</span>
        </h1>
    </div>
    <div class="container">
        <div class="row clearfix">
            <div style="Float:left"><br>
                <font size="4" color="blue">姓名:</font><span id="spanname"></span><br><br>
                <font size="4" color="blue">性别:</font><span id="spansex"></span><br><br>
                <font size="4" color="blue">邮件:</font><span id="spanmail"></span><br><br>
                <font size="4" color="blue">手机号:</font><span id="spanphone"></span><br><br>
                <font size="4" color="blue">工作经验:</font><span id="spanvintage"></span>
            </div>

        </div>
        <div style="Float:right;width:300px;height:150px;" id="divphoto">

        </div>
        <hr><br>

        <div id="USerqzyx">  </div>

        <div id="USergzjy"> </div>

        <div id="userjybj"></div>

        <div id="userpxjl"> </div>

        <div id="useryynl"> </div>

        <div id="userzwpj"> </div>

        <div id="userqita"> </div>

    </div>
</section>
<script type="text/javascript">
    /**
     *查询图片
     * */
    $(function(){
        var userid = $("#qitaid").val()

        $.ajax({
            url:"<%=request.getContextPath()%>/userdatumController/queryuseryhzp.do",
            type:"post",
            data:{"userid":userid},
            dataType:"json",
            success:function (succen){

                var count = succen.length
                if (count > 0){
                    var divphoto = " <center><img src='"+succen[0].zpfjurl+"' style='width:200px;heighe:190px'/><br></center><br><div><center><img src='<%=request.getContextPath()%>/UserIndex/imgs/sx.jpg' onclick='sx()'/><img src='<%=request.getContextPath()%>/UserIndex/imgs/xg.jpg' onclick='xiugai()'/><img src='<%=request.getContextPath()%>/UserIndex/imgs/jltd.jpg' onclick='jltds()'/><img src='<%=request.getContextPath()%>/UserIndex/imgs/wdtd.jpg' onclick='wdtds()'/><img src='<%=request.getContextPath()%>/UserIndex/imgs/hdsy.jpg'onclick='hdzy()'/></center></div>"
                    $("#divphoto").html(divphoto);
                }else{
                    var divphoto = " <center><img src='<%=request.getContextPath()%>/UserIndex/imgs/123.jpg'/><br></center><br><div><center><img src='<%=request.getContextPath()%>/UserIndex/imgs/sx.jpg'  onclick='sx()'/><img src='<%=request.getContextPath()%>/UserIndex/imgs/xg.jpg'  onclick='xiugai()'/><img src='<%=request.getContextPath()%>/UserIndex/imgs/jltd.jpg' onclick='jltds()'/><img src='<%=request.getContextPath()%>/UserIndex/imgs/wdtd.jpg'onclick='wdtds()'/><img src='<%=request.getContextPath()%>/UserIndex/imgs/hdsy.jpg'onclick='hdzy()'/></center></div>"
                    $("#divphoto").html(divphoto);
                }
            },
            error:function(){
                alert("出错！！！")
            }
        })
    })
    /**
     * 刷新页面
     * */
    function sx(){
        location.reload();

    }
    /**
     * 跳页面 修改
     * */
    function xiugai(){
        location.href="<%=request.getContextPath()%>/UserProfile/User.jsp";
    }

    /**
     * 跳页面简历投递
     * */
    function jltds(){

        location.href="<%=request.getContextPath()%>/qiantai/chaxun.jsp";
    }
    /**
     * 我的投递
     * */
    function wdtds(){
        location.href="../qiantai/Delivery.jsp";
    }

    /**
     * 回到主页http://localhost:8888/qiantai/shouye.jsp
     * */
    function hdzy(){
        location.href="<%=request.getContextPath()%>/qiantai/shouye.jsp";
    }


    $(function(){

        var userid = $("#qitaid").val()

        $.ajax({
            url:"<%=request.getContextPath()%>/userdatumController/queryusergrxx.do",
            type:"post",
            data:{"userid":userid},
            dataType:"json",
            success:function (succen){
                var count = succen.length
                if (count > 0){

                    $("#spanname").html(succen[0].grxxname);
                    var sexs = "男";
                    if(succen[0].grxxname == 1 ){
                        sexs == "女";
                    }
                    $("#spansex").html(sexs);
                    $("#spanmail").html(succen[0].email);
                    $("#spanphone").html(succen[0].phone);
                    $("#spanvintage").html(succen[0].vintage);

                }else{
                    alert("为了您在投递,以及查看简历时,有更完美的效果, 请您先添加个人信息 ,点击确定我们将自动为您跳转!!!")
                    location.href="<%=request.getContextPath()%>/UserProfile/User.jsp";
                }
            },
            error:function(){
                alert("出错！！！")
            }
        })
    })

    //查询求职意向


    $(function() {
        var userid = $("#qitaid").val()

        $.ajax({
            url: "<%=request.getContextPath()%>/userdatumController/queryuserqzyx.do",
            type: "post",
            data: {"userid": userid},
            dataType: "json",
            success: function (succen) {

                var count = succen.length
                if (count > 0) {

                    var qzyx = "<div style='width:150px;height:20px;background:#dcdcdc'>求职意向</div><br>";

                    for (var i = 0; i < succen.length; i++) {
                        var xinz = "";
                        if (succen[i].nature == 0) {
                            xinz = "全职";
                        }
                        if (succen[i].nature == 1) {
                            xinz = "兼职";
                        }
                        if (succen[i].nature == 2) {
                            xinz = "实习";
                        }

                        var gzzt = "";
                        if (succen[i].statust == 1) {
                            gzzt = "我目前处于离职状态，可立即上岗";
                        }
                        if (succen[i].statust == 2) {
                            gzzt = "我目前在职，正考虑换个新环境（如有合适的工作机会，到岗时间一个月左右）";
                        }
                        if (succen[i].statust == 3) {
                            gzzt = "我对现有工作还算满意，如有更好的工作机会，我也可以考虑。（到岗时间另议）";
                        }
                        if (succen[i].statust == 4) {
                            gzzt = "目前暂无跳槽打算";
                        }
                        if (succen[i].statust == 5) {
                            gzzt = "应届毕业生";
                        }
                        qzyx += "<font size='4' color='#dc143c'>" + (i + 1) + "</font><font size='3'>*期望工作性质:<span >" + xinz + "</span></font><br> <font size='3'>* 期望求职地点 :<span >" + succen[i].site + "</span></font><br> <font size='3'>*期望从事职业:<span >" + succen[i].occupation + "</span></font><br> <font size='3'>*期望月薪(税前):<span >" + succen[i].salary + "</span></font><br><font size='3'>*工作状态:<span>" + gzzt + "</span></font><br><br>"
                    }

                    $("#USerqzyx").html(qzyx);
                }else{
                    $("#USerqzyx").html(" ");
                }
            },
            error: function () {
                alert("出错！！！")
            }
        })
    })

    /**
     * 查询 工作经验
     */
    $(function() {
        var userid = $("#qitaid").val()
        $.ajax({
            url: "<%=request.getContextPath()%>/userdatumController/queryusergzjy.do",
            type: "post",
            data: {"userid": userid},
            dataType: "json",
            success: function (succen) {

                var count = succen.length
                if (count > 0) {

                    var usergzjy = "<div style='width:150px;height:20px;background:#dcdcdc'>工作经验</div><br>";
                    for (var i = 0; i < succen.length; i++) {
                        usergzjy += "<font size='4' color='#dc143c'>" + (i + 1) + "</font><font size='4'>*企业名称:<span >" + succen[i].qyname + "</span></font><br> <font size='4'>* 专业类别: <span >" + succen[i].zylb + "</span></font><br><font size='4'>*工作时间:<span >" + succen[i].kssj + "----->" + succen[i].jssj + "</span></font><br><font size='4'>*职位月薪(税前):<span>" + succen[i].zwyx + "</span></font><br><font size='4'>*内容:<span >" + succen[i].nr + "</span></font><br><br>";
                    }
                    $("#USergzjy").html(usergzjy);
                }else{
                    $("#USergzjy").html("  ");
                }
            },
            error: function () {
                alert("出错！！！")
            }
        })
    })
    /**
     * 教育背景
     */

    $(function() {
        var userid = $("#qitaid").val()
        $.ajax({
            url: "<%=request.getContextPath()%>/userdatumController/queryuserjybj.do",
            type: "post",
            data: {"userid": userid},
            dataType: "json",
            success: function (succen){


                var count = succen.length
                if (count > 0) {

                    var tb = "<div style='width:150px;height:20px;background:#dcdcdc'> 教育背景</div><br>"
                    for (var i = 0; i < succen.length; i++) {
                        var usersj = "是";
                        if (succen[i].jybjsftz == 1) {
                            usersj = "否";
                        }
                        tb += "<font size='4' color='#dc143c'>" + (i + 1) + "</font><font size='4'>*学校名称:<span >" + succen[i].jybjxxmc + "</span></font><br><font size='4'>*是否统招:<span>" + usersj + "</span></font><br> <font size='4'>*教育时间:<span>" + succen[i].jybjkssj + "---->" + succen[i].jybjjssj + "</span></font><br><font size='4'>*学历:<span>" + succen[i].jybjxl + "</span></font><br><br>";
                    }
                    $("#userjybj").html(tb);
                }else{
                    $("#userjybj").html("");
                }
            },
            error: function () {
                alert("出错！！！")
            }
        })
    })
    /**
     * 培训经历
     */
    $(function() {
        var userid = $("#qitaid").val()
        $.ajax({
            url: "<%=request.getContextPath()%>/userdatumController/queryuserpxjl.do",
            type: "post",
            data: {"userid": userid},
            dataType: "json",
            success: function (succen){

                var count = succen.length
                if (count > 0) {

                    var tb = "<div style='width:150px;height:20px;background:#dcdcdc'>培训经历</div><br>"
                    for (var i = 0; i < succen.length; i++) {
                        var usertz = "是";
                        if (succen[i].jybjsftz == 1) {
                            usertz = "否";
                        }
                        tb += "<font size='4' color='#dc143c'>" + (i + 1) + "</font><font size='4'>*培训机构:<span >" + succen[i].psjlpxjg + "</span></font><br> <font size='4'>*培训地点:<span >" + succen[i].pxjldd + "</span></font><br> <font size='4'>*时间:<span>" + succen[i].pxjlkssj + "---->" + succen[i].pxjljssj + "</span></font><br>  <font size='4'>*是否统招:<span >" + usertz + "</span></font><br> <font size='4'>*详情介绍 :<span >" + succen[i].pxjljs + "</span></font><br><br>"
                    }
                    $("#userpxjl").html(tb);
                }else{
                    $("#userpxjl").html("  ");
                }
            },
            error: function () {
                alert("出错！！！")
            }
        })
    })

    /**
     * 语言能力
     */

    $(function() {
        var userid = $("#qitaid").val()
        $.ajax({
            url: "<%=request.getContextPath()%>/userdatumController/queryuseryynl.do",
            type: "post",
            data: {"userid": userid},
            dataType: "json",
            success: function (succen){

                var count = succen.length
                if (count > 0) {

                    var tb = "<div style='width:150px;height:20px;background:#dcdcdc'>语言能力</div><br>";
                    for (var i = 0; i < succen.length; i++) {
                        tb += " <font size='4' color='#dc143c'>" + (i + 1) + "</font><font size='4'>*教育语言:<span >" + succen[i].yynlpxjg + "</span></font><br><font size='4'>*读写能力:<span >" + succen[i].yynldxnl + "</span></font><br><font size='4'>* 听说能力:<span >" + succen[i].yynltsnl + "</span></font><br><br>";
                    }
                    $("#useryynl").html(tb);
                }else{
                    $("#useryynl").html(" ");
                }
            },
            error: function () {
                alert("出错！！！")
            }
        })
    })


    $(function() {
        var userid = $("#qitaid").val()


        $.ajax({
            url: "<%=request.getContextPath()%>/userdatumController/queryuserzwpj.do",
            type: "post",
            data: {"userid": userid},
            dataType: "json",
            success: function (succen) {

                var count = succen.length
                if (count > 0) {

                    var tb = "<div style='width:150px;height:20px;background:#dcdcdc'>自我评价</div><br>";
                    for (var i = 0; i < succen.length; i++) {

                        var theme = "自我评价";
                        if (succen[i].yynlpxjg == 1) {
                            theme = "职业目标";
                        }
                        tb += " <font size='4'>*主题:<span >" + theme + "</span></font><br> <font size='4'>*内容:<span >" + succen[i].content + "</span></font><br><br>"
                    }
                    $("#userzwpj").html(tb);
                }else{
                    $("#userzwpj").html(" ");
                }

            },
            error: function () {
                alert("出错！！！")
            }
        })
    })

    /**
     * 查询 其他
     */
    $(function() {
        var userid = $("#qitaid").val()

        $.ajax({
            url: "<%=request.getContextPath()%>/userdatumController/queryuserqita.do",
            type: "post",
            data: {"userid": userid},
            dataType: "json",
            success: function (succen) {

                var count = succen.length
                if (count > 0) {

                    var tb = "<div style='width:150px;height:20px;background:#dcdcdc'>其他</div><br>";
                    for (var i = 0; i < succen.length; i++) {

                        tb += " <font size='4'>*主题:<span >" + succen[i].qitazt + "</span></font><br> <font size='4'>*内容:<span >" + succen[i].qitajj + "</span></font><br><br>"
                    }
                    $("#userqita").html(tb);
                }else {
                    $("#userqita").html(" ");
                }
            },
            error: function () {
                alert("出错！！！")
            }
        })
    })
</script>


</body>
</html>
