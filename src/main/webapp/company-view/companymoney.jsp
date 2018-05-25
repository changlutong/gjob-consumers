<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>


<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.8.3.min.js"></script>

<link rel="stylesheet" href="<%=request.getContextPath()%>/layui/css/layui.css"  media="all">
<script type="text/javascript" src="<%=request.getContextPath()%>/layui/layui.js"></script>



<body>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/uploadify/jquery.uploadify.min.js"></script>
<link  rel="stylesheet"  href="<%=request.getContextPath()%>/js/uploadify/uploadify.css"/>


<fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
	<legend>公司账户</legend>
</fieldset>

<div class="layui-tab">
	<ul class="layui-tab-title">
		<li class="layui-this">公司钱包</li>
		<li>绑定银行卡</li>
	</ul>
	<div class="layui-tab-content">
		<div class="layui-tab-item layui-show">




			<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
				<legend>公司余额</legend>
			</fieldset>

			<div style="padding: 20px; background-color: #F2F2F2; height: 50%">
				<div class="layui-row layui-col-space15">
					<div class="layui-col-md6">
						<div class="layui-card">
							<div class="layui-card-header">余额面板</div>
							<div class="layui-card-body">
								<font color="red">龙盾科技提醒您：<br>
									1积分=1元人民币，扣款时优先使用积分进行付款<br></font>
								您的当前所剩余额还有：<span id="jifen"></span>积分。您也可以在右侧进行充值。
							</div>
						</div>
					</div>
					<div class="layui-col-md6">
						<div class="layui-card">
							<div class="layui-card-header">充值面板</div>
							<div class="layui-card-body">
								<form id="chongzhiform" class="layui-form layui-form-pane">
									<font color="red">1积分=1元人民币噢!</font>
									<div class="layui-form-item">
										<label class="layui-form-label">充值金额</label>
										<div class="layui-input-block">
											<input type="radio" name="chongzhisgj" value="10" title="10元">
											<input type="radio" name="chongzhisgj" value="100" title="100元">
											<input type="radio" name="chongzhisgj" value="1000" title="1000元">
											<input type="radio" name="chongzhisgj" value="10000" title="10000元">
										</div>
									</div>
									<div class="layui-form-item">
										<label class="layui-form-label">自定义金额</label>
										<div class="layui-input-block">
											<input type="text" name="title" id="edidmoney" required  lay-verify="required" placeholder="请输入要充值的金额" autocomplete="off" class="layui-input">
										</div>
									</div>
									<div class="layui-form-item">
										<label class="layui-form-label">支付银行卡</label>
										<div class="layui-input-block" id="bankcardradio">


										</div>
									</div>
								</form>
								<input class="layui-btn layui-btn-normal" type="button" onclick="confirmchongzhi()" value="充值">
								<input class="layui-btn layui-btn-primary" type="button" onclick="reloadchongzhiform()" value="重置">
							</div>
						</div>
					</div>

				</div>
			</div>






		</div>
		<div class="layui-tab-item">

			<%--<button data-method="notice" class="layui-btn">添加银行卡</button>--%>
				<input type="button" class="layui-btn" value="添加银行卡" onclick="addcompanybank()">
			<fieldset class="layui-elem-field layui-field-title" style="margin-top: 50px;">
				<legend>已绑定的银行卡</legend>
			</fieldset>

			<div class="site-demo-flow" id="LAY_demo2">
				<img height="200px" width="350px" lay-src="https://gw.alicdn.com/bao/uploaded/i2/701696736/TB2PNl5ahQa61Bjy0FhXXaalFXa_!!701696736.jpg_400x400q90.jpg?t=1527127135936">
				<img height="200px" width="350px" lay-src="https://gw.alicdn.com/bao/uploaded/i2/162734861/TB2V5rsX_gc61BjSZFkXXcTkFXa_!!162734861.jpg_400x400q90.jpg?t=1527127135936">
				<img height="200px" width="350px" lay-src="http://djh535212936.oss-cn-qingdao.aliyuncs.com/img/75a6de99-b729-4252-a2e6-267be5ae2bc1.jpg?Expires=1527303134&OSSAccessKeyId=LTAIIovLWtlvaZb1&Signature=rrR%2BRzrIsBzB22tghK%2Bd34F5zUc%3D">
			</div>





		</div>
	</div>
