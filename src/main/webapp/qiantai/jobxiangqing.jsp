<%--
  Created by IntelliJ IDEA.
  User: HASEE
  Date: 2018/5/24
  Time: 15:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <!-- 这是jquery的核心包  -->
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
    <!-- 这是easyui的核心包  -->
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/easyui/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/util-js.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/easyui/locale/easyui-lang-zh_CN.js"></script>

</head>
<body bgcolor="#faebd7">




    <center>

        <img src="${company.tradinglicense}" width="20%" height="25%">
    <table width="50%">
        <tr>
            <td ><center><font size="7">${company.companyname}</font></center></td>
        </tr>
        <tr>
            <td>公司介绍：${company.companyprovince}</td>

        </tr>
        <tr>
            <td>公司法人：${company.legalpersonname}</td>

        </tr>
        <tr>
            <td>公司邮箱：${company.email}</td>

        </tr>
        <tr>
            <td>公司地址：${company.companycity}</td>

        </tr>
        <tr>
            <td>联系方式----${company.contacts}:${company.id}&nbsp</td>

        </tr>
        <tr>
            <td>联系方式----办公室电话:${company.companyfixedphone}</td>

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
            <tr align="center">
                <td>${job.workname}</td>
                <td>${job.workinfo}</td>
                <td>${job.workexp}</td>
                <td>${job.workpro}</td>
                <td>${job.salary}</td>

                <td><a onclick="toudijianli('${job.id}')"><font color="red">点击投递简历</font></a></td>
            </tr>
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
                alert("投递成功")
            },
            erro:function () {
                alert("呦呵呵，投递简历查询失败！！！");
            }
        })

    }

</script>



</body>
</html>
