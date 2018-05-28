<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>


<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.8.3.min.js"></script>

<link rel="stylesheet" href="/layui/css/layui.css">
<script type="text/javascript" src="/layui/layui.js"></script>



<body>









<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/uploadify/jquery.uploadify.min.js"></script>
<link  rel="stylesheet"  href="<%=request.getContextPath()%>/js/uploadify/uploadify.css"/>


<form id="addguanggao" class="layui-form layui-form-pane">


	广告图片： <input type="file" id="file" name="image"/>
	<input type="hidden" name="imageurl" id="imageurl"/>
	<div id="show"></div><br/>



	<%--<div class="layui-form-item" style="width:45%">--%>
		<%--<label class="layui-form-label">选择框</label>--%>
		<%--<div class="layui-input-block">--%>
			<%--<select id="company" name="companyid" lay-verify="required">--%>

			<%--</select>--%>
		<%--</div>--%>
	<%--</div>--%>

	<div class="layui-form-item" pane="" style="width:45%">
		<label class="layui-form-label">广告位置：</label>
		<div class="layui-input-block">
			<input type="radio" name="pid" value="1" title="一号位">
			<input type="radio" name="pid" value="2" title="二号位">
			<input type="radio" name="pid" value="3" title="三号位"><br>
			<input type="radio" name="pid" value="4" title="四号位">
			<input type="radio" name="pid" value="5" title="五号位">
		</div>
	</div>


	<div class="layui-form-item" style="width:45%">
		<label class="layui-form-label">价格</label>
		<div class="layui-input-block">
			<input type="text" name="title" required  lay-verify="required" placeholder="请输入内容" autocomplete="off" class="layui-input">
		</div>
	</div>



	<div class="layui-form-item layui-form-text" style="width:45%">
		<label class="layui-form-label">简介：</label>
		<div class="layui-input-block">
			<textarea name="desc" placeholder="请输入内容" class="layui-textarea"></textarea>
		</div>
	</div>



</form>

<input type="button" class="layui-btn" value="立即提交" onclick="addguanggao()">
<input type="button" class="layui-btn layui-btn-primary" value="重置" onclick="resetfrom()">


<script type="text/javascript">
    $("#file").uploadify({
        //插件自带  不可忽略的参数
        'swf': '${pageContext.request.contextPath}/js/uploadify/uploadify.swf',
        //前台请求后台上传文件的url  不可忽略的参数
        'uploader': '${pageContext.request.contextPath}/guanggaoController/uploadfile.do',
        //给div的进度条加背景  参数为<div>id属性值  不可忽略
        'queueID': 'fileQueue',
        //上传文件文件名   和file文件域的name属性一致   和后台接受的属性名对应
        'fileObjName' : 'image',
        //给上传按钮设置文字
        'buttonText': '上传',
        //如果为true 为自动上传  在选择文件后, 为false 那么它就要我们自己手动点上传按钮
        'auto': true,
        //可以同时选择多个文件 默认为true  不可忽略
        'multi': false,
        //上传后队列是否消失
        'removeCompleted': true,
        //队列消失时间
        'removeTimeout' : 1,
        //最大上传文件数量
        'uploadLimit':  10,
        //制定可以文件上传
        'fileExt': '*.jpg;*.jpeg;*.gif;*.png;*.doc;*.docx;*.xls;*.xlsx;*.pdf;*.txt',
        'onUploadSuccess' : function(file, data, response) {
            //alert(data);
            var html = '<img src='+data+' width="100" height="100">';
            $("#show").append(html);
            $("[name='imageurl']").val(data);


        }

    })


	$(function(){
        $.ajax({
            url:"<%=request.getContextPath()%>/guanggaoController/querycompany.do",
            type:"post",
            //data:{"npid":1},
            dataType:"json",
            success:function(result){
                //alert(result);
                var options="<option value=''>请选择</option>";
                $.each(result,function(){
                    options+="<option value='"+this.id+"'>"+this.companyname+"</option>";
                })
				//alert(options)
                $("#company").html(options);
                //$("#cndjbm").html(options);
            },
            error:function(){
                alert("查询部门失败，请联系管理员！");
            }
        })
	})


	function addguanggao(){
       // alert(66)
		//alert($("#addguanggao").serialize())
        $.ajax({
            url:"<%=request.getContextPath()%>/guanggaoController/saveguanggao.do",
            data:$("#addguanggao").serialize(),
            type:"post",
            success:function(){

                alert("新增成功");
                $("#dialog_addguanggao").dialog("close");
                $("#guanggaotables").datagrid("reload");

            },error:function(){
                $.messager.alert('警告','报错');
            }
        })

	}
	
	function resetfrom() {
        $("#addguanggao")[0].reset();
    }

</script>

<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
<script>
    layui.use(['form', 'layedit', 'laydate'], function(){
        var form = layui.form
            ,layer = layui.layer
            ,layedit = layui.layedit
            ,laydate = layui.laydate;


    });
</script>

</body>
</html>