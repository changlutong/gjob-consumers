<%--
  Created by IntelliJ IDEA.
  User: HASEE
  Date: 2018/5/24
  Time: 15:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<html>
<head>
    <title>龙盾科技-公司详情</title>
    <!-- 这是jquery的核心包  -->
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
    <!-- 这是easyui的核心包  -->
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/easyui/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/util-js.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/easyui/locale/easyui-lang-zh_CN.js"></script>
    <link rel="shortcut icon" type="image/ico" href="//img00.zhaopin.cn/new2011/images/ie9.ico" />
</head>
<body  >




<center>
    <div style="background:chartreuse"><center><font size="7" color="white">${companys.companyname}</font></center></div>
    <img src="${companys.tradinglicense}" width="100%" height="800px" >
    <table width="50%">

        <tr>
            <td>公司介绍：${companys.companyprovince}</td>

        </tr>
        <tr>
            <td>公司法人：${companys.legalpersonname}</td>

        </tr>
        <tr>
            <td>公司邮箱：${companys.email}</td>

        </tr>
        <tr>
            <td>公司地址：${companys.companycity}</td>

        </tr>
        <tr>
            <td>联系方式----${companys.contacts}:${companys.id}&nbsp</td>

        </tr>
        <tr>
            <td>联系方式----办公室电话:${companys.companyfixedphone}</td>

        </tr>
    </table>
    <font size="5">公司招聘</font>
    <table border="1">
        <tr>
            <th>招聘岗位</th>
            <th>岗位要求</th>
            <th>工作经验要求</th>
            <th>工作类型</th>
            <th>薪资</th>

            <th>操作</th>
        </tr>
<c:forEach items="${joblist}" var="job">
        <tr align="center">
            <td>${job.workname}</td>
            <td>${job.workinfo}</td>
            <td>${job.workexp}</td>
            <td>${job.workpro}</td>
            <td>${job.salary}</td>

            <td><a onclick="toudijianli('${job.id}')"><font color="red">点击投递简历</font></a></td>
        </tr>
</c:forEach>
    </table>
</center>
<script>

    function toudijianli(jobid){

        $.ajax({
            url:"<%=request.getContextPath()%>/companycltController/toudijianli.do",
            data:{"jobid":jobid},
            type:"post",
            dataType:"json",
            success:function (zhaopin) {
                if(zhaopin=="1"){
                alert("投递成功")
                }
                if(zhaopin=="2"){
                    alert("未登录，请登陆");
                    window.location.href="<%=request.getContextPath()%>/qiantai/index.jsp";
                }
            },
            erro:function () {
                alert("呦呵呵，投递简历失败！！！");
            }
        })

    }

</script>



</body>
</html>
