<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>



<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
<!-- 这是easyui的核心包  -->
<script type="text/javascript" src="<%=request.getContextPath()%>/js/easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/util-js.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/easyui/locale/easyui-lang-zh_CN.js"></script>


<!-- jqeuy默认的css样式 -->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/js/easyui/themes/default/easyui.css">

<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/js/easyui/themes/icon.css">
<!-- 上传图片 -->
<script type="text/javascript" src="<%=request.getContextPath()%>/js/uploadify/jquery.uploadify.min.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath()%>/js/uploadify/uploadify.css"/>




<body>

<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/uploadify/jquery.uploadify.min.js"></script>
<link  rel="stylesheet"  href="<%=request.getContextPath()%>/js/uploadify/uploadify.css"/>


<form id="addguanggao">
	商品图片： <input type="file" id="file" name="image"/>
	<input type="hidden" name="imageurl" id="imageurl"/>
	<div id="show"></div><br/>
	所属公司：<select id="company" name="companyid" style="width:200px;"></select><br>
	广告位置：<input type="radio" name="pid" value="1">vip
				<input type="radio" name="pid" value="2">vvip<br>
	简介：<textarea name="info" /></textarea>
	价格：<input type="text" name="price" >



</form>


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
                alert(result);
                var options="<option value=''>---请选择---</option>";
                $.each(result,function(){
                    options+="<option value='"+this.id+"'>"+this.companyname+"</option>";
                })
				alert(options)
                $("#company").html(options);
                //$("#cndjbm").html(options);
            },
            error:function(){
                alert("查询部门失败，请联系管理员！");
            }
        })
	})

</script>
</body>
</html>