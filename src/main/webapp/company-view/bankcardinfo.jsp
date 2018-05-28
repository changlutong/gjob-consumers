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

<div style="margin-left:15%">
<form id="bankcardinfo" class="layui-form layui-form-pane">

	<div class="layui-form-item" style="width:78%">
		<label class="layui-form-label">卡号</label>
		<div class="layui-input-block">
			<input type="text" id="kahao" name="cardnum" required  lay-verify="required" readonly autocomplete="off" class="layui-input">
		</div>
	</div>
	<div class="layui-form-item" style="width:78%">
		<label class="layui-form-label">开户人姓名</label>
		<div class="layui-input-block">
			<input type="text" id="kaihr" name="cardname" required  lay-verify="required" readonly autocomplete="off" class="layui-input">
		</div>
	</div>

</form>
<input type="button" class="layui-btn layui-btn-danger" value="解除绑定" onclick="deletecomcard()">
</div>


<script type="text/javascript">
	var cid = <%=request.getParameter("id")%>
	$(function(){
	    //alert(cid)
        $.ajax({
            url:"<%=request.getContextPath()%>/bankTypeController/queryBankCardById.do",
            type:"post",
            data:{"cid":cid},
            dataType:"json",
            success:function(result){
				$("#kahao").val(result.cardnum)
				$("#kaihr").val(result.cardname)
            },
            error:function(){
                alert("后台出错，请联系管理员！");
            }
        })
	})
	
	function deletecomcard() {
	    //alert(cid)
        if (confirm('您确认想要解除绑定吗？')){

            $.ajax({
                url:"<%=request.getContextPath()%>/bankTypeController/deleteBankCardById.do",
                data:{"cid":cid},
                type:"post",
                success:function(){
                    alert("解除绑定成功！请刷新页面以查看最新数据！")
                },error:function(){
                    $.messager.alert('警告','报错');
                }


            })
        }
		
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