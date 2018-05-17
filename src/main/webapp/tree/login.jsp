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
</head>
<body>
	<div  style="margin:0 auto; width:300px; margin-top:200px;"> 
	   <div id="loginDiv" class="easyui-panel" title="登录页面"  style="width:300px;height:160px;  padding:10px;background:#fafafa;"  >   
			  <form id="loginForm">   
				<div>   
					<label for="name">登录账户:</label>   
					<input class="easyui-validatebox" type="text" name="name" data-options="required:true" />
				</div>   <br>
				<div>   
					<label for="email">登录密码:</label>   
					<input class="easyui-validatebox" type="password" name="password" data-options="required:true" />
				</div> <br>
				<div style="text-align:center;">     
					<input  type="reset" id="zcButton" value="重置"/> 
					<input  type="button" id="loginButton" value="Login"/> 
				</div>				
			  </form>  
		</div>
     </div>
     
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
							location.href = "toTree.jsp";
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