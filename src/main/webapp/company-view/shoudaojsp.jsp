<%--
  Created by IntelliJ IDEA.
  User: chang
  Date: 2018/5/21
  Time: 17:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.8.3.min.js"></script>

<link rel="stylesheet" href="<%=request.getContextPath()%>/layui/css/layui.css"  media="all">
<script type="text/javascript" src="<%=request.getContextPath()%>/layui/layui.js"></script>


<table class="layui-table" lay-data="{width: 1100, height:500, url:'<%=request.getContextPath()%>/companycltController/getjlinfo.do?companyid=17338125780', page:true, id:'idTest'}" lay-filter="demo">
    <thead>
    <tr>
        <%--<th lay-data="{type:'checkbox', fixed: 'left'}"></th>--%>
        <th lay-data="{field:'grxxname', width:'15%', sort: true, fixed: true}">求职者姓名</th>
        <th lay-data="{field:'jybjxl', width:'15%'}">学历</th>
        <th lay-data="{field:'sex', width:'10%', sort: true, templet: '#titleTpl'}">性别</th>
        <th lay-data="{field:'hkadr', width:'20%'}">居住城市</th>
        <th lay-data="{field:'birthdate', width:'20%'}">出生日期</th>
        <th lay-data="{fixed: 'right', width:'20%', align:'center', toolbar: '#barDemo'}">操作</th>
    </tr>
    </thead>
</table>

<script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">查看</a>
    <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>


<script src="//res.layui.com/layui/dist/layui.js" charset="utf-8"></script>
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
<script>
    layui.use('table', function(){
        var table = layui.table;
        //监听表格复选框选择
     /*   table.on('checkbox(demo)', function(obj){
            console.log(obj)
        });*/
        //监听工具条
        table.on('tool(demo)', function(obj){
            var data = obj.data;
            if(obj.event === 'detail'){
                layer.msg('ID：'+ data.usergrxxid + ' 的查看操作');
            } else if(obj.event === 'del'){
                layer.confirm('真的删除行么', function(index){
                    obj.del();
                    layer.close(index);
                });
            } else if(obj.event === 'edit'){
                layer.alert('编辑行：<br>'+ JSON.stringify(data))
            }
        });

        var $ = layui.$, active = {
            getCheckData: function(){ //获取选中数据
                var checkStatus = table.checkStatus('idTest')
                    ,data = checkStatus.data;
                layer.alert(JSON.stringify(data));
            }
            ,getCheckLength: function(){ //获取选中数目
                var checkStatus = table.checkStatus('idTest')
                    ,data = checkStatus.data;
                layer.msg('选中了：'+ data.length + ' 个');
            }
            ,isAll: function(){ //验证是否全选
                var checkStatus = table.checkStatus('idTest');
                layer.msg(checkStatus.isAll ? '全选': '未全选')
            }
        };

        $('.demoTable .layui-btn').on('click', function(){
            var type = $(this).data('type');
            active[type] ? active[type].call(this) : '';
        });
    });
</script>
<script type="text/html" id="titleTpl">
    {{# if(d.sex===1){ }}
    男
    {{# }else{ }}
    女
    {{# } }}
</script>
</body>
</html>

