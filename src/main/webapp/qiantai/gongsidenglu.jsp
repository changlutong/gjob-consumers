<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<html lang="en-US">
<head>
    <title>企业用户登陆 - 龙盾招聘</title>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="css/login.css">
    <link rel="stylesheet" type="text/css" href="css/captcha2.css"/>
    <style type="text/css">
        .msg_error {
            color: #ff5f27;
            line-height: 20px;
        }
    </style>
</head>
<body class="lg-bg" style="background: url('img/denglubeijing.jpg');background-size:1580px;">
        <div class="big-bg">
        <div class="login-box clearfix">
        <div class="login-tit">
        <div class="login-txt">企业账号登录</div>
        </div>
         <form  method="post" id="form1" class="inner_form" >
        <input type="hidden" id="bkurl" name="bkurl" value="">
        <div class="form border">
        <label>用户名</label><input class="ipt"  name="loginName" type="text" value="" />
        </div>
        <div class="form border">
        <label>密 码</label><input class="ipt" i name="password" type="password" value="" />
        </div>
        <div class="form" id="captchaId">
        <input class="lgn-verbtn" id="checkCodeCapt" name="checkCodeCapt" type="button" value="点击完成验证">


        </div>


        <div>
        <input type="button" class="login-btn __ga__switchTag_loginBtn_001 " alt="登录" name="submit" onclick="" value="登录">
        </div>
                 <div class="login-forget">
        <p>没有龙盾账号？<a class="__ga__switchTag_regist_001" ></a>
                <a id="areg" href="#" data-ts="=P(o}}" >立即注册</a></p>
                <a href="#" target="_blank" class="fr">忘记密码</a>
                </div>
                </form>
        </div>
        </div>
        <script type="text/javascript" src="js/jquery-1.7.1.min.js"></script>
        <script type="text/javascript" src="js/jquery.validate.ui.login.js"></script>
        <script type="text/javascript" src="js/captcha.js"></script>
        <script type="text/javascript" src="js/gt.js"></script>
        <script type="text/javascript" src="js/qrloginrd.js"></script>
        <script type="text/javascript" src="js/gaa.js"></script>
        </body>
        </html>