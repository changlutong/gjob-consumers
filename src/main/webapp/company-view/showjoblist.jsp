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

<table class="layui-hide" id="LAY_table_user" lay-filter="user"></table>



<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
<script>
    layui.use('table', function(){
        var table = layui.table;

        //方法级渲染
        table.render({
            elem: '#LAY_table_user'
            ,url: '<%=request.getContextPath()%>/companycltController/selectjiobclt2.do?companyid=17338125780'
            ,cols: [[
                {field:'grxxname', title: '求职者名称', width:'15%'}
                ,{field:'sex', title: '性别', width:'15%', sort: true}
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
            if(obj.event === 'detail'){
                var ids=data.id
                layer.open({
                    type:2,//使content可以指向jsp
                    area: ['700px', '400px'],
                    title: '详情信息'
                    ,content: "<%=request.getContextPath()%>/companycltController/showjoblist.do?str="+ids
                });
            } else if(obj.event === 'del'){
                layer.confirm('查看需要扣除10积分', function(index){
                    alert(data.phone)
                    layer.close(index);
                });
            } else if(obj.event === 'edit'){
                if(data.showstatus==1){
                    if(confirm("确认发布这条信息么?")){
                        $.ajax({
                            url:"<%=request.getContextPath()%>/companycltController/updatejobstatus.do",
                            type:"post",
                            data:{"showstatus":data.showstatus,"ids":data.id},
                            success:function(){location.reload();
                            },error:function(){
                                layer.msg("网络异常,请稍后重试")
                            }
                        })
                    }
                }
                else{
                    if(confirm("确认下架这条信息么?")){

                        $.ajax({
                            url:"<%=request.getContextPath()%>/companycltController/updatejobstatus.do",
                            type:"post",
                            data:{"showstatus":data.showstatus,"ids":data.id},
                            success:function(){
                                location.reload();
                            },error:function(){
                                layer.msg("网络异常,请稍后重试")
                            }
                        })

                    }
                }
            }
        });

        $('.demoTable .layui-btn').on('click', function(){
            var type = $(this).data('type');
            active[type] ? active[type].call(this) : '';
        });
    });
</script>
<script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">查看详情</a>

    <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="del">查看联系方式</a>
</script>
</body>
</html>
