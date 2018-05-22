<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-cn">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no"/>

    <link rel="stylesheet" type="text/css" href="../js/css/verify.css">
    <script src="https://cdn.bootcss.com/jquery/2.2.4/jquery.min.js"></script>
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <script type="text/javascript" src="<%=request.getContextPath()%>/jquery.min.js"></script>

</head>

<body style="padding:20px;background:url('<%=request.getContextPath() %>/img/03.jpg') no-repeat ;background-size:1560px;">
<br><br>

<div class="container">
    <div class="form row">
        <div class="form-horizontal col-md-offset-3" id="login_form">
           <h3 class="form-title">找回密码</h3>
           <%-- <h5>注：修改失败停留在原网页！</h5>--%>
            <br>
            <div class="col-md-9">
                <div class="form-group">
                    <i class="fa fa-user fa-lg">请输入手机号:</i>
                    <br>
                    <input class="form-control required" type="text" placeholder="请输入手机号.." id="username" name="id" autofocus="autofocus"   />

                </div>

                <div class="form-group">
                    <i class="fa  fa-envelope fa-lg">请输入你注册时候的邮箱:</i>
                    <br>
                    <input class="form-control required" type="text" placeholder="请输入邮箱.." id="email" name="email"   />

                </div>



                <div id="mpanel3" style="margin-top: 20px"></div>

            </div>
        </div>
    </div>
</div>


<br><br><br>
<center>
    <form id="yanzhengyouxiang">
    &nbsp;	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="button" class="btn btn-link-1 btn-link-1-twitter" style="width:200px;height:50px" value="点击注册账号" onclick="zhuche()"/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="button" class="verify-btn" id="check-btn2" style="width:200px;height:50px" value="点击验证"  />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </form>
</center>
<script type="text/javascript" src="../js/jquery.min.js"></script>
<script type="text/javascript" src="../js/verify.js" ></script>
<script type="text/javascript">

    $('#mpanel3').codeVerify({
        type : 2,
        figure : 100,	//位数，仅在type=2时生效
        arith : 0,	//算法，支持加减乘，不填为随机，仅在type=2时生效
        width : '200px',
        height : '40px',
        fontSize : '30px',
        btnId : 'check-btn2',
        ready : function() {
        },
        success : function() {
            yanzhengemail();

        },
        error : function() {
            alert('验证码不匹配！');
        }
    });


</script>

<script type="text/javascript">

    function yanzhengemail(){

        var id = $("#username").val();
        var email = $("#email").val();

        if(id !=null && id !="" && email !=null && email !=""){

        $.ajax({
            url:"<%=request.getContextPath()%>/companyController/queryregisteremail.do",
            type:"post",
            data:{"id":id,"email":email},
           // data:$("#yanzhengyouxiang").serialize(),
            dataType:"json",
            async:false,
            success:function (data){
                if(data=="1"){
                    alert("邮箱或则手机号错误");
                    location.reload;

                }
                if(data=="2"){

                alert("验证通过,修改信息已发送到你的邮箱,请登录你的邮箱修改密码!");
                location.href="http://www.hao123.com/mail"

                }

            },
            error:function(){
                alert("出错！！！")
            }
        })

        }else{

     alert("请输入相关信息");

        }
    }





    function zhuche(){
        location.href="<%=request.getContextPath()%>/company/companyRegester.jsp"
    }


</script>
</body>
</html>