</div>
<input type="hidden" id="gsidsgj">
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 50px;">


<script type="text/javascript">
	

   // var companyid = $("#companysgjid").val();
	//页面加载时查询已绑定银行卡
	$(function(){
        $.ajax({
            url:"<%=request.getContextPath()%>/bankTypeController/querybankcard.do",
            type:"post",
            //data:{"npid":1},
            dataType:"json",
            async:true,
            success:function(result){

                var options="";
                var radios="";
                var count=0;
                $.each(result,function(){
                    //alert(this.cid)
                    options+='<img height="200px" width="350px" onclick="queryinfo('+this.cid+')" src="'+this.bankimg+'">';
                    radios+='<input type="radio" name="bankradio" value='+this.cardid+' title='+this.bankcardname+'>';
                    count++
                })
				if(count%3==0){
                    options+="<br>"
					radios+="<br>"
				}
				$("#bankcardradio").html(radios)
                $("#gsidsgj").val(result[0].comid);
                $("#LAY_demo2").html(options);


					//查询积分余额


					$.ajax({
						url:"<%=request.getContextPath()%>/bankTypeController/queryComScore.do",
						type:"post",
						data:{"comid":result[0].comid},
						dataType:"json",
						async:true,
						success:function(data){
							//alert(data.score)
							var spanjifen ='<font color="red">'+data.score+'</font>'
							$("#jifen").html(spanjifen)

						},
						error:function(){
							alert("后台出错，请联系管理员！");
						}
					})



            },
            error:function(){
                alert("后台出错，请联系管理员！");
            }
        })

	})


/*	//页面加载时查询积分余额
	$(function(){


	})*/

	function queryinfo(cid){
		//alert(cid)
        layui.use(['form', 'layedit', 'laydate'], function(){
            var form = layui.form
                ,layer = layui.layer
                ,layedit = layui.layedit
                ,laydate = layui.laydate;

            layer.open({
                type:2,//使content可以指向jsp
                area: ['700px', '400px'],
                title: '详情信息'
                ,content: "<%=request.getContextPath()%>/company-view/bankcardinfo.jsp?id="+cid
            });
    	})
	}





    function confirmchongzhi() {
	    var companyid=$("#gsidsgj").val();
        var jine="";
        var val=$('input:radio[name="chongzhisgj"]:checked').val();
        var valll=$('input:radio[name="bankradio"]:checked').val();
        if(valll==null || valll == ""){
            alert("请选择一张要支付的银行卡！！")
        }else {
            //alert(valll)
            if (val == null) {
                var shuru = $("#edidmoney").val()
                if (shuru == null || shuru == "") {

                } else {
                    jine = shuru;
                }
            }
            else {
                jine = val;
            }


			if(jine==null ||jine ==""){
				alert("请先输入要充值的金额！")
			}else {
				$.ajax({
					url:"<%=request.getContextPath()%>/bankTypeController/addcompanychongzhi.do",
					type:"post",
					data:{"comid":companyid,"money":jine,"cardid":valll},
					async:true,
					success:function(){
						alert("充值成功！请刷新页面以查看最新数据！")
					},
					error:function(){
						alert("后台出错，请联系管理员！");
					}
				})
			}
        }


    }

    //重置重置表单
    function reloadchongzhiform() {
        $("#chongzhiform")[0].reset();
    }







function addcompanybank() {
    //alert(66)
    layui.use(['form', 'layedit', 'laydate'], function(){
        var form = layui.form
            ,layer = layui.layer
            ,layedit = layui.layedit
            ,laydate = layui.laydate;

        layer.open({
            type:2,//使content可以指向jsp
            area: ['700px', '400px'],
            title: '详情信息'
            ,content: "<%=request.getContextPath()%>/company-view/addbankcard.jsp"
        });


    });

}

</script>

<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
<script>
    layui.use('element', function(){
        var $ = layui.jquery
            ,layer = layui.layer
            ,element = layui.element; //Tab的切换功能，切换事件监听等，需要依赖element模块

    });
</script>

<%--流加载--%>
<script>
	layui.use('flow', function(){
		var flow = layui.flow;


        //按屏加载图片
        flow.lazyimg({
            elem: '#LAY_demo2 img'
            ,scrollElem: '#LAY_demo2' //一般不用设置，此处只是演示需要。
        });



	});
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