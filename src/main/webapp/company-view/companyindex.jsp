<%--
  Created by IntelliJ IDEA.
  User: chang
  Date: 2018/5/21
  Time: 8:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>公司主页</title>
    <link rel="shortcut icon" type="image/ico" href="//img00.zhaopin.cn/new2011/images/ie9.ico" />
</head>
<body>
<link rel="stylesheet" href="<%=request.getContextPath()%>/layui/css/layui.css"  media="all">
<script type="text/javascript" src="<%=request.getContextPath()%>/layui/layui.js"></script>


<div style="float:left;width:100%;height:8%">
<ul class="layui-nav layui-bg-cyan">
    <div style="float: left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<li class="layui-nav-item layui-this"><a href="">公司主页</a></li></div>
   <div style="margin-left:60%">

    <li class="layui-nav-item "><a href="<%=request.getContextPath()%>/qiantai/shouye.jsp">我的智联</a></li>
    <li class="layui-nav-item"><a href="">大数据</a></li>

    <li class="layui-nav-item"><a href="">社区</a></li> &nbsp;&nbsp;&nbsp;
       <li class="layui-nav-item">欢迎<font color="red">&nbsp;${companyname}</font> 登陆!</li>
       <li class="layui-nav-item"><a href="" onclick="tuichudenglu()">退出登陆</a></li>
   </div>
</ul>
</div>
<div style="float:left;width:100%;height:92%">
<div style="float:left;width:14%;height:100%">
<ul class="layui-nav layui-nav-tree layui-inline layui-bg-cyan" lay-filter="demo" style="margin-right: 10px;">

    <li class="layui-nav-item"><a href="<%=request.getContextPath()%>/company-view/shoudaojsp.jsp" target="myFrame">收到的简历</a></li>
    <li class="layui-nav-item"><a href="<%=request.getContextPath()%>/company-view/addzhiwei.jsp" target="myFrame">新增职位</a></li>
    <li class="layui-nav-item"><a href="<%=request.getContextPath()%>/company-view/zhiweilist.jsp" target="myFrame">职位列表</a></li>
    <li class="layui-nav-item"><a href="<%=request.getContextPath()%>/company-view/outzhiwei.jsp" target="myFrame">已发布职位</a></li>
    <li class="layui-nav-item"><a href="<%=request.getContextPath()%>/company-view/showjoblist.jsp" target="myFrame">寻找简历</a></li>
    <li class="layui-nav-item"><a href="<%=request.getContextPath()%>/guanggao/addguanggao.jsp" target="myFrame">发布广告</a></li>
    <li class="layui-nav-item"><a href="<%=request.getContextPath()%>/company-view/companymoney.jsp" target="myFrame">公司账户</a></li>
    <li class="layui-nav-item"><a href="<%=request.getContextPath()%>/company-view/boughtresume.jsp" target="myFrame">已购买简历</a></li>
    <li class="layui-nav-item">&nbsp;</li>
    <li class="layui-nav-item">&nbsp;</li>
    <li class="layui-nav-item">&nbsp;</li>
    <li class="layui-nav-item">&nbsp;</li>
    <li class="layui-nav-item">&nbsp;</li>
    <li class="layui-nav-item">&nbsp;</li>
    <li class="layui-nav-item">&nbsp;</li>
    <li class="layui-nav-item">&nbsp;</li>
    <li class="layui-nav-item">&nbsp;</li>
</ul>
</div>
<div style="float:left;width:86%;height:100%">
    <iframe width="100%"  height="100%" name="myFrame" src="<%=request.getContextPath()%>/company-view/companyinfo.jsp" frameborder="0">

    </iframe>
    </div>
</div>

<script>

   function tuichudenglu () {

    location.href="<%=request.getContextPath()%>/companyController/tuichudenglu.do";
       
   }
    layui.use('element', function(){
        var element = layui.element
            ,layer = layui.layer; //导航的hover效果、二级菜单等功能，需要依赖element模块

        //监听导航点击
        element.on('nav(demo)', function(elem){
            //console.log(elem)
            layer.msg(elem.text());
        });
    });
</script>


</body>
</html>
