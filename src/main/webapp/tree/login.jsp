<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<script  src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
	<script  src="<%=request.getContextPath()%>/js/util-js.js"></script>
	<script  src="<%=request.getContextPath()%>/js/easyui/jquery.easyui.min.js"></script>
	<script  src="<%=request.getContextPath()%>/js/easyui/locale/easyui-lang-zh_CN.js"></script>
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/js/easyui/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/js/easyui/themes/icon.css">

	<!--用百度的静态资源库的cdn安装bootstrap环境-->
	<!-- Bootstrap 核心 CSS 文件 -->
	<link href="http://apps.bdimg.com/libs/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
	<!--font-awesome 核心我CSS 文件-->
	<link href="//cdn.bootcss.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
	<!-- 在bootstrap.min.js 之前引入 -->
	<script src="http://apps.bdimg.com/libs/jquery/2.0.0/jquery.min.js"></script>
	<!-- Bootstrap 核心 JavaScript 文件 -->
	<script src="http://apps.bdimg.com/libs/bootstrap/3.3.0/js/bootstrap.min.js"></script>
	<!--jquery.validate-->
	<script type="text/javascript" src="js/jquery.validate.min.js" ></script>
	<script type="text/javascript" src="js/message.js" ></script>
	<style type="text/css">
		body{background: url(<%=request.getContextPath() %>/js/4.jpg) no-repeat;background-size:cover;font-size: 16px;}
		.form{background: rgba(255,255,255,0.2);width:400px;margin:100px auto;}
		#login_form{display: block;}
		#register_form{display: none;}
		.fa{display: inline-block;top: 27px;left: 6px;position: relative;color: #ccc;}
		input[type="text"],input[type="password"]{padding-left:26px;}
		.checkbox{padding-left:21px;}
	</style>
</head>
<body style="padding:20px;background:url('<%=request.getContextPath() %>/js/55.jpg') no-repeat ;background-size:1560px;">
<form form id="loginForm">
	<div class="container">
		<div class="form row">
			<h3 class="form-title">金盾科技登录页</h3>
			<div class="col-sm-9 col-md-9">
				<div class="form-group">
					<i class="fa fa-user fa-lg"></i>
					<input class="form-control required" type="text" placeholder="账户输入..." name="name" id="name" autofocus="autofocus" maxlength="20"  onmouseout="zhanghaoqw()" />
					<span id="mmpyi"></span>
				</div>
				<div class="form-group">
					<i class="fa fa-lock fa-lg"></i>
					<input class="form-control required" type="password" placeholder="密码输入..." name="password" id="password" onmouseout="mimaer()" />
					<span id="mmpyi2"></span>
				</div>
				<div class="form-group">
					<label class="checkbox">
						<font size="1">金盾科技出品</font>
					</label>
					<hr />

				</div>
				<div class="form-group">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="button" class="btn btn-success" id="loginButton"  value="登录 " onclick="denglu()"/>
				</div>
			</div>
		</div>

	</div>
</form>

<script type="text/javascript">
	     $("#loginButton").on("click",function(){
	  		$.ajax({
	  			url:"<%=request.getContextPath()%>/userController/login.do",
	  			type:"post",
	  			data:$("#loginForm").serialize(),
	  			dataType:"json",
	  			success:function(results){
	  				if(results=="userNo"){
						alert("证号密码错误！")
						}else{
							alert("登录成功!");
							location.href = "main.jsp";
						}
	  			},
	  			error:function(){
	  				alert("登录出错!");
	  			}
	  		});
	  	});
     
     </script>

</body>
</html>