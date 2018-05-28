<%--
  Created by IntelliJ IDEA.
  User: yuankang
  Date: 2018/5/24
  Time: 22:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
</head>
<body>

       <table id="logstableinfo">

       </table>


<script type="text/javascript">


    $(function(){
        $('#logstableinfo').datagrid({
            url:'<%=request.getContextPath()%>/logController/logsList.do',
            fitColumns:true,
            striped:true,
            ctrlSelect:true,
            method:"post",
            loadMsg:"数据库加载中。。。。。。。。。。。。。。。。。。",
            pagination:true,
            pagePosition:"bottom",
            pageNumber:1,
            pageSize:10,
            pageList:[10,15,20,25,30,100],

            columns:[[
                {field:'logId',checkbox:true},
                {field:'clazzName',title:'操作类名'},
                {field:'methodName',title:'操作方法名'},
                {field:'params',title:'操作参数'},


            ]]

        });

    })







</script>

</body>
</html>
