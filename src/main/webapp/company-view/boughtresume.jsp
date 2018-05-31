<%--
  Created by IntelliJ IDEA.
  User: chang
  Date: 2018/5/22
  Time: 16:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<link rel="shortcut icon" type="image/ico" href="//img00.zhaopin.cn/new2011/images/ie9.ico" />
<body>
<link rel="stylesheet" href="<%=request.getContextPath()%>/layui/css/layui.css"  media="all">
<script type="text/javascript" src="<%=request.getContextPath()%>/layui/layui.js"></script>
<div class="demoTable">
    地区：
    <div class="layui-inline">
        <input class="layui-input" name="id" id="demoReload" autocomplete="off">
    </div>
    学历:
    <div class="layui-inline">
        <input class="layui-input" name="id" id="xueli" autocomplete="off">
    </div>

    <button class="layui-btn" data-type="reload">搜索</button>
</div>

<table class="layui-hide" id="LAY_table_user1" lay-filter="user"></table>
<input type="hidden" value="${id}" id="companyid">
<!-- 这是jquery的核心包  -->
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.min.js"></script>

<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
<script>
    var companyid = $("#companyid").val();

    layui.use('table', function(){
        var table = layui.table;

        //方法级渲染
        table.render({
            elem: '#LAY_table_user1'
            ,url: '<%=request.getContextPath()%>/companycltController/selectjiobclt3.do?companyid='+companyid
            ,cols: [[
                {field:'grxxname', title: '求职者名称', width:'15%'},
               {field:'sex', title: '性别', width:'15%',sort:true, templet: '#titleTpl' }


                ,{field:'hkadr', title: '居住城市', width:'15%'}
                ,{field:'jybjxl', title: '学历',width:'15%'}
                ,{field:'birthdate', title: '生日', sort: true, width:'20%'}
                ,  {fixed: 'right',title: '操作', width:'20%', align:'center', toolbar: '#barDemo'}
            ]]
            ,id: 'testReload'
            ,page: true
            ,height: 315
        });

        var $ = layui.$, active = {
            reload: function(){
                var demoReload = $('#demoReload').val();
                var demoReload01=$("#xueli").val();

                //执行重载
                table.reload('testReload', {
                    page: {
                        curr: 1 //重新从第 1 页开始
                    }
                    ,where: {
                        workspace: demoReload,
                        eduback:demoReload01
                    }
                });
            }
        };
        table.on('tool(user)', function(obj){
            var data = obj.data;

            var usergrxxid = data.usergrxxid;

        if(obj.event === 'del'){

            location.href="/UserIndex/personalInfo.jsp?usergrxxid="+usergrxxid

        }
        });



        $('.demoTable .layui-btn').on('click', function(){
            var type = $(this).data('type');
            active[type] ? active[type].call(this) : '';


        });

    });


</script>

<script type="text/html" id="titleTpl">
    {{# if(d.sex===0){ }}
    男
    {{# }else{ }}
    女
    {{# } }}
</script>

<script type="text/html" id="barDemo">

    <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="del">查看简历详情</a>
</script>
</body>
</html>
