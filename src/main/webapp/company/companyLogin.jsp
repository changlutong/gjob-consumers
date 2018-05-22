<%--
  Created by IntelliJ IDEA.
  User: yuankang
  Date: 2018/5/15
  Time: 21:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="../js/css/user.css" type="text/css" rel="stylesheet" />
    <script src="../js/login.js"></script>
    <script  src="<%=request.getContextPath()%>/js/jquery.min.js"></script>



    <title>login</title>
</head>
<body  style="padding:20px;background:url('images/denglubeijing.jpg') no-repeat ;background-size:1540px;">


<div class="user-body-bg"></div>
<div class="user-login-bg"></div>
<div class="user-bottom-bg"></div>
<div  style="position:absolute; left:1050px;top:420px" ><h3>企业用户登录</h3></div>
<div class="login-box" name = "mydiv" id="mydiv"  style="position:absolute; left:1050px;top:450px" >
    <form id="companyLogin-form">
        <label class="form-inline">
            <div class="form-inline-font">
                手机号 :
            </div>
            <div class="form-inline-input">
                <input type="text"  id="username" name="id"  maxlength="11" />
            </div>
        </label>
        <label class="form-inline">
            <div class="form-inline-font">
                密码 :
            </div>
            <div class="form-inline-input">
                <input type="password" name="password" id="password" maxlength="16" />
            </div>
        </label>
        <label class="form-inline">
            <div class="form-inline-font">
                验证 :
            </div>
            <div class="form-inline-input">
                <div class="code-box" id="code-box">
                    <input type="text" name="code" id="code"  class="code-input" />
                    <p></p>
                    <span></span>
                </div>
            </div>
        </label>

        <div class="login-btn">
            <div class="user-btn-link">
                <a href="companyRegester.jsp">注册企业版</a>
            </div> <div class="user-btn-link">
                <a href="resetPassword.jsp">找回密码？</a>
            </div>
            <button onclick="denglua()" type="button">登录</button>
<%--  <input type="button" onclick="denglua()">--%>
</div>

</form>

</div>


</body>

<script>
$(function () {

var code = $("#code").val("jsaidaisd656");
codeFn= new moveCode(code);

})








function denglua(){

var phone = $("#username").val();
var password = $("#password").val();
var codd=$("#code").val();
if(phone && password && codd!="jsaidaisd656"){

//提交全部表单
$.ajax({

 url:"<%=request.getContextPath()%>/companyController/querycompanylogin.do",
 type:"post",
 data:$("#companyLogin-form").serialize(),
 dataType:"json",
 async:false,
 success:function(result){

     if(result == "1"){

         alert("账号或密码错误!!!!!!")
         location.reload();
     }
     if(result == "2"){
         alert("登陆成功!")

         location.href="<%=request.getContextPath()%>/qiantai/shouye.jsp";
     }
 },
 error:function(){
     alert("报错");
 }
});

}else{

alert("检查你的输入项是否正确")
}

}




</script>
</html>
