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

<div style="margin-left:20px;margin-top:20px">
<form id="addbankcard" class="layui-form layui-form-pane">







	<div class="layui-form-item" style="width:45%">
		<label class="layui-form-label">卡号</label>
		<div class="layui-input-block">
			<input type="text" name="cardnum" required  lay-verify="required" placeholder="请输入内容" autocomplete="off" class="layui-input">
		</div>
	</div>
	<div class="layui-form-item" style="width:45%">
		<label class="layui-form-label">开户人姓名</label>
		<div class="layui-input-block">
			<input type="text" name="cardname" required  lay-verify="required" placeholder="请输入内容" autocomplete="off" class="layui-input">
		</div>
	</div>
	<div class="layui-form-item" style="width:45%">
		<label class="layui-form-label">开户银行</label>
		<div class="layui-input-block">
			<select id="banktype" name="cardid" lay-verify="required">
				<option value=""></option>
			</select>
		</div>
	</div>





</form>

<input type="button" class="layui-btn" value="立即提交" onclick="savebanktypecard()">
<input type="button" class="layui-btn layui-btn-primary" value="重置" onclick="resetfrom()">
</div>

<script type="text/javascript">
	//页面加载查询银行
	$(function(){
        $.ajax({
            url:"<%=request.getContextPath()%>/bankTypeController/selectBankTypeList.do",
            type:"post",
            //data:{"npid":1},
            dataType:"json",
			async:true,
            success:function(result){
                //alert(result);
                var options="<option value=''>请选择</option>";
                $.each(result,function(){
                    options+="<option value='"+this.id+"'>"+this.bankname+"</option>";
                })
				//alert(options)
                //$("#banktype").html(options);
                $("[name='cardid']").html(options);
            },
            error:function(){
                alert("后台出错，请联系管理员！");
            }
        })
	})


	function savebanktypecard(){
       // alert(66)
		//alert($("#addguanggao").serialize())
        $.ajax({
            url:"<%=request.getContextPath()%>/bankTypeController/savebankcard.do",
            data:$("#addbankcard").serialize(),
            type:"post",
            success:function(){

                alert("新增成功!请刷新已查看最新数据！");
				$("#LAY_demo2").reload();
            },error:function(){
                $.messager.alert('警告','报错');
            }
        })

	}
	
	function resetfrom() {
        $("#addbankcard")[0].reset();
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