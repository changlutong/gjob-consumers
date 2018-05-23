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
<link rel="shortcut icon" type="image/ico" href="//img00.zhaopin.cn/new2011/images/ie9.ico" />
<body>

<link rel="stylesheet" href="<%=request.getContextPath()%>/layui/css/layui.css"  media="all">
<script type="text/javascript" src="<%=request.getContextPath()%>/layui/layui.js"></script>


<table class="layui-table" lay-data="{width: 1100, height:500, url:'<%=request.getContextPath()%>/companycltController/getzhiweilist.do?companyid=17338125780', page:true, id:'idTest'}" lay-filter="demo">
    <thead>
    <tr>
        <%--<th lay-data="{type:'checkbox', fixed: 'left'}"></th>--%>
        <th lay-data="{field:'workname', width:'15%', sort: true, fixed: true}">职位名称</th>
        <th lay-data="{field:'worktype', width:'15%'}">职位类型</th>
        <th lay-data="{field:'workpro', width:'10%'}">职位性质</th>
        <th lay-data="{field:'salary', width:'20%'}">职位薪资</th>
        <th lay-data="{field:'createtime', width:'10%'}">创建时间</th>
       <th lay-data="{field:'showstatus', width:'10%',templet: '#titleTpl'}">发布状态</th>
        <th lay-data="{fixed: 'right', width:'20%', align:'center', toolbar: '#barDemo'}">操作</th>
    </tr>
    </thead>
</table>

<script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">查看详情</a>

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
               var ids=data.id
                layer.open({
                    type:2,//使content可以指向jsp
                    area: ['700px', '400px'],
                    title: '详情信息'
                    ,content: "<%=request.getContextPath()%>/companycltController/showjoblist.do?str="+ids
                });
            } else if(obj.event === 'del'){
                layer.confirm('真的删除行么', function(index){
                    obj.del();
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
    {{# if(d.showstatus===1){ }}
    未发布<a class="layui-btn layui-btn-xs" lay-event="edit">发布</a>
    {{# }else{ }}
    已发布<a class="layui-btn layui-btn-xs" lay-event="edit">下架</a>
    {{# } }}
</script>
</body>
</html>

