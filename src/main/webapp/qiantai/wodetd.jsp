<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2018/5/24
  Time: 14:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
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

<body class="bft_bg">
<!-- top内容开始 -->
<input type="hidden" id="companyid" value="${userid}"/><%----%>

<div class="top">
    <div class="top_a">
        <div class="top_a1">
            <div class="top_a2"><img src="images/help.jpg" /></div>
            <div class="top_a2"><img src="images/home.jpg" /></div>
            <div class="top_a2"><img src="images/join.jpg" /></div>
        </div>
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
<!-- 内容开始 -->
<div class="nr">
    <div class="zzy_nr">
        <div class="zzy">我的投递</div>
        <div class="zzy_1">
            <ul>
                <li><span>☆</span>&nbsp;高效</li>
                <li><span>¤</span>&nbsp;稳定</li>
                <li><span>♥</span>&nbsp;安全</li>
            </ul>
        </div>
        <div class="zzy_2" id="neirongzhanshi"></div>

        <div class="zzy_5">
            <p style="width:680px; height:40px; line-height:40px; background:#f7f7f7; color:#333; font-weight:bold; text-indent:10px; border:1px solid #ddd; margin-bottom:30px; "><span>公司介绍</span></p>
            <span id="spangsjs"></span>
            </div>
    </div>
    <div class="zzy_nra">
        <div class="zzy_8"><a href="#"><img src="images/pic.jpg" /></a></div>
        <div class="zzy_6">找类似</div>
        <div class="zzy_7" id="zlsids">

        </div>
    </div>
    <!-- 内容结束 -->
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
        版权所有©龙盾招聘网2014-2020  兼职网    豫88888888号
    </div>
    <!-- 底部内容结束 -->
</div>
<div class="submenu"></div>
<!-- 搜索内容结束 -->

</div>
<!-- 帮众结束 -->


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
      var companyid =  $("#companyid").val()
        zlsAndcsh(companyid)
    })
  /**
   * 找找类似 and 初始化方法
   */
  function zlsAndcsh(companyid){
      $.ajax({
          url:"<%=request.getContextPath()%>/userdatumController/selectallwdtdxq.do",
          type:"post",
          data:{"companyid":companyid},
          dataType:"json",
          success:function (company) {

              var tableDiv = "";

              for(var i =0; i<company.length; i++){

                  tableDiv+=" <table width='600' border='1' cellspacing='1' cellpadding='1'><tr><td>职位名称：<span id='zwei'>"+company[0].workname+"</span></td><td>月薪：<span>"+company[0].salary+"</span></td></tr><tr><td>招聘人数:"+company[0].worknum+"</td><td>最低学历:"+company[0].eduback+"</td></tr><tr><td>工作经验:"+company[0].workexp+"</td><td>工作性质：<span id='xingz'>"+company[0].workpro+"</span></td> </tr><tr> <td>工作地点：<span id='ddian'>"+company[0].workspace+"</span></td></tr><tr><td>联系电话：<i>"+company[0].companyphone+"</i></td> </tr><tr><td>ID:<i>"+company[0].id+"</i></td></tr></table>"
              }
              $("#neirongzhanshi").html(tableDiv)
              $("#spangsjs").html(company[0].workinfo)
              zhaoxs();
          },
          erro:function () {
              alert("呦呵呵，招聘内容查询失败！！！");
          }
      })
  }


            function zhaoxs(){
                var zwei =  $("#zwei").html()
                var xingz =  $("#xingz").html()
                var ddian =  $("#ddian").html()

                $.ajax({
                    url:"<%=request.getContextPath()%>/userdatumController/selectzls.do",
                    type:"post",
                    data:{"zwei":zwei,"xingz":xingz,"ddian":ddian},
                    dataType:"json",
                    success:function (zxs) {
                        alert(zxs)
                        var tableDiv = "";
                        for(var i =0; i<zxs.length; i++){
                            tableDiv+=" <li> <a onclick='zlsAndcshtt(\""+zxs[i].id+"\")'><p><span>"+zxs[i].workname+"</span></p><p>薪资："+zxs[i].salary+"</p> </a></li>"
                        }
                        $("#zlsids").html(tableDiv)
                    },
                    erro:function () {
                        alert("呦呵呵，招聘内容查询失败！！！");
                    }
                })
            }

  /**
   * 相关招聘
   * @param companyid
   */
  function zlsAndcshtt(companyid){
      $.ajax({
          url:"<%=request.getContextPath()%>/userdatumController/selectxgzp.do",
          type:"post",
          data:{"companyid":companyid},
          dataType:"json",
          success:function (company) {

              var tableDiv = "";

              for(var i =0; i<company.length; i++){

                  tableDiv+=" <table width='600' border='1' cellspacing='1' cellpadding='1'><tr><td>职位名称：<span id='zwei'>"+company[0].workname+"</span></td><td>月薪：<span>"+company[0].salary+"</span></td></tr><tr><td>招聘人数:"+company[0].worknum+"</td><td>最低学历:"+company[0].eduback+"</td></tr><tr><td>工作经验:"+company[0].workexp+"</td><td>工作性质：<span id='xingz'>"+company[0].workpro+"</span></td> </tr><tr> <td>工作地点：<span id='ddian'>"+company[0].workspace+"</span></td></tr><tr><td>联系电话：<i>"+company[0].companyphone+"</i></td> </tr><tr><td>ID:<i>"+company[0].id+"</i></td></tr></table>"
              }
              $("#neirongzhanshi").html(tableDiv)
              $("#spangsjs").html(company[0].workinfo)
              zhaoxs();
          },
          erro:function () {
              alert("呦呵呵，招聘内容查询失败！！！");
          }
      })
  }

</script>
</body>
</html>